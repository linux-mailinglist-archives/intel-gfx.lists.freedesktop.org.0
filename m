Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E9954899D7
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jan 2022 14:25:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F85312AB06;
	Mon, 10 Jan 2022 13:24:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from APC01-PSA-obe.outbound.protection.outlook.com
 (mail-psaapc01olkn2021.outbound.protection.outlook.com [40.92.52.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02D4310E116
 for <intel-gfx@lists.freedesktop.org>; Sun,  9 Jan 2022 05:04:02 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=myCPYR8cwBx6fqKxUL4QLkRbfpbkXEvZt3NoRUasrGsl1VeQjg1DaW93HkN8k+gI/rvT6nUHITOWwGMwJtujuGXdV6zFNr5aZewNaTXaIL0zHbWbrCeRbrMgMI4abI0gl58BqAcsp8ebUdxosKdudFHPnnFkTrLKFk5yrhbiTJ3DqARoDIa/Yi9ImVyC50/3ov3UUbYYrOsLTgt13oxjxseaZ/fjyQrxCZczwCZ7zAHnMz4vWvHcQW4gppgHyqYVr8O1PDZMwFr22zDNQuhdZAB1JGif/d1ySCnZ0G9IMa4DyLNqIr6joDye0HCjUdeORfWrzA7gvjsYQW+lS9a7NQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/9oVuqrYQ+rlD9GvfrKgzrOJJ7DudcpCXQqQG3XKJkY=;
 b=BE2q+ZfbNiPItZnGxj1onOqyEKiyPHUvFhbPIDr6imydjIe/FC6Clyl/VMQRPsy+XUf1DyTqiNgn82B1LaTC+MmgM9vWfplFkiPHKFkq9+OW0e1KBbWSIn32K4Drqxbvwqj3W1YTBsquCx8I19KDmK3EYPKA/4Hgh0g23wdsQ9Nrp1R/M47dp90LX6/njqJZuo0w9OCppkyhGrJ9wQ/CGoOxx0RL+Wr8J4htb2mbUkNrQkSl9u+f2kgmg/hMfp4kTaFJFRiayyrrxtwRv8h0nrdOE9/sbhm/2sWgwSwHx6+NxayH8+0WEYxpJIjKmu3MAiEWYpXRxyMMbV5E5tx/mg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/9oVuqrYQ+rlD9GvfrKgzrOJJ7DudcpCXQqQG3XKJkY=;
 b=kYTMURvN2rvMvyK0PQdgVlw0+3UIQQayIDPk5YBlildBrGyoXp3GeIE2xFnrvLvznGduzNZ7rym1kt7TiKK0yKFTD6KVLuCEpv/e4hS4DG9ZZ/UTu5qabprfhlBDkoiS45+Hp2C+yCocaw8AQW94PZnOsQZG0fewLLYOZU5lfBHYLfn1UwkWHJpkCIbVDrZd2WWLHMNA+IUB2h6+RP4ueEISmGhSKOKFIcJ+Pq9C68OSp2ZKl+DsTlu/kUJfbuFV+sT3Kiq+YSN8wk78skr7Zbiv7MTT3BYFb7lo9+YHQUk0ZSWkBcFLNY0Gzn/yj0DKCruj5/F5AnzgTrBys9a2Cw==
Received: from PS2PR03MB3719.apcprd03.prod.outlook.com (2603:1096:300:38::18)
 by HK0PR03MB2914.apcprd03.prod.outlook.com (2603:1096:203:28::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4888.7; Sun, 9 Jan
 2022 05:03:51 +0000
Received: from PS2PR03MB3719.apcprd03.prod.outlook.com
 ([fe80::f9e6:8a12:82ba:99ca]) by PS2PR03MB3719.apcprd03.prod.outlook.com
 ([fe80::f9e6:8a12:82ba:99ca%5]) with mapi id 15.20.4867.006; Sun, 9 Jan 2022
 05:03:51 +0000
From: Ashish Arora <ashisharora.linux@outlook.com>
To: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 "rodrigo.vivi@intel.com" <rodrigo.vivi@intel.com>
Thread-Topic: [PATCH - v2] drm/i915: Discard large BIOS framebuffers causing
 display corruption.
Thread-Index: AQHYA9eFpE89Ck9T4kuni0WoXWhJAaxaJLmk
Date: Sun, 9 Jan 2022 05:03:51 +0000
Message-ID: <PS2PR03MB37199AA5AE5C20A823F45E3CF34F9@PS2PR03MB3719.apcprd03.prod.outlook.com>
References: <F14712CC-6057-4E8B-8694-E014B79EF718@outlook.com>
In-Reply-To: <F14712CC-6057-4E8B-8694-E014B79EF718@outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-tmn: [jl05UtuN9ZVN+jWpq7+QBtEe3Xc2Kc+K]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 539b6285-59aa-4e97-0bd8-08d9d32d6d7d
x-ms-traffictypediagnostic: HK0PR03MB2914:EE_
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ihw6ZbbJ6jsgB5WryZLPZJcHYvRCu/bXbweTsZVjJ3Nmqbn5mOhJdyNnYoBSMqUf+orZ8KibX71YcVHN9ZjCevozn7mILjlpxLNeZKFx5LLP/lMr/jntTtSq3eFa81hoBMzzRMtnu5ZTI5H9lVwNo2TkkNIBA9isCVJ59F53/I74wrU3Yo0zu4y25CMC0AHaUsUW10+pwp9Yu0yMEpZpB8MjAr6T7OvNlJiJg3zMHvZLgdZPy9rzBY2JeyCIb4tpi19SmYlAVlpPX7Wx8elmub5/MS4Q7rGD3WVrVMzxxl5EjDKA2fdjMrz9SmVTc0tLYTh7xM+2chbbnrl//IRWDppb6d1gjmi8KIMHLjjvoiqJmcyAoIH4PIVZFjFSdpUYeCvbjFULWGVzxG5b+kG5m0gNcH1180TczKZLgHxJFitYEyOwnujKYtBDDU6oKZgE27QC/00JHpJxn3ceolv0ncOS4ku3d3u7bP799GmO79sP3fu+dlPvCeBQyG4x1v2gAgWIfct4mB9WKQ3ETe9Lyzg9SU1WVi575529Yr1nAIwtrXJV9mt6ern/QztNF+jVPCRYjtPMBB0XRaDoFDgtwQ==
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?iDwTSqFjElF24uhTddbGcCEggFOK6A0rxuahZND2LVlaTGZ2Bn74FP9K4mJd?=
 =?us-ascii?Q?lMfT5zXNz0UOdqGFZ35tq9YueyxLDGCiyyzfmwz5COVCcrJrPpNa1OyOzxM8?=
 =?us-ascii?Q?yB/byJpm6OIOYb/4K1hsh8sd2MSJZhG6VwgXywHN6ZufLGAKTPRVak9dolaT?=
 =?us-ascii?Q?wfccD7jQ/7/kbp3VErB/QZmau9H20tMTGHXbTEKtnsKDGeVte9DksxZd83xI?=
 =?us-ascii?Q?HpDRun96gNZ/B0p4OurmGtQ4P4DmQn7a9dXarjK+sd1Duo6VBDKn38rak3jR?=
 =?us-ascii?Q?Fh3V0XyB//ZS7w8HxYMw33u2zX4djPGXlpCOJkYwqKGlvFynO7/SOu6L1lB/?=
 =?us-ascii?Q?ueQn2TiacrGQ84/utWUPzrbXZhPPxrZeD5kQFFF16WZMoWJa2zdc9EYXaGus?=
 =?us-ascii?Q?/TwNgu3ZkDldMIpgNJZiME+dbQYFa5/T3rJceWfWLVyj22kBlwfs7MPvCsfZ?=
 =?us-ascii?Q?xd3bpNFHWFq+AW95tLviLEr9C5IiIoNUFHf7Rb9LzrLq6OU5bjJ7RM6B/nVX?=
 =?us-ascii?Q?Jk+B/9tjvtewK7qU1X84kc7lo/jOSjTRLvY1P5Ovs8PVrrCnviDDE9hXJ50L?=
 =?us-ascii?Q?0ed4jGkM8lOcE6SHsp94XBaqQBKsaZ4TJ8gusBs+FQ0kl71ctmADUdv/JqTP?=
 =?us-ascii?Q?b+P+V/5gDUz7DCnp3Cvha5cB+qELidCaHWdvXVXackjHGbzUi58Ogk/r3yRI?=
 =?us-ascii?Q?6kDfhOI5NliBwy7fJtW/FREhVn7lVIf7Ab3tHTQm0KH/iQsCDsG6e+Td1sqn?=
 =?us-ascii?Q?3w8r1OMBQsTdt8/Ur3uNHq8UXg0HHnHoBOsGt9WIsZS0WsJgSmZnI+iHhsCy?=
 =?us-ascii?Q?kbV2OF1c8YMP9ieSVulDxzgce9XAdiw1OpG56bbC2adNFCMZzDe5LBhQrKoG?=
 =?us-ascii?Q?tbvn8xAR2tXs6+7aHrePjKTxjRJeFlSwWuNZvwr6UK/LF3uE+Pj0k6arRYBO?=
 =?us-ascii?Q?r+F01zELmGpgMkmGRrIBYAT5D2AQuIMhIq0nM10an7I=3D?=
Content-Type: multipart/alternative;
 boundary="_000_PS2PR03MB37199AA5AE5C20A823F45E3CF34F9PS2PR03MB3719apcp_"
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PS2PR03MB3719.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 539b6285-59aa-4e97-0bd8-08d9d32d6d7d
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2022 05:03:51.2755 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK0PR03MB2914
X-Mailman-Approved-At: Mon, 10 Jan 2022 13:24:14 +0000
Subject: Re: [Intel-gfx] [PATCH - v2] drm/i915: Discard large BIOS
 framebuffers causing display corruption.
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--_000_PS2PR03MB37199AA5AE5C20A823F45E3CF34F9PS2PR03MB3719apcp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Jani

Please review the patch and tell is something else is required.


________________________________
From: Ashish Arora <ashisharora.linux@outlook.com>
Sent: Friday, 7 January, 2022, 8:32 pm
To: jani.nikula@linux.intel.com; joonas.lahtinen@linux.intel.com; rodrigo.v=
ivi@intel.com
Cc: intel-gfx@lists.freedesktop.org; Linux Kernel Mailing List
Subject: [PATCH - v2] drm/i915: Discard large BIOS framebuffers causing dis=
play corruption.

From: Ashish Arora <ashisharora.linux@outlook.com>

On certain 4k panels, the BIOS framebuffer is larger than what panel
requires causing display corruption. Introduce a check for the same.

Signed-off-by: Ashish Arora <ashisharora.linux@outlook.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i=
915/display/intel_fbdev.c
index adc3a81be..0a64184df 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -194,10 +194,10 @@ static int intelfb_create(struct drm_fb_helper *helpe=
r,
         int ret;

         if (intel_fb &&
-           (sizes->fb_width > intel_fb->base.width ||
-            sizes->fb_height > intel_fb->base.height)) {
+           (sizes->fb_width !=3D intel_fb->base.width ||
+            sizes->fb_height !=3D intel_fb->base.height)) {
                 drm_dbg_kms(&dev_priv->drm,
-                           "BIOS fb too small (%dx%d), we require (%dx%d),=
"
+                           "BIOS fb not valid (%dx%d), we require (%dx%d),=
"
                             " releasing it\n",
                             intel_fb->base.width, intel_fb->base.height,
                             sizes->fb_width, sizes->fb_height);
--
2.25.1




--_000_PS2PR03MB37199AA5AE5C20A823F45E3CF34F9PS2PR03MB3719apcp_
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
Hi Jani</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
" dir=3D"auto">
<br>
</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
" dir=3D"auto">
Please review the patch and tell is something else is required.</div>
<div id=3D"ms-outlook-mobile-signature" dir=3D"auto">
<div dir=3D"auto"><br>
</div>
</div>
<div id=3D"id-d638465e-17ed-4fbd-9acc-c8f41931950e" class=3D"ms-outlook-mob=
ile-reference-message" dir=3D"auto">
<div style=3D"font-family: sans-serif; font-size: 12pt; color: rgb(0, 0, 0)=
;"><br>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg"><strong>From:</strong> Ashish Arora &lt;ashisharo=
ra.linux@outlook.com&gt;<br>
<strong>Sent:</strong> Friday, 7 January, 2022, 8:32 pm<br>
<strong>To:</strong> jani.nikula@linux.intel.com; joonas.lahtinen@linux.int=
el.com; rodrigo.vivi@intel.com<br>
<strong>Cc:</strong> intel-gfx@lists.freedesktop.org; Linux Kernel Mailing =
List<br>
<strong>Subject:</strong> [PATCH - v2] drm/i915: Discard large BIOS framebu=
ffers causing display corruption.<br>
</div>
<br>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><style><!-- .EmailQuote { margin-left: 1pt; pad=
ding-left: 4pt; border-left: #800000 2px solid; } --></style><font size=3D"=
2"><span style=3D"font-size:11pt;">
<div class=3D"PlainText">From: Ashish Arora &lt;ashisharora.linux@outlook.c=
om&gt;<br>
<br>
On certain 4k panels, the BIOS framebuffer is larger than what panel<br>
requires causing display corruption. Introduce a check for the same.<br>
<br>
Signed-off-by: Ashish Arora &lt;ashisharora.linux@outlook.com&gt;<br>
---<br>
&nbsp;drivers/gpu/drm/i915/display/intel_fbdev.c | 6 +++---<br>
&nbsp;1 file changed, 3 insertions(+), 3 deletions(-)<br>
<br>
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i=
915/display/intel_fbdev.c<br>
index adc3a81be..0a64184df 100644<br>
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c<br>
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c<br>
@@ -194,10 +194,10 @@ static int intelfb_create(struct drm_fb_helper *helpe=
r,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int ret;<br>
&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (intel_fb &amp;&amp;<br=
>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (sizes-&gt;fb=
_width &gt; intel_fb-&gt;base.width ||<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sizes-&=
gt;fb_height &gt; intel_fb-&gt;base.height)) {<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (sizes-&gt;fb=
_width !=3D intel_fb-&gt;base.width ||<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sizes-&=
gt;fb_height !=3D intel_fb-&gt;base.height)) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; drm_dbg_kms(&amp;dev_priv-&gt;drm,<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; &quot;BIOS fb too small (%dx%d), we require (%dx%d),&quot;<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; &quot;BIOS fb not valid (%dx%d), we require (%dx%d),&quot;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; &quot; releasing it\n&quot;,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; intel_fb-&gt;base.width, intel_fb-&gt;base.height,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; sizes-&gt;fb_width, sizes-&gt;fb_height);<br>
-- <br>
2.25.1<br>
<br>
<br>
</div>
</span></font><br>
</div>
</body>
</html>

--_000_PS2PR03MB37199AA5AE5C20A823F45E3CF34F9PS2PR03MB3719apcp_--
