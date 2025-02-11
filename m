Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80050A313CB
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2025 19:13:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D64E10E73B;
	Tue, 11 Feb 2025 18:13:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UQ/46x4m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0594610E260;
 Tue, 11 Feb 2025 18:13:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739297584; x=1770833584;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=llTuXT3ItHK1OlcGftaErjWsbRzHcd19eLZcpU1cWGQ=;
 b=UQ/46x4ma4R8BACnRgXOLbiNOBM4I65AeKJqgZp2rJvqaggxyytl7seu
 fYsUJVF0zZ1uNBgYcGBSWOSOGEMG+oQzxGz4uFwC0ymm4hV8o7CA2s9V3
 KHkMP46qQmRPLlIlyprjeSer+GB+fn3h+r2Lt/isNsP9z2QYt8NaPQHsu
 1/2cUAX2JFrlIMYyavMvo8QMko07LZRtSd78ABQA3sPUR4xaj5ImHzlI/
 q2NczxDpCJqyc9k+RMC3CQTxJM5nSMal0nNVaOwnXVtTqWzYakg+avAd3
 p6YlHKkt/HJ5dkUjyoRRd/S3Ibgm7ldAW9zZE8NpYuiFlBToI9dHW9tzo A==;
X-CSE-ConnectionGUID: LNNkcnyXQ0+nN+OXd70TRQ==
X-CSE-MsgGUID: UItpzvKjRc+ieMi8wgjFdA==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="50915820"
X-IronPort-AV: E=Sophos;i="6.13,278,1732608000"; d="scan'208";a="50915820"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 10:13:03 -0800
X-CSE-ConnectionGUID: U721n6aMTfi0VMQZ+yn8Jw==
X-CSE-MsgGUID: gQiluzoMRAee7dyXIq3ZRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,278,1732608000"; d="scan'208";a="112567121"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Feb 2025 10:13:03 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 11 Feb 2025 10:13:02 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 11 Feb 2025 10:13:02 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Feb 2025 10:13:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=F30fitSaFD759bCQve8pTnVL9O5CRF5fJLCH6BUeF5ra0RRQg9jxxPKAVvjspUTVv0ZvSgNLeDgcLSZykr0elNmGcbPUROXT/XmjI7XXQyM69ypCGmkWILwDGjvyZ0HtK9ISKt/TJDOFLypYFag9G0ndGJ59xorkNBHxOQbBkdv7HHu5HFazcbLfPzx4vFHbL+ZlGu3UucpBj2ltJgK0cTmzjjolAx65/JUfTlAyY4YSRH5T52KYBoOz5yoqncvOujv5kcgqXVTEi7PL+f+mvvPLqG08W35KN8bdSzNDN2FH+tOJMnyfUR9NfAIbDgLYHUDu2UA0ZsUDHqZTLewqoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1K24PTc9DQZArgUgwoo30oIAZCewasDFLWTRvxV0KbA=;
 b=I+sMG2m0al8xY47AMdcOZ4sOE/2YwltOVw9HKMHlNRWzERYY/LAz+uGMH83IhJGRtbJbnXoC3tvCUgLc2tDBLA0IGfkgxnOMFxShM+mCVuVeAxVP+NTeRsMacVeLB3LlVHUhCv8LzwZfKfoS7s0F2daSSmrjpkUmuDFTFVCnjG5i1dTya+7b5nOK0jAF8BnZPhB5bCUTvkJtXT7agRcDon93uIafRM6hYOLqgvSVn9M9uNVSOMl723zVEgQE+CBMlANjXFlutLEE0itXWtHq3JJ04Hz++rPt4WgOCKa/zA15WieM/8eOs2kPBZM4KdmYND35mJaIfO9RKChUxCmoYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by DM4PR11MB7327.namprd11.prod.outlook.com (2603:10b6:8:105::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.16; Tue, 11 Feb
 2025 18:12:18 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45%4]) with mapi id 15.20.8422.015; Tue, 11 Feb 2025
 18:12:17 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH 1/3] drm/i915/pch: Make LPT LP a dedicated PCH type
Thread-Topic: [PATCH 1/3] drm/i915/pch: Make LPT LP a dedicated PCH type
Thread-Index: AQHbeUnIzPZX5H4tRkqw4Un3NoBThrNCbj3Q
Date: Tue, 11 Feb 2025 18:12:17 +0000
Message-ID: <IA1PR11MB646763382628DF974F79D6FAE3FD2@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <cover.1738923308.git.jani.nikula@intel.com>
 <777b63f50b10fba1d768af25870e81b33267bdc8.1738923308.git.jani.nikula@intel.com>
In-Reply-To: <777b63f50b10fba1d768af25870e81b33267bdc8.1738923308.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|DM4PR11MB7327:EE_
x-ms-office365-filtering-correlation-id: 62904844-e32f-4502-c419-08dd4ac79eba
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|10070799003|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?3t6lYY01V8/dpUHQngH/DZilhYVURek7ma16s7Ydb3Yl0BKgQOQPJangwB2x?=
 =?us-ascii?Q?RfKIrKl9KtDMTRp8J1/2RV7w3WcfzG3D8WrvGFC4E52ofwkBL+EV0XasWsMR?=
 =?us-ascii?Q?0c58VH7ENyDdtYg38nk61UQFfF/+7Cl3Lz7nP2wZ3lix3WzlYp+h61NyfJz9?=
 =?us-ascii?Q?V+NGINiN/7u0jw7eZM5L1+5plW8As68KXI4zbFEcUwol7CuG8b19kYOJASX3?=
 =?us-ascii?Q?hDe9UKStmRpNGhDy9QxJ4NZF9Q/dneDlFD7VQYwiaOgpD+U2l6zFXEGgX+4J?=
 =?us-ascii?Q?flqvlQfEqb+3GJbBrlkJcz6no1kLnnBTmQV4Xxf0R+OynVq/8TQg7J2fcCPX?=
 =?us-ascii?Q?6s6iFiojkvYJZfyIH3SvB7lpNx/MheAF9N00hZl9XhVxB5HXGFN0dlE44mnt?=
 =?us-ascii?Q?+FBSbdv7HcRUK2263jQPXdZ2KUG9QAPEOlZ6AUVQ/dBC06JO3M2Lv91ic6Iu?=
 =?us-ascii?Q?z/Ogwp/QTEdVx2NV5osapbnIxICbFw3bZTvRD8C/zD62HBPe6XbSJUPFCApf?=
 =?us-ascii?Q?0S7aWn1vK/9aAnC5qysWIW+IsALn0R9JDSV/vtT8411L5uNipx304et/kSR1?=
 =?us-ascii?Q?/fkSLQCskjBDVtrdmE8gfF6EYDDuvm71Bs7UpvDyhgGIiGu6oyGViCwrlRBK?=
 =?us-ascii?Q?t67b4zoMCYp7byFTmpw0hGbJ6KGCBXlDmIKyQz/gsnfBnCZI0GkPpbaAAAAo?=
 =?us-ascii?Q?YRtmYEEAKHRovYa0YO22rtW56t3gfIfVDTKE7chcCJhEuf3IWY9VEGsz5a66?=
 =?us-ascii?Q?b2cmMLSJNOb1OJUs1ivNcJTWNQyPaj3RAL0U4hKQfKaYsQ6Z1Q88SrsWisfd?=
 =?us-ascii?Q?Ih9f2X4FIgWBQaIv7FkAelBDhZ8naMo2RUKnN9TYSQGS/9ZFYbZG+A0QkDjp?=
 =?us-ascii?Q?bPzQPewMInR4ZwfxHp7O9l41tPrbmNKrYX6oeRq9MLFEtIUY23S6j19hc/fn?=
 =?us-ascii?Q?4PUTlqX461LUqLhfbx0l5vVv3W/ryWWR14I0ZU5d2mtq7vfdfbEYvxFjMeiz?=
 =?us-ascii?Q?K/7lfosIExqh55yRUWmEb4wUPcZP5gefLjYFwbMUg+TyXlxCInF8ILEby1Zw?=
 =?us-ascii?Q?lfvdp+YGA9YyYDyKl7u00R+E6Zyl+HkogX3sLS0S254IgBR8xd6YFnBcQDH3?=
 =?us-ascii?Q?TxoSXFWllnvR/u3jpeY90inK16bEQqZd0bdwvYZakV1KFK8aZDL95WUoGJCA?=
 =?us-ascii?Q?eEEkeWRxxsOEjUb++0FRTKUghCAFgBEQejA8/GYYHUb5nOa9+Vbnx0fxWpeZ?=
 =?us-ascii?Q?soKywVJuzRD9s1L5AuD6Pza/wsliE08IzYMJyjk29OV3/R1KWK6hLWGonh3T?=
 =?us-ascii?Q?7egTpTHHcQMlmtaNjYFz7DBIC2w93v0ZqlKplPmdY7gbe0MsbH5wwRHExWfh?=
 =?us-ascii?Q?PJBIcEeW1uULjHgsR3d0M81gPEeWagbmqB7xn/2CiWi7S55FnStX9nl2l79r?=
 =?us-ascii?Q?c86AMg9rue7VVOQdEkzrfU6lnS0XExnC?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(10070799003)(1800799024)(38070700018)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?kMXrPscuGTBliNvhl2D71a8qcg6EjVtna+Ifr3pMTIvKyjUHVlKeKNtyHVDL?=
 =?us-ascii?Q?hY/9pEi1xInsgotcpgk5tICBKe7JfmOxrc7mavRcuQxDRX4kKc4V8T3NNOr4?=
 =?us-ascii?Q?acZbVVu6A3vURJkXIG+zi8/sYVT+cEHdmG0aIbmXRgXWuuuScTpjY4C1YXBg?=
 =?us-ascii?Q?YvYTJAf2TJty86hdpoKWc1h0ITRnVuhWkXPRX5BLmB8gllqjJoC/nZBB6U1G?=
 =?us-ascii?Q?wpamTi6L3DiY40OSX0hVv1v4V6UKz9k8g0S4vR2alGWkk8aJ6VlbTlQItJPn?=
 =?us-ascii?Q?d6V1PUuB1ueR/cldmjHqgfXxSoCTd8y9t/1Jay3/Hk2fpU9buKybXQEJ2+EN?=
 =?us-ascii?Q?nL37VcVL10x5jkGm6MpaH0CW7jtNjyp9B0/VgAG9ZAiUQoPijrMg60IXJH0I?=
 =?us-ascii?Q?gur16FcjkvsdbHosBgaFtqEvK++NbyJalmxdrfH4RtVq65R73QXWm32XiX7M?=
 =?us-ascii?Q?XJ69TX0kBHyvHqAusjpDS3CgjnYMkgkUB6TUb8ahUuUDpjWsOMiTzcHApkEW?=
 =?us-ascii?Q?KjjV7DmvtMxYc84VG7hpZQ5KA9C4kpQRJD4LQ1SpoatBHZP+e/DVbWpjv2oF?=
 =?us-ascii?Q?adKerquvFaGLtdEL+eHKOMT8LeIUp0fFmEMV/pTRSIK5t3shBx09rffrtd2t?=
 =?us-ascii?Q?HS4HxBsKuQvp83gYqLlOp0gW3NPgy7kjZ82lYKDJidVSRcCfV2OoD49RnlvD?=
 =?us-ascii?Q?Y190xRMi3GBXVyZZGXCyy4Ytkkb4txmRuNsk6MyQRwWlBnjBd4dba6XKpSQ5?=
 =?us-ascii?Q?dpCz/vSGA4HyY3zVH5O9ArjKKzUgCAy2h70NDSeAvUihAjy7vaXYyREP46GG?=
 =?us-ascii?Q?RCBbmE4lT23iyAaduSgEHqbUdvk2P5MHT4hpJUim0svC6/xuaSQOWCNYjuhw?=
 =?us-ascii?Q?ivLXLDoPa9MtGKkvHyLVZo5Ke6wl7QwMEys5Lq/jG1/hrRxpiVIDfLS2NBu5?=
 =?us-ascii?Q?yrJFJrgQ9W7LOHzTPR4dUy3HhNDsz62dSTzrfS6fRkkYOfi9CQZSHVk7wmSt?=
 =?us-ascii?Q?/RqRgntQQ3GeuupeYjWiit/abu00dKjSyFpGp4M0+QxB3AYm2q2KllLv2t+L?=
 =?us-ascii?Q?2ie7qsREoXCAwqTr7PjfTlcVl7BKs7/Zo+pMyC1UsMd6hDtieL3ACpGqNZTR?=
 =?us-ascii?Q?dSTqF68YY6t2wdtTBtxw4JNtaJK0acpzmDqg6fnjXxlUpe6rnEXevNPWnu6M?=
 =?us-ascii?Q?fJjZqjsn0mHrWzKR/9ms5w1eDcMyK1yyde8QmYRO+n7hW8bXWdgR0jsX6KGH?=
 =?us-ascii?Q?bwKrh4BIw5F2OpAga1A8GvA/cQ5quBqUKIpHjKhyyLwI+UMcYPnfVA46LAH4?=
 =?us-ascii?Q?PJRv4kM/qYStfJssTr2ooIw6p5I/aeBEq8FIm9MDsIyvHU2XPCyjsIp68naO?=
 =?us-ascii?Q?Qvxv8Vp2UOHG59ExwWp7I7iVUcg2t/TQxxOddokNAxkiU3bmSIL9LazWV5h2?=
 =?us-ascii?Q?8YlBsTSCv9tCC3JOpYi7zwrganCiCy1nrGT+n0Ke/3paN+NvTQGJT1CPVe+Q?=
 =?us-ascii?Q?8oXIl50VUPfVMtv4LfWUML5B+L0Cz/GX8lbwszpRNDW5xSpHlUKh8lzoYhH3?=
 =?us-ascii?Q?+UXa0wP6E1SCFi7fo6T2JL4yCvk4HXDTAG8gu7AWzu7vhifzmoPP6NRkNpKh?=
 =?us-ascii?Q?A4uto8M89BcnXJc9joOsSiVzKtkUrLOpAVqEC9aV46YV?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 62904844-e32f-4502-c419-08dd4ac79eba
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Feb 2025 18:12:17.7924 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Wb89Ow+XJ9cDvtZJMYZpTQW9UlMPrJDhIM3p5Ye0wfjWk/yOLWTtUjIiBDi/XoBf1Ac+vT3FlGFeZsXQ6U1zDg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7327
X-OriginatorOrg: intel.com
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



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni
> Nikula
> Sent: Friday, February 7, 2025 3:48 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH 1/3] drm/i915/pch: Make LPT LP a dedicated PCH type
>=20
> Add PCH type PCH_LPT_LP and rename PCH_LPT to PCH_LPT_H for
> consistency. Keep the existing HAS_PCH_LPT*() macros, but express them in
> terms of the PCH types instead of looking at the device IDs directly. Thi=
s
> makes the PCH checks independent of the PCH device IDs.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM,
Reviewed-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_backlight.c |  2 +-
>  drivers/gpu/drm/i915/soc/intel_pch.c           |  8 ++++----
>  drivers/gpu/drm/i915/soc/intel_pch.h           | 14 ++++++--------
>  3 files changed, 11 insertions(+), 13 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c
> b/drivers/gpu/drm/i915/display/intel_backlight.c
> index 477b21af71a4..178dc6c8de80 100644
> --- a/drivers/gpu/drm/i915/display/intel_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_backlight.c
> @@ -1829,7 +1829,7 @@ void intel_backlight_init_funcs(struct intel_panel
> *panel)
>  		panel->backlight.pwm_funcs =3D &bxt_pwm_funcs;
>  	} else if (INTEL_PCH_TYPE(i915) >=3D PCH_CNP) {
>  		panel->backlight.pwm_funcs =3D &cnp_pwm_funcs;
> -	} else if (INTEL_PCH_TYPE(i915) >=3D PCH_LPT) {
> +	} else if (INTEL_PCH_TYPE(i915) >=3D PCH_LPT_H) {
>  		if (HAS_PCH_LPT(i915))
>  			panel->backlight.pwm_funcs =3D &lpt_pwm_funcs;
>  		else
> diff --git a/drivers/gpu/drm/i915/soc/intel_pch.c
> b/drivers/gpu/drm/i915/soc/intel_pch.c
> index 9f7c9dbc178e..0370ccb6943c 100644
> --- a/drivers/gpu/drm/i915/soc/intel_pch.c
> +++ b/drivers/gpu/drm/i915/soc/intel_pch.c
> @@ -33,14 +33,14 @@ intel_pch_type(const struct drm_i915_private
> *dev_priv, unsigned short id)
>  			    !IS_HASWELL(dev_priv) &&
> !IS_BROADWELL(dev_priv));
>  		drm_WARN_ON(&dev_priv->drm,
>  			    IS_HASWELL_ULT(dev_priv) ||
> IS_BROADWELL_ULT(dev_priv));
> -		return PCH_LPT;
> +		return PCH_LPT_H;
>  	case INTEL_PCH_LPT_LP_DEVICE_ID_TYPE:
>  		drm_dbg_kms(&dev_priv->drm, "Found LynxPoint LP
> PCH\n");
>  		drm_WARN_ON(&dev_priv->drm,
>  			    !IS_HASWELL(dev_priv) &&
> !IS_BROADWELL(dev_priv));
>  		drm_WARN_ON(&dev_priv->drm,
>  			    !IS_HASWELL_ULT(dev_priv) &&
> !IS_BROADWELL_ULT(dev_priv));
> -		return PCH_LPT;
> +		return PCH_LPT_LP;
>  	case INTEL_PCH_WPT_DEVICE_ID_TYPE:
>  		drm_dbg_kms(&dev_priv->drm, "Found WildcatPoint
> PCH\n");
>  		drm_WARN_ON(&dev_priv->drm,
> @@ -48,7 +48,7 @@ intel_pch_type(const struct drm_i915_private *dev_priv,
> unsigned short id)
>  		drm_WARN_ON(&dev_priv->drm,
>  			    IS_HASWELL_ULT(dev_priv) ||
> IS_BROADWELL_ULT(dev_priv));
>  		/* WPT is LPT compatible */
> -		return PCH_LPT;
> +		return PCH_LPT_H;
>  	case INTEL_PCH_WPT_LP_DEVICE_ID_TYPE:
>  		drm_dbg_kms(&dev_priv->drm, "Found WildcatPoint LP
> PCH\n");
>  		drm_WARN_ON(&dev_priv->drm,
> @@ -56,7 +56,7 @@ intel_pch_type(const struct drm_i915_private *dev_priv,
> unsigned short id)
>  		drm_WARN_ON(&dev_priv->drm,
>  			    !IS_HASWELL_ULT(dev_priv) &&
> !IS_BROADWELL_ULT(dev_priv));
>  		/* WPT is LPT compatible */
> -		return PCH_LPT;
> +		return PCH_LPT_LP;
>  	case INTEL_PCH_SPT_DEVICE_ID_TYPE:
>  		drm_dbg_kms(&dev_priv->drm, "Found SunrisePoint
> PCH\n");
>  		drm_WARN_ON(&dev_priv->drm,
> diff --git a/drivers/gpu/drm/i915/soc/intel_pch.h
> b/drivers/gpu/drm/i915/soc/intel_pch.h
> index 89e89ede265d..bc926df14c45 100644
> --- a/drivers/gpu/drm/i915/soc/intel_pch.h
> +++ b/drivers/gpu/drm/i915/soc/intel_pch.h
> @@ -19,7 +19,8 @@ enum intel_pch {
>  	PCH_NONE =3D 0,	/* No PCH present */
>  	PCH_IBX,	/* Ibexpeak PCH */
>  	PCH_CPT,	/* Cougarpoint/Pantherpoint PCH */
> -	PCH_LPT,	/* Lynxpoint/Wildcatpoint PCH */
> +	PCH_LPT_H,	/* Lynxpoint/Wildcatpoint H PCH */
> +	PCH_LPT_LP,	/* Lynxpoint/Wildcatpoint LP PCH */
>  	PCH_SPT,        /* Sunrisepoint/Kaby Lake PCH */
>  	PCH_CNP,        /* Cannon/Comet Lake PCH */
>  	PCH_ICP,	/* Ice Lake/Jasper Lake PCH */
> @@ -72,13 +73,10 @@ enum intel_pch {
>  #define HAS_PCH_ICP(dev_priv)
> 	(INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_ICP)
>  #define HAS_PCH_CNP(dev_priv)
> 	(INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_CNP)
>  #define HAS_PCH_SPT(dev_priv)
> 	(INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_SPT)
> -#define HAS_PCH_LPT(dev_priv)
> 	(INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_LPT)
> -#define HAS_PCH_LPT_LP(dev_priv) \
> -	(INTEL_PCH_ID(dev_priv) =3D=3D INTEL_PCH_LPT_LP_DEVICE_ID_TYPE ||
> \
> -	 INTEL_PCH_ID(dev_priv) =3D=3D INTEL_PCH_WPT_LP_DEVICE_ID_TYPE)
> -#define HAS_PCH_LPT_H(dev_priv) \
> -	(INTEL_PCH_ID(dev_priv) =3D=3D INTEL_PCH_LPT_DEVICE_ID_TYPE || \
> -	 INTEL_PCH_ID(dev_priv) =3D=3D INTEL_PCH_WPT_DEVICE_ID_TYPE)
> +#define HAS_PCH_LPT_H(dev_priv)
> 	(INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_LPT_H)
> +#define HAS_PCH_LPT_LP(dev_priv)		(INTEL_PCH_TYPE(dev_priv)
> =3D=3D PCH_LPT_LP)
> +#define HAS_PCH_LPT(dev_priv)
> 	(INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_LPT_H || \
> +						 INTEL_PCH_TYPE(dev_priv)
> =3D=3D PCH_LPT_LP)
>  #define HAS_PCH_CPT(dev_priv)
> 	(INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_CPT)
>  #define HAS_PCH_IBX(dev_priv)
> 	(INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_IBX)
>  #define HAS_PCH_NOP(dev_priv)
> 	(INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_NOP)
> --
> 2.39.5

