Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1860A79652
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Apr 2025 22:11:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 135BA10E8CF;
	Wed,  2 Apr 2025 20:11:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=collabora.com header.i=mark.filion@collabora.com header.b="XIKL9FOQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sender4-op-o16.zoho.com (sender4-op-o16.zoho.com
 [136.143.188.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 474F010E8CF
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Apr 2025 20:11:24 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1743624683; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=Ku3jA+Ba6JqWigLAapAVBKz2+KDOU9cSE6PdWyVYpOAqiz1veD/rbBE4W6MHbxORlQqkRdb6mgdFZjJ6+P6Cfa/FxUHudRwA+bqXiauNOOSA7aANF5yDw302TvwOVmTMw1jhPAh1Z745EM0inj42erW02gtoCkn8kiuFNeIoFKg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1743624683;
 h=Content-Type:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To:Cc;
 bh=DQvlADrncdMP294FNQevEFDO8rwDzyYysbh/iRX3uJ0=; 
 b=MffX3tjnvA08k4VR+eDrx7Z2MRzfevOxvhAVVCskQg+bkH3gpcvT0VmckfkCTjdUvfrCdsDQQ05U1gZ9shEqOao3rQhEgomTGehqc+egMFXBYftMZ2fBqRLiwFgIMWu1GbO3PuCmOwTgHNpn670zLfeIaJi3dFX6vZe+4Fad+yc=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=collabora.com;
 spf=pass  smtp.mailfrom=mark.filion@collabora.com;
 dmarc=pass header.from=<mark.filion@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1743624683; 
 s=zohomail; d=collabora.com; i=mark.filion@collabora.com;
 h=Message-ID:Subject:Subject:From:From:To:To:Date:Date:Content-Type:MIME-Version:Message-Id:Reply-To:Cc;
 bh=DQvlADrncdMP294FNQevEFDO8rwDzyYysbh/iRX3uJ0=;
 b=XIKL9FOQBajaZJdyeztOxayydfN4EkeuKNEVtUCdqse5UpkQQskReHRORYz4iSMT
 kqpAnhiQ5fc1CecIeiVin5rHZnFMe+i31qcqOd1TGwbspEO0YeBET2AYzDxHexRkdCi
 6d7Fi0OP1qzJc2vFYIwOLvSDjPnN2RGHhhhfOZes=
Received: by mx.zohomail.com with SMTPS id 1743624679843501.78817314549815;
 Wed, 2 Apr 2025 13:11:19 -0700 (PDT)
Message-ID: <43a5b4435333cdfa94b4cd819f4a7763a035d6bd.camel@collabora.com>
Subject: 2025 X.Org Board of Directors Elections Nomination period is NOW OPEN
From: Mark Filion <mark.filion@collabora.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 02 Apr 2025 16:11:18 -0400
Content-Type: multipart/alternative; boundary="=-z2ypPjUl1urTkvCye74A"
User-Agent: Evolution 3.54.3 (3.54.3-1.fc41app1) 
MIME-Version: 1.0
X-ZohoMailClient: External
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--=-z2ypPjUl1urTkvCye74A
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello!

We are seeking nominations for candidates for election to the X.Org
Foundation Board of Directors. All X.Org Foundation members are
eligible for election to the board.

Nominations for the 2025 election are now open and will remain open
until 23:59 UTC on 16 April 2025.

The Board consists of directors elected from the membership. Each year,
an election is held to bring the total number of directors to eight.
The four members receiving the highest vote totals will serve as
directors for two year terms.

The directors who received two year terms starting in 2024 were Erik
Faye-Lund, Mark Filion, Neal Gompa and Simon Ser. They will continue to
serve until their term ends in 2026. Current directors whose term
expires in 2025 are Lyude Paul, Arkadiusz Hiler and Christopher
Michael. Additionally, a fourth board position is open following the
resignation of Simona Vetter in Q3 2024.

A director is expected to participate in the fortnightly IRC meeting to
discuss current business and to attend the annual meeting of the X.Org
Foundation, which will be held at a location determined in advance by
the Board of Directors.

A member may nominate themselves or any other member they feel is
qualified. Nominations should be sent to the Election Committee
at=C2=A0elections@x.org.

Nominees shall be required to be current members of the X.Org
Foundation, and submit a personal statement of up to 200 words that
will be provided to prospective voters. The collected statements, along
with the statement of contribution to the X.Org Foundation in the
member's account page on=C2=A0http://members.x.org, will be made available
to all voters to help them make their voting decisions.

Nominations, membership applications or renewals and completed personal
statements must be received no later than 23:59 UTC on 16 April 2025.

The slate of candidates will be published 23 April 2025 and candidate
Q&A will begin then. The deadline for Xorg membership applications and
renewals is 28 April 2025.

Best,=C2=A0

Mark Filion, on behalf of the X.Org BoD

--=-z2ypPjUl1urTkvCye74A
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head><style>pre,code,address {
  margin: 0px;
}
h1,h2,h3,h4,h5,h6 {
  margin-top: 0.2em;
  margin-bottom: 0.2em;
}
ol,ul {
  margin-top: 0em;
  margin-bottom: 0em;
}
blockquote {
  margin-top: 0em;
  margin-bottom: 0em;
}
</style></head><body><div style=3D"caret-color: rgb(0, 0, 0); color: rgb(0,=
 0, 0); font-family: Cantarell; font-style: normal; font-variant-caps: norm=
al; font-weight: 400; letter-spacing: normal; text-align: start; text-inden=
t: 0px; text-transform: none; white-space: normal; word-spacing: 0px; -webk=
it-tap-highlight-color: rgba(0, 0, 0, 0.4); -webkit-text-stroke-width: 0px;=
 text-decoration: none;">Hello!</div><div style=3D"caret-color: rgb(0, 0, 0=
); color: rgb(0, 0, 0); font-family: Cantarell; font-style: normal; font-va=
riant-caps: normal; font-weight: 400; letter-spacing: normal; text-align: s=
tart; text-indent: 0px; text-transform: none; white-space: normal; word-spa=
cing: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4); -webkit-text-st=
roke-width: 0px; text-decoration: none;"><br></div><div style=3D"caret-colo=
r: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: Cantarell; font-style: n=
ormal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal;=
 text-align: start; text-indent: 0px; text-transform: none; white-space: no=
rmal; word-spacing: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4); -=
webkit-text-stroke-width: 0px; text-decoration: none;">We are seeking nomin=
ations for candidates for election to the X.Org Foundation Board of Directo=
rs. All X.Org Foundation members are eligible for election to the board.</d=
iv><div style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-famil=
y: Cantarell; font-style: normal; font-variant-caps: normal; font-weight: 4=
00; letter-spacing: normal; text-align: start; text-indent: 0px; text-trans=
form: none; white-space: normal; word-spacing: 0px; -webkit-tap-highlight-c=
olor: rgba(0, 0, 0, 0.4); -webkit-text-stroke-width: 0px; text-decoration: =
none;"><br></div><div style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, =
0); font-family: Cantarell; font-style: normal; font-variant-caps: normal; =
font-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0=
px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-t=
ap-highlight-color: rgba(0, 0, 0, 0.4); -webkit-text-stroke-width: 0px; tex=
t-decoration: none;">Nominations for the 2025 election are now open and wil=
l remain open until 23:59 UTC on 16 April 2025.</div><div style=3D"caret-co=
lor: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: Cantarell; font-style:=
 normal; font-variant-caps: normal; font-weight: 400; letter-spacing: norma=
l; text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4);=
 -webkit-text-stroke-width: 0px; text-decoration: none;"><br></div><div sty=
le=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: Cantarel=
l; font-style: normal; font-variant-caps: normal; font-weight: 400; letter-=
spacing: normal; text-align: start; text-indent: 0px; text-transform: none;=
 white-space: normal; word-spacing: 0px; -webkit-tap-highlight-color: rgba(=
0, 0, 0, 0.4); -webkit-text-stroke-width: 0px; text-decoration: none;">The =
Board consists of directors elected from the membership. Each year, an elec=
tion is held to bring the total number of directors to eight. The four memb=
ers receiving the highest vote totals will serve as directors for two year =
terms.</div><div style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); f=
ont-family: Cantarell; font-style: normal; font-variant-caps: normal; font-=
weight: 400; letter-spacing: normal; text-align: start; text-indent: 0px; t=
ext-transform: none; white-space: normal; word-spacing: 0px; -webkit-tap-hi=
ghlight-color: rgba(0, 0, 0, 0.4); -webkit-text-stroke-width: 0px; text-dec=
oration: none;"><br></div><div style=3D"caret-color: rgb(0, 0, 0); color: r=
gb(0, 0, 0); font-family: Cantarell; font-style: normal; font-variant-caps:=
 normal; font-weight: 400; letter-spacing: normal; text-align: start; text-=
indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-tap-highlight-color: rgba(0, 0, 0, 0.4); -webkit-text-stroke-width:=
 0px; text-decoration: none;">The directors who received two year terms sta=
rting in 2024 were Erik Faye-Lund, Mark Filion, Neal Gompa and Simon Ser. T=
hey will continue to serve until their term ends in 2026. Current directors=
 whose term expires in 2025 are Lyude Paul, Arkadiusz Hiler and Christopher=
 Michael. Additionally, a fourth board position is open following the resig=
nation of Simona Vetter in Q3 2024.</div><div style=3D"caret-color: rgb(0, =
0, 0); color: rgb(0, 0, 0); font-family: Cantarell; font-style: normal; fon=
t-variant-caps: normal; font-weight: 400; letter-spacing: normal; text-alig=
n: start; text-indent: 0px; text-transform: none; white-space: normal; word=
-spacing: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4); -webkit-tex=
t-stroke-width: 0px; text-decoration: none;"><br></div><div style=3D"caret-=
color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: Cantarell; font-styl=
e: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: nor=
mal; text-align: start; text-indent: 0px; text-transform: none; white-space=
: normal; word-spacing: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4=
); -webkit-text-stroke-width: 0px; text-decoration: none;">A director is ex=
pected to participate in the fortnightly IRC meeting to discuss current bus=
iness and to attend the annual meeting of the X.Org Foundation, which will =
be held at a location determined in advance by the Board of Directors.</div=
><div style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family:=
 Cantarell; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-tap-highlight-col=
or: rgba(0, 0, 0, 0.4); -webkit-text-stroke-width: 0px; text-decoration: no=
ne;"><br></div><div style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0)=
; font-family: Cantarell; font-style: normal; font-variant-caps: normal; fo=
nt-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0px=
; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-tap=
-highlight-color: rgba(0, 0, 0, 0.4); -webkit-text-stroke-width: 0px; text-=
decoration: none;">A member may nominate themselves or any other member the=
y feel is qualified. Nominations should be sent to the Election Committee a=
t<span class=3D"Apple-converted-space">&nbsp;</span><a href=3D"mailto:elect=
ions@x.org" style=3D"color: rgb(46, 52, 54);">elections@x.org</a>.</div><di=
v style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: Can=
tarell; font-style: normal; font-variant-caps: normal; font-weight: 400; le=
tter-spacing: normal; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; word-spacing: 0px; -webkit-tap-highlight-color: =
rgba(0, 0, 0, 0.4); -webkit-text-stroke-width: 0px; text-decoration: none;"=
><br></div><div style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); fo=
nt-family: Cantarell; font-style: normal; font-variant-caps: normal; font-w=
eight: 400; letter-spacing: normal; text-align: start; text-indent: 0px; te=
xt-transform: none; white-space: normal; word-spacing: 0px; -webkit-tap-hig=
hlight-color: rgba(0, 0, 0, 0.4); -webkit-text-stroke-width: 0px; text-deco=
ration: none;">Nominees shall be required to be current members of the X.Or=
g Foundation, and submit a personal statement of up to 200 words that will =
be provided to prospective voters. The collected statements, along with the=
 statement of contribution to the X.Org Foundation in the member's account =
page on<span class=3D"Apple-converted-space">&nbsp;</span><a href=3D"http:/=
/members.x.org/" style=3D"color: rgb(46, 52, 54);">http://members.x.org</a>=
, will be made available to all voters to help them make their voting decis=
ions.</div><div style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); fo=
nt-family: Cantarell; font-style: normal; font-variant-caps: normal; font-w=
eight: 400; letter-spacing: normal; text-align: start; text-indent: 0px; te=
xt-transform: none; white-space: normal; word-spacing: 0px; -webkit-tap-hig=
hlight-color: rgba(0, 0, 0, 0.4); -webkit-text-stroke-width: 0px; text-deco=
ration: none;"><br></div><div style=3D"caret-color: rgb(0, 0, 0); color: rg=
b(0, 0, 0); font-family: Cantarell; font-style: normal; font-variant-caps: =
normal; font-weight: 400; letter-spacing: normal; text-align: start; text-i=
ndent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; -=
webkit-tap-highlight-color: rgba(0, 0, 0, 0.4); -webkit-text-stroke-width: =
0px; text-decoration: none;">Nominations, membership applications or renewa=
ls and completed personal statements must be received no later than 23:59 U=
TC on 16 April 2025.</div><div style=3D"caret-color: rgb(0, 0, 0); color: r=
gb(0, 0, 0); font-family: Cantarell; font-style: normal; font-variant-caps:=
 normal; font-weight: 400; letter-spacing: normal; text-align: start; text-=
indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-tap-highlight-color: rgba(0, 0, 0, 0.4); -webkit-text-stroke-width:=
 0px; text-decoration: none;"><br></div><div style=3D"caret-color: rgb(0, 0=
, 0); color: rgb(0, 0, 0); font-family: Cantarell; font-style: normal; font=
-variant-caps: normal; font-weight: 400; letter-spacing: normal; text-align=
: start; text-indent: 0px; text-transform: none; white-space: normal; word-=
spacing: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4); -webkit-text=
-stroke-width: 0px; text-decoration: none;">The slate of candidates will be=
 published 23 April 2025 and candidate Q&amp;A will begin then. The deadlin=
e for Xorg membership applications and renewals is 28 April 2025.</div><div=
 style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: Cant=
arell; font-style: normal; font-variant-caps: normal; font-weight: 400; let=
ter-spacing: normal; text-align: start; text-indent: 0px; text-transform: n=
one; white-space: normal; word-spacing: 0px; -webkit-tap-highlight-color: r=
gba(0, 0, 0, 0.4); -webkit-text-stroke-width: 0px; text-decoration: none;">=
<br></div><div style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); fon=
t-family: Cantarell; font-style: normal; font-variant-caps: normal; font-we=
ight: 400; letter-spacing: normal; text-align: start; text-indent: 0px; tex=
t-transform: none; white-space: normal; word-spacing: 0px; -webkit-tap-high=
light-color: rgba(0, 0, 0, 0.4); -webkit-text-stroke-width: 0px; text-decor=
ation: none;">Best,<span class=3D"Apple-converted-space">&nbsp;</span></div=
><div style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family:=
 Cantarell; font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-tap-highlight-col=
or: rgba(0, 0, 0, 0.4); -webkit-text-stroke-width: 0px; text-decoration: no=
ne;"><br></div><div style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0)=
; font-family: Cantarell; font-style: normal; font-variant-caps: normal; fo=
nt-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0px=
; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-tap=
-highlight-color: rgba(0, 0, 0, 0.4); -webkit-text-stroke-width: 0px; text-=
decoration: none;">Mark Filion, on behalf of the X.Org BoD</div><div><span>=
</span></div></body></html>

--=-z2ypPjUl1urTkvCye74A--
