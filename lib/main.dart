import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

// ---- Edit these ----
const kEmail = 'info@pohrf.org';
const kPhone = '+91 00000 00000';
const kAddress = 'Add your head office address here';

const navy = Color(0xFF0B1D4A);
const navy2 = Color(0xFF13296B);
const gold = Color(0xFFF2B632);
const rose = Color(0xFFB3184F);
const paper = Color(0xFFF6F7FB);
const ink = Color(0xFF141A2E);
const muted = Color(0xFF56607D);
const line = Color(0xFFD9DEEC);

void main() => runApp(const PohrfApp());

class PohrfApp extends StatelessWidget {
  const PohrfApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'POHRF – Protection of Human Rights Force',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          scaffoldBackgroundColor: paper,
          colorScheme: ColorScheme.fromSeed(seedColor: navy, primary: navy),
          textTheme: GoogleFonts.notoSansTextTheme().apply(
            bodyColor: ink,
          ),
        ),
        home: const HomePage(),
      );
}

TextStyle serif(double size, {Color color = ink, FontWeight w = FontWeight.w600}) =>
    GoogleFonts.fraunces(fontSize: size, fontWeight: w, color: color, height: 1.15);

TextStyle body({double size = 16, Color color = ink, FontWeight w = FontWeight.w400}) =>
    GoogleFonts.notoSansTelugu(
        fontSize: size,
        color: color,
        fontWeight: w,
        height: 1.6);


// ---- Data ----
class P {
  final String role, te, en;
  const P(this.role, this.te, this.en);
}

const generalWing = [
  P('National Working President', 'శ్రీ G. మోహన్ కుమార్', 'Sri G. Mohan Kumar'),
  P('Honorary National Working President', 'శ్రీ జ్యోతి ప్రకాష్', 'Sri Jyothi Prakash'),
  P('National Vice President', 'శ్రీ K. ఏకాంబరం', 'Sri K. Ekambaram'),
  P('National Working Vice President', 'శ్రీ G. రవి తేజ', 'Sri G. Ravi Teja'),
  P('National Convener', 'శ్రీ లకేశ్ కుమార్', 'Sri Lakesh Kumar'),
  P('Legal Cell Vice President', 'శ్రీ B. నాగేశ్వర్ రెడ్డి', 'Sri B. Nageswar Reddy'),
  P('Spiritual Wing Vice President', 'డాక్టర్ ఉమామహేశ్వర రావు', 'Dr. Umamaheswara Rao'),
];
const womenWing = [
  P('National Working Women\'s President', 'శ్రీమతి G. సంధ్యా రాణి', 'Smt. G. Sandhya Rani'),
  P('National Women\'s Vice President', 'శ్రీమతి లక్ష్మీ కాంతమ్మ', 'Smt. Lakshmi Kanthamma'),
];
const stateLevel = [
  P('AP General President', 'శ్రీ M. బాబు', 'Sri M. Babu'),
  P('AP Women\'s President', 'శ్రీమతి G. బిందు ప్రియ', 'Smt. G. Bindu Priya'),
  P('AP Legal Cell Vice President', 'శ్రీమతి K. విద్యా శ్రీ', 'Smt. K. Vidya Sri'),
];
const zonalLevel = [
  P('Rayalaseema East Zone President', 'శ్రీ దేరంగుల మధుసూధన్', 'Sri Derangula Madhusudhan'),
  P('Rayalaseema Zone President', 'శ్రీ చిన్నయ్య', 'Sri Chinnayya'),
  P('Rayalaseema Zone Vice President', 'శ్రీ B. సురేష్', 'Sri B. Suresh'),
];
const districts = <String, List<P>>{
  'Tirupati District': [
    P('District Honorary President', 'శ్రీ మానేరి లోకనాధం', 'Sri Maneri Lokanadham'),
    P('District President (General)', 'శ్రీ టి. సాయి తరుణ్', 'Sri T. Sai Tarun'),
    P('District Women\'s President', 'డాక్టర్ బి. ఈశ్వరి', 'Dr. B. Eswari'),
    P('District Women\'s Working President', 'శ్రీమతి P. లక్ష్మి', 'Smt. P. Lakshmi'),
    P('District Vice President', 'శ్రీ పెట నరేష్', 'Sri Peta Naresh'),
    P('District Women\'s Vice President', 'శ్రీమతి కొండేటి జ్యోతి', 'Smt. Kondeti Jyothi'),
    P('District Secretary', 'శ్రీ ఎం. వాను', 'Sri M. Vanu'),
    P('District Women\'s Secretary', 'శ్రీమతి పి. సురేఖ', 'Smt. P. Surekha'),
    P('District Joint Secretary', 'శ్రీ డి. రవీంద్ర ఆచారి', 'Sri D. Ravindra Achari'),
    P('District Women\'s Convener', 'శ్రీమతి కాపరి రేఖ', 'Smt. Kapari Rekha'),
    P('District Director', 'శ్రీ C.H. శ్రీనివాసులు', 'Sri C.H. Srinivasulu'),
    P('District Director', 'శ్రీ K. ధనుష్', 'Sri K. Dhanush'),
  ],
  'Nellore District': [
    P('District President', 'శ్రీ A. సురేంద్ర', 'Sri A. Surendra'),
    P('District Working President', 'శ్రీ A. నవీన్ కుమార్', 'Sri A. Naveen Kumar'),
  ],
  'Chittoor District': [
    P('District Vice President', 'శ్రీ P. ద్దీడ్డి', 'Sri P. Deddi'),
    P('District Convener', 'శ్రీ K. నరేష్', 'Sri K. Naresh'),
  ],
  'Vizag District': [P('District President', 'శ్రీ ఇండియన్ శ్రీనివాస్', 'Sri Indian Srinivas')],
  'West Godavari District': [P('District Convener', 'శ్రీ M. శివ రామకృష్ణ', 'Sri M. Siva Ramakrishna')],
};
const rights = [
  ['Life and liberty', 'Freedom from arbitrary arrest, violence and threats.'],
  ['Equality before law', 'No discrimination by caste, religion, gender or income.'],
  ['Women and children', 'Protection from abuse, harassment and exploitation.'],
  ['Fair treatment', 'Access to a lawyer, a hearing and timely justice.'],
  ['Dignity at work', 'Fair wages, safe conditions, no bonded or forced labour.'],
  ['Freedom of belief', 'The right to follow and practise your faith in peace.'],
];
const work = [
  ['Receive complaints', 'District teams listen, record the facts and take the case forward.'],
  ['Legal guidance', 'Our Legal Cell explains options and connects people to lawyers and authorities.'],
  ['Awareness drives', 'We teach communities what their rights are and where to go for help.'],
  ['Support and counselling', 'The Spiritual Wing and Women\'s Wing offer care to those in distress.'],
];
const goals = [
  ['Protecting human rights', 'మానవ హక్కుల పరిరక్షణ'],
  ['For humanity', 'మానవత్వం కోసం'],
  ['Justice for society', 'న్యాయం సమాజం కోసం'],
  ['Equality for everyone', 'ప్రతి ఒక్కరికీ సమానత్వం కోసం'],
  ['Safety and protection', 'భద్రత, పరిరక్షణ కోసం'],
  ['Service to all', 'సేవా ధ్యేయం'],
];

// ---- Page ----
class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final keys = {for (final k in ['Rights', 'What we do', 'Goals', 'Structure', 'Districts', 'Join']) k: GlobalKey()};
  void go(String k) {
    final c = keys[k]!.currentContext;
    if (c != null) Scrollable.ensureVisible(c, duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    final wide = MediaQuery.of(context).size.width > 900;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: navy,
        foregroundColor: Colors.white,
        titleSpacing: 16,
        title: Row(children: [
          const Logo(44),
          const SizedBox(width: 10),
          Text('POHRF', style: serif(22, color: gold, w: FontWeight.w800)),
        ]),
        actions: wide
            ? [
                for (final k in keys.keys)
                  TextButton(onPressed: () => go(k), child: Text(k == 'Join' ? 'Take action' : k, style: body(color: Colors.white, size: 14))),
                const SizedBox(width: 12),
              ]
            : [
                PopupMenuButton<String>(
                  icon: const Icon(Icons.menu),
                  onSelected: go,
                  itemBuilder: (_) => [for (final k in keys.keys) PopupMenuItem(value: k, child: Text(k == 'Join' ? 'Take action' : k))],
                ),
              ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          HeroBanner(onAction: () => go('Join'), onTeam: () => go('Structure')),
          Section(key: keys['Rights'], title: 'Rights we stand up for', lead: 'Drawn from the Universal Declaration of Human Rights and the Constitution of India.', child: Cards(rights, gold)),
          Section(key: keys['What we do'], bg: Colors.white, title: 'What we do', lead: 'Four ways POHRF helps when a right is violated.', child: Cards(work, rose)),
          Section(key: keys['Goals'], title: 'Our goal  /  మన లక్ష్యం', lead: 'Six commitments guide every POHRF team.', child: Cards(goals, navy2)),
          Section(key: keys['Structure'], bg: Colors.white, title: 'How POHRF is organised', lead: 'One founder, two national wings, and teams at state, zonal and district level.', child: const Structure()),
          Section(key: keys['Districts'], title: 'District teams', lead: 'Tap a district to see its office bearers.', child: const Districts()),
          Contact(key: keys['Join']),
          const Footer(),
        ]),
      ),
    );
  }
}

class Logo extends StatelessWidget {
  final double size;
  const Logo(this.size, {super.key});
  @override
  Widget build(BuildContext context) => Container(
        width: size,
        height: size,
        decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: gold, width: size > 100 ? 5 : 2)),
        child: ClipOval(child: Image.asset('assets/logo.png', fit: BoxFit.cover)),
      );
}

class Wrap1080 extends StatelessWidget {
  final Widget child;
  const Wrap1080(this.child, {super.key});
  @override
  Widget build(BuildContext context) => Center(
        child: ConstrainedBox(constraints: const BoxConstraints(maxWidth: 1080), child: Padding(padding: const EdgeInsets.symmetric(horizontal: 20), child: child)),
      );
}

class HeroBanner extends StatelessWidget {
  final VoidCallback onAction, onTeam;
  const HeroBanner({super.key, required this.onAction, required this.onTeam});
  @override
  Widget build(BuildContext context) {
    final wide = MediaQuery.of(context).size.width > 800;
    final text = Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text('Andhra Pradesh · Volunteer-led', style: body(color: gold, w: FontWeight.w600, size: 14)),
      const SizedBox(height: 12),
      Text('Every person deserves dignity, safety and justice.', style: serif(wide ? 52 : 34, color: Colors.white)),
      const SizedBox(height: 14),
      Text('ప్రొటెక్షన్ ఆఫ్ హ్యూమన్ రైట్స్ ఫోర్స్', style: body(size: 22, color: gold, w: FontWeight.w600)),
      const SizedBox(height: 14),
      ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 560),
        child: Text('The Protection of Human Rights Force (POHRF) stands with people whose rights are ignored. Our general, legal and spiritual wings give them a voice, legal guidance and support, from state level down to the district.',
            style: body(size: 17, color: const Color(0xFFD6DCF2))),
      ),
      const SizedBox(height: 26),
      Wrap(spacing: 12, runSpacing: 12, children: [
        FilledButton(style: FilledButton.styleFrom(backgroundColor: gold, foregroundColor: navy, padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 16)), onPressed: onAction, child: const Text('Report a violation')),
        OutlinedButton(style: OutlinedButton.styleFrom(foregroundColor: Colors.white, side: const BorderSide(color: gold, width: 2), padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 16)), onPressed: onTeam, child: const Text('Meet our team')),
      ]),
    ]);
    return Container(
      decoration: const BoxDecoration(color: navy, border: Border(bottom: BorderSide(color: gold, width: 6))),
      padding: const EdgeInsets.symmetric(vertical: 56),
      child: Wrap1080(wide
          ? Row(children: [Expanded(flex: 14, child: text), const SizedBox(width: 40), const Expanded(flex: 10, child: Center(child: Logo(260)))])
          : Column(children: [const Logo(180), const SizedBox(height: 28), text])),
    );
  }
}

class Section extends StatelessWidget {
  final String title, lead;
  final Widget child;
  final Color bg;
  const Section({super.key, required this.title, required this.lead, required this.child, this.bg = paper});
  @override
  Widget build(BuildContext context) => Container(
        color: bg,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 64),
        child: Wrap1080(Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(title, style: serif(34)),
          const SizedBox(height: 8),
          ConstrainedBox(constraints: const BoxConstraints(maxWidth: 640), child: Text(lead, style: body(color: muted))),
          const SizedBox(height: 28),
          child,
        ])),
      );
}

class Cards extends StatelessWidget {
  final List<List<String>> items;
  final Color accent;
  const Cards(this.items, this.accent, {super.key});
  @override
  Widget build(BuildContext context) => Wrap(spacing: 24, runSpacing: 24, children: [
        for (final i in items)
          SizedBox(
            width: 320,
            child: Container(
              padding: const EdgeInsets.only(top: 16),
              decoration: BoxDecoration(border: Border(top: BorderSide(color: accent, width: 3))),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(i[0], style: serif(20)),
                const SizedBox(height: 6),
                Text(i[1], style: body(color: muted)),
              ]),
            ),
          ),
      ]);
}

class PersonRow extends StatelessWidget {
  final P p;
  final Color? color;
  const PersonRow(this.p, {super.key, this.color});
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(p.role, style: body(size: 13, color: color ?? muted)),
          Text(p.te, style: body(w: FontWeight.w700, color: color ?? ink)),
          Text(p.en, style: body(w: FontWeight.w700, color: color ?? ink)),
        ]),
      );
}

class Structure extends StatelessWidget {
  const Structure({super.key});
  Widget wing(String name, String headTe, String headEn, List<P> list, Color c) => Container(
        width: 480,
        padding: const EdgeInsets.all(22),
        decoration: BoxDecoration(color: Colors.white, border: Border.all(color: line), borderRadius: BorderRadius.circular(8)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(height: 6, width: 60, color: c),
          const SizedBox(height: 12),
          Text(name, style: serif(22)),
          const SizedBox(height: 4),
          Text('National head', style: body(size: 13, color: muted)),
          Text(headTe, style: body(w: FontWeight.w700)),
          Text(headEn, style: body(w: FontWeight.w700)),
          const Divider(height: 28),
          for (final p in list) PersonRow(p),
        ]),
      );

  Widget level(String title, List<P> list) => Container(
        width: double.infinity,
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(color: Colors.white, border: Border(left: const BorderSide(color: gold, width: 6), top: BorderSide(color: line), right: BorderSide(color: line), bottom: BorderSide(color: line))),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(title, style: serif(19)),
          const SizedBox(height: 6),
          Wrap(spacing: 32, runSpacing: 4, children: [for (final p in list) SizedBox(width: 300, child: PersonRow(p))]),
        ]),
      );

  @override
  Widget build(BuildContext context) => Column(children: [
        Container(
          width: 420,
          padding: const EdgeInsets.all(22),
          decoration: BoxDecoration(color: navy, borderRadius: BorderRadius.circular(8)),
          child: Column(children: [
            Text('Founder / సంస్థ వ్యవస్థాపకులు', style: body(size: 13, color: gold)),
            const SizedBox(height: 6),
            Text('శ్రీ పట్టాభి గారు', style: serif(22, color: Colors.white)),
            Text('Sri Pattabhi Garu', style: body(w: FontWeight.w700, color: Colors.white)),
          ]),
        ),
        const SizedBox(height: 24),
        Wrap(spacing: 20, runSpacing: 20, children: [
          wing('General Wing', 'శ్రీ అర్థాల కేశవులు', 'Sri Arthala Kesavulu', generalWing, navy2),
          wing('Women\'s Wing', 'శ్రీమతి అర్థాల ధన్యవాణి', 'Smt. Arthala Dhanyavani', womenWing, rose),
        ]),
        const SizedBox(height: 28),
        level('1. State level', stateLevel),
        const SizedBox(height: 14),
        level('2. Zonal level', zonalLevel),
      ]);
}

class Districts extends StatelessWidget {
  const Districts({super.key});
  @override
  Widget build(BuildContext context) => Column(children: [
        for (final e in districts.entries)
          Card(
            elevation: 0,
            color: Colors.white,
            shape: RoundedRectangleBorder(side: const BorderSide(color: line), borderRadius: BorderRadius.circular(8)),
            child: ExpansionTile(
              initiallyExpanded: e.key.startsWith('Tirupati'),
              shape: const Border(),
              collapsedShape: const Border(),
              title: Text(e.key, style: body(w: FontWeight.w600)),
              childrenPadding: const EdgeInsets.fromLTRB(18, 0, 18, 12),
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              children: [Wrap(spacing: 32, children: [for (final p in e.value) SizedBox(width: 300, child: PersonRow(p))])],
            ),
          ),
      ]);
}

class Contact extends StatefulWidget {
  const Contact({super.key});
  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  final name = TextEditingController(), phone = TextEditingController(), msg = TextEditingController();

  Future<void> send() async {
    final uri = Uri(scheme: 'mailto', path: kEmail, queryParameters: {
      'subject': 'POHRF enquiry',
      'body': 'Name: ${name.text}\nPhone: ${phone.text}\n\n${msg.text}',
    });
    if (!await launchUrl(uri) && mounted) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Could not open your email app. Please write to $kEmail')));
    }
  }

  InputDecoration deco(String l) => InputDecoration(
      labelText: l, labelStyle: body(color: const Color(0xFFC9D1EC)), filled: true, fillColor: const Color(0xFF0E2258),
      enabledBorder: OutlineInputBorder(borderSide: const BorderSide(color: Color(0xFF3A4B8C)), borderRadius: BorderRadius.circular(6)),
      focusedBorder: OutlineInputBorder(borderSide: const BorderSide(color: gold, width: 2), borderRadius: BorderRadius.circular(6)));

  @override
  Widget build(BuildContext context) => Container(
        color: navy,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 64),
        child: Wrap1080(Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('Join us or report a violation', style: serif(34, color: Colors.white)),
          const SizedBox(height: 8),
          Text('Tell us what happened, or how you want to help. We will get back to you.', style: body(color: const Color(0xFFC9D1EC))),
          const SizedBox(height: 28),
          Wrap(spacing: 40, runSpacing: 28, children: [
            SizedBox(
              width: 480,
              child: Column(children: [
                TextField(controller: name, style: body(color: Colors.white), decoration: deco('Your name')),
                const SizedBox(height: 12),
                TextField(controller: phone, keyboardType: TextInputType.phone, style: body(color: Colors.white), decoration: deco('Phone number')),
                const SizedBox(height: 12),
                TextField(controller: msg, maxLines: 4, style: body(color: Colors.white), decoration: deco('Message')),
                const SizedBox(height: 16),
                Align(alignment: Alignment.centerLeft, child: FilledButton(style: FilledButton.styleFrom(backgroundColor: gold, foregroundColor: navy, padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16)), onPressed: send, child: const Text('Send message'))),
              ]),
            ),
            SizedBox(
              width: 360,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text('Contact', style: serif(22, color: Colors.white)),
                const SizedBox(height: 8),
                Text('Email: $kEmail\nPhone: $kPhone\nHead office: $kAddress', style: body(color: Colors.white)),
                const SizedBox(height: 12),
                Text('In an emergency, call your local police helpline (112) first.', style: body(color: const Color(0xFFC9D1EC))),
              ]),
            ),
          ]),
        ])),
      );
}

class Footer extends StatelessWidget {
  const Footer({super.key});
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: Column(children: [
          const Logo(40),
          const SizedBox(height: 8),
          Text('© 2026 Protection of Human Rights Force (POHRF)', style: body(size: 14, color: muted)),
        ]),
      );
}
