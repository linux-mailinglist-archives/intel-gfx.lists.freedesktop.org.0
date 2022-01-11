Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F9FD48AF1B
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jan 2022 15:06:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A828910E52F;
	Tue, 11 Jan 2022 14:06:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from APC01-PSA-obe.outbound.protection.outlook.com
 (mail-psaapc01olkn2082.outbound.protection.outlook.com [40.92.52.82])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18C8210EA74
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jan 2022 07:55:26 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JMZashP1Eg6JB11YE0uNS9rwMIuvAkFiFYp5tuLsJweysntGDwT/dN4NRqaj9r9k71pAumrdrFo39HVNK1nLHyJxa4oTmytsbI9+stclgOHBVIdFvPwy9cfRMpX7VyTfhmNp4vU4AV4OhzPKD1TwkhY78ynpzl0gCyd+9VtZ7v1yr3UW0jICpKpu8MVSI+TDhYIQa4nA0BS+ThbrZSnBXr/c/ACDnAOLkSp1x7DT3AS94MkRsn2ycbftRaY8iBVtALGqFy7Idp0OH1iRojwnsr/GxQr0wIVUdFBeXljVrxnKmCSRXBrR0u438m0P/1+XyHE+1p7FfXYW3tO+Cy1/Gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qH0Qdh65hBTE2Q8c+DXRwIYOIoqdushMiNU/i2QYc9w=;
 b=ZPVmQpefYtWkdT/xUE3YUofWjivpURD5uf/4PRvinkjPQArqpv4Fo06Ijvj+EBcu8wL03UkDdQzW0v0uL+UceapEBC6Juua+UmD4dD8VUj7aqCsoL9FFD1SF1pjE9/fUJKgL3isHr8PXxyfJVLdrkJ3So9pUSToalPQ8z/99e8gEW4W7IdLVYxXt2jeYGrKytW/cD29QMndEX3el+fkqVTTC2CWzVkOeaHI0jF6k5JRO3Q/GH/jYKSlM3vCukEye5u5aJW8YFoqW7rkTW8wmeXK+VQ0I6VJw2f9wCOs2WDTXaGxzf77gMEDuv8fg5GElb/2RWbWcIuvRg9zQYKeGqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qH0Qdh65hBTE2Q8c+DXRwIYOIoqdushMiNU/i2QYc9w=;
 b=mjfz5SPWU3N7B0y8jGcNo2Qp0//dhARuC6dytd/cPuPGNS2ogbDURX7iJnqt7PKd7VVuIRGn8dKCiupmawGFUE9bQ7wKm3WBwTJOhGMbm5sDnjqQEgKUJ5ylU/5rCiomGpr8OcOYGHL4hPZbK6TdKKm9VS8V4/ghWm5YlP84pF2+aWBAzqTqAiT6tlOEwMIsXnWnp8GUAGwtjEs41M5c8jXB1bhv4Fs865syaSf72WkBlpSunYWyzAbCxF40AvsvHpaC2544Xn3iLE/fQ1nqmSLESa6FRMsx0MO2UY0LvQSPH6D2Oq9nJ4W59jiesjYZM28VVVqaRcVIRUJAUKDHrA==
Received: from PS2PR03MB3719.apcprd03.prod.outlook.com (2603:1096:300:38::18)
 by PS2PR03MB3765.apcprd03.prod.outlook.com (2603:1096:300:3f::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4888.4; Tue, 11 Jan
 2022 07:55:22 +0000
Received: from PS2PR03MB3719.apcprd03.prod.outlook.com
 ([fe80::f9e6:8a12:82ba:99ca]) by PS2PR03MB3719.apcprd03.prod.outlook.com
 ([fe80::f9e6:8a12:82ba:99ca%5]) with mapi id 15.20.4888.008; Tue, 11 Jan 2022
 07:55:22 +0000
From: Ashish Arora <ashisharora.linux@outlook.com>
To: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 "rodrigo.vivi@intel.com" <rodrigo.vivi@intel.com>
Thread-Topic: [PATCH - v3] drm/i915: Discard large BIOS framebuffers causing
 display corruption.
Thread-Index: AQHYBsCVM1Dct5Q6jUiXOKjP73prPQ==
Date: Tue, 11 Jan 2022 07:55:22 +0000
Message-ID: <31D69334-DEF9-41B7-968B-B847796926FF@outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [JrAFnfwQmY7e/LKGIZYu2kQUBuZS8bhlIgxXJ4vvAmjk3YsWKz6wgkddHtQwQoxW]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e091a454-f5c5-4858-5802-08d9d4d7b878
x-ms-traffictypediagnostic: PS2PR03MB3765:EE_
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oTHG46r0dpOV/o+9MKl8lXEs/30CdhsIcVpsSQ98q1VOJURnvIJFddLG0RLrF77GoDOjmR9cpP5sZjoOmj9TAhlZZ23ySarU2UkR8ioV44QCBtm9IGbfFlZ8SN1knaHX4E/ShOUCrc8etDPGgdunTfc66p7pz3Sideb72E2bhH/1CCCNPbnBEkXPMJgTegLPtD5zbZQ2L9LENECadSRmOq5wXn6VAs/NGx9Yz8aKtzydwMzF/ySWU3YeqyIo81NxGlYW78CM3awDJ8mwVWBe/33HP+c05bWELhH4+MqvGzU8OyhKdJyZltrDp9xXWqDDtiJnlE5N5wrdJOB6a6okhQ+94ZIVR5WY/B4ftlp8p8LtBIgd1bg910oxdqZYoJNlI9425Vg1eUGTZRLYneHa8ynR8PQZczs/tTD3x8spp+Nafq++AdKH4rfwY9bxQ35VIG24aOUIugRCuH3+6mu+EYG7eTj44WrjbtmUGdwDXeTgil8pfb1o5/cnNBZLFX1UfePJ7+z61sKIcx0DDrNIPLui2Cpj/W3tIJOX7zcjQAPfEt0RMbOgi0A++l0Qx7VycEDtDHPs3743cNG7yPR51w==
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?B9AIvvBSf8NuMa/TeiwmxSHzmkZybx//LudlerkbH47VRkK7b8Pf5NL5g3+0?=
 =?us-ascii?Q?pvPfOiV6xQTTsY+8UOvPYvHohDkaJ9T7IQOAyJ+gcymVAwqz2d1W9tKxpJIV?=
 =?us-ascii?Q?/L6jisxX31xP4063T8BoVapA3scUInv9OdzBGptlVlvQni57oZ9xzSNZhjcV?=
 =?us-ascii?Q?nfABbiv6PO4pDMf8lexC2wgFvIFdbBGu0/GQ2Az7Y0nLohh5iKwz/tLVwfmd?=
 =?us-ascii?Q?gWIl6DGj1okvuOMo/nBabNomVK1M1bN16NUyT0yH9tS6OFJTx/iFOhv9TA9m?=
 =?us-ascii?Q?Lp/CXsxghs3xmFYxXKzSzsfJrc5GD6YSFN/2Z2DtCh0xdDywedFVUHce1wcL?=
 =?us-ascii?Q?sle+PW791PASg8Q/lFiM/dvC9iomBMWS5+wOnmWe3PL6xmIwKDQYEviWtzvz?=
 =?us-ascii?Q?P/qs4bJoWrD4dy47iDL7PnwuVthopsp53ove8XIySTiv3Jl1PEnKOLSyZCNb?=
 =?us-ascii?Q?upFlehGFe8wiqjVjiPZqbTMFVIMQCom9rmLzbegZkbDFrtNPRF/w/2YbHfAG?=
 =?us-ascii?Q?zg2DqYwc5kwoPnsgfClReMilO9PmEMT3WxffXzav0cGY9r9yK4Ug8anoHO48?=
 =?us-ascii?Q?PoNFjQqz64Wkj71Zyy9l6HVBDFgZGLyeYTKrmC4w9JBScIqy8K5PstZiMoqU?=
 =?us-ascii?Q?dIHTIwEFgs9B+WrvJdBhiaO4+A5wKhjTTaxjFwGqugLndJG0e8jikjjaQ0AO?=
 =?us-ascii?Q?n8Q3dfCumF7uQAFcDdgJor2ZUBQpeTTxQGXhVxgn84Iem6/3pBi3ZwepIncw?=
 =?us-ascii?Q?qLTGYQAKmIKtdMqtgLZJLAbBMnu1lm7NiAEOYUjqn44lAn/9aAuTEo9/MMvq?=
 =?us-ascii?Q?viGoMYFJKt0mh2dmPDs1vER5YKxCFi3FHMsoXQoKkmp1R6vZSHbKZbXfqchY?=
 =?us-ascii?Q?aVYdJ1jtmOMWgDxrvxL5MeMFKfOZeV0mcZfmbf0BNv66Z9KWBaZhLqece58r?=
 =?us-ascii?Q?N/QeN25bexM7Q1dGRJWOVspp1QCgrxagO5Oq/L0lw/k0BclwNkdI1eg/K+It?=
 =?us-ascii?Q?Ees2s1bxHBlThmoflBGue2fatQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <42F7421C0816FA4DAA7E395835D0F4D5@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PS2PR03MB3719.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: e091a454-f5c5-4858-5802-08d9d4d7b878
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jan 2022 07:55:22.7118 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PS2PR03MB3765
X-Mailman-Approved-At: Tue, 11 Jan 2022 14:06:03 +0000
Subject: [Intel-gfx] [PATCH - v3] drm/i915: Discard large BIOS framebuffers
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

On certain 4k panels and Macs, the BIOS framebuffer is larger than what
panel requires causing display corruption. Introduce a check for the same.


Signed-off-by: Ashish Arora <ashisharora.linux@outlook.com>
Reviewed-by: Aun-Ali Zaidi <admin@kodeit.net>
---
V2 :- Use !=3D instead of < and >
V3 :- Mention Macs (Thanks to Orlando)
 drivers/gpu/drm/i915/display/intel_fbdev.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i=
915/display/intel_fbdev.c
index 842c04e63..16b1c82b2 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -181,10 +181,10 @@ static int intelfb_create(struct drm_fb_helper *helpe=
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


