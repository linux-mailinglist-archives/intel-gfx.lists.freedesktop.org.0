Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF462939CA3
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2024 10:28:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4019C10E489;
	Tue, 23 Jul 2024 08:28:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H57k3seh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9E0910E489
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jul 2024 08:28:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721723319; x=1753259319;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=pCn1EXTDQM2tvdEl37rq3n7YnNckEmm1u61T+LoHxDQ=;
 b=H57k3sehKek8SzAEv7kHUilT+GWjZ9SGSCbMh/FZZWTDa95vwF6L/6Bm
 eCk1src1yECNYV1Emw1mUeztdgVAjxjHQEIoy+c4nJ4BzZs/I60NCNsdr
 ax8gM8x4JSU1UwKWZaOAWBsseGgSO1btlCp8o8dRJ7NvlqRa02cpogyaf
 Y21V4Rsy9o0Z07VDlLbi4R3rFQRvrxRsiYjL4OL4hKRymW+pVkmoVcHVc
 GWySAURPy0v7gAlIxXXQqq+tyvV7/MuKLdTY9LF+tHqPceA4RBKjTYns1
 IvBTq9sd7QatP6zKZMKGZEP3rDaLFvgm6ea4TLt88cR0ruQDvgaLjnkmD Q==;
X-CSE-ConnectionGUID: 2gMXCjRtTKqLiPF6hlhnWw==
X-CSE-MsgGUID: 7yTOUYq9R/yHtCC3wEuoOg==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="23135383"
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="23135383"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 01:28:36 -0700
X-CSE-ConnectionGUID: IkFt1ahzSdqjY7e03dDmEA==
X-CSE-MsgGUID: LLbKpMj+QeiixP8EKTPJ+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="57011879"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jul 2024 01:28:36 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 01:28:35 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 01:28:35 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 23 Jul 2024 01:28:35 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 23 Jul 2024 01:28:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kBJ6jVWzNjZGK/q6BNtpJ+an3TttvsWvov2xjb3gT00I1N0TAe37eZF/z/VDY4XAidDOQt9RmyllspAwgFLQmA9OloMwV26IhtxpcvMwL50iI/2g7vxjmu4XyISroo2PUC3kAq4fBPTPgoNZ/ZlfjBjJMlKUYhGu5N+VSvXcembiDFEi3shZeVZEwz3UdkuHxGTXNEYIThrb0htDM5n/RYK0nzsPQkVtJhTJgIpDhd27gR7lAgNWkuv5zXyzUbUlGcm6lQ8syaHJbrqMhZeu+7YXQe3NvLELuiQLHZXYkS7BjDcWnqx/Hja/YOx1HvgJUweEAlz9lyaDVxObxdYYRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tmf4Ifs8wbTdOGUYmlu6LMOuAq4Je3lJUAgHWBBqx9o=;
 b=fdK07zEskkIgrlAZeG/eTJVA8kne3u0wxOlVi4udG8rbWdAO8bu0wGN8DkmyLf4SeSft586sH5rxDpEC5UOx9em+tUGTQV0FXsQcwUjCeavwIfwIR6YP2O84vvctEw6ZYp0mdQYAme2z6RJ1tilh/X/QjTFGzP2BMpnB+mVj1LNL7oz77LB2jO2/G6WHYLZrkD7L+1cOrghNKpOYdIPqEFqm/3XqfdpQxQUgy30IPKnN/3uPkHsmZsOqfbaG2WjdHMyOkznS+LhhL/EbYvNPepyhFINe4Q4NBh6ugjhJvMc5pB4IqqiVdly+UdamIcoLGLl0gE9aPGbq4HY2GhixWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CY8PR11MB7846.namprd11.prod.outlook.com (2603:10b6:930:79::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7762.29; Tue, 23 Jul
 2024 08:28:33 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.7784.016; Tue, 23 Jul 2024
 08:28:33 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 04/14] drm/i915/ddi: For an active output call the DP
 encoder sync_state() only for DP
Thread-Topic: [PATCH 04/14] drm/i915/ddi: For an active output call the DP
 encoder sync_state() only for DP
Thread-Index: AQHa3FfrG5yxvLhj5kWp1oeVuGeyVbID+6YA
Date: Tue, 23 Jul 2024 08:28:33 +0000
Message-ID: <SN7PR11MB6750B3CBDD10FF98D612B48FE3A92@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240722165503.2084999-1-imre.deak@intel.com>
 <20240722165503.2084999-5-imre.deak@intel.com>
In-Reply-To: <20240722165503.2084999-5-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CY8PR11MB7846:EE_
x-ms-office365-filtering-correlation-id: b8e9e19b-6cd2-4126-c758-08dcaaf170b4
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?9xfI3JIyXgDeqmnKVewoNBogHuVUXYSt35PaTwPf0Q082UWGSvcny6U+vZnx?=
 =?us-ascii?Q?6S1RVlEpQvFcv1uJAcHPad3QQy/eJybB6RsryUm8Zf4278b3qpfqznKFAxd5?=
 =?us-ascii?Q?K/vA6a/IMHRjZXXd3NcfDnL9sXOlCSIlybbpykqcXooo2mOcYCJB+AJymQoK?=
 =?us-ascii?Q?qElcjOl1ArlZjoeo5k7v7v7mGhY5nSu9NGCvJAlMrcHPTIbyGVBmJejwwozH?=
 =?us-ascii?Q?pdB/ncJW5yRPdp/8eiVsUQBib1YpSQoDcZgWO7BJ/4dKXu8AHGH1+NxMdnJe?=
 =?us-ascii?Q?JXhdiNNxB9eUz5TiLu+qA6ErKEnv2JXrbC22HUtJkGxhl5RoQFH3tBg2+JQM?=
 =?us-ascii?Q?50T7Yl/p5YHcLk/FxJ3dZQZUGWykeo61ZhnEMgU5SFA5hVlr1mRs3KtiuwqP?=
 =?us-ascii?Q?Akny3/7xRuYAnSw6cQrt4Zvsp74HytluKMx+cMu6+bVJkPX7enItchKZzeAO?=
 =?us-ascii?Q?7IZG5Z3XgSaEkBgRCoiDQmBy0JFBdfUhy17uGKw+rXtQjAFoG7b+vFZbelH2?=
 =?us-ascii?Q?WXsHAz6jvnl8MfmJTQ3nNlb+HdazC0pdln6Z+stuOMUFGSrmO6egWEiMEta4?=
 =?us-ascii?Q?ceUK86vfMQtxRPP7E0lWnUs9Paqx5ScCmuhHEUKE2dsVMue5+wn5QbxFAl4X?=
 =?us-ascii?Q?jau+0iXaCgGyLwuy25Il90aNBJcsr3JkozjiSgvFlus4g4bFv7Bz1iw9T5it?=
 =?us-ascii?Q?YeiYwwZLwCGzmE5PNe2pebyYH8Br0Vbl7FiyJMoxs00EJ3+RW3dbl9HQvocI?=
 =?us-ascii?Q?IV+53lf04EKpDrFPuDlqBa3Ff3xo9W8veI9jBM6XQahLN4O6BZFKPH7UWWCH?=
 =?us-ascii?Q?GAOEpKSI+gcxfz2Gnvd6G9+39EQkyht6Hk5bisFRR07eMuBSZ24zSznkdAqM?=
 =?us-ascii?Q?ItWEX8x+mdzGbWBOJq6KzAoinykqficx5tctIayzz7etSe9Zd7JdUaszR1rF?=
 =?us-ascii?Q?rO2UODrGRrlVLF7rHuZkfTDtYtiavmtR/YCOVkn7DOi/NanZb666oNDMULjs?=
 =?us-ascii?Q?e7klTMseIfvDDb2Eh1xu2cnrtreZHlymafrWmjayXDfpHfIuoo4cQ84dMLfQ?=
 =?us-ascii?Q?nD1ghKpQnJ8l5iocJsu1HSUl5ZXhPWOW2w3FLdwyy91iqG7oVDjOmgkiGPS/?=
 =?us-ascii?Q?XKp9OiLNYWcgOCMKkQ/feU8TwcvJdXYxvkWSJZ27x5eT+WTSnZmE6wpKybl0?=
 =?us-ascii?Q?CutbuZCVfYAGdKMft7bItEI7NgkrNa1ZV56GDENKknHPqCgQ4L4NNbsyrzVY?=
 =?us-ascii?Q?4EbY9UKyivqezRrAavWRMkySVWJnJ+uvkJXoY3qATHQ6Q8az2DWVh7/hTgG8?=
 =?us-ascii?Q?2OMBxHvGhk3Q7pgfwAtm1JmkyWt6jT/olee+BX4j7oMb6k3h+7JLu6OcQuh6?=
 =?us-ascii?Q?DBbRSA6SVUxZ1gH0VgyaD+vJy6Uzn/4N1ITD3UTzQtz/Y3M0bg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?iaXBIyiYb5FMSrGVAvHRB0AY0/solxUJSH1q5L34cYcKcXyMqVbqBUzW11ha?=
 =?us-ascii?Q?D6/Yb549l0fF/L/tl6vKvcJ+vsKrhamy3LBcNozAbH+u3ivdPH4JyUFr6SLD?=
 =?us-ascii?Q?gqMKPGcMqpPC1zC7VhUrvRJwrYHsh53OgQpSQhh+o3v/GIJIuI9/FW2HDG1Q?=
 =?us-ascii?Q?+D6rh+fdoMgCrwHrXUazj2MBfT92K1ok3kjsIhWd7NJVxO6xv8NvUSK029QP?=
 =?us-ascii?Q?nDgjoQE9IntFzSQiaBQY+j6RgUEaqXTT1N3UTo3UDn7FP5hN4JQ5qVvyal5l?=
 =?us-ascii?Q?Yc03lCkPrZrFDWTS5CLpjJ9UiVdbgxN4UrGewGMC0LDdTAqKvvtW8ymn2UC4?=
 =?us-ascii?Q?rWe+py3rHZjc1Tnys5XDQuikkLYVc7Z25zcqHoQIKvtO4c/iocIkUCOkUPj8?=
 =?us-ascii?Q?+Q42kR3Pouk0wZnEEsirscPzim4cgfEb6JgXgGjrdIqOescHf2qTVfyHpVE3?=
 =?us-ascii?Q?a4HS9xrZGSB/apIT9UNH4ugp6Wh7CZU4WrDk8gJvwixaTrv7BNk0MEqKtJsc?=
 =?us-ascii?Q?SRIMurIPiX6B+MazS+21maXoxjwhtRLK19L1LJdJbOHbwkqfihCPfKAvjjS1?=
 =?us-ascii?Q?GNXIKV3dNAsJirdrnFQMrKdwenuy1d4AUSIT/eGWZCxCNbWJRWHl4hL2KXJF?=
 =?us-ascii?Q?WhV4eMjsK9GHr8th921KJIdY/emhFYOtUKYUcJAf/uUzFSFQAU3pfOodJrwk?=
 =?us-ascii?Q?nov+1yrBe2y1WWxJAkFervo0v4bFzjqLdsPRM0zpxHHxd6xJ/WjKeCT0Y2pv?=
 =?us-ascii?Q?iOt7f6hCtWuFM3Nh1Gw8h9qm1Rt3rJWwRmVGBTiAacat5zTPda9ctIruNlYs?=
 =?us-ascii?Q?De2Ba6R1/AiJdmwtXy+ZSUQe5gPYUHss9SQqvRPDkXg7HkDQC+YJdgDg1oQY?=
 =?us-ascii?Q?A1iIY99hWNwZwiYD7+J4m/VF8wDborWo8LjRP78yNMgTaTX8Dh9fQKWcSU3s?=
 =?us-ascii?Q?YCro8bDXIa9blYqq3A/kCY8rek/nhra8ZF9OqULPTiZA9Sjw+9qwFZqLwDtA?=
 =?us-ascii?Q?ejgZlg0vGhUIBGVYxWby9REaAnEeIYnzwUTXmmkKvMd0dKe5/E8IdFhR26Ey?=
 =?us-ascii?Q?topOMlLSvWvQH/LZf0/r1UgCKJOvvWNz811AleM5xHV3RPQifUSarFoWLVkk?=
 =?us-ascii?Q?unXJCGcaRd9JjLFsYRXkcY1O7tHDkv6Jiyu506SZiLEqUT4jUSQOyYp4r7kK?=
 =?us-ascii?Q?HT63kYAI2QmAgfrKBYWesudvZFq1zG/nw50hyQPs6om/ebecd5uvwGymAnnY?=
 =?us-ascii?Q?HFMs71XTAVoTkD43rtXHYPqWRgw/0bVJHp+Q+S1ykrIgOrPIFsOFGO5kfuT0?=
 =?us-ascii?Q?xkPajoM7MI5Kj0SfMUqP+Nfxb2qSf6xx8tfJjUSlWsnzz+jbuZbZvNuNDkNr?=
 =?us-ascii?Q?LKB6glJhbt1rNvL6LpOsUw+FjhwxqAjfH3JgBilW9Lc79R5DYJWGHKoJ/Hxm?=
 =?us-ascii?Q?p4aNirMVhFF49mU5+2jymelwqQqRgMO+qq9MBSJwddOXy6v9eFd9b3qKqR+m?=
 =?us-ascii?Q?jcTl+/DtJfrOw4ROP4E1fkDX6LvdYAGGPshJOROtben9mHJY3qJytyJO5+g6?=
 =?us-ascii?Q?d1SMLrr+Vz90IsJuxyUnjOtLzUo20QeOHAikRiWD?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b8e9e19b-6cd2-4126-c758-08dcaaf170b4
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2024 08:28:33.4189 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yYYSGS7Je6kFkNGFR1qGR2OBzw/4XEh8O6MBUpP4Z8ARGBgW0a9yxGk6HbsVqUOkuMm7oSQSADkCBG8whtTMjQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7846
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Im=
re
> Deak
> Sent: Monday, July 22, 2024 10:25 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [PATCH 04/14] drm/i915/ddi: For an active output call the DP
> encoder sync_state() only for DP
>=20
> If the DDI encoder output is enabled in HDMI mode there is no point in
> calling intel_dp_sync_state(), as in that case the DPCD initialization wi=
ll fail -
> as expected - with AUX timeouts. Prevent calling the hook in this case.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index a07aca96e5517..11ee4406dce8f 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4172,7 +4172,8 @@ static void intel_ddi_sync_state(struct
> intel_encoder *encoder,
>  		intel_tc_port_sanitize_mode(enc_to_dig_port(encoder),
>  					    crtc_state);
>=20
> -	if (intel_encoder_is_dp(encoder))
> +	if ((crtc_state && intel_crtc_has_dp_encoder(crtc_state)) ||
> +	    (!crtc_state && intel_encoder_is_dp(encoder)))

So we are trying to avoid calling  intel_dp_sync_state incase intel_encoder=
_is_dp returns INTEL_OUTPUT_DDI
in that case why are we still keeping the check intel_encoder_is_dp when cr=
tc_state is not present.

Regards,
Suraj Kandpal

>  		intel_dp_sync_state(encoder, crtc_state);  }
>=20
> --
> 2.44.2

