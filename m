Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA8434899E0
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jan 2022 14:25:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D39E11AA8A;
	Mon, 10 Jan 2022 13:25:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from APC01-SG2-obe.outbound.protection.outlook.com
 (mail-sgaapc01olkn2063.outbound.protection.outlook.com [40.92.53.63])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40DA910ECDC
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jan 2022 15:02:09 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YvMhG5wn5YQy4ZACyCmY/3djSS03uBN9czQ0G5vyu+TR3WBKAYA48sMz4+ZNI/HPtfL1DflmNoFIHirIfe3/NwfVN1o+qd/hAd3tzHRkAZaeAAKPPHaGf4taMFhRca6gXxrLknRN3cYcHg2UmE4ST6MyDWyAwJeSQ0of4gIXl5ymBJswMWBnm/drL4vi5zsMeSlW3m9dao0JFNsoJxrMQ1l4XONozDnrx03za8grDrnH0CX1DKJs/dOoOFoysHqRKwnq21MHkMOdbhBzv5lmHO1npgqI2QMvhUaGnmSRyDJh3zwDeVAUvLfhiTzGS/uvATy1ylX/BzAIFoxFKw6aOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YOlzmKgV8jhEUlJiuPOj5B0fPykx9VzkrlA9YmEP9vc=;
 b=E3L9BOFOmjwO4mkHyat/4kO6K52vhhrx1636QwyKWljKF6V/89BEcHg6zZbvEt1rPA2ZQ5QT1ncLH9cm8FYJuTpm/PXFcJMqhHXfqXSNyXE698EV69JOsUGeoYVz0hoGjOaVcdWS+Fyn8GoARWvJobyAJAshdWcJuKuNCq6RDkn277bURz+RtsKhBj2RcnPyZilTqllpBlJTbqlBpCBuBjQUbLpNRaEuSgBj1nerTsTPnx5YXY4S45txANzRs7HnNf13nn5c/ILvisi7oC2ip3SNCGlC0Kp3ypAN0MYmyIO7Ecevmz7L6pMPnetneEVFIu6vuEsCLARvlMW95sOgdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YOlzmKgV8jhEUlJiuPOj5B0fPykx9VzkrlA9YmEP9vc=;
 b=a63uZUM6GE1GPhKYVLY+MvCN5N1syNtktf9Qoc/Pclr7rNs6bHrMH2Kz+OsFEQsL2KS78jtcm3zyV3V6qanRNLD2A00kz7w/IhpQF940zvfnn8C4nnmkRe9X/5nVRg1HCYl+YMXZkg3YAyIazn7tXYaZDnGaeigwDgt0BU09idjaBLz9HrhZaoeOkDPkpTqR9tsKSKlzr1Q7801s54ON/GQGzDxuXYvOpTtrLM7LkDkE8n321tEEfm/taJe+iy6p08QKpQGPL/et4Din+tMVnfS5S7HAUznQdc8CC92Vv50ZH58hPcAgWrTmjz1zTeoqupEYfWf3UUfpyfGCy+sj+A==
Received: from PS2PR03MB3719.apcprd03.prod.outlook.com (2603:1096:300:38::18)
 by KL1PR03MB6333.apcprd03.prod.outlook.com (2603:1096:820:a9::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4888.4; Fri, 7 Jan
 2022 15:02:00 +0000
Received: from PS2PR03MB3719.apcprd03.prod.outlook.com
 ([fe80::f9e6:8a12:82ba:99ca]) by PS2PR03MB3719.apcprd03.prod.outlook.com
 ([fe80::f9e6:8a12:82ba:99ca%5]) with mapi id 15.20.4867.006; Fri, 7 Jan 2022
 15:02:00 +0000
From: Ashish Arora <ashisharora.linux@outlook.com>
To: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 "rodrigo.vivi@intel.com" <rodrigo.vivi@intel.com>
Thread-Topic: [PATCH - v2] drm/i915: Discard large BIOS framebuffers causing
 display corruption.
Thread-Index: AQHYA9eFTE2HHhRbvk6Po01oClw61g==
Date: Fri, 7 Jan 2022 15:02:00 +0000
Message-ID: <F14712CC-6057-4E8B-8694-E014B79EF718@outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [0/Qyiq32ICJhQ3Xq58b9o9e1UR1EkuQRX34/JuDqBGAlr72zhE/kLVeUZINUgTEv]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: af26bed8-5764-49c1-9528-08d9d1eea85d
x-ms-traffictypediagnostic: KL1PR03MB6333:EE_
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: T8CgN2AeGiHIcFvCxI7mJtDthW9+VwWMWmS6XjY9z99EGWiPfUvDXbcCK8GHQSiyymikikbIO8EeeRSScl+vpJ4PMUzYE5PHdCVAyDJA5dnG4Dxu4OJiw9tTVoBTIPMFzrvYXj44kzkq+y/k8Z7kI98scxMgYWBN3EQZC/txvbmpzOQVBbk+VRoGkEkXIJjQCsVzhKopUSFGhD8bZj9vWGFtVnQj7IKYQatALgOEPKpbLOUwS93/iDC7Fytj6KTuJHf4bysC9CjC6Sp0jzmoWxLFDb3IGwnGYeo1U3FxPCcx/mGdRhH98lN438m+Iu4req05v6p7zm8+2S5r5/Wo6CPez/+B5CXtKDW6VvKHr4xc7oahGA0CiK73iyCzp6N8Dybl9uqOUD1LrFv3c1bcRlO8y0q9Wqict7IVlNpf0nAo5bJsuMBA/KV5dN56VXxXE2ecai1Que41gx3Al0XiRAxdExjY6GMFryR18egl76Q2OtyDhZRjKxr/0Q5LMqh7BGpuJuQ/pnbSnBNCblK0940pX8YWw/ATHLp6Je5pdT+yFNAs3LPwPX/PuUTFimx8eS4Q+CaD/PltbHLFRSHOmg==
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fcSHNXEc6VKolcZ2+i7D8p+0rzHczw5g4pwONO+KSRL4V7xzRQTUJL6bAbkK?=
 =?us-ascii?Q?Ws+2gO7cjQftparBKUHhHZqM6adCPDVMvBLxEb/Uustx1xOElHffAf26Q6Fv?=
 =?us-ascii?Q?IjQCoHKZ9xXdb/SI+3USB8e3qV06wN0McvrBGil+MJek53cemGyMT8wCcpdS?=
 =?us-ascii?Q?DZAkOM9UiJCysUCRsjRUSFi6Eyxg3MywPDMwgUdbXffOqf0sWnHVjRdolwPS?=
 =?us-ascii?Q?QSf9RyoS9BDibxEXjiAYQep0kFrxeXN3PQhVu4H89aVUoMnZ9wZkg8o2ego5?=
 =?us-ascii?Q?3Ew9S778ZG6U31NiP5M6tWg8hTzsW0nYrwmRFuLyrkjGwgehiLBAwJX+x14X?=
 =?us-ascii?Q?YJRehHeguOmuzhGfut+aB+A2pc0DN0FElJf50qU2ktgYeixVdt5mNWXBUbGq?=
 =?us-ascii?Q?p8peqHgJQT+JmIAETd0KXvn4hD1yjeLN4SldGAGJgqRlTwWd8pJ+NF4TFTOx?=
 =?us-ascii?Q?Hb4TXpZV81ayPdfE9A5ZKjR1rtqWzmKIQdpKK9DaZymVC/z0qr4i5oCA3/hA?=
 =?us-ascii?Q?GPc/6xcvkm9SWwdp/yKYoZJzZ576+Dpn/BAijptZLrn9nhgAfgi1yvU7ETpy?=
 =?us-ascii?Q?rBo7VetBqF7rc+PSjF89c9/5oMNkVKuwye2YMYWMkY7usyjaVgsCtoN7dBob?=
 =?us-ascii?Q?Fn1iC0rluXHAPBTenumTCBS2V2Eh1jRPMQ6Hwa36NmIyPvtAgzFUmzRkNXI+?=
 =?us-ascii?Q?8ZvD2vEZh5DImuD8JtI1tvf6b1jkXjKMyOdn4/dn0fMSOHgVjoXgbbh0a4bj?=
 =?us-ascii?Q?7FyiKOtQyTNloYblhGtuFzW6R14Gga1qhpJvHIMPR2H+6swZBCFT51nX1Bi4?=
 =?us-ascii?Q?W5HtgbbskolNLpAVKe9VfQaGXvIMeXSxASxH42cbF3X1Yzpx610vl11K9g0Y?=
 =?us-ascii?Q?Vz+4/qIPJXjrcznOY5uhxYUBP7iwfF0ZzjwIzmRHZV8GfBscoIUMQVkVQr2O?=
 =?us-ascii?Q?vEt4f+vCGP1M53Zb0q0IwHWvt66ZGc1HEnjNhzlAe7zJ5YxuGxNlzI2L3kAA?=
 =?us-ascii?Q?WbS90lsbBxoBoEIDYYrZI5h7ZA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <6542C9258520CC45B7F0D913B9DF7A4F@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PS2PR03MB3719.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: af26bed8-5764-49c1-9528-08d9d1eea85d
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jan 2022 15:02:00.4263 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1PR03MB6333
X-Mailman-Approved-At: Mon, 10 Jan 2022 13:24:14 +0000
Subject: [Intel-gfx] [PATCH - v2] drm/i915: Discard large BIOS framebuffers
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

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
=20
 	if (intel_fb &&
-	    (sizes->fb_width > intel_fb->base.width ||
-	     sizes->fb_height > intel_fb->base.height)) {
+	    (sizes->fb_width !=3D intel_fb->base.width ||
+	     sizes->fb_height !=3D intel_fb->base.height)) {
 		drm_dbg_kms(&dev_priv->drm,
-			    "BIOS fb too small (%dx%d), we require (%dx%d),"
+			    "BIOS fb not valid (%dx%d), we require (%dx%d),"
 			    " releasing it\n",
 			    intel_fb->base.width, intel_fb->base.height,
 			    sizes->fb_width, sizes->fb_height);
--=20
2.25.1


