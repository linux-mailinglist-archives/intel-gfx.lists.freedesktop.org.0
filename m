Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE9A4899D9
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jan 2022 14:25:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BCB912B5C0;
	Mon, 10 Jan 2022 13:24:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from APC01-SG2-obe.outbound.protection.outlook.com
 (mail-sgaapc01olkn2084.outbound.protection.outlook.com [40.92.53.84])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98FF010E15F
 for <intel-gfx@lists.freedesktop.org>; Sat,  8 Jan 2022 08:56:03 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IIfxmOOXp60lojQVi/+cC/oCFK0mm1yfQBtQDnP5Zeeey7VdNQP2FtFFFCTl3pG1/mUD6QgMEmB+DmjAdtvHZkiDMyQSoGlnWoTnUqrBR/YnolkN2UaxDNzyB4bE5hwT2H2IlEAyBwb0uk3egWKwXuuhQgeK9Hth0MecRS5vXsiTHgW5RE+I3qQFEHSKH0u7NAz3CVGicrhkItcoSMmvgpg1sRT1tWZQwOje9Mxf9PKpA8OopNPVetRzk/MScXq1LcgiADDfsJHvqSPD/sOvY0q5CYsAnFJRzQ+v46db0iDAf7n5TdkqDhHeLJ9zhNf6BBjv1i2/1riqjPG9Y5P6Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XQNHgvY4TvccFvPeo0tEzzXzc5zOmaQ/1Ue2iu3Gu/g=;
 b=mKp1EV/A/L6nCvXY30YnfDUqYXh9tVbQxaBCirGghCPPKW2yVs+w5G1B7pChuNoXleq/GfKbSt5uLfEZYa6+IJEnEHnOczkSfQ3X12BsikE5yuAax6KvEs4MbYXT0MJ6KsreUc+fbRTotUZ27b9rAFGKqTtmPnQq/AHv+28MIM2PcsLGSQpaD0zgfusDSIShDxF7Zd3WmxfjQTYcKLYQM0gbtukjBu98gPrG21fmWKoowTOknlW+y+3gAFD3V+fZUPlaKkQRShNyXx6GXanGP2KxthxDKNYfB9d0v/3akhuhEMXIdSP709LM2is820+LIwD5P0uOynzpBqwRqIczLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XQNHgvY4TvccFvPeo0tEzzXzc5zOmaQ/1Ue2iu3Gu/g=;
 b=X9dSP/XWXo6bHWxvI01bHJ69zE5na0dReeyM9k9Sy0xn0ZlxA/DeB0YNKnQe/AMkFrNJqZ/G6mS9YUy3oLTB8j4bpND92HRapYSXtpQ4kuuQlqCE45pyccolNqNPQoFzKxwxAXx3ktlEFfJfHnnHbHBG7Ir/3MlkJ6lwT44/v+QkJ90e0YMz924X6BL6FBpxYOdmqT0978AEPI50eueW1Nq+evdNTfJ89RiolxxUxkrxGPb7VaAgCtVUsGQmh0lO5sj/0ddUYhMMQ9PRcOmQUBXU9QzG1ZRfsk/Ez1hxzsjv/QBSA5QdaxECwy4kII8SogFvCej/YonUZH4Pc9q/QA==
Received: from PS2PR03MB3719.apcprd03.prod.outlook.com (2603:1096:300:38::18)
 by SG2PR03MB3338.apcprd03.prod.outlook.com (2603:1096:4:17::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4888.7; Sat, 8 Jan
 2022 08:55:58 +0000
Received: from PS2PR03MB3719.apcprd03.prod.outlook.com
 ([fe80::f9e6:8a12:82ba:99ca]) by PS2PR03MB3719.apcprd03.prod.outlook.com
 ([fe80::f9e6:8a12:82ba:99ca%5]) with mapi id 15.20.4867.006; Sat, 8 Jan 2022
 08:55:57 +0000
From: Ashish Arora <ashisharora.linux@outlook.com>
To: Orlando Chamberlain <redecorating@protonmail.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Thread-Topic: [PATCH] drm/i915: Discard large BIOS framebuffers causing
 display corruption.
Thread-Index: AQHYBE5G/QSI5yAchkqDOVM07m5d8qxY0iIw
Date: Sat, 8 Jan 2022 08:55:57 +0000
Message-ID: <PS2PR03MB3719596734B3AA83DA6C9ED9F34E9@PS2PR03MB3719.apcprd03.prod.outlook.com>
References: <20220108050812.6303-1-redecorating@protonmail.com>
In-Reply-To: <20220108050812.6303-1-redecorating@protonmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-tmn: [k7YC91lhotD9mIcn736PzRErU6CAmHgK]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a07150d6-1c98-4a88-8902-08d9d284afa9
x-ms-traffictypediagnostic: SG2PR03MB3338:EE_
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2pG1DeUcfxiLZOlcnPYJxYf4qb3OhQl9QwHchss7mE9pEiivmxaDoWvoab00r/pmlFU4PBWU06UHVchsXzDSMvENxd+KBpavioHm59ft6VbMW3ubNjgEu9I2ZZsVWM5EQVqB9icLS5SPt2XETgcfzLt+Jd/GoelMA7UX4YO4waV+lHQhqK9PPbvcVQiU6YK50+6roBwfpTnLQquS1cHqC6tI9CRyW/YcCN/mzMe3qhX7GQZ0QN86WntApB/JIDc9qjynwq/ifxCnqPX2RZy+cdTC5FlOlBa0PvI2skpcWZSN++FNun1StJ1M9yW7XfjBg/Jg14OyD4SjMVtSvdYYQVmg3LwRryiPSYVEX5oziofLF9kw7YSCp0/OAklwNzPPZjdaE64fA4x+g3MYmxX+4A9elhKquRixMBbTSnxcl3YeHtQrHCOWI9uPr3WX/ZoR4u8DoKpP4K8zXHK2GO8DAVhBUOWSQNDQ2hlP3vw9vtzPBB4fuaxvnMxJM6ubkDY0VhcGweQOmbeZhDLre0bPMTLco+Opu9LQ+FS6lK5sOZMoDOrCFx+B51tT6/0Blt9bc/N+EjBsQ7gWrZCZMYUL6DWpK4ue1/YyHY2KZylCMVBnrHkJxCtdhujWR7Y+P6DJBQ/If8Q1bfpwBudXLtu6Mf+1eAPLSdIsZADjwA3y7II=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0uA8FbaAFuWPqfnrzV797RhOqXSEweRGAifKqmpqs3+bPiW5kGua48PxtHC+?=
 =?us-ascii?Q?Qn9I5wRLydvS0qWOYO+4y/o7E8jR6/n3GdSonO1rSevKyNr/S4qkMW0R4zfm?=
 =?us-ascii?Q?jU2GiEuMP19HXg/dLSuTlYT6sfizm7OjFkyvqLj2ETnUFDUvktQKGzdl+OTq?=
 =?us-ascii?Q?6q06BZ/MA8ImPGVZEe6BmWOsg7BznWUL4D5jwL3K5DTs5kAGSs3ti4/yQkip?=
 =?us-ascii?Q?1LGctj8Ktl4z3j007ACcOhwD+SdYwIRyXiu2HDhhgGeUYGX8Onpu2NVEVb+6?=
 =?us-ascii?Q?Lv9BbKePJ9TLU7DF3cS/Pz9mwntLRXlVKiROauEx+YOClABzBelj6dNFtRvc?=
 =?us-ascii?Q?QPRLgPZONTOZnSmRbJc52kPAUJQ6vIg0J6UlDfqQLRekmL4DcaOmvukzh1Rs?=
 =?us-ascii?Q?lQ93qhUvbVvWRbwiFMIfmneDVz64yhgcq9+Ouy+o4yA3nN2IItQ0xQJnxXiJ?=
 =?us-ascii?Q?0oGUUxiCoTLQuERj3Qe7XTWIH21I6c7PxRDiWuU8CcPCQQaZkU9zqP3QsNDn?=
 =?us-ascii?Q?da4u3L6bBG46N7CHGBo2hvjnAlrTslL6UdeE/LabqNd9CL//QRKEoL+BqSV8?=
 =?us-ascii?Q?c7oKxaxLMFnq5ucfBMookl2W8CRXTjvu+CxR+SyYUKePACmeuerrS0Fe8s9t?=
 =?us-ascii?Q?VA3MO4j4PuP5YDspiV9GSjwAgEDJGOn+zhMf/0ODMyUEQUfHCZZZd77UOQyp?=
 =?us-ascii?Q?PrcSJQLlCkqEn8uGP4yuYsdc8DYVJOdWbbS1hci+EogJjZ+vEct8mwIndhVT?=
 =?us-ascii?Q?PA32pTMNEkfRLy+QspbDlu6I8jcuZPZf5hGOwVQR+Pcjb7Ll08aWlmFFKBfQ?=
 =?us-ascii?Q?L76ovsIBzh2cCPrf14Uuf7LWTdvuUASS6H6NENuquae//uKyYhogZEO2Cfmr?=
 =?us-ascii?Q?alNdBnergSvEJTi78nimbeyfMuSkzYwmFT5MT68gRVJcLxMwBVfx9ylhjQu7?=
 =?us-ascii?Q?NkZsikob4TAG3+iAlDE0hd6g49jSBMl3MyR4891ZztQ=3D?=
Content-Type: multipart/alternative;
 boundary="_000_PS2PR03MB3719596734B3AA83DA6C9ED9F34E9PS2PR03MB3719apcp_"
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PS2PR03MB3719.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: a07150d6-1c98-4a88-8902-08d9d284afa9
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2022 08:55:57.3806 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2PR03MB3338
X-Mailman-Approved-At: Mon, 10 Jan 2022 13:24:14 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Discard large BIOS framebuffers
 causing display corruption.
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
Cc: Aun-Ali Zaidi <admin@kodeit.net>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--_000_PS2PR03MB3719596734B3AA83DA6C9ED9F34E9PS2PR03MB3719apcp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Orlando

Thanks for informing that the Macs are also affected :). I've sne the v2 of=
 the patch. You may try out if you want to.

Get Outlook for Android<https://aka.ms/AAb9ysg>
________________________________
From: Orlando Chamberlain <redecorating@protonmail.com>
Sent: Saturday, January 8, 2022 10:41:50 AM
To: jani.nikula@linux.intel.com <jani.nikula@linux.intel.com>
Cc: ashisharora.linux@outlook.com <ashisharora.linux@outlook.com>; intel-gf=
x@lists.freedesktop.org <intel-gfx@lists.freedesktop.org>; joonas.lahtinen@=
linux.intel.com <joonas.lahtinen@linux.intel.com>; linux-kernel@vger.kernel=
.org <linux-kernel@vger.kernel.org>; rodrigo.vivi@intel.com <rodrigo.vivi@i=
ntel.com>; Aun-Ali Zaidi <admin@kodeit.net>
Subject: Re: [PATCH] drm/i915: Discard large BIOS framebuffers causing disp=
lay corruption.

I haven't observed "display corruption", but on my MacBookPro16,1 the botto=
m
and right edges of the TTY are not on the screen, so a few lines of text
cannot be seen.

This also occurs on the internal displays of all (as far as I know) other
2018-2020 Intel Macbooks when using the Intel GPU (The 15" and 16" ones
also have an AMDGPU, but this issue occurs when they have the Intel GPU
set as the boot gpu).

There's a similar patch that hasn't been sent upstream that people with the=
se
Macbooks have been using:
https://github.com/aunali1/linux-mbp-arch/blob/master/7001-drm-i915-fbdev-D=
iscard-BIOS-framebuffers-exceeding-h.patch

Cc: Aun-Ali Zaidi <admin@kodeit.net>

--
Thanks,
Orlando


--_000_PS2PR03MB3719596734B3AA83DA6C9ED9F34E9PS2PR03MB3719apcp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
" dir=3D"auto">
Hi Orlando</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
" dir=3D"auto">
<br>
</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
" dir=3D"auto">
Thanks for informing that the Macs are also affected :). I've sne the v2 of=
 the patch. You may try out if you want to.</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
" dir=3D"auto">
<br>
</div>
<div id=3D"ms-outlook-mobile-signature" dir=3D"auto">Get <a href=3D"https:/=
/aka.ms/AAb9ysg">
Outlook for Android</a></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Orlando Chamberlain &=
lt;redecorating@protonmail.com&gt;<br>
<b>Sent:</b> Saturday, January 8, 2022 10:41:50 AM<br>
<b>To:</b> jani.nikula@linux.intel.com &lt;jani.nikula@linux.intel.com&gt;<=
br>
<b>Cc:</b> ashisharora.linux@outlook.com &lt;ashisharora.linux@outlook.com&=
gt;; intel-gfx@lists.freedesktop.org &lt;intel-gfx@lists.freedesktop.org&gt=
;; joonas.lahtinen@linux.intel.com &lt;joonas.lahtinen@linux.intel.com&gt;;=
 linux-kernel@vger.kernel.org &lt;linux-kernel@vger.kernel.org&gt;;
 rodrigo.vivi@intel.com &lt;rodrigo.vivi@intel.com&gt;; Aun-Ali Zaidi &lt;a=
dmin@kodeit.net&gt;<br>
<b>Subject:</b> Re: [PATCH] drm/i915: Discard large BIOS framebuffers causi=
ng display corruption.</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">I haven't observed &quot;display corruption&quot;,=
 but on my MacBookPro16,1 the bottom<br>
and right edges of the TTY are not on the screen, so a few lines of text<br=
>
cannot be seen.<br>
<br>
This also occurs on the internal displays of all (as far as I know) other<b=
r>
2018-2020 Intel Macbooks when using the Intel GPU (The 15&quot; and 16&quot=
; ones<br>
also have an AMDGPU, but this issue occurs when they have the Intel GPU<br>
set as the boot gpu).<br>
<br>
There's a similar patch that hasn't been sent upstream that people with the=
se<br>
Macbooks have been using:<br>
<a href=3D"https://github.com/aunali1/linux-mbp-arch/blob/master/7001-drm-i=
915-fbdev-Discard-BIOS-framebuffers-exceeding-h.patch">https://github.com/a=
unali1/linux-mbp-arch/blob/master/7001-drm-i915-fbdev-Discard-BIOS-framebuf=
fers-exceeding-h.patch</a><br>
<br>
Cc: Aun-Ali Zaidi &lt;admin@kodeit.net&gt;<br>
<br>
--<br>
Thanks,<br>
Orlando<br>
<br>
</div>
</span></font></div>
</body>
</html>

--_000_PS2PR03MB3719596734B3AA83DA6C9ED9F34E9PS2PR03MB3719apcp_--
