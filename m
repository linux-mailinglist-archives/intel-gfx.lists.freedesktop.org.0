Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C79E34899D0
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jan 2022 14:24:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 497A012ABB6;
	Mon, 10 Jan 2022 13:24:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from APC01-PSA-obe.outbound.protection.outlook.com
 (mail-psaapc01olkn2084.outbound.protection.outlook.com [40.92.52.84])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80421113DDC
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jan 2022 12:35:33 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MPJxPL6Qe609hyqb06XZcPdVaRe/lAkxVnY0ItjPZU4MS2V0BhcXRCJDmEDaCY6Nf29qmrMSwguMxgBKCioQfOTAN75O72QZURw+NGp50oIVWRQPX6bB/I0MsgLOpJ337MFotOEsuscifJEFB3Kn2M3PGAVYbBGVPwIE8hoEdADIWA/GqS3ScR3oYWSx/UA5nm+B1Ml5mI6TyCEWl04nAaZcm4CQr7bXl68+uqMnDuK9fUnqDKqUMVpUcyjnyEM6AL1+2QC4p93loneWj0N4IIdBuifQJc5VwOSB/QI7WAcRtFkktQjppWGh/40bbN8oQY0Gbp6rc/PCNWC1Pa2GhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DhKW4J/oNIvKD9ka7X7KeU4S0OapDLmAn2RRqB31h6s=;
 b=FB+70jQGPkK6cxMl9kx1lsesAGG6jAzK7+R6xF06PjVVGJLc6PU5WfuzFSZmeWa4gK/lwE2h1x59sd0PRTGWsvTWeFamcokr55ngTg50sF4YRLkAF35kvGJurO178u70YjhfzQdf40i9Dn1I4AkA7NE5ylX54tf9d4Q2UEV1m+/riUqhO0tYttllR65JlqJCXPmGnt+fHObXatuefbp+4MvEUB0XTKSHJ8jGIweZaKa76pbbGYbmiFv8EHbn6nMxiGjq0PYig2SucgVoVuCNp52x9eRIpc+fVxmZKPouaqkTqlU7qfGzDizmJGgc2m3dq1194nTg4Y9yBdKtFPP0FQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DhKW4J/oNIvKD9ka7X7KeU4S0OapDLmAn2RRqB31h6s=;
 b=JV2FrRVVm5LOaHDKGO9yGVkMPK/GI1JN15fRMtsTfSpbHi4IrG+7QYXbRDW3gbZfX3jUDJpXiPgh7QVMYoNWrEFv+Y7hGirMfZVrT4cgbMFi+EvrMn1q2vsDb/hBVioWjx9yX2lC5+rnFpPS9VPQXcNcvSa7lDtnMYTNDweHcp4k1UUeTMym5BLZxNNG+zZqpwkVTT2OQkh/+5druL/vYDLcre5jgdW2CRSGn2QsIj3+Ct0wqjy42YE704Lcg+UuTpMYTg8GVxkRBUzoka5picEGHpsY3Cpwamkuv8KgGES6bRXIfQfDljNNoplDtSMnZB/z15v1CJ9PEoAz3RtPIA==
Received: from PS2PR03MB3719.apcprd03.prod.outlook.com (2603:1096:300:38::18)
 by SG2PR03MB6293.apcprd03.prod.outlook.com (2603:1096:4:174::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4888.5; Fri, 7 Jan
 2022 12:35:29 +0000
Received: from PS2PR03MB3719.apcprd03.prod.outlook.com
 ([fe80::f9e6:8a12:82ba:99ca]) by PS2PR03MB3719.apcprd03.prod.outlook.com
 ([fe80::f9e6:8a12:82ba:99ca%5]) with mapi id 15.20.4867.006; Fri, 7 Jan 2022
 12:35:29 +0000
From: Ashish Arora <ashisharora.linux@outlook.com>
To: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 "rodrigo.vivi@intel.com" <rodrigo.vivi@intel.com>
Thread-Topic: [PATCH] drm/i915: Discard large BIOS framebuffers causing
 display corruption.
Thread-Index: AQHYA8MNt8F1XFTiBUy3hKQV5EWfpw==
Date: Fri, 7 Jan 2022 12:35:28 +0000
Message-ID: <7F167771-2D0A-40AD-8162-645E7EE2B9A0@outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [GJrIlXB6qbCtFAxV7wmVLFiTQGLcALaXSH6SElDcsGqt35D8K84fAmr1yG/JodFL]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8274b306-c65b-44f7-2666-08d9d1da3029
x-ms-traffictypediagnostic: SG2PR03MB6293:EE_
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hFvPi79emgoGUjpoTlguEsOuJ3AwmUvOjISvNV38nWQtDvHXQiXXxOyQZwCVaciszdegJjcsA6OesKz26KWVkV6f4jn4Wc5sw7hg/CTDEO6vqZJ3hlq0qSDNNadVLmzLH3tg+lhl+LSB9HMu4LBQZE0PYaWFLFPTe/4JjuEkFbnrc2Hsf19wS5tXolwj/Goz5MOUliWgwYFPzzuxQP74kCkADk6+gkGHsny0bhS/l2WK76XVYIeMLW5dYddRLc1DdMqXx15nkS22d51TaQCQ45bkxexk5vvZcdbkGfWUkrs9ir8Fequ71lNlb8tnmTPF9id6IV2FCQHOlvR9jOD9CgTJEpj+UPo1OOcvp9DL4Iq447Q7mTh7MDB2KPEYPmDEhDBgMG3g/Yzlb1KlU6NgEl5tl4kzanXhQwT3gh5Xpa/AMbItV6kE15ryvRsQEIXszOqwpAJPkhDaZCXB8hAKGJ5SG3JDX9n1qXWcw7EPoiz4kIc5BcCdfGLzz5gew0xIWZ7OJV0c0ai3l9FpRcKiog1bsnnqpMvbwVhLLlto79TyvKOKjxAi572Xi7JiGU8umrh+a31R0ySi7em1d5XEdQ==
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ox+ikQxHSGBlDmW3zi7pkrnEF8elljCj3RitkOaxS+UWwkddHEhsj6/T0hH+?=
 =?us-ascii?Q?JItsmcovtqZzM5dfdRGDUR+gkDSYUvEep5f31imwpXpcfwLQ3WxPP08yw3mf?=
 =?us-ascii?Q?4BaE8d5CMygMB1ox0AT1v6QPoDy70DqB0QL6buVU5xmhA/SoLMxFgDWqFZE+?=
 =?us-ascii?Q?1pXm1SiwGHGH77uwRLgoLt8NdcdIYygBrJI1QtsDDQ7jQmNx0fvNES/COncw?=
 =?us-ascii?Q?B80nhvbCL4Zfv1Jc2vLEGw4TWsNmdhJ0tXY/09r4QOad7I0rsxklnEWHcj8e?=
 =?us-ascii?Q?VCjgawZbh+Tez0vDDQ9nYliSf79TbSxIRU7ndA2LeAvGtfwHnuFzUsTvMaqL?=
 =?us-ascii?Q?i/erv+gVSkP/w4VN8d+h6m5CRPCbK7CnfAfOtfAxkqFH/J9C/6WThIpqJ3tC?=
 =?us-ascii?Q?V/ul2fzNOWDRcGlrnT8q3CE6Ucnxv2eJedgD7e+1wFEd9UYcJ4msZhPg+GTn?=
 =?us-ascii?Q?Zk2WbPvX5alwX2rE8tFlH05iVOso/gX0kQHdrEe3pV7MabGK7XYKptcVCuXt?=
 =?us-ascii?Q?XXUIFSTX+4pvOnZqJQTrTVLXvl/qi7Jk33B1ygKD+EDoG+aYnnPEzs0uumgN?=
 =?us-ascii?Q?R9IJ9OcYuyelWioPEcnO2MRMrBsMCKbPhThG2ozZxBhAsV9Pjw14mOX0XhFQ?=
 =?us-ascii?Q?lmje/3PGynO3Qfz9oXXnpngkGjBMoLjet3PXc7HVy9PX8FH448d11TzUVMqm?=
 =?us-ascii?Q?GsrJ1KBFdtKWz4fS/xa35Ak+A26ZP2BBh93ipaY2on5DilUADL3a0G5qQ7lv?=
 =?us-ascii?Q?uD84T8WOSJ7fPE9qUyWdbAkU8wKGeOuSYTM8awM97LbgcQI83bqHhjEBPfzA?=
 =?us-ascii?Q?0dBRqpNLJD8LQgIkxx4dOEzRpTvMCreUJhufVh1COkbKhuq0cSa5jiDBAZ0o?=
 =?us-ascii?Q?h/0wyLOdp+jFh//sEe/M99v9jO52BqAJ5zecc3s+kO79a34+gVo8b0Mo1m8C?=
 =?us-ascii?Q?EGncavzmUlD3dhNaOxQ9nKMBOeAwCph9Kwn1z7c8pNwRYKI+eTno9SeoI/JX?=
 =?us-ascii?Q?mRSbUyNDrze59p9vYh3Utgdwbw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <C358D448AE72B4459F10867E239A1A65@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PS2PR03MB3719.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 8274b306-c65b-44f7-2666-08d9d1da3029
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jan 2022 12:35:28.9464 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2PR03MB6293
X-Mailman-Approved-At: Mon, 10 Jan 2022 13:24:14 +0000
Subject: [Intel-gfx] [PATCH] drm/i915: Discard large BIOS framebuffers
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
 drivers/gpu/drm/i915/display/intel_fbdev.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i=
915/display/intel_fbdev.c
index adc3a81be..f9952e1f8 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -193,6 +193,17 @@ static int intelfb_create(struct drm_fb_helper *helper=
,
 	struct drm_i915_gem_object *obj;
 	int ret;
=20
+	if (intel_fb &&
+	    (sizes->fb_width < intel_fb->base.width ||
+	     sizes->fb_height < intel_fb->base.height)) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "BIOS fb too large (%dx%d), we require (%dx%d),"
+			    " releasing it\n",
+			    intel_fb->base.width, intel_fb->base.height,
+			    sizes->fb_width, sizes->fb_height);
+		drm_framebuffer_put(&intel_fb->base);
+		intel_fb =3D ifbdev->fb =3D NULL;
+	}
 	if (intel_fb &&
 	    (sizes->fb_width > intel_fb->base.width ||
 	     sizes->fb_height > intel_fb->base.height)) {
--=20
2.25.1


