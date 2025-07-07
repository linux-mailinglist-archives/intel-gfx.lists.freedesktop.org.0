Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E15E3AFB676
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Jul 2025 16:49:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B9F710E4C0;
	Mon,  7 Jul 2025 14:49:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=collabora.com header.i=mark.filion@collabora.com header.b="Y7mjZT8x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com
 [136.143.188.112])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E56D810E4B6
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Jul 2025 14:49:21 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1751899760; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=EgnXBCAXrTsiIkpSa+juPf0EEFb1ebBmt7/9JOFfI6/DLysZDIpJuqQi1WUPyAGG2feUbzJPbc/TSgSbdWD88APwlai8B1qgS0f7cE50MmZG8krg/+XCNaC64qHN5yKm/M2WfnozDxuizrY0f6D8wbNfadnpubkfNYAlFtLWMuA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1751899760;
 h=Content-Type:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To:Cc;
 bh=9Ilz6TbvLiWANRj0b5qj9UZsgmub4RFW3zueA/Rsq7E=; 
 b=n3B9/pHiF0Y4Aku2ADBoQFfh5uIvwj4ovEu4TE2K0LvPTOx5jmCfH3vEttv3XX5DK9BCikLUpu3O5uW9Uq6B7ecO97MSNatw+PYD3Dn2v/8Vi5sXzL3tMDz5VSaqpIUd68k/Rw8P/yg+P2JjbHjNAfoJeQx4wOXHzNn9AE42MPM=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=collabora.com;
 spf=pass  smtp.mailfrom=mark.filion@collabora.com;
 dmarc=pass header.from=<mark.filion@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1751899760; 
 s=zohomail; d=collabora.com; i=mark.filion@collabora.com;
 h=Message-ID:Subject:Subject:From:From:To:To:Date:Date:Content-Type:MIME-Version:Message-Id:Reply-To:Cc;
 bh=9Ilz6TbvLiWANRj0b5qj9UZsgmub4RFW3zueA/Rsq7E=;
 b=Y7mjZT8xQ10UdXMvsFzvvd20cyY4RJOP9rdXm/kyM3XdoBh20GNjz2MWyefj8YLZ
 pm0LyK9L+5jBI8BL1jZsV3uu1cLbQWfqGgjN/VPttY3dRql6+8BesU/k7aztaG3waZm
 Z9XRbd0H8L/ZRzFZvZYbOFkMm2biGiAbpfReZ5/M=
Received: by mx.zohomail.com with SMTPS id 1751899758289676.4334326487319;
 Mon, 7 Jul 2025 07:49:18 -0700 (PDT)
Message-ID: <ec10ce4e863a3b6ca3eb76d3f3ee973d8628c059.camel@collabora.com>
Subject: Reminder: Final week to submit a talk for XDC 2025!
From: Mark Filion <mark.filion@collabora.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 07 Jul 2025 10:49:17 -0400
Content-Type: multipart/alternative; boundary="=-EWQwrTCRbxkeXYAlQn/j"
User-Agent: Evolution 3.56.2 (3.56.2-1.fc42app2) 
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

--=-EWQwrTCRbxkeXYAlQn/j
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello!

It's the final week to submit a talk for XDC 2025, which will
take place at the TU Wien Kuppelsaal in Vienna, Austria on 29
September to 1 October. CfP ends this coming Friday, 11 July at 23:59
CEST.

=C2=A0=C2=A0=C2=A0=C2=A0https://xdc2025.x.org
=C2=A0=C2=A0
As usual, the conference is free of charge and open to the general
public. If you plan on attending, please make sure to register as early
as possible:

=C2=A0=C2=A0=C2=A0=C2=A0https://indico.freedesktop.org/event/10/registratio=
ns/

In addition to registration, the CfP is now open for talks, demos, and
workshops at XDC 2025. While any serious proposal will be gratefully
considered, topics of interest to X.Org and freedesktop.org developers
are encouraged. The program focus is on new development, ongoing
challenges and anything else that will spark discussions among
attendees in the hallway track.

We are open to talks across all layers of the graphics stack, from the
kernel to desktop environments / graphical applications and about how
to make things better for the developers who build them. Head to the
CfP page to learn more:

=C2=A0=C2=A0=C2=A0=C2=A0https://indico.freedesktop.org/event/10/abstracts/

The deadline for submissions Friday, 11 July 2025.

We are looking forward to seeing you in Vienna! If you have any
questions, please email the organizer (hfink at snap.com), adding on
CC the X.org board (board at foundation.x.org).

And don't forget, you can follow us on Mastodon for all the latest
updates and to stay connected:

=C2=A0=C2=A0=C2=A0=C2=A0https://floss.social/@XOrgDevConf

Best,

Mark

--=-EWQwrTCRbxkeXYAlQn/j
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
</style></head><body><div>H<span style=3D"caret-color: rgb(46, 52, 54); col=
or: rgb(46, 52, 54); font-family: &quot;Adwaita Mono&quot;;">ello!</span></=
div><div><br style=3D"caret-color: rgb(46, 52, 54); color: rgb(46, 52, 54);=
 font-family: &quot;Adwaita Mono&quot;;"><span style=3D"caret-color: rgb(46=
, 52, 54); color: rgb(46, 52, 54); font-family: &quot;Adwaita Mono&quot;;">=
It's the final week to submit a talk for XDC 2025, which will</span><br sty=
le=3D"caret-color: rgb(46, 52, 54); color: rgb(46, 52, 54); font-family: &q=
uot;Adwaita Mono&quot;;"><span style=3D"caret-color: rgb(46, 52, 54); color=
: rgb(46, 52, 54); font-family: &quot;Adwaita Mono&quot;;">take place at th=
e TU Wien Kuppelsaal in Vienna, Austria on 29</span><br style=3D"caret-colo=
r: rgb(46, 52, 54); color: rgb(46, 52, 54); font-family: &quot;Adwaita Mono=
&quot;;"><span style=3D"caret-color: rgb(46, 52, 54); color: rgb(46, 52, 54=
); font-family: &quot;Adwaita Mono&quot;;">September to 1 October. CfP ends=
 this coming Friday, 11 July at 23:59 CEST.</span><br style=3D"caret-color:=
 rgb(46, 52, 54); color: rgb(46, 52, 54); font-family: &quot;Adwaita Mono&q=
uot;;"><br style=3D"caret-color: rgb(46, 52, 54); color: rgb(46, 52, 54); f=
ont-family: &quot;Adwaita Mono&quot;;"><span style=3D"caret-color: rgb(46, =
52, 54); color: rgb(46, 52, 54); font-family: &quot;Adwaita Mono&quot;;">&n=
bsp;&nbsp;&nbsp;&nbsp;</span><a href=3D"https://xdc2025.x.org/" title=3D"Cl=
ick to open https://xdc2025.x.org/" style=3D"font-family: &quot;Adwaita Mon=
o&quot;;">https://xdc2025.x.org</a><br style=3D"caret-color: rgb(46, 52, 54=
); color: rgb(46, 52, 54); font-family: &quot;Adwaita Mono&quot;;"><span st=
yle=3D"caret-color: rgb(46, 52, 54); color: rgb(46, 52, 54); font-family: &=
quot;Adwaita Mono&quot;;">&nbsp;&nbsp;</span><br style=3D"caret-color: rgb(=
46, 52, 54); color: rgb(46, 52, 54); font-family: &quot;Adwaita Mono&quot;;=
"><span style=3D"caret-color: rgb(46, 52, 54); color: rgb(46, 52, 54); font=
-family: &quot;Adwaita Mono&quot;;">As usual, the conference is free of cha=
rge and open to the general</span><br style=3D"caret-color: rgb(46, 52, 54)=
; color: rgb(46, 52, 54); font-family: &quot;Adwaita Mono&quot;;"><span sty=
le=3D"caret-color: rgb(46, 52, 54); color: rgb(46, 52, 54); font-family: &q=
uot;Adwaita Mono&quot;;">public. If you plan on attending, please make sure=
 to register as early</span><br style=3D"caret-color: rgb(46, 52, 54); colo=
r: rgb(46, 52, 54); font-family: &quot;Adwaita Mono&quot;;"><span style=3D"=
caret-color: rgb(46, 52, 54); color: rgb(46, 52, 54); font-family: &quot;Ad=
waita Mono&quot;;">as possible:</span><br style=3D"caret-color: rgb(46, 52,=
 54); color: rgb(46, 52, 54); font-family: &quot;Adwaita Mono&quot;;"><br s=
tyle=3D"caret-color: rgb(46, 52, 54); color: rgb(46, 52, 54); font-family: =
&quot;Adwaita Mono&quot;;"><span style=3D"caret-color: rgb(46, 52, 54); col=
or: rgb(46, 52, 54); font-family: &quot;Adwaita Mono&quot;;">&nbsp;&nbsp;&n=
bsp;&nbsp;</span><a href=3D"https://indico.freedesktop.org/event/10/registr=
ations/" title=3D"Click to open https://indico.freedesktop.org/event/10/reg=
istrations/" style=3D"font-family: &quot;Adwaita Mono&quot;;">https://indic=
o.freedesktop.org/event/10/registrations/</a><br style=3D"caret-color: rgb(=
46, 52, 54); color: rgb(46, 52, 54); font-family: &quot;Adwaita Mono&quot;;=
"><br style=3D"caret-color: rgb(46, 52, 54); color: rgb(46, 52, 54); font-f=
amily: &quot;Adwaita Mono&quot;;"><span style=3D"caret-color: rgb(46, 52, 5=
4); color: rgb(46, 52, 54); font-family: &quot;Adwaita Mono&quot;;">In addi=
tion to registration, the CfP is now open for talks, demos, and</span><br s=
tyle=3D"caret-color: rgb(46, 52, 54); color: rgb(46, 52, 54); font-family: =
&quot;Adwaita Mono&quot;;"><span style=3D"caret-color: rgb(46, 52, 54); col=
or: rgb(46, 52, 54); font-family: &quot;Adwaita Mono&quot;;">workshops at X=
DC 2025. While any serious proposal will be gratefully</span><br style=3D"c=
aret-color: rgb(46, 52, 54); color: rgb(46, 52, 54); font-family: &quot;Adw=
aita Mono&quot;;"><span style=3D"caret-color: rgb(46, 52, 54); color: rgb(4=
6, 52, 54); font-family: &quot;Adwaita Mono&quot;;">considered, topics of i=
nterest to X.Org and freedesktop.org developers</span><br style=3D"caret-co=
lor: rgb(46, 52, 54); color: rgb(46, 52, 54); font-family: &quot;Adwaita Mo=
no&quot;;"><span style=3D"caret-color: rgb(46, 52, 54); color: rgb(46, 52, =
54); font-family: &quot;Adwaita Mono&quot;;">are encouraged. The program fo=
cus is on new development, ongoing</span><br style=3D"caret-color: rgb(46, =
52, 54); color: rgb(46, 52, 54); font-family: &quot;Adwaita Mono&quot;;"><s=
pan style=3D"caret-color: rgb(46, 52, 54); color: rgb(46, 52, 54); font-fam=
ily: &quot;Adwaita Mono&quot;;">challenges and anything else that will spar=
k discussions among</span><br style=3D"caret-color: rgb(46, 52, 54); color:=
 rgb(46, 52, 54); font-family: &quot;Adwaita Mono&quot;;"><span style=3D"ca=
ret-color: rgb(46, 52, 54); color: rgb(46, 52, 54); font-family: &quot;Adwa=
ita Mono&quot;;">attendees in the hallway track.</span><br style=3D"caret-c=
olor: rgb(46, 52, 54); color: rgb(46, 52, 54); font-family: &quot;Adwaita M=
ono&quot;;"><br style=3D"caret-color: rgb(46, 52, 54); color: rgb(46, 52, 5=
4); font-family: &quot;Adwaita Mono&quot;;"><span style=3D"caret-color: rgb=
(46, 52, 54); color: rgb(46, 52, 54); font-family: &quot;Adwaita Mono&quot;=
;">We are open to talks across all layers of the graphics stack, from the</=
span><br style=3D"caret-color: rgb(46, 52, 54); color: rgb(46, 52, 54); fon=
t-family: &quot;Adwaita Mono&quot;;"><span style=3D"caret-color: rgb(46, 52=
, 54); color: rgb(46, 52, 54); font-family: &quot;Adwaita Mono&quot;;">kern=
el to desktop environments / graphical applications and about how</span><br=
 style=3D"caret-color: rgb(46, 52, 54); color: rgb(46, 52, 54); font-family=
: &quot;Adwaita Mono&quot;;"><span style=3D"caret-color: rgb(46, 52, 54); c=
olor: rgb(46, 52, 54); font-family: &quot;Adwaita Mono&quot;;">to make thin=
gs better for the developers who build them. Head to the</span><br style=3D=
"caret-color: rgb(46, 52, 54); color: rgb(46, 52, 54); font-family: &quot;A=
dwaita Mono&quot;;"><span style=3D"caret-color: rgb(46, 52, 54); color: rgb=
(46, 52, 54); font-family: &quot;Adwaita Mono&quot;;">CfP page to learn mor=
e:</span><br style=3D"caret-color: rgb(46, 52, 54); color: rgb(46, 52, 54);=
 font-family: &quot;Adwaita Mono&quot;;"><br style=3D"caret-color: rgb(46, =
52, 54); color: rgb(46, 52, 54); font-family: &quot;Adwaita Mono&quot;;"><s=
pan style=3D"caret-color: rgb(46, 52, 54); color: rgb(46, 52, 54); font-fam=
ily: &quot;Adwaita Mono&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;</span><a href=3D"h=
ttps://indico.freedesktop.org/event/10/abstracts/" title=3D"Click to open h=
ttps://indico.freedesktop.org/event/10/abstracts/" style=3D"font-family: &q=
uot;Adwaita Mono&quot;;">https://indico.freedesktop.org/event/10/abstracts/=
</a><br style=3D"caret-color: rgb(46, 52, 54); color: rgb(46, 52, 54); font=
-family: &quot;Adwaita Mono&quot;;"><br style=3D"caret-color: rgb(46, 52, 5=
4); color: rgb(46, 52, 54); font-family: &quot;Adwaita Mono&quot;;"><span s=
tyle=3D"caret-color: rgb(46, 52, 54); color: rgb(46, 52, 54); font-family: =
&quot;Adwaita Mono&quot;;">The deadline for submissions Friday, 11 July 202=
5.</span><br style=3D"caret-color: rgb(46, 52, 54); color: rgb(46, 52, 54);=
 font-family: &quot;Adwaita Mono&quot;;"><br style=3D"caret-color: rgb(46, =
52, 54); color: rgb(46, 52, 54); font-family: &quot;Adwaita Mono&quot;;"><s=
pan style=3D"caret-color: rgb(46, 52, 54); color: rgb(46, 52, 54); font-fam=
ily: &quot;Adwaita Mono&quot;;">We are looking forward to seeing you in Vie=
nna! If you have any</span><br style=3D"caret-color: rgb(46, 52, 54); color=
: rgb(46, 52, 54); font-family: &quot;Adwaita Mono&quot;;"><span style=3D"c=
aret-color: rgb(46, 52, 54); color: rgb(46, 52, 54); font-family: &quot;Adw=
aita Mono&quot;;">questions, please email the organizer (hfink at snap.com)=
, adding on</span><br style=3D"caret-color: rgb(46, 52, 54); color: rgb(46,=
 52, 54); font-family: &quot;Adwaita Mono&quot;;"><span style=3D"caret-colo=
r: rgb(46, 52, 54); color: rgb(46, 52, 54); font-family: &quot;Adwaita Mono=
&quot;;">CC the X.org board (board at foundation.x.org).</span><br style=3D=
"caret-color: rgb(46, 52, 54); color: rgb(46, 52, 54); font-family: &quot;A=
dwaita Mono&quot;;"><br style=3D"caret-color: rgb(46, 52, 54); color: rgb(4=
6, 52, 54); font-family: &quot;Adwaita Mono&quot;;"><span style=3D"caret-co=
lor: rgb(46, 52, 54); color: rgb(46, 52, 54); font-family: &quot;Adwaita Mo=
no&quot;;">And don't forget, you can follow us on Mastodon for all the late=
st</span><br style=3D"caret-color: rgb(46, 52, 54); color: rgb(46, 52, 54);=
 font-family: &quot;Adwaita Mono&quot;;"><span style=3D"caret-color: rgb(46=
, 52, 54); color: rgb(46, 52, 54); font-family: &quot;Adwaita Mono&quot;;">=
updates and to stay connected:</span><br style=3D"caret-color: rgb(46, 52, =
54); color: rgb(46, 52, 54); font-family: &quot;Adwaita Mono&quot;;"><br st=
yle=3D"caret-color: rgb(46, 52, 54); color: rgb(46, 52, 54); font-family: &=
quot;Adwaita Mono&quot;;"><span style=3D"caret-color: rgb(46, 52, 54); colo=
r: rgb(46, 52, 54); font-family: &quot;Adwaita Mono&quot;;">&nbsp;&nbsp;&nb=
sp;&nbsp;</span><a href=3D"https://floss.social/@XOrgDevConf" title=3D"Clic=
k to open https://floss.social/@XOrgDevConf" style=3D"font-family: &quot;Ad=
waita Mono&quot;;">https://floss.social/@XOrgDevConf</a><br style=3D"caret-=
color: rgb(46, 52, 54); color: rgb(46, 52, 54); font-family: &quot;Adwaita =
Mono&quot;;"><br style=3D"caret-color: rgb(46, 52, 54); color: rgb(46, 52, =
54); font-family: &quot;Adwaita Mono&quot;;"><span style=3D"caret-color: rg=
b(46, 52, 54); color: rgb(46, 52, 54); font-family: &quot;Adwaita Mono&quot=
;;">Best,</span><br style=3D"caret-color: rgb(46, 52, 54); color: rgb(46, 5=
2, 54); font-family: &quot;Adwaita Mono&quot;;"><br style=3D"caret-color: r=
gb(46, 52, 54); color: rgb(46, 52, 54); font-family: &quot;Adwaita Mono&quo=
t;;"><span style=3D"caret-color: rgb(46, 52, 54); color: rgb(46, 52, 54); f=
ont-family: &quot;Adwaita Mono&quot;;">Mark</span></div><div><span></span><=
/div></body></html>

--=-EWQwrTCRbxkeXYAlQn/j--
