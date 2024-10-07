Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E3D2993710
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2024 21:17:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2804410E091;
	Mon,  7 Oct 2024 19:17:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dtz4cZvA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D92810E091;
 Mon,  7 Oct 2024 19:17:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728328633; x=1759864633;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=C36bsTA96GZZfvs2afVuEbRTMo+5oELJ9/IQQ3LEt1g=;
 b=dtz4cZvAZ2gsPrtNbuFkwk4IfwMDUhHSGiSf7lCOTvICZ/HNNSATF1zg
 KrNAeQDdtL9n4RJgK8WlqHhgtuN+zS2HQm1x3DRVpuGVXzYGGPaMSz9+M
 ++nPFXODGlMUgRUP8cO41R9up5Uf2DDFdvm7lEv+DODK49swEUDmyiJGF
 725s7kRanTcS2aE8YNq0npQsutTFvRLfX7ahVpionVGy7OLD8UjYLzOIM
 7/K8pq2j6j3QyePdqpWdDElDK3KR2k4xs+3b7BItr4hj58Qis6i0qeABU
 689Iiy79uKW9V2szQL7cA7VGpVRHXzy1+EFCRv9nbB1egdoKecY/cjycI w==;
X-CSE-ConnectionGUID: VkhC81hXQEuTPeKB5ewUKQ==
X-CSE-MsgGUID: H2fU6vwLTpSUR0Bw1LYn+A==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="27306233"
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="27306233"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2024 12:17:13 -0700
X-CSE-ConnectionGUID: yhaqWRbATviHrCEorOO7dg==
X-CSE-MsgGUID: VNB44mR6RNWaih/6Hoxyiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="106426922"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Oct 2024 12:17:12 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 12:17:11 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 12:17:11 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 7 Oct 2024 12:17:11 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 7 Oct 2024 12:17:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zQTv41UMsgAL68bbG18FQ/64NRmXAO66r2B07GURPD9YMe7RGALHnNqBCRfMIwYZYdq9PYuSk19n8zKLkc0fubD/fpzgMfzOzoQZI2mEYFSSjNpXyMLFKJrXvGYTSrBbqae9+UtxDG3U40UjKv4ijTcyRUdcTl/1h8Mv6MfwrtWGw43sXQJN0gA92tb4S5sUw1riuAwtBa4kbboZYYj5J5Js5gjjTxnNg86iCHhb0yLU/VB51I4Q5x01dteOV6IW4zpfdOU1jk+XlAVmRqmZVd8LyQ+tIQ9ks9nBXFGYEkvHE/5GsgRqDuOcw9R+JaIWLmnhfdW/0ioUKTubI5wz1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3SZwQwofofVGTGHIYfv25pX2fRuepFdTBmI9MGqV/Oo=;
 b=B3RJevnUQ57M6QcnD02qLAqc2DrS4RQYrdQHEcmNIOIOxavMMwKt3XdtgxmXUm6bySStGI+neZ8AA+aNocYZmcC1PqNdLIpWSReiu5mpd6v1IOQf4nPvUOomctkHlWttKyCouyCScJch9Y5O6Be2c+jRwQ+6P+zAe8XPqgdrcsTfHwEdFZucwpDTfKk0WvCuh6WjoXONJIbbgqDV12b9WWm7dW6K6pdvJz9qeY4QOo6JwobHfFJ4cvzX35BcGk4NUd4LimnwpVA9GUs9sTvLQjSRLWQ3IfDbPvKDSgdYgaO3IRTD9bIjkE1KGokU+2olk4zPSIZSBoul2wEB5Lw3Xw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5445.namprd11.prod.outlook.com (2603:10b6:208:30b::7)
 by SA3PR11MB7612.namprd11.prod.outlook.com (2603:10b6:806:31b::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.23; Mon, 7 Oct
 2024 19:17:08 +0000
Received: from BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::b1a1:c6a6:403:8161]) by BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::b1a1:c6a6:403:8161%7]) with mapi id 15.20.8026.020; Mon, 7 Oct 2024
 19:17:08 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 03/31] drm/i915/display: Move regfile registers
 intel_display.restore
Thread-Topic: [PATCH 03/31] drm/i915/display: Move regfile registers
 intel_display.restore
Thread-Index: AQHbDsJY8t/CwZ/xFUWSm1TFPEVrSrJ7vQ4A
Date: Mon, 7 Oct 2024 19:17:08 +0000
Message-ID: <BL1PR11MB5445DD22C58224B093843A00E57D2@BL1PR11MB5445.namprd11.prod.outlook.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
 <20240924204222.246862-4-rodrigo.vivi@intel.com>
In-Reply-To: <20240924204222.246862-4-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5445:EE_|SA3PR11MB7612:EE_
x-ms-office365-filtering-correlation-id: d298879a-cf9d-4d89-52bd-08dce704a33a
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?qJSvzr38CwvkCFhznRAaF1ycAmltfibQc/wpcgesRA1SlmSDGNNSX4BQc7ng?=
 =?us-ascii?Q?bntfLqfrV4v7rFcCOkNMo14tMQUwuSOk3al3BFaSrpojsVLs5bHQiS+y/oTP?=
 =?us-ascii?Q?hyyXSpLTI36RNVNK+SKrW8SZvs7RjhX1SMi8Gn+lY1AR9lul6mAQAO8/Bgw9?=
 =?us-ascii?Q?3saoKrryUBBSsIAivRZy7C5H0DbUgcUf6FkwFwXTvD7KA0wSx4Ho9mAYQZjL?=
 =?us-ascii?Q?uQ2C8Xz9kZNQ58nyy8bzRWFMuHq5nR3Ovqr170/EWA5Lh28UG+8Tzbolz38J?=
 =?us-ascii?Q?/TG5eDv5O3dX3zg8NF0BNWha0OJ5cpDTjN6ZLAn1GUVxJ9NnnK6OW1atmxgb?=
 =?us-ascii?Q?0Uxw8SW/iSBz9wdhDAd+ZKha7s902y2ag5Mi2aasv1u1ddltl3Tb8ODqHRIc?=
 =?us-ascii?Q?7xpTZ0/YaQ7pQkH85ERQH3mu8hfNSfaR6vQD0Oj1HFOwelGKyo/LW1amuho5?=
 =?us-ascii?Q?eNfklvJlOXOazhyl0A9Kg/Qij66uWIzNGeUEtP2XP/gRiWEeKowBZa02idms?=
 =?us-ascii?Q?VFPACuqaq3nFfZZ1ziSDRBxyAHJiGTojH3BVeTucuiCrZ/s9vTW/B5D3X8ep?=
 =?us-ascii?Q?haZnBwKB52AcDiTAG6jMsVDWwJlKZ6jifMMxte+NQOCmBX+BOycGfiSBC0wU?=
 =?us-ascii?Q?H9mpGeo9lZfhr+HdioCKkPO5WHoPB7okXXJIJEkw2GPnMyHXEJIZLvOxSxDQ?=
 =?us-ascii?Q?gjXliAQwmafYCqXyEjBBiYZTPA6Yk1tkRs8WoAKic7ssS6g6e3JzmpHeHMji?=
 =?us-ascii?Q?ITZwSiHbTWag8SLizSiRay+RIAb3oT70XFA4nqvwGn1FzZme1rH+ISrmUQu+?=
 =?us-ascii?Q?3dXmKbjlLv1oXp7FMdHlmFmsRwLID+Nzi3SRV9X7/TO+DqaPlx4dmAVj030f?=
 =?us-ascii?Q?cr6IkWcYdneOvwO/WOyM09titVEmMR06aeTmnKAIBaDlhdIQxt7AO62iu367?=
 =?us-ascii?Q?yCuDQg9oR8YAyHj+75SuwsX7b6aPK7r8AJiGvYoYHNuYRfoL+RfamWLvAIw6?=
 =?us-ascii?Q?TpxCKnSIE4aVvhB+Trw1dRqeONaZuv14jZPoOVnISue+OcAlh84OkV8+B0bJ?=
 =?us-ascii?Q?XJDp7dq28+m3DEDFGH0gDEwhADNdKc+2jnW6EaH4CigauIgDjvxE+ceIEdTL?=
 =?us-ascii?Q?Ng7bSkyQPATtkRhvhF/2GFxZtopCQCEm6N53AYxW4XNjbgBKzc+56PNmgeer?=
 =?us-ascii?Q?LwXq0yjPwRgDWpoDJagcTgGXvRvFQjLvjdInHdb0em9A43LtgUBuZfhhlIsr?=
 =?us-ascii?Q?ROenpw/gXnf0GyLUWmEWgV1EyJnAowh5MrosADRwRWeSFizRKiP9e35tysjJ?=
 =?us-ascii?Q?KljC0eIGsF9/KALeYub+NYkuHL6Jc//ZEANbolq7dsPuEA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5445.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?X84wa8uvJHhruDPHtOxSuJSOG2Q7gI1wpNL3QvfnDXPHP5fAH/DuhmI05KC/?=
 =?us-ascii?Q?Dz55klbPxJi0EGl0TazYJDL1Ac0VzGRt+YPL+FG/GmTQvr+aHuV54BF3LRdR?=
 =?us-ascii?Q?Xiuqmj1CfYSxOuGtFwMWlW0V5fN1VmUksk1t+GR0DbGP9m7cbdF4Ukny20MV?=
 =?us-ascii?Q?GfvtUgFGauFhkjZ3niqLkH83zDEW1n8OfLyz18FUKvcigy52wn8NNT9T0hAr?=
 =?us-ascii?Q?szqYuYCVi9N2oHlTZ0k8nG1VvtNamf6nBJnV0XM5d92wMRuX8Zq98U4h0xBb?=
 =?us-ascii?Q?lecvdEIkkTRYH4lp2Fn/jdMwBFPlxS+FjXCifiEKhTlrGB7CvoLlQGFq2Lcy?=
 =?us-ascii?Q?prNlrEW/amPFRfR5zA43fzD3PRgYskiE7mYZDbAgfdN68LV328B3lICFln47?=
 =?us-ascii?Q?+qfuCNYIvcK/c6UJbBUnz4KT+R9X58IWFJWj3Iin2S6rMITJ2u7wND7a8kAb?=
 =?us-ascii?Q?qSNwS38lIKH9Dp6yQKzef9E3P2g3TnH+hO7G2uOkbFMuIK/MvnwYnOHyAidm?=
 =?us-ascii?Q?yMRxh+AR/zyPDp4u+rEcLXFD4s8FYOuAl1ezD9DYadJJbtdosH6vnf3S5kLx?=
 =?us-ascii?Q?w26/4q6+a5o8CCPFpla9blFJXV+YVEwQFLm5K6LBgwXeCVSjhQIsr6I8SNLw?=
 =?us-ascii?Q?7kq2Xo6uefezk8y4+eJRZ/RJ6MUuUohgqAAvOUChY8kUtCwtf9f74JRd/sxp?=
 =?us-ascii?Q?X++7dIeyv+orl6QCRd02Yf6dm+wT0vYcrDb57uBLfHRDyR9rB03kZ2PkAXDV?=
 =?us-ascii?Q?qxLgGSUUaAITpLecOJG+fZMJX+f8GoNdnzilkfsmpSQVNusB4BUfjoi293p3?=
 =?us-ascii?Q?wGVOgrDwiZOEyEPp9AZ2F9mqFXbBfY4Z/Fsp+Se7jQdzFS1TOF5Bi/nk3C1a?=
 =?us-ascii?Q?KdkyUAU7pQmXWp2iPPZmck1pMp/8UWkB/GRRcFtmwQwxJFe/hzP2W8qeIKmu?=
 =?us-ascii?Q?ugeote/2wn0oYDLFd/mGWQfHdz36la479bExFN5IowmFKLl5mJOh9D8KJsxb?=
 =?us-ascii?Q?kvQ2aOWxFxs4tj+gEDj/zuuM7ivarXuksMthGQJOb5OsN/oUHN0O4CTLzn8n?=
 =?us-ascii?Q?33jxTA+zS1RATT2JLo48BBfIzZ9iBgWKgi3n+5lt2UsmBDg0eQo31AyDviTA?=
 =?us-ascii?Q?9PwV6FhzyR7w4vCE/M1RkEnz3BED0kgiURkQuBl1ZXPl6fJW4NJKfiFGCppV?=
 =?us-ascii?Q?KmaPRFErt7GEhOgRZoRnqHBmCKCWWZkNUaM0BJ+qFCNvZCPkF7QjwzhFe70v?=
 =?us-ascii?Q?iqZwJ0Y1zK+maWVEBjfxgYL3OeYmMm82ok6M7Y+VVKaJCUge7XnhRTst7zY5?=
 =?us-ascii?Q?EAAdUMth/b8am1D//jQLiH0ShG4D9DqdPgTaFykap0BUoMFScki8PmZS2l7c?=
 =?us-ascii?Q?gKH8e4qjVpxMd/7+BijjT3V0euw2w3e230CDkZRDcxtg9mXOaWpSQVcnujQL?=
 =?us-ascii?Q?IQTxJzXRD1y8fTSeFDutiPnghOQNCa4hMTX7aURMoIBZTWD4AcDyJ6cX2+hV?=
 =?us-ascii?Q?HN4RoU3bp4UH4YRNGvtKFkqepl1Po+SgfOA8/1nGhVjvhaysABxjOqWmM/2e?=
 =?us-ascii?Q?/oRfH+wLlKkxxBkgmovUQfKgqX/lQ8+EJKpwKMdS?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5445.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d298879a-cf9d-4d89-52bd-08dce704a33a
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2024 19:17:08.3958 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hRLl/358qDkVPTQxOC7VKOU5Vj9XPu+ZdaG80rA37g46EdK8N8xe/eS29WtAQpcgAPauEO6kFGdifMIafzwxGhszdgiJdGITJQNpbhE9Wds=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7612
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

-----Original Message-----
From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Rodr=
igo Vivi
Sent: Tuesday, September 24, 2024 1:35 PM
To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
Cc: Deak, Imre <imre.deak@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com=
>
Subject: [PATCH 03/31] drm/i915/display: Move regfile registers intel_displ=
ay.restore
>=20
> The intel_display struct already has a place for save/restore
> stuff. Move the i915's regfile there since they are only
> related to display.
>=20
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

There's probably an argument to be made that this patch and the previous
one should've been squashed together, but I think this separation is fine, =
as
this patch does do something distinct from the prior one (component
relocation vs. suspend depreciation).

LGTM.
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

> ---
>  .../gpu/drm/i915/display/i9xx_display_sr.c    | 40 ++++++++++---------
>  .../gpu/drm/i915/display/intel_display_core.h |  5 +++
>  drivers/gpu/drm/i915/i915_drv.h               |  9 -----
>  3 files changed, 27 insertions(+), 27 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/i9xx_display_sr.c b/drivers/gpu=
/drm/i915/display/i9xx_display_sr.c
> index 4dd0ce267994..4c78b7165831 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_display_sr.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_display_sr.c
> @@ -12,56 +12,59 @@
> =20
>  static void i9xx_display_save_swf(struct drm_i915_private *i915)
>  {
> +	struct intel_display *display =3D &i915->display;
>  	int i;
> =20
>  	/* Scratch space */
>  	if (GRAPHICS_VER(i915) =3D=3D 2 && IS_MOBILE(i915)) {
>  		for (i =3D 0; i < 7; i++) {
> -			i915->regfile.saveSWF0[i] =3D intel_de_read(i915, SWF0(i915, i));
> -			i915->regfile.saveSWF1[i] =3D intel_de_read(i915, SWF1(i915, i));
> +			display->restore.saveSWF0[i] =3D intel_de_read(display, SWF0(i915, i)=
);
> +			display->restore.saveSWF1[i] =3D intel_de_read(display, SWF1(i915, i)=
);
>  		}
>  		for (i =3D 0; i < 3; i++)
> -			i915->regfile.saveSWF3[i] =3D intel_de_read(i915, SWF3(i915, i));
> +			display->restore.saveSWF3[i] =3D intel_de_read(display, SWF3(i915, i)=
);
>  	} else if (GRAPHICS_VER(i915) =3D=3D 2) {
>  		for (i =3D 0; i < 7; i++)
> -			i915->regfile.saveSWF1[i] =3D intel_de_read(i915, SWF1(i915, i));
> +			display->restore.saveSWF1[i] =3D intel_de_read(display, SWF1(i915, i)=
);
>  	} else if (HAS_GMCH(i915)) {
>  		for (i =3D 0; i < 16; i++) {
> -			i915->regfile.saveSWF0[i] =3D intel_de_read(i915, SWF0(i915, i));
> -			i915->regfile.saveSWF1[i] =3D intel_de_read(i915, SWF1(i915, i));
> +			display->restore.saveSWF0[i] =3D intel_de_read(display, SWF0(i915, i)=
);
> +			display->restore.saveSWF1[i] =3D intel_de_read(display, SWF1(i915, i)=
);
>  		}
>  		for (i =3D 0; i < 3; i++)
> -			i915->regfile.saveSWF3[i] =3D intel_de_read(i915, SWF3(i915, i));
> +			display->restore.saveSWF3[i] =3D intel_de_read(display, SWF3(i915, i)=
);
>  	}
>  }
> =20
>  static void i9xx_display_restore_swf(struct drm_i915_private *i915)
>  {
> +	struct intel_display *display =3D &i915->display;
>  	int i;
> =20
>  	/* Scratch space */
>  	if (GRAPHICS_VER(i915) =3D=3D 2 && IS_MOBILE(i915)) {
>  		for (i =3D 0; i < 7; i++) {
> -			intel_de_write(i915, SWF0(i915, i), i915->regfile.saveSWF0[i]);
> -			intel_de_write(i915, SWF1(i915, i), i915->regfile.saveSWF1[i]);
> +			intel_de_write(display, SWF0(i915, i), display->restore.saveSWF0[i]);
> +			intel_de_write(display, SWF1(i915, i), display->restore.saveSWF1[i]);
>  		}
>  		for (i =3D 0; i < 3; i++)
> -			intel_de_write(i915, SWF3(i915, i), i915->regfile.saveSWF3[i]);
> +			intel_de_write(display, SWF3(i915, i), display->restore.saveSWF3[i]);
>  	} else if (GRAPHICS_VER(i915) =3D=3D 2) {
>  		for (i =3D 0; i < 7; i++)
> -			intel_de_write(i915, SWF1(i915, i), i915->regfile.saveSWF1[i]);
> +			intel_de_write(display, SWF1(i915, i), display->restore.saveSWF1[i]);
>  	} else if (HAS_GMCH(i915)) {
>  		for (i =3D 0; i < 16; i++) {
> -			intel_de_write(i915, SWF0(i915, i), i915->regfile.saveSWF0[i]);
> -			intel_de_write(i915, SWF1(i915, i), i915->regfile.saveSWF1[i]);
> +			intel_de_write(display, SWF0(i915, i), display->restore.saveSWF0[i]);
> +			intel_de_write(display, SWF1(i915, i), display->restore.saveSWF1[i]);
>  		}
>  		for (i =3D 0; i < 3; i++)
> -			intel_de_write(i915, SWF3(i915, i), i915->regfile.saveSWF3[i]);
> +			intel_de_write(display, SWF3(i915, i), display->restore.saveSWF3[i]);
>  	}
>  }
> =20
>  void i9xx_display_sr_save(struct drm_i915_private *i915)
>  {
> +	struct intel_display *display =3D &i915->display;
>  	struct pci_dev *pdev =3D to_pci_dev(i915->drm.dev);
> =20
>  	if (!HAS_DISPLAY(i915))
> @@ -69,16 +72,17 @@ void i9xx_display_sr_save(struct drm_i915_private *i9=
15)
> =20
>  	/* Display arbitration control */
>  	if (GRAPHICS_VER(i915) <=3D 4)
> -		i915->regfile.saveDSPARB =3D intel_de_read(i915, DSPARB(i915));
> +		display->restore.saveDSPARB =3D intel_de_read(display, DSPARB(i915));
> =20
>  	if (GRAPHICS_VER(i915) =3D=3D 4)
> -		pci_read_config_word(pdev, GCDGMBUS, &i915->regfile.saveGCDGMBUS);
> +		pci_read_config_word(pdev, GCDGMBUS, &display->restore.saveGCDGMBUS);
> =20
>  	i9xx_display_save_swf(i915);
>  }
> =20
>  void i9xx_display_sr_restore(struct drm_i915_private *i915)
>  {
> +	struct intel_display *display =3D &i915->display;
>  	struct pci_dev *pdev =3D to_pci_dev(i915->drm.dev);
> =20
>  	if (!HAS_DISPLAY(i915))
> @@ -87,9 +91,9 @@ void i9xx_display_sr_restore(struct drm_i915_private *i=
915)
>  	i9xx_display_restore_swf(i915);
> =20
>  	if (GRAPHICS_VER(i915) =3D=3D 4)
> -		pci_write_config_word(pdev, GCDGMBUS, i915->regfile.saveGCDGMBUS);
> +		pci_write_config_word(pdev, GCDGMBUS, display->restore.saveGCDGMBUS);
> =20
>  	/* Display arbitration */
>  	if (GRAPHICS_VER(i915) <=3D 4)
> -		intel_de_write(i915, DSPARB(i915), i915->regfile.saveDSPARB);
> +		intel_de_write(display, DSPARB(i915), display->restore.saveDSPARB);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/=
gpu/drm/i915/display/intel_display_core.h
> index 982dd9469195..2f4dfc8dbedc 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -500,6 +500,11 @@ struct intel_display {
>  		/* restore state for suspend/resume and display reset */
>  		struct drm_atomic_state *modeset_state;
>  		struct drm_modeset_acquire_ctx reset_ctx;
> +		u32 saveDSPARB;
> +		u32 saveSWF0[16];
> +		u32 saveSWF1[16];
> +		u32 saveSWF3[3];
> +		u16 saveGCDGMBUS;
>  	} restore;
> =20
>  	struct {
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index def3ca135406..9030ea7d54b1 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -101,14 +101,6 @@ struct i915_dsm {
>  	resource_size_t usable_size;
>  };
> =20
> -struct i915_suspend_saved_registers {
> -	u32 saveDSPARB;
> -	u32 saveSWF0[16];
> -	u32 saveSWF1[16];
> -	u32 saveSWF3[3];
> -	u16 saveGCDGMBUS;
> -};
> -
>  #define MAX_L3_SLICES 2
>  struct intel_l3_parity {
>  	u32 *remap_info[MAX_L3_SLICES];
> @@ -291,7 +283,6 @@ struct drm_i915_private {
>  	struct i915_gpu_error gpu_error;
> =20
>  	u32 suspend_count;
> -	struct i915_suspend_saved_registers regfile;
>  	struct vlv_s0ix_state *vlv_s0ix_state;
> =20
>  	struct dram_info {
> --=20
> 2.46.0
>=20
>=20
