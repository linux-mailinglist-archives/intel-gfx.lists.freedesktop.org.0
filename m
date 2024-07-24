Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFA1093AE1D
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2024 10:52:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95C7010E52C;
	Wed, 24 Jul 2024 08:52:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WqdCIv4S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE5E210E52C
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2024 08:52:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721811139; x=1753347139;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=U6sI0BaeEw5Gr17bIYchE/LSVR4aH6vfAYsP726xbUY=;
 b=WqdCIv4Slne6SAOIw+7gi3wtl3jJlR03vd8eh1qUSDcOYfOqlGP3xgAa
 VFxjCXyEHBZJMI1vdyaUjd4cMniHjWWQZvdY20Kmiy1mGr9oBgQYQBB0A
 dcCKkMb4ExiTeRceqoQiREXh/zCNSbiH+Y2rVKkita2syUBjOp3EHn8NZ
 IRj7I9sPrIOPOvCb1nTDvCYdOjC5fhjCo9AKCGRMPwB4F5pJn+Qmsar3f
 Q30RrCs0AnmyE1tNuLAIBszAMlQNTXWltxnE0giRoXNksTtk0FM+7e6og
 vyNFwhhEA0k/nX7vATgadu88rFr0pfgZ2XcShMewhog2OpsNmF0XR4HYq A==;
X-CSE-ConnectionGUID: Xkdmlbn5Q3SkxMxt8Al7aA==
X-CSE-MsgGUID: LU3IeUNASCe7/svWiRj0CQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11142"; a="42004324"
X-IronPort-AV: E=Sophos;i="6.09,232,1716274800"; d="scan'208";a="42004324"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 01:52:19 -0700
X-CSE-ConnectionGUID: BQa8DOXrTyui2cP4j0ovgQ==
X-CSE-MsgGUID: k1tn4QjBQGaTiAuKAKnnmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,232,1716274800"; d="scan'208";a="57044690"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Jul 2024 01:52:19 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 24 Jul 2024 01:52:18 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 24 Jul 2024 01:52:18 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 24 Jul 2024 01:52:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UDUBbE/+Z2A65IsQYHINpzJ2182dNCiYaDQHomY3/F9N/HsfViRpX4LEY+ja2WYEemA0M7oQkGG/u9z29i6UgYF450fDUoQhqPS/nJmjougq2fvahFOx5bzOOBoSzuwmZX5qPQR61ivZZJZGMItHm8IHmkTYns4cqy8vpS6nGvARI764ZhysXqoZpNXye61rkD9hLY7Vad7HsyBR/qdYIYGU2I+F7t2arW7v2OqV32clALnBGpw+jb2rdSxXNCFe0IN9j1MOrPQgR9Ti7bRy4M2hgIBZY57oodrheOR4DSimIERbpEtzU2YXzhmqP4KTB0nakkUT01NgIsKUDgRnmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZETGEru/migO96XolcM+96P/ptWHOdY6i4Da7RM4xUQ=;
 b=arXE0UJbKpMCbZSGoDVxLyvyQ5rqh1c6XOKBmbdwqr4TyCmp1pvVdxNn0HoFYBVd5pprPRJi+Ip8bJZmFT/ZhttdxXtl/7CepnQuXG91MIJVrZH+9K4cMP1GtII7pisPPQgVPEVY5dydSRIRmGrW5YUltzcakwwebPGAXrwNBx8urq3ppjGo5AqGn8RuOjFB85Zan97jp6mQy+ayqub7f6VqJW6bJJCkHobJmCWe775Hs823GiqvzbbdF4P6qO3inaSLXjkHBRde/utzoS/fFWnv62QXMrM57FUkro+C/+mmbUL+uKqePQSUr0OmXCG6n7z62+LAXiKERuup0traag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SJ2PR11MB7670.namprd11.prod.outlook.com (2603:10b6:a03:4c3::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7762.28; Wed, 24 Jul
 2024 08:52:15 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.7784.016; Wed, 24 Jul 2024
 08:52:15 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 14/14] drm/i915/dp_mst: Enable LT fallback between
 UHBR/non-UHBR link rates
Thread-Topic: [PATCH 14/14] drm/i915/dp_mst: Enable LT fallback between
 UHBR/non-UHBR link rates
Thread-Index: AQHa3FgC5JWDD/urJE6ysBxNzvV2X7IFk9zA
Date: Wed, 24 Jul 2024 08:52:14 +0000
Message-ID: <SN7PR11MB6750527EE7E48291BE184B6BE3AA2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240722165503.2084999-1-imre.deak@intel.com>
 <20240722165503.2084999-15-imre.deak@intel.com>
In-Reply-To: <20240722165503.2084999-15-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SJ2PR11MB7670:EE_
x-ms-office365-filtering-correlation-id: d35bd6ae-d47a-49fb-895a-08dcabbdea6c
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?xkzRGCKTT4tCFKtve+LcCIvKs+vrUDp4kwEBzcePjuoxPFswY+sWwbrbeeV4?=
 =?us-ascii?Q?IIlMXkG18XxkLj9ZancqXhOT93oZQhu8BvxU6jz1MGwgAoQB/iExCJhysOXo?=
 =?us-ascii?Q?WJNe7I/U1I9VsD7IyYxobdJFab7rHFgLz9sgmf0sp+pBUZ153XHD2kxxdOf0?=
 =?us-ascii?Q?DY24adhbbvbYa8RyuvhVMnILHFVPll/RLxii7PVxwKaX3aIy9F/THOA57byi?=
 =?us-ascii?Q?LZo/l8arsFi3BAhDipr8E9/DNzY9aRdiOyiwnYgD85Ner+begLZtRuZJBZkT?=
 =?us-ascii?Q?uWUweiZOjIUg02x39ll5uORlzj9wklCQ6zqqovtCfnLHl5WKpIZdY3koDmaB?=
 =?us-ascii?Q?YTJcK/wIDi8QMeN9qM6vLgRHJg3Oav2RVyf3S7A2U7EIu6KQvNnG4LQu07mV?=
 =?us-ascii?Q?jIoVT7X+yIXtgAfADiIzl1E3xZz8CQXzEBsjidAivxxqYkuV3rGpovV9nkrk?=
 =?us-ascii?Q?5Xi2FXdk9V80dOtFt0mfln2m/2bYSW4t8bJKd/TSos4K9eidLOLe9+TIlWE6?=
 =?us-ascii?Q?1jHzIY6pVr2hdc2cKLmJp/k5o4KTHP/lGTug7JoraWEISDlMytdUqWeMM1su?=
 =?us-ascii?Q?N+dEdlG/FmlD2Ax/W3O0CEHpB8m/R7bgGecQ9HX7qiHcLOrZKTQ1hMGgIVns?=
 =?us-ascii?Q?wpdzgLKqL8+PqqaJmxYlh5SPfcs65YuKXfZ0sc8ofwbmLBcKdo1i/ksNUDKs?=
 =?us-ascii?Q?ULaKoXHbk3wndeVztcqMcqpfRpBlbTIBiL5T78mkHRrJb/D3371Oi2+sjfUx?=
 =?us-ascii?Q?4Su0P1MjvBaXtZ4TDdkW51B2WMbe4lk7lwhDaUPLIb/mExoj/pUodV7wVACK?=
 =?us-ascii?Q?cV8LUpSZFtGFKveQcHsYXIFN/LNahADv2h+RLzD9ZA0+JtaDiFMwUHDVw2Gg?=
 =?us-ascii?Q?oYbUjyv/lfIAq7GKvIGXEomKVKtqW8udUrfP634DDnrVWsq3wxnugYEp4/YH?=
 =?us-ascii?Q?nEe3mzZtrrlb9sJ6+FESI/iw6Hw9bL4aLYKRxAKXt1MBvHHqH4aKtLaTQkCR?=
 =?us-ascii?Q?zHzgaacQK6VaG8Koc2gAxbykgzF8dFZH9xRtbfDBz4qyE6+XAq1pKcjn2lNW?=
 =?us-ascii?Q?Dbp4q7GydnBClvJ4FoRNaoh2bvabY3F1FUwLOOtb/c/6WB8+yCI//xBM03bQ?=
 =?us-ascii?Q?CW5dnFTI6WLQyBiARDmEPjvbL9QkE51VNHBe+LZMNsDsa2Nswz4L2x8YdSKm?=
 =?us-ascii?Q?iU+5qoWjzzWfLRzY09u5AO3Kdg5yI3ZN1J/dUM3L1N2rYc72W2gz3e7zZTR9?=
 =?us-ascii?Q?qRTx2xvGlQzco8c8Bjd+XZ031QDj4OxhTHno7Xiyv6gPXVAjl771iz0muQKM?=
 =?us-ascii?Q?O7hweR2YsXXN2XfKUlICqZm2Ji1KIPa47j5R8+gQVxTRjANW138hK+WWkSxB?=
 =?us-ascii?Q?6o3gIQXvHRv0mIxMQ74QtNx8uQ85RrEJA0FYw4vcJqbAqgzQxQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GWPT2QsWdTLkJfr54GyfSptHw+DQv78D9hhWUxdNyXkrXFp9t6m/2nIH0DGX?=
 =?us-ascii?Q?UMP9yiCFIY2SUF7r1gkb5DXxOthRvZLKqZY/bO4Fado3QIRCuntI3OLya6LN?=
 =?us-ascii?Q?eKyVSVekyVRhOYxO4RLuVM3g1MkbjCbnQej839DZoDo5J4frTH2vGp1bSIXX?=
 =?us-ascii?Q?6qPpfyu6pxaY9KeyDFrFU7UMOLTWSwCsytvZjTh0k29NFLOBtVN3MIE8kM7q?=
 =?us-ascii?Q?soQrltbCyJtnS922/z+1a/lpAZbyfogI1O1ja6A0YwL5fDGO3mEacGjwle2j?=
 =?us-ascii?Q?EJ1HqEImKNf9273NVzbaVKEmIjYlWnIOBGvqK2zvgyQCgzhEbEpGtwRLhzI1?=
 =?us-ascii?Q?VTCGiW1VvRLQRRHISFB6bfyKaox2nUmMPj7xO/hXPZfXqVwhuXJ4OrUdEy2j?=
 =?us-ascii?Q?0d9SAmFjoki/bHzvewyJy9gsv5jIUyLSqmScwA0DukdBaIf+qFQy0A38cgxW?=
 =?us-ascii?Q?Vd2EDx8oco0X/oqzka71UOmsmWyJ1q4WyRurEQ/KaaMT1qLTptBH+nQ6Wjg1?=
 =?us-ascii?Q?VOKJ6i77NLN8h3x40j1HDh2rjKFWHjgQwX8c/gH/ICd6oDAyH2bkNByGCla8?=
 =?us-ascii?Q?Q30c6RZ3CnOOzjjtzbY6wuQ+uu2VQBnfh8QLafzPa8IM7SC6AkvDSl60Ct5q?=
 =?us-ascii?Q?Hs4JXQ9cTnEdU4xZfCTr6Bc0tIA7fJv/aLtGHabzJzus5xgi83NDqQIGR7xw?=
 =?us-ascii?Q?RoAs8Erj9oZ2ce9iCV+Q8BIrVwKepR/32kmWLZ/wgJ/JXPH5+bXSPT0FP78n?=
 =?us-ascii?Q?l4S9MY1orW2EsepoEzVvL62LknRf4+uaX4h+RWrf88JeHsATCRrScbK8aXjy?=
 =?us-ascii?Q?fY4YRTd/ZrCweCVU63bSAdljrDTojqSF3CSj3m0uzQwHIQnxZNJLiEPcSF09?=
 =?us-ascii?Q?YoGctKx4ucdcKPD40GPNCxSao6yhIpmETBUdSjXxc5TrB+p6keUYtd0f972f?=
 =?us-ascii?Q?58681BwF3K+uDOIjMDmNXj0c/HpwUAb5nJeKXk+xFelga8DdHrSuruFePhZg?=
 =?us-ascii?Q?5fyJ/BQ0S8ue7AWgckTwH2ZmZZgmI/2nLYmCNmbzX3yoxl3GFYco5cFjb14B?=
 =?us-ascii?Q?eg1W8aQHgZNUjVAtmvSH5jYdkD1vzakq2LSoynd4UaNzQQvWQ15GdLARjx3u?=
 =?us-ascii?Q?wluH1spYxtWNHIRfFKGMqqzfGOw/4FpExWQ/FUMWtkpPCjaQztHMfUESShWu?=
 =?us-ascii?Q?JPUiP3qRwRuGijsS2b829F5hgi30g0YJNllx5J0e41ixom4mJxpZ8etop+CH?=
 =?us-ascii?Q?Z2kaPZMFOenZ60MlWKvKPFTXuLkiW9CxMo8XQBjyTWGVZsp0X8nGTBpt/PBf?=
 =?us-ascii?Q?nZPv4s+t9nAaapYlB3B4oaI6l9e5uIl4QSbMtDXA0kHaGL6wJDXo3l8TVCFy?=
 =?us-ascii?Q?Z3ZZcQnAsjAlgNEQD7MUIsFBykFX8eBFkUyPed93HwrfT3aq/1dMGB7NfdMz?=
 =?us-ascii?Q?+3x6u0cxf3JhWgbWEd61n+ohLH5u3yCotUpXTUs7ZZPxylCGFTA24RDBYdhO?=
 =?us-ascii?Q?lDlyU1PI81v3jeC3OkQlJoeIvm+dDsvlLoPsHUMBRAsV606CW1mauvlH+AQ5?=
 =?us-ascii?Q?yXM2JQye3YiucwjAQz7kECT7Hmv4fcWTPqNvd52t?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d35bd6ae-d47a-49fb-895a-08dcabbdea6c
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2024 08:52:14.9455 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4vozcxWVgAwc7z2WlZWDkiEVuKjvKNepzIr1nzhh+yDYP932fo57xhqpvwkj66GEUD7Zukpbriu256Re8K3vlA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7670
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
> Subject: [PATCH 14/14] drm/i915/dp_mst: Enable LT fallback between
> UHBR/non-UHBR link rates
>=20
> Enable switching between UHBR and non-UHBR link rates on MST links
> when reducing the link parameters after an LT failure.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_link_training.c | 5 -----
>  1 file changed, 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index 0c8e0d6437b5b..270080b2735f2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -1188,11 +1188,6 @@ static bool
> reduce_link_params_in_bw_order(struct intel_dp *intel_dp,
>  		     intel_dp->link.force_lane_count !=3D lane_count))
>  			continue;
>=20
> -		/* TODO: Make switching from UHBR to non-UHBR rates
> work. */
> -		if (drm_dp_is_uhbr_rate(crtc_state->port_clock) !=3D
> -		    drm_dp_is_uhbr_rate(link_rate))
> -			continue;
> -

Do we need to remove this here, I mean why introduce this piece of todo cod=
e to begin with specially in this function as reduce_link_params_in_bw_orde=
r is being defined in this series in one of the previous patches. Just omit=
 this condition while
defining it

Regards,
Suraj Kandpal

>  	}
>=20
> --
> 2.44.2

