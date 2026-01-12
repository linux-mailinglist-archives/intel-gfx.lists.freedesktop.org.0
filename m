Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A735D255A7
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jan 2026 16:30:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8786910E793;
	Thu, 15 Jan 2026 15:30:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=infineon.com header.i=@infineon.com header.b="BAFTMr8w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 427 seconds by postgrey-1.36 at gabe;
 Mon, 12 Jan 2026 21:08:02 UTC
Received: from smtp2.infineon.com (smtp2.infineon.com [217.10.52.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F1C410E17B
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jan 2026 21:08:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=infineon.com; i=@infineon.com; q=dns/txt; s=IFXMAIL;
 t=1768252083; x=1799788083;
 h=from:to:cc:subject:date:message-id:in-reply-to: mime-version;
 bh=kNW58q0vhnHE4IwENphTvFyQMUGpm//lPqdZcWsBYV0=;
 b=BAFTMr8wAY2bwMO3oGlrBq92sbqSQp4TS9Zgi8fuTX57ZOvKcSZRexBS
 q8/vRg5t7/jLg++ITNEIoohWLb2NqbK6DqYXbzJ+qXjfuoonIhvW0gTlk
 uGH3JUKGcGBLP2B2es5tnJ+Eph23xCYGaKD9TY6Du6apMTg0mw17+T/O9 s=;
X-CSE-ConnectionGUID: wU//zo2bRGqYVwwLtKJKkw==
X-CSE-MsgGUID: EinN0ee5SbultAP1DT7eUw==
X-IronPort-AV: E=McAfee;i="6800,10657,11669"; a="139229266"
X-IronPort-AV: E=Sophos;i="6.21,221,1763420400"; 
 d="scan'208,217";a="139229266"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO MUCSE805.infineon.com) ([172.23.29.31])
 by smtp2.infineon.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2026 22:00:54 +0100
Received: from MUCSE809.infineon.com (172.23.29.35) by MUCSE805.infineon.com
 (172.23.29.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.35; Mon, 12 Jan
 2026 22:00:53 +0100
Received: from MUCSE801.infineon.com (172.23.29.27) by MUCSE809.infineon.com
 (172.23.29.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.35; Mon, 12 Jan
 2026 22:00:53 +0100
Received: from MUCSE801.infineon.com ([fe80::1f12:7149:6e8:2b2]) by
 MUCSE801.infineon.com ([fe80::1f12:7149:6e8:2b2%14]) with mapi id
 15.02.2562.035; Mon, 12 Jan 2026 22:00:53 +0100
From: <support@infineon.com>
To: <nommensen1981@gmail.com>, <support@aoostar.com>, <support@chuwi.com>,
 <support@geekompc.com>, <support@morefine.com>, <support@acemagic.com>,
 <support@toptonpc.com>, <support@beelink.com>, <support@gmktec.com>,
 <support@msi.com>, <linux@hp.com>, <linux@dell.com>, <linux@lenovo.com>,
 <linux@asus.com>, <freebsd-current@freebsd.org>,
 <freebsd-hardware@freebsd.org>, <opensuse-kernel@opensuse.org>,
 <arch-general@lists.archlinux.org>, <fedora-kernel@lists.fedoraproject.org>,
 <debian-kernel@lists.debian.org>, <ubuntu-devel@lists.ubuntu.com>,
 <root@linuxmint.com>, <lm-sensors@lists.lm-sensors.org>,
 <linux-hwmon@vger.kernel.org>, <sales@ite.com.tw>, <support@ite.com.tw>,
 <gpuopen@amd.com>, <graphics-driver@amd.com>, <linux@amd.com>
CC: <support@lockheedmartin.com>, <support@boeing.com>, <support@ngc.com>,
 <support@rtx.com>, <support@baesystems.com>, <support@thalesgroup.com>,
 <info@rheinmetall.com>, <info@leonardocompany.com>, <info@saabgroup.com>,
 <support.industry@siemens.com>, <support@bosch.com>, <support@se.com>,
 <support@abb.com>, <support@rockwellautomation.com>, <support@advantech.com>, 
 <support@kontron.com>, <support@aaeon.com>, <support@adlinktech.com>,
 <support@iei.com.tw>, <support@dfi.com>, <support@portwell.com>,
 <support@nxp.com>, <support@renesas.com>, <support@microchip.com>,
 <support@broadcom.com>, <support@marvell.com>, <support@infineon.com>,
 <support@st.com>, <linux-kernel@intel.com>, <support@intel.com>,
 <support@amd.com>, <support@qti.qualcomm.com>, <support@realtek.com>,
 <support@creative.com>, <support@cmedia.com.tw>, <support@via.com.tw>,
 <support@esstech.com>, <support@cirrus.com>, <support@analog.com>,
 <support@ti.com>, <support@yamaha.com>, <support@focusrite.com>,
 <support@steinberg.de>, <support@behringer.com>, <support@pny.com>,
 <support@inno3d.com>, <support@gainward.com>, <support@palit.com>,
 <support@zotac.com>, <support@xfxforce.com>, <support@powercolor.com>,
 <support@sapphiretech.com>, <intel-gfx@lists.freedesktop.org>,
 <linux-bugs@nvidia.com>, <support@tyan.com>, <support@foxconn.com>,
 <support@ecs.com.tw>, <support@maxsun.com>, <support@colorful.cn>,
 <support@nzxt.com>, <support@evga.com>, <support@supermicro.com>,
 <support@biostar.com.tw>, <support@gigabyte.com>, <support@asrock.com>,
 <support@asus.com>, <support@minisforum.com>
Subject: [IFX-260112-1977499] RE: Structural hardware support gap on modern
 AMD systems: missing official AMD & ITE sensor, fan and power stack for Linux
 (all distros) and FreeBSD ~|~CRM0071640006510
Thread-Topic: [IFX-260112-1977499] RE: Structural hardware support gap on
 modern AMD systems: missing official AMD & ITE sensor, fan and power stack
 for Linux (all distros) and FreeBSD ~|~CRM0071640006510
Thread-Index: AQHchAaJMmCPRpeymkyJyp+Q6P15NQ==
Date: Mon, 12 Jan 2026 21:00:52 +0000
Message-ID: <54AFAFA44762482FA1F3D8408EB2FE2E1DC8406882C9@SUPPORT.INFINEON.COM>
In-Reply-To: <CACNpR7e_CKPqT6+qXr0u-+rGOsvcypih5TNE0rriHwXTJqYOiw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.32.22.196]
Content-Type: multipart/alternative;
 boundary="_000_54AFAFA44762482FA1F3D8408EB2FE2E1DC8406882C9SUPPORTINFI_"
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 15 Jan 2026 15:30:29 +0000
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

--_000_54AFAFA44762482FA1F3D8408EB2FE2E1DC8406882C9SUPPORTINFI_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Dear Sender,

Please use our other support options available at: https://www.infineon.com=
/support

For urgent inquiries kindly contact our hotline: https://www.infineon.com/c=
all





Best regards,
Infineon Technologies AG,
--
++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Infineon Technologies AG
Chairman of the Supervisory Board: Dr. Herbert Diess
Management Board: Jochen Hanebeck (CEO), Alexander Gorski, Elke Reichart, D=
r. Sven Schneider, Andreas Urschitz
Registered office: Neubiberg
Commercial register: M=FCnchen HRB 126492
++++++++++++++++++++++++++++++++++++++++++++++++++++++++

------------------- Original Message -------------------
From: nommensen1981@gmail.com;
Received: Mon Jan 12 2026 20:57:09 GMT+0100 (Central European Standard Time=
)
To: support@aoostar.com; support@chuwi.com; support@geekompc.com; support@m=
orefine.com; support@acemagic.com; support@toptonpc.com; support@beelink.co=
m; support@gmktec.com; support@msi.com; linux@hp.com; linux@dell.com; linux=
@lenovo.com; linux@asus.com; freebsd-current@freebsd.org; freebsd-hardware@=
freebsd.org; opensuse-kernel@opensuse.org; arch-general@lists.archlinux.org=
; fedora-kernel@lists.fedoraproject.org; debian-kernel@lists.debian.org; ub=
untu-devel@lists.ubuntu.com; root@linuxmint.com; lm-sensors@lists.lm-sensor=
s.org; linux-hwmon@vger.kernel.org; sales@ite.com.tw; support@ite.com.tw; g=
puopen@amd.com; graphics-driver@amd.com; linux@amd.com;
Cc: support@lockheedmartin.com; support@boeing.com; support@ngc.com; suppor=
t@rtx.com; support@baesystems.com; support@thalesgroup.com; info@rheinmetal=
l.com; info@leonardocompany.com; info@saabgroup.com; support.industry@sieme=
ns.com; support@bosch.com; support@se.com; support@abb.com; support@rockwel=
lautomation.com; support@advantech.com; support@kontron.com; support@aaeon.=
com; support@adlinktech.com; support@iei.com.tw; support@dfi.com; support@p=
ortwell.com; support@nxp.com; support@renesas.com; support@microchip.com; s=
upport@broadcom.com; support@marvell.com; support@infineon.com; support@st.=
com; linux-kernel@intel.com; support@intel.com; support@amd.com; support@qt=
i.qualcomm.com; support@realtek.com; support@creative.com; support@cmedia.c=
om.tw; support@via.com.tw; support@esstech.com; support@cirrus.com; support=
@analog.com; support@ti.com; support@yamaha.com; support@focusrite.com; sup=
port@steinberg.de; support@behringer.com; support@pny.com; support@inno3d.c=
om; support@gainward.com; support@palit.com; support@zotac.com; support@xfx=
force.com; support@powercolor.com; support@sapphiretech.com; intel-gfx@list=
s.freedesktop.org; linux-bugs@nvidia.com; support@tyan.com; support@foxconn=
.com; support@ecs.com.tw; support@maxsun.com; support@colorful.cn; support@=
nzxt.com; support@evga.com; support@supermicro.com; support@biostar.com.tw;=
 support@gigabyte.com; support@asrock.com; support@asus.com; support@minisf=
orum.com;
Subject: Structural hardware support gap on modern AMD systems: missing off=
icial AMD & ITE sensor, fan and power stack for Linux (all distros) and Fre=
eBSD



Caution: This e-mail originated outside Infineon Technologies. Please be ca=
utious when sharing information or opening attachments especially from unkn=
own senders. Refer to our intranet guide<https://intranet-content.infineon.=
com/explore/aboutinfineon/rules/informationsecurity/ug/SocialEngineering/Pa=
ges/SocialEngineeringElements_en.aspx> to help you identify Phishing email.




Dear AMD, ITE, OEM partners, Linux and FreeBSD maintainers,

this email describes a structural hardware support gap on modern AMD-based =
systems, affecting all Linux distributions and FreeBSD, specifically regard=
ing ITE Super-I/O chips, sensor access, fan control, and power management.

This is not a configuration problem and not distribution-specific.
It is a missing official vendor-supported driver and integration stack.

________________________________
1. Affected platforms (representative)

  *   Operating systems

     *   All Linux distributions (Ubuntu, Linux Mint, Debian, Fedora, Arch,=
 openSUSE, etc.)

     *   FreeBSD

  *   Hardware

     *   CPU: AMD Ryzen 6000 / 7000 / 8000 series (desktop, mobile, HS/HX)

     *   GPU: AMD Radeon iGPU/dGPU (RDNA2 / RDNA3, e.g. 780M)

     *   Mainboards, laptops and mini-PCs using ITE Super-I/O chips
(IT86xx / IT87xx / IT89xx families)

________________________________
2. Observed problem (Linux & FreeBSD)

On all Linux distributions and FreeBSD:

  *   ITE Super-I/O chips are detected but unsupported

     *   Typical output:
ITE IT86xx detected (to-be-written)

  *   No official driver for:

     *   motherboard temperatures

     *   voltages

     *   fan RPM

     *   PWM fan control

  *   CPU and GPU telemetry is fragmented and inconsistent

  *   Tools such as:

     *   lm-sensors, psensor, fancontrol (Linux)

     *   sysctl, hwmon, powerd (FreeBSD)
cannot operate safely without vendor support

  *   Users are forced to:

     *   rely on BIOS-only fan control

     *   use experimental or reverse-engineered drivers

     *   accept missing thermal visibility

This leads to:

  *   reduced system safety

  *   unnecessary fan noise

  *   poor power efficiency

  *   blocked adoption for non-technical users

________________________________
3. Why this works on Windows (important context)

On Windows systems:

  *   ITE provides proprietary reference drivers to OEMs

  *   OEMs integrate:

     *   ITE drivers

     *   Embedded Controller (EC) firmware

     *   ACPI tables

  *   Microsoft distributes these drivers via Windows Update

On Linux and FreeBSD:

  *   No public register documentation

  *   No official vendor drivers

  *   No OEM-exposed ACPI/EC interfaces

  *   Community developers cannot implement safe, complete support

________________________________
4. Root cause (clear responsibility split)

  *   ITE

     *   No public Super-I/O register specifications

     *   No official Linux or FreeBSD drivers

  *   OEMs

     *   Ship Linux/FreeBSD-capable hardware without sensor/fan support

     *   Do not expose EC/ACPI interfaces for non-Windows systems

  *   AMD

     *   No unified vendor-supported control stack for Linux and FreeBSD

     *   No official repository bundling CPU, GPU, sensor and power control

________________________________
5. Proposed solution (realistic and actionable)
A) Official AMD-supported repository

  *   Linux: official AMD repository (PPA / repo)

  *   FreeBSD: official AMD packages/ports

Containing:

  *   CPU power and thermal telemetry

  *   GPU telemetry and power limits

  *   OEM-approved sensor interfaces

  *   Safe fan control framework

________________________________
B) Official ITE support for Unix-like systems

One of the following:

  *   Public Super-I/O register documentation
or

  *   Vendor-maintained drivers for Linux and FreeBSD
or

  *   OEM-mediated abstraction layer shared across platforms

________________________________
C) Unified user-space control framework

Available on:

  *   Linux (all distributions)

  *   FreeBSD

With:

  *   Four fixed profiles:

     *   Power saving

     *   Quiet / Office

     *   Balanced

     *   Maximum performance

  *   Optional automatic mode

  *   Manual overrides for advanced users

  *   Safe defaults for families and seniors

________________________________
6. Why this matters

  *   Modern AMD hardware is powerful but artificially limited on Linux and=
 FreeBSD

  *   The issue affects all distributions, not just one ecosystem

  *   Lack of official hardware control blocks:

     *   OEM Linux offerings

     *   FreeBSD workstation and server use

     *   long-term stable systems

  *   This is a systemic vendor-level gap, not a community failure

________________________________
7. Request

We ask AMD, ITE and OEM partners to:

  *   treat Linux and FreeBSD as first-class platforms

  *   provide an official, supported hardware control stack

  *   stop forcing users and developers into unsafe reverse engineering

  *   coordinate with kernel, hwmon and FreeBSD maintainers

We are willing to provide logs, testing feedback and structured reports.

Kind regards,

Daniel Frank Nommensen



--_000_54AFAFA44762482FA1F3D8408EB2FE2E1DC8406882C9SUPPORTINFI_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
</head>
<body>
<div class=3D"ck-content" data-wrapper=3D"true" dir=3D"ltr" style=3D"--ck-i=
mage-style-spacing: 1.5em; --ck-inline-image-style-spacing: calc(var(--ck-i=
mage-style-spacing) / 2); font-family: Arial; font-size: 11pt;">
<div style=3D"font-family:Arial;font-size:11pt;">
<div style=3D"display:block;" id=3D"signature">
<div>
<div style=3D"font-family:;" dir=3D"ltr" data-wrapper=3D"true">
<div>
<div style=3D"font-family:;" data-wrapper=3D"true" dir=3D"ltr">
<p style=3D"margin: 0cm;"><span style=3D"font-family:Arial;font-size:11pt;"=
><span lang=3D"EN-US">Dear Sender,</span></span></p>
<p style=3D"margin: 0cm;"><br>
<span style=3D"font-family:Arial;font-size:11pt;"><span lang=3D"EN-US">Plea=
se use our other support options available at:&nbsp;</span></span><a href=
=3D"https://www.infineon.com/support" target=3D"_blank" title=3D"https://ww=
w.infineon.com/support"><span style=3D"font-family:Arial;font-size:11pt;"><=
span lang=3D"EN-US">https://www.infineon.com/support</span></span></a></p>
<p style=3D"margin: 0cm;"><br>
<span style=3D"font-family:Arial;font-size:11pt;"><span lang=3D"EN-US">For =
urgent inquiries kindly contact our hotline:&nbsp;</span></span><a href=3D"=
https://www.infineon.com/call" target=3D"_blank" title=3D"https://www.infin=
eon.com/call"><span style=3D"font-family:Arial;font-size:11pt;"><span lang=
=3D"EN-US">https://www.infineon.com/call</span></span></a></p>
<p style=3D"margin: 0cm;">&nbsp;</p>
<p style=3D"margin: 0cm;"><span style=3D"font-family:Arial;font-size:11pt;"=
><span lang=3D"EN-US">&nbsp;</span></span></p>
<p style=3D"margin: 0cm;"><span style=3D"font-family:Arial;font-size:11pt;"=
><span lang=3D"EN-US">Best regards,</span></span><br>
<span style=3D"font-family:Arial;font-size:11pt;"><span lang=3D"EN-US">Infi=
neon Technologies AG,</span></span><br>
<span style=3D"font-family:Arial;font-size:11pt;"><span lang=3D"EN-US">--</=
span></span><br>
<span style=3D"font-family:Arial;font-size:11pt;"><span lang=3D"EN-US">&#43=
;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43=
;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43=
;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43=
;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;</span></span><br>
<span style=3D"font-family:Arial;font-size:11pt;"><span lang=3D"EN-US">Infi=
neon Technologies AG</span></span><br>
<span style=3D"font-family:Arial;font-size:11pt;"><span lang=3D"EN-US">Chai=
rman of the Supervisory Board: Dr. Herbert Diess</span></span><br>
<span style=3D"font-family:Arial;font-size:11pt;"><span lang=3D"EN-US">Mana=
gement Board: Jochen Hanebeck (CEO), Alexander Gorski, Elke Reichart, Dr. S=
ven Schneider, Andreas Urschitz</span></span><br>
<span style=3D"font-family:Arial;font-size:11pt;"><span lang=3D"EN-US">Regi=
stered office: Neubiberg</span></span><br>
<span style=3D"font-family:Arial;font-size:11pt;"><span lang=3D"EN-US">Comm=
ercial register: M=FCnchen HRB 126492</span></span><br>
<span style=3D"font-family:Arial;font-size:11pt;"><span lang=3D"EN-US">&#43=
;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43=
;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43=
;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43=
;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;</span></span></p>
</div>
</div>
</div>
</div>
</div>
<p style=3D"margin: 0;"><span style=3D"font-family:Tahoma, Verdana, Arial;f=
ont-size:small;">------------------- Original Message -------------------</=
span><br>
<span style=3D"font-family:Tahoma, Verdana, Arial;font-size:small;"><b>From=
:</b> nommensen1981@gmail.com;&nbsp;</span><br>
<span style=3D"font-family:Tahoma, Verdana, Arial;font-size:small;"><b>Rece=
ived:</b> Mon Jan 12 2026 20:57:09 GMT&#43;0100 (Central European Standard =
Time)</span><br>
<span style=3D"font-family:Tahoma, Verdana, Arial;font-size:small;"><b>To:<=
/b> support@aoostar.com; support@chuwi.com; support@geekompc.com; support@m=
orefine.com; support@acemagic.com; support@toptonpc.com; support@beelink.co=
m; support@gmktec.com; support@msi.com;
 linux@hp.com; linux@dell.com; linux@lenovo.com; linux@asus.com; freebsd-cu=
rrent@freebsd.org; freebsd-hardware@freebsd.org; opensuse-kernel@opensuse.o=
rg; arch-general@lists.archlinux.org; fedora-kernel@lists.fedoraproject.org=
; debian-kernel@lists.debian.org;
 ubuntu-devel@lists.ubuntu.com; root@linuxmint.com; lm-sensors@lists.lm-sen=
sors.org; linux-hwmon@vger.kernel.org; sales@ite.com.tw; support@ite.com.tw=
; gpuopen@amd.com; graphics-driver@amd.com; linux@amd.com;&nbsp;</span><br>
<span style=3D"font-family:Tahoma, Verdana, Arial;font-size:small;"><b>Cc:<=
/b> support@lockheedmartin.com; support@boeing.com; support@ngc.com; suppor=
t@rtx.com; support@baesystems.com; support@thalesgroup.com; info@rheinmetal=
l.com; info@leonardocompany.com; info@saabgroup.com;
 support.industry@siemens.com; support@bosch.com; support@se.com; support@a=
bb.com; support@rockwellautomation.com; support@advantech.com; support@kont=
ron.com; support@aaeon.com; support@adlinktech.com; support@iei.com.tw; sup=
port@dfi.com; support@portwell.com;
 support@nxp.com; support@renesas.com; support@microchip.com; support@broad=
com.com; support@marvell.com; support@infineon.com; support@st.com; linux-k=
ernel@intel.com; support@intel.com; support@amd.com; support@qti.qualcomm.c=
om; support@realtek.com; support@creative.com;
 support@cmedia.com.tw; support@via.com.tw; support@esstech.com; support@ci=
rrus.com; support@analog.com; support@ti.com; support@yamaha.com; support@f=
ocusrite.com; support@steinberg.de; support@behringer.com; support@pny.com;=
 support@inno3d.com; support@gainward.com;
 support@palit.com; support@zotac.com; support@xfxforce.com; support@powerc=
olor.com; support@sapphiretech.com; intel-gfx@lists.freedesktop.org; linux-=
bugs@nvidia.com; support@tyan.com; support@foxconn.com; support@ecs.com.tw;=
 support@maxsun.com; support@colorful.cn;
 support@nzxt.com; support@evga.com; support@supermicro.com; support@biosta=
r.com.tw; support@gigabyte.com; support@asrock.com; support@asus.com; suppo=
rt@minisforum.com;&nbsp;</span><br>
<span style=3D"font-family:Tahoma, Verdana, Arial;font-size:small;"><b>Subj=
ect:</b> Structural hardware support gap on modern AMD systems: missing off=
icial AMD &amp; ITE sensor, fan and power stack for Linux (all distros) and=
 FreeBSD</span><br>
<br>
&nbsp;</p>
<div dir=3D"ltr">
<div style=3D"background-color:#FFE4B5;display:inline-block;font-family:cal=
ibri;padding:5px;width:auto;">
<table class=3D"table" style=3D"background-color:#FFE4B5;font-size:14px;wid=
th:auto;">
<tbody>
<tr>
<td aria-label=3D"Table cell"><strong>Caution</strong>:&nbsp;<span style=3D=
"font-family:arial,helvetica,clean,sans-serif;font-size:13px;">This e-mail =
originated outside Infineon Technologies. Please be cautious when sharing i=
nformation or opening attachments especially
 from unknown senders. Refer to our&nbsp;</span><a style=3D"font-family:ari=
al,helvetica,clean,sans-serif;font-size:13px;" href=3D"https://intranet-con=
tent.infineon.com/explore/aboutinfineon/rules/informationsecurity/ug/Social=
Engineering/Pages/SocialEngineeringElements_en.aspx"><span style=3D"backgro=
und-attachment:initial;background-clip:initial;background-image:initial;bac=
kground-origin:initial;background-position:initial;background-repeat:initia=
l;background-size:initial;">intranet
 guide</span></a><span style=3D"font-family:arial,helvetica,clean,sans-seri=
f;font-size:13px;">&nbsp;to help you identify Phishing email.</span><br>
&nbsp;</td>
</tr>
</tbody>
</table>
</div>
<p style=3D"margin: 0;"><br>
&nbsp;</p>
<div>
<div dir=3D"ltr">
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>Dear AMD, ITE, =
OEM partners, Linux and FreeBSD maintainers,</span></p>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>this email desc=
ribes a <strong>
structural hardware support gap on modern AMD-based systems</strong>, affec=
ting <strong>
all Linux distributions and FreeBSD</strong>, specifically regarding <stron=
g>ITE Super-I/O chips, sensor access, fan control, and power management</st=
rong>.</span></p>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>This is <strong=
>not a configuration problem</strong> and
<strong>not distribution-specific</strong>.</span><br>
<span>It is a <strong>missing official vendor-supported driver and integrat=
ion stack</strong>.</span></p>
<hr>
<h2><span>1. Affected platforms (representative)</span></h2>
<ul>
<li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span><strong>Operati=
ng systems</strong></span></p>
<ul>
<li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>All Linux distr=
ibutions (Ubuntu, Linux Mint, Debian, Fedora, Arch, openSUSE, etc.)</span><=
/p>
</li><li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span><strong>FreeBSD=
</strong></span></p>
</li></ul>
</li><li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span><strong>Hardwar=
e</strong></span></p>
<ul>
<li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>CPU: AMD Ryzen =
6000 / 7000 / 8000 series (desktop, mobile, HS/HX)</span></p>
</li><li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>GPU: AMD Radeon=
 iGPU/dGPU (RDNA2 / RDNA3, e.g. 780M)</span></p>
</li><li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>Mainboards, lap=
tops and mini-PCs using
<strong>ITE Super-I/O chips</strong></span><br>
<span>(IT86xx / IT87xx / IT89xx families)</span></p>
</li></ul>
</li></ul>
<hr>
<h2><span>2. Observed problem (Linux &amp; FreeBSD)</span></h2>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>On <strong>all =
Linux distributions and FreeBSD</strong>:</span></p>
<ul>
<li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>ITE Super-I/O c=
hips are detected but
<strong>unsupported</strong></span></p>
<ul>
<li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>Typical output:=
</span><br>
<code><span>ITE IT86xx detected (to-be-written)</span></code></p>
</li></ul>
</li><li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>No official dri=
ver for:</span></p>
<ul>
<li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>motherboard tem=
peratures</span></p>
</li><li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>voltages</span>=
</p>
</li><li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>fan RPM</span><=
/p>
</li><li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>PWM fan control=
</span></p>
</li></ul>
</li><li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>CPU and GPU tel=
emetry is <strong>
fragmented and inconsistent</strong></span></p>
</li><li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>Tools such as:<=
/span></p>
<ul>
<li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><code><span>lm-sensor=
s</span></code><span>,
</span><code><span>psensor</span></code><span>, </span><code><span>fancontr=
ol</span></code><span> (Linux)</span></p>
</li><li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><code><span>sysctl</s=
pan></code><span>,
</span><code><span>hwmon</span></code><span>, </span><code><span>powerd</sp=
an></code><span> (FreeBSD)</span><br>
<span>cannot operate safely without vendor support</span></p>
</li></ul>
</li><li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>Users are force=
d to:</span></p>
<ul>
<li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>rely on BIOS-on=
ly fan control</span></p>
</li><li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>use experimenta=
l or reverse-engineered drivers</span></p>
</li><li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>accept missing =
thermal visibility</span></p>
</li></ul>
</li></ul>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>This leads to:<=
/span></p>
<ul>
<li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>reduced system =
safety</span></p>
</li><li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>unnecessary fan=
 noise</span></p>
</li><li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>poor power effi=
ciency</span></p>
</li><li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>blocked adoptio=
n for non-technical users</span></p>
</li></ul>
<hr>
<h2><span>3. Why this works on Windows (important context)</span></h2>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>On Windows syst=
ems:</span></p>
<ul>
<li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span><strong>ITE</st=
rong> provides proprietary reference drivers to OEMs</span></p>
</li><li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span><strong>OEMs</s=
trong> integrate:</span></p>
<ul>
<li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>ITE drivers</sp=
an></p>
</li><li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>Embedded Contro=
ller (EC) firmware</span></p>
</li><li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>ACPI tables</sp=
an></p>
</li></ul>
</li><li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span><strong>Microso=
ft</strong> distributes these drivers via Windows Update</span></p>
</li></ul>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>On Linux and Fr=
eeBSD:</span></p>
<ul>
<li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>No public regis=
ter documentation</span></p>
</li><li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>No official ven=
dor drivers</span></p>
</li><li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>No OEM-exposed =
ACPI/EC interfaces</span></p>
</li><li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>Community devel=
opers cannot implement safe, complete support</span></p>
</li></ul>
<hr>
<h2><span>4. Root cause (clear responsibility split)</span></h2>
<ul>
<li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span><strong>ITE</st=
rong></span></p>
<ul>
<li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>No public Super=
-I/O register specifications</span></p>
</li><li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>No official Lin=
ux or FreeBSD drivers</span></p>
</li></ul>
</li><li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span><strong>OEMs</s=
trong></span></p>
<ul>
<li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>Ship Linux/Free=
BSD-capable hardware without sensor/fan support</span></p>
</li><li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>Do not expose E=
C/ACPI interfaces for non-Windows systems</span></p>
</li></ul>
</li><li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span><strong>AMD</st=
rong></span></p>
<ul>
<li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>No unified vend=
or-supported control stack for Linux and FreeBSD</span></p>
</li><li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>No official rep=
ository bundling CPU, GPU, sensor and power control</span></p>
</li></ul>
</li></ul>
<hr>
<h2><span>5. Proposed solution (realistic and actionable)</span></h2>
<h3><span>A) Official AMD-supported repository</span></h3>
<ul>
<li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>Linux: official=
 AMD repository (PPA / repo)</span></p>
</li><li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>FreeBSD: offici=
al AMD packages/ports</span></p>
</li></ul>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>Containing:</sp=
an></p>
<ul>
<li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>CPU power and t=
hermal telemetry</span></p>
</li><li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>GPU telemetry a=
nd power limits</span></p>
</li><li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>OEM-approved se=
nsor interfaces</span></p>
</li><li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>Safe fan contro=
l framework</span></p>
</li></ul>
<hr>
<h3><span>B) Official ITE support for Unix-like systems</span></h3>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>One of the foll=
owing:</span></p>
<ul>
<li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>Public Super-I/=
O register documentation</span><br>
<span><strong>or</strong></span></p>
</li><li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>Vendor-maintain=
ed drivers for Linux and FreeBSD</span><br>
<span><strong>or</strong></span></p>
</li><li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>OEM-mediated ab=
straction layer shared across platforms</span></p>
</li></ul>
<hr>
<h3><span>C) Unified user-space control framework</span></h3>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>Available on:</=
span></p>
<ul>
<li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>Linux (all dist=
ributions)</span></p>
</li><li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>FreeBSD</span><=
/p>
</li></ul>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>With:</span></p=
>
<ul>
<li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>Four fixed prof=
iles:</span></p>
<ol start=3D"1">
<li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>Power saving</s=
pan></p>
</li><li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>Quiet / Office<=
/span></p>
</li><li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>Balanced</span>=
</p>
</li><li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>Maximum perform=
ance</span></p>
</li></ol>
</li><li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>Optional automa=
tic mode</span></p>
</li><li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>Manual override=
s for advanced users</span></p>
</li><li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>Safe defaults f=
or families and seniors</span></p>
</li></ul>
<hr>
<h2><span>6. Why this matters</span></h2>
<ul>
<li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>Modern AMD hard=
ware is powerful but
<strong>artificially limited</strong> on Linux and FreeBSD</span></p>
</li><li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>The issue affec=
ts <strong>
all distributions</strong>, not just one ecosystem</span></p>
</li><li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>Lack of officia=
l hardware control blocks:</span></p>
<ul>
<li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>OEM Linux offer=
ings</span></p>
</li><li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>FreeBSD worksta=
tion and server use</span></p>
</li><li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>long-term stabl=
e systems</span></p>
</li></ul>
</li><li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>This is a <stro=
ng>systemic vendor-level gap</strong>, not a community failure</span></p>
</li></ul>
<hr>
<h2><span>7. Request</span></h2>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>We ask AMD, ITE=
 and OEM partners to:</span></p>
<ul>
<li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>treat Linux and=
 FreeBSD as
<strong>first-class platforms</strong></span></p>
</li><li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>provide an offi=
cial, supported hardware control stack</span></p>
</li><li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>stop forcing us=
ers and developers into unsafe reverse engineering</span></p>
</li><li>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>coordinate with=
 kernel, hwmon and FreeBSD maintainers</span></p>
</li></ul>
<p class=3D"gmail-isSelectedEnd" style=3D"margin: 0;"><span>We are willing =
to provide logs, testing feedback and structured reports.</span></p>
<p style=3D"margin: 0;"><span>Kind regards,</span></p>
<p style=3D"margin: 0;">Daniel Frank Nommensen</p>
<p style=3D"margin: 0;"><br>
&nbsp;</p>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_54AFAFA44762482FA1F3D8408EB2FE2E1DC8406882C9SUPPORTINFI_--
