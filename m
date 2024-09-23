Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5068197E5F3
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 08:26:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 074AD10E048;
	Mon, 23 Sep 2024 06:26:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TPAMbfwD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AD7E10E048;
 Mon, 23 Sep 2024 06:26:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727072795; x=1758608795;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=q+hc79BTmwk/6pHpEQGSqZxHxvDXlDKGj/+DMttxZ4k=;
 b=TPAMbfwD45O5Mt3FedfBfcBgBszhdqvOnncEp+BiAf9Im6JUcrFI7/ov
 47OIu1FvsO1gNi4r1+RGqb2dl6ADyfGrrXhDv1NRy89jdh3DqDIY3K+hV
 5/4ja2fJJ62KovJahfrx6qneI0GHXH2RDQtHuxRcw9Df+RYHCQqjp+hdf
 81Ba8Y0Zf9bBhigeVDqlN5F5jq2wG1meGARBtlxXX9hApYW74nM1LHLh5
 6vx68owsaFo5S4mRESSykL3/+jHsxuNZzJZAjeZ1jlgXURJZDjycaCDfG
 xvekL61BLK3XDymw9VKiSciTV8ObA6m+LHrZlGoGfMqajuWZvrjv6ioM/ A==;
X-CSE-ConnectionGUID: BNlQLlGwSny+y3huFy1glw==
X-CSE-MsgGUID: A1GpL5jVTtaxRt42JtcRuw==
X-IronPort-AV: E=McAfee;i="6700,10204,11202"; a="43520824"
X-IronPort-AV: E=Sophos;i="6.10,250,1719903600"; d="scan'208";a="43520824"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2024 23:26:35 -0700
X-CSE-ConnectionGUID: nO86l326S3KFFTRsC8qCng==
X-CSE-MsgGUID: LRSY4Ru4QbeDxcQMZFYEUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,250,1719903600"; d="scan'208";a="70991095"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Sep 2024 23:26:35 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 22 Sep 2024 23:26:34 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 22 Sep 2024 23:26:34 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 22 Sep 2024 23:26:34 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.43) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 22 Sep 2024 23:26:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tC1uKdbb/3Jm35rM88k4QkTKp5ECojS4uKZkjbAqSKuXGDXGjG/CsBSVytOPJ4ZDfRjT7t/vZDzIsYEdMkKsKDXc4CLdhjoqqePHDD+6/LGXRGmbI15oL9nbMzcRCGZyOZu8RKUdsIF/vKn2syhyo3RZre+arYmScI4m/xA3Nym03Z8eY52ArVfbZDRkukbgY7AcHVtBbCm5o8ZwdPjON+J8sZvN7R3B1tyifdCYvjDlEHvA6VkNCKSRF+81RGoAaEicIvG4t3X8Vbqis/N3WWoprSDef8grdLfHzNpL7v15wozgLOSFK9gW2v9dzSl5QAS88NupeJ2wSr+J1qhmNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pUjmnBOIjHibYUq3bpTiCse3jai9PgUqThmD3QCV77k=;
 b=Q4EVAp5xtwnFWa1V56VC9wzD6FtP4N2D9fPrtFW7eOyQTzKeuqY9tbdQ3fcgfyAL/wJvQGpE0yFhrSlfYgt1VtmmQCCkxHa9QAVQDv30CvQnUd0cc488UIW7Kxj6S7Tl0r7huRC1GkGLvoaI0vAfZSw+4Ub6YA9sqBfSiv2yT7eM4pfj/yuOcoeHD8q/1IFW2ZhQ9oIX1Kj9PgoTUnyxc92n2da+Yq3dxdvk+iQysNe0oyPw/aoKGI7NNIXZh8oVwPyto8mG6DcKcfpBksss1oD0A1DQkmeTnUpsOVzPiNH98TN65amMocDCSHyp48pbByQ3hQ7jiouWG+Z2hce0Dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SN7PR11MB7138.namprd11.prod.outlook.com (2603:10b6:806:2a1::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.25; Mon, 23 Sep
 2024 06:26:31 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.7982.022; Mon, 23 Sep 2024
 06:26:31 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCH 0/3] Some correction in the DP Link Training dequence
Thread-Topic: [PATCH 0/3] Some correction in the DP Link Training dequence
Thread-Index: AQHbBNLVdeBvuUFP+0O8Qwo2TWQtPrJk+UcQ
Date: Mon, 23 Sep 2024 06:26:31 +0000
Message-ID: <SN7PR11MB67508654A601471827C13011E36F2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240912050552.779356-1-arun.r.murthy@intel.com>
In-Reply-To: <20240912050552.779356-1-arun.r.murthy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SN7PR11MB7138:EE_
x-ms-office365-filtering-correlation-id: 7f29b13d-38f6-4ddd-522b-08dcdb98aa11
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?MhqrOzqkfAB8e4k89AL28B30f4DVQIsd6pBrzMimokN4yUkan3o08GA+hOX7?=
 =?us-ascii?Q?6bXvaaw4HLQtM0FMLZLHPdnoFQlA81CKDv9XDdG5TgEQY0wQC4ja/KTm8SNb?=
 =?us-ascii?Q?Bq3XOhej9ODsvhLxWQrVaqN4R1Erkj4nJQtFiWQGZq5G/+F3yJ4XFXh5aQX/?=
 =?us-ascii?Q?P83px6JavaKMushptQjGl5hmpph6f2JdIjGaZOUQo/hhH0mcKmqtXCECdu7/?=
 =?us-ascii?Q?FAUvLNuOYfHqhlUqX364SC1Rt3n6Q7SWpzOVAS0SqS5ae/sLYv9/9TpS67WN?=
 =?us-ascii?Q?b4o4X3ituYKidSepGMA/NcM7jx8KmA2E9GZWEGRO3zy/KcfQhuZkjbDerIwX?=
 =?us-ascii?Q?E30AIQ31wZiQ/J8W63KviwdE/HfBxPJGvChdgr8TpX/TVTTC7zY90KUWPJnx?=
 =?us-ascii?Q?3uqMd4StEqRiJZuf2Y+dojJhQFENwe6KzcnSB3kYiyrZonYIqQqU1uR03ErJ?=
 =?us-ascii?Q?fy6OWHJs1vWitO+Q6CD3MQwDIC/33VhI+kbTuYBrA5DA6XUwd6fh0P27eJPB?=
 =?us-ascii?Q?sYjGSfVx14g7TaiAdvps2q7gn7erKoSV3v7TrIAXwwEwGsj0xx6FZm0GqMfu?=
 =?us-ascii?Q?R/eMrG6p+C9hYGrwuU4BfHgFhB6xKHcZPQQLnSulTgDn1qZvpF4Ych61pTM9?=
 =?us-ascii?Q?mAeX+lG3RXHMovh92MHGr8uyBjrH9pia7DAY1cjL2Y1Hy3+W9mcfTYZD46kY?=
 =?us-ascii?Q?WDopTDAP/gIaVkGIqWumq2gAYoFX+r2/4f9nUlvZ97RqQg3f81pCuV4DEq+b?=
 =?us-ascii?Q?tvxegc6hkjkh6svtqTRsqLrhFvs10FEAULL2zp8BdOG82p0W+a1kMz1/YEII?=
 =?us-ascii?Q?0v/W/PeO6Nsix+Dm54dIKLO9XfyvuNXrfuyH/elWiPfdR7bP2KuO4aPmowIm?=
 =?us-ascii?Q?4VcUdFp3YliX9Ir2nqPSNnhuMJ4dfbuxePXGsicAXbaYNqpamcx20S4en+PQ?=
 =?us-ascii?Q?rPGE/3TZYAPSXJ0+z9ptATeEyFiUqX2NP2B2+QfDZqLz/FeJR5DG1JLrHgh9?=
 =?us-ascii?Q?qT5TUi655UAEyepehQa3RqFVtF3ptrXpQ4Hv7t6sfZOwvj6TbNLQjONGW+/P?=
 =?us-ascii?Q?y9mZYT7f0uJEI6JdumQ13FQjlbxLLs0KSJhqW8Iaiey0uXIt04JEAlU2ogdd?=
 =?us-ascii?Q?fW6tCVx7pfH5Erfhvk2ie3yPpjPuNJ/97T1IoNiv1hfCRpJZPRktXAC7yHeC?=
 =?us-ascii?Q?/O5WA97PEAuFNxxIcE9LXN81ryqlmhe8HR4VZvhuCqxK69GkXJ+pZCzUEYdz?=
 =?us-ascii?Q?nCemPjmRs1Tb3lMXqPprVBvCwsPMuqQoahY00vWR7A/DHA32D3NOnOOb1dpo?=
 =?us-ascii?Q?c82QpvblQ6hkl3SkqpV2rwUejPJljk6xVsmwu9ZLJ3VqNQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?wylWR/S+WlaZUBeuK7hPjd8fZ6N6XF15ZfqvPa6e1R6PkWQ/sIlrPJkCTMYy?=
 =?us-ascii?Q?77Kq64lFB4RN6E9hTIgiiPEyDc1OGouo9sk19UkJ/CwVrVLZEtr2OzaSHGYO?=
 =?us-ascii?Q?9h1rhqumHCZpmPe8Mv36caibL9UKmPpYIVdN0apC0qE15Wr7CpgC4vKx+Vx+?=
 =?us-ascii?Q?eL7liebdpYbjXTdGf1OEexA+eo6e/1c7WT2YUl/3q69duMHFB/eVgtFF6zky?=
 =?us-ascii?Q?Q88cZgBPgXuffC2RjUcUziUKXru1UQCsd+zmULQ8YbxSu37bKZzwZWlrxAVX?=
 =?us-ascii?Q?lFFA0KxAw+RgBVeO7N2t2bXas2R2R3VVq/UP9ODVlcr1MHGnqHhoHqZLlpTR?=
 =?us-ascii?Q?aBTivB/WQZ/vsjKUY/abub/aGL1VjCto+TVOH2Q4jb+j55OSLxNY1pcEbDdd?=
 =?us-ascii?Q?tbKLyzdj9dU2vDxcPfut4EoQP/fl4bLqTIhV+aQvvikNrET+AQGANr7aajQt?=
 =?us-ascii?Q?jjXQXH41uyEKnaVWPbpcFLFg566fYaxFzZyoKHABtu7TvTfM/uNuqFh9yA5A?=
 =?us-ascii?Q?W0lH8WQI37chc48HQhXZY/s5q00jvMnNIXt6cLkUdkZN/sMUo1JTKTcIx4YF?=
 =?us-ascii?Q?T4cm8U1KytGo5x5mPD9Y2ncXkSDzdbdZ40yIWrBDoshwMh7Hpc0Ey8nw3Iu7?=
 =?us-ascii?Q?r6eXxobWuUPXWLvl9SiWmn/FPmaa0fbnKBok+52PMM7st7B5dH2KSjGykzb6?=
 =?us-ascii?Q?/LuQaeDWlu4mhyH2E5P+6a4EIlEXedxpmcJT7MgfISAlU5ghXeskWsy/Vfcq?=
 =?us-ascii?Q?k6TQ1deQ0UL7aWvJHsp3ODhaCvHfDs6+WQVJLSEj+HIIUmW4dfeZgpP4j/Qd?=
 =?us-ascii?Q?KCCvSaqySXnXkxPp4qAI+Q/OixvnNrMOZTMGnnSuD6eLXYrnaT75vOhVyXPG?=
 =?us-ascii?Q?qZSo9HbCMpkGvq8W3J8gG3a0vO9r2vkGFCykRO/JpNblGjP1K/tVGtNBKCPf?=
 =?us-ascii?Q?tNpVupLveH494n35dYt/7SIptwIogMlTwHp1eZdVvZTmYcBPbBhyBIMjEyEz?=
 =?us-ascii?Q?O9j++MUd946pJTx4xnV8H09sJKUXNStFHULQtpEX4T/5I9sv9mG9NOrSxELK?=
 =?us-ascii?Q?khrcLMyxOGUS6RcYzYDeFcF9qGTRUKmaLYarDNA6sGDParhhHj2wVTvqkIs4?=
 =?us-ascii?Q?NYDnc8Xce767dQMBh/pGT2w8oh0ojX2/S5ikIq5ceUWDw6jjCQvDjPTXb/us?=
 =?us-ascii?Q?FqKdT10682hyhveQ5FnzDFD4nlzmkcRuVWghuzy73AzKyhtjW86XYKiAcMAT?=
 =?us-ascii?Q?YU5zgVOERpxDH+r7eXVAw8+Blz7NftPuL7a1FCFkG1V0cm38rH5NAs/lbO2e?=
 =?us-ascii?Q?e6T0O6ug2+7zWJSiZ6RANPotwOaV3TKtHP2iILVCVppJ9EDyNM4i+UvKI3VJ?=
 =?us-ascii?Q?kdbrygknPgiuFqoMOm67V/MuFjzYJr++pLDL6NsjZVG62+r2vwlFLQ3W0yuX?=
 =?us-ascii?Q?SesMXMwl4BK8CItSU/xZYYKG8+OruZ+fOKNL+0z8iXLkR2Fl7ONkdSM+Nq/7?=
 =?us-ascii?Q?t+b56VZmTZ/1J6NjIMxD5yAB1owCpHTMsZvxMCPFPyI8hgb/mhtudiJ9+lpP?=
 =?us-ascii?Q?TIrD5krYd0NPKI3tsodit3tr6M+linzbeRvT1VFM?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f29b13d-38f6-4ddd-522b-08dcdb98aa11
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2024 06:26:31.3965 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wN5MWypDHXu5avm3yMRBBe57WQQDtB2nYFDBC5M3uj9+5WSIqLicoEO1qTQQzFJHwkcIi8XjAuo1EehiQj5F7g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7138
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
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Arun=
 R
> Murthy
> Sent: Thursday, September 12, 2024 10:36 AM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> Subject: [PATCH 0/3] Some correction in the DP Link Training dequence

Typo : sequence

Regards,
Suraj Kandpal
>=20
>=20
> Arun R Murthy (3):
>   drm/i915/dp: use fsleep instead of usleep_rage for LT
>   drm/i915/dp: read Aux RD interval after reading the FFE preset
>   drm/i915/dp: Include the time taken by AUX Tx for timeout
>=20
>  .../drm/i915/display/intel_dp_link_training.c | 20 +++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
>=20
> --
> 2.25.1

