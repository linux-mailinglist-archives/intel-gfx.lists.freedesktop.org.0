Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6652A6237D
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Mar 2025 01:55:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D36410E36C;
	Sat, 15 Mar 2025 00:55:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mfvn59zS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3FFA10E36C
 for <intel-gfx@lists.freedesktop.org>; Sat, 15 Mar 2025 00:55:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742000145; x=1773536145;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=2PGdgJH0giz6xUjSHxZeUYxJ+LnOz3OgLsd93AdO1BE=;
 b=Mfvn59zSdrVU2KDsKKK5Nc//+B9DfVkrvIfCMJUsZtZv6+ivKfQuc5el
 iC2ocag639dkMpnl34O+etjpr2sTMu+5EL6jL8bKvQYBuPjPUiD/v+9e/
 q8WL0CRxTrzsPoXrSveKG3fYP7oI1DXROUe/cx5cVPJsfQj4iTxuR17Xl
 /B2vQdp4qs3DgHfDUmOBCTfLXbcLSladxetO2AF5fNifRl/ljUG81XvKb
 DaZkA7IDuDBpjaQ/Uq8wYsl1d1xr81/PuhYengjxaZupfU2loxngBtI6e
 mT+0CEGj/GWh1t0uexEKgDMI5Qf2NR+hZISV5ARLL4uWeXy5qSRhkvHBs w==;
X-CSE-ConnectionGUID: jzAx9iL8ROeK58859v3xLw==
X-CSE-MsgGUID: HmGoNr72ShujaMZkOZZKdg==
X-IronPort-AV: E=McAfee;i="6700,10204,11373"; a="60564289"
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="60564289"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 17:55:45 -0700
X-CSE-ConnectionGUID: r0wC1iuJQPi1vddvzifrQQ==
X-CSE-MsgGUID: I7lqk9hhSNuqLpFMV8rOUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="125630804"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 17:55:45 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 14 Mar 2025 17:55:44 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 14 Mar 2025 17:55:44 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 14 Mar 2025 17:55:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GXHxsSVUi0r16wbwx5Dd0q1a+xJVsSDdPn0ibpJAVE/EC5ddijTtV1+dsHKv+SPhFhcQucqRbQsOgexx6On3TX2+g1K7q7mXQSkCPsaiojIrRuXUPPuAXUGiVWw2+AhkSPc5qk0QzcV1NmQ8M0WAwn+TVGrwPNCaDz4wvoC8R6FYItCi/KjxmtqCuyJr4qQ5tZSm8Ctc/iEqZCHFt0RJqyu0eRdSLJadprP7T/IR20xa8XDLjNhbbNBe7Fvc4ylVh2Ic2b3M2GXWqTyj3Qb7I3v/za/oul6LUNg9c2d2UsfGlyh/ivHJa38B+DWn8tw4uYZT1ZUjiY/HmL+zXB18cA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fvExcCZvrk3pyaIUtArT2EzVN3AydCgFw+8mfIz3roY=;
 b=c4cAdBDpgUpTy/VCwh02gO11HC3nmM69eUVbO9BQ56LXGIGkP5u7mukkrdQbkrK9grJzi3wy+AyawF4Mg/qbdbGAaCev7JSSN5ukQiPbdN2fOJatxz0MQNEh9npX4J/xN073cvMKqcurLQdwkdrLAiYzt0mZwG3ENoIC6Tt7qw0tRkUytME6KtYfqMXSiBKhyKw/jk80WVtDOuq3bzqUIxo5S5LfEXavjfxg8WblW8D6TBNqOsh22jIrYILWdOwgOTKQ5Fa0eOpId82u6FIIBzHaLbYY1hT6YUd15ludgYIyRntGMaKn2KPbIkfklPBFHXQltzR0lqPo0COm8EjwTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by PH8PR11MB7991.namprd11.prod.outlook.com (2603:10b6:510:25a::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Sat, 15 Mar
 2025 00:55:10 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%4]) with mapi id 15.20.8511.026; Sat, 15 Mar 2025
 00:55:10 +0000
Date: Fri, 14 Mar 2025 20:55:07 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 4/6] drm/i915/pm: Do pci_restore_state() in switcheroo
 resume hook
Message-ID: <Z9TP6ypwxQy3rfDM@intel.com>
References: <20250311195624.22420-1-ville.syrjala@linux.intel.com>
 <20250311195624.22420-5-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250311195624.22420-5-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: MW4PR03CA0256.namprd03.prod.outlook.com
 (2603:10b6:303:b4::21) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|PH8PR11MB7991:EE_
X-MS-Office365-Filtering-Correlation-Id: 3571429a-677e-4a06-ec2f-08dd635c097d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?dHKkDbA8yJhwLUxZNLeROcn9Geu692y35i9In3nGOI/i3IRQB6q0zeQ/Pm?=
 =?iso-8859-1?Q?pXu9TWrq2hMkg+1dVVHKWXDX35OVVES7TIj1UKrBjiE9dT1/McFz9HhEdc?=
 =?iso-8859-1?Q?nR3H9m+oHAQYPN5geP3JZT0alLuGeRfn4UQ2wu5P0EoVAS4DIo1/td+px9?=
 =?iso-8859-1?Q?nl4hRizI/1y8gLoHmCWJXwwEXT/c3qXLZwF7krkdICSncmEn6N3aObbDA0?=
 =?iso-8859-1?Q?pdeq1tnyqr+KzgmuwBm7RFWeU4L4+OPh5AvyFsZLO8pQ2WwwG0/1zFStLS?=
 =?iso-8859-1?Q?x35nS0BEgb5n1XoRmRUZHQI8mZfvi8DSiQiDkjV0E9LhFJWzTXzbwEXaPG?=
 =?iso-8859-1?Q?yac8AiMM2teX5HErxPxQ5GYdfFocNsuUcjWkWbG4GZ9HWT9eIcYwCTC+qq?=
 =?iso-8859-1?Q?opsnyt/ZOJeYxjIivrOD+Owmh6rblcR6kX3o6U9G00VKJJT11PhsaA+xEO?=
 =?iso-8859-1?Q?WInuATFKBS7QdDXeUolhda9o5Zp/8aTeBSjYV86PLslXHRm9bPtcgV2TdJ?=
 =?iso-8859-1?Q?j4huciQm6ferSc5VkfDVengSFBFqFwikvaaBNqmCchRcoQTUFrgY1urZh4?=
 =?iso-8859-1?Q?mLU0qzPYKap7D/Sa2xGh1pyzB4KcOVSLR6ujOqJdkIHMq/D7I51u2O7LXz?=
 =?iso-8859-1?Q?K7yJNdmVxLOyCt93adLQn3i247hGEgof7ZhrnbB3AZXcQgDoNw6rNHxPlJ?=
 =?iso-8859-1?Q?Sxsqx/E1eAKihArCNgCjuCqendTQxvOsnSfYSmc8bLuvmqMnvJOkGKPy4n?=
 =?iso-8859-1?Q?NK0VxJaSqWveX/bR/K2DlpAjU2WYpcQGQREBwTIUqnAc1L9xKHifHE/GsM?=
 =?iso-8859-1?Q?VQGDS3pXNFUWhSVk7AAt7crak8XcaYHYBKrMXv2qxvCc7T15c4gTOhWC4Q?=
 =?iso-8859-1?Q?OLr+QDELFmJmJdHUQCZuAFPXR+UZxAlMHeaAII4qPVHZ47+DO5fH6C5UHp?=
 =?iso-8859-1?Q?QDjKNjO7+7AnQX61uzNW1ZvG2Y57TH7rmRAOWJ9MFo5OJAv96w7XRPBKar?=
 =?iso-8859-1?Q?8hydil5OkmR92ravpwijU65Xb+kS2bh7l0oOVumuD47c/GuVlJss2n83WR?=
 =?iso-8859-1?Q?w1mtrl4H+t/KKgxrvrbnAkYYcbGHo9gY06rMtuh7dnwxaJWBrE9UrElIf3?=
 =?iso-8859-1?Q?hFOKi/ClrFhVV1ZhMs0ao/S32aRYON4/eHLrA8YktpSu9z3/2xrfU5xVWf?=
 =?iso-8859-1?Q?hDfKPHN8rxkuU45Ivmg4MtZnDVZ0+DeI23GCQlMFEWMLV8ZTk5gIrzO3qi?=
 =?iso-8859-1?Q?sujWGGTKrADbk4vM+2wdJwWL6ClWjJgij6lJfwneWQjpefkQDlrvaV5Vm4?=
 =?iso-8859-1?Q?dlyX2gqWHX+CQB7qX3ikxBWV9J4bsh2W292ZGjvMYZdXm13rswYFvclTFJ?=
 =?iso-8859-1?Q?I9QBcblnjv3ndNj5lE11qDuxz1OZ6nAktapeVuMEtxKnUabCSo8srZhRNp?=
 =?iso-8859-1?Q?fqxhIPVOJ6pxm82Z?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?X7PB2s4Ugcln860UgBV998z7RlGzYevZujFc+kkqFCbfpIS6i4+2VM7hON?=
 =?iso-8859-1?Q?xxzQ4Y65KoT84Tirmoxp0d5bmnBZHLsFIcbKXCWubA13noXQEy1Ypw9CuX?=
 =?iso-8859-1?Q?miFImbcPQtgll7pAFUS+0SIvAThRThKUg3BBgX2I+8L5Aba3y6lup5E9Nw?=
 =?iso-8859-1?Q?yeigvQgcf1YUx9UjGDA5xQv9b/bPLMLgMgD/KQpHZBxs6vXjZjt+zdDp8O?=
 =?iso-8859-1?Q?RhITL7jkGQX3UpJH3g6oDEGei0GmaBZZ+VxZtRVSGQfKp0RTvJDTH03wVU?=
 =?iso-8859-1?Q?NaAFpRglPE55gzkpPsHgQr6C3VNzL/P2pKA69ajhs4deGPw308C2MgmMPQ?=
 =?iso-8859-1?Q?w+8G3JftR4CvEFHkcciQZRbWHfN7CzsJUdRLMGt90bjwJC3FiaKtmT7pA9?=
 =?iso-8859-1?Q?sjBU5VWTiGlLBUgTku6FjknWwq/7ytQn3Fl0W4wNv7nGp54sY/pf9DChLP?=
 =?iso-8859-1?Q?1TRTeCXJtQ7evssLvCaEchjbDOwh5dMGdzSX3W53GTJq4eEGY1qMQBRiRX?=
 =?iso-8859-1?Q?XTdTJatN0t990UWsICJDx8ywy9G7paW74jbFQqiipuUX7qyMCce/1gJ0c+?=
 =?iso-8859-1?Q?T0Rlln86ay0D6CBYZHuexTYPKl2csPldTH6VKjkSa7aCMk7UqK8HyEfUDS?=
 =?iso-8859-1?Q?4QAiMEmad7MlXBaPzgcSsN+IGucGMnbf6QeQEUdVNQBmNN7RCjNK68p6Tp?=
 =?iso-8859-1?Q?OJGTYM4/rKucYurolyjNkulu/fkIBPRtfi+mf+9eTdiAC6/4NCd68Zxr1z?=
 =?iso-8859-1?Q?hkzQ57U1+Aio3vTr+1U7EjjlObXD4yCCY+ce3tOKhTqy1PAJJzSpJhp10L?=
 =?iso-8859-1?Q?YyLyehlUEkxf/KrmKdsBXg9YyDAA10LuXMVoGscUQZkRBj09DdgYRQrmhM?=
 =?iso-8859-1?Q?p0MF5uEwCwrZaIfVYSTUklzg+iPO9bJOIPUUlzmbXv8MXIxyp8XDk4Lrpf?=
 =?iso-8859-1?Q?TPBTJwvYyYf5TqE9re3G04WVMboVF+OR2/oCa1QEoaI1aBnACnlKpT81qP?=
 =?iso-8859-1?Q?r3tMrcmLeBQEz25/S1oq6pVbbXuCgVkJqgSh9TIZMSR4tB5ks6e2xnEhG+?=
 =?iso-8859-1?Q?wLpdnMw+ecGEVm//GAdYHFZeMMpckQS9CZPIzBvhcaAHGbMJZjjs1TnRsI?=
 =?iso-8859-1?Q?q8h0D2kS+BS+hMOGBS3kN2xtTYDn5WJ52opOurNroGBgk0EHA0Dscwcp8m?=
 =?iso-8859-1?Q?nI/SOvJJwWg0YEH6EE0ne0hpv2auAYUX7eVQCCiRCIriCL3RKGSUnkUpGP?=
 =?iso-8859-1?Q?b/3n31mUnL/nDeqBI2kOcewBL4cpWTkRoXzJK2LKwFJ6U1f4z6EnRMQqnb?=
 =?iso-8859-1?Q?Swqeutd1Iglkf0r7eb/oF2hVM7oIflGQKrnCABPqxc2i0zrhzP1yPfgk0B?=
 =?iso-8859-1?Q?aTS2t0Io1xQadWEEHLTaKcJKLVsJqiB+F43UYEJHIlCWpV9cm81g5QFuI0?=
 =?iso-8859-1?Q?yMmSoLM4hzIf1anXUO0FfFX3mVoi1aTAuKvuse4gQFWg0ulF2Nd9lUdxUP?=
 =?iso-8859-1?Q?2yn1gnQ6lqgFWFCnFXEVYjfRTmUqlxpyj8oolVDc72bEBbRJAyQh8cx8n9?=
 =?iso-8859-1?Q?8+bYDw5FmxNGp6t1xLj5Tr2nxf1V7hT0cIlwV+P8J6NtFKh0MlQB8Mp55n?=
 =?iso-8859-1?Q?9yqhWVqiG+R5YHdHr+OAKNITHlgZgkznUfOOFmfqbFVk3OaQrl+kRtOw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3571429a-677e-4a06-ec2f-08dd635c097d
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Mar 2025 00:55:10.6618 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gvwz3uyY5MRQNN1ZSegLpl8R13rsfGqT5IHONbv8466oo9/t9JDAj2t7nIUYr9x5JEJ126iUrreBGkWy1UJ30A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7991
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

On Tue, Mar 11, 2025 at 09:56:22PM +0200, Ville Syrjala wrote:
61;7802;1c> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Since this switcheroo garbage bypasses all the core pm we
> have to manually manage the pci state. To that end add the
> missing pci_restore_state() to the switcheroo resume hook.
> We already have the pci_save_state() counterpart on the
> suspend side.
> 
> Arguably none of this code should exist in the driver
> in the first place, and instead the entire switcheroo
> mechanism should be rewritten and properly integrated into
> core pm code...

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/i915_driver.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 995205e24ebf..a199e21c7bb4 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1340,6 +1340,8 @@ int i915_driver_resume_switcheroo(struct drm_i915_private *i915)
>  	if (ret)
>  		return ret;
>  
> +	pci_restore_state(pdev);
> +
>  	ret = i915_drm_resume_early(&i915->drm);
>  	if (ret)
>  		return ret;
> -- 
> 2.45.3
> 
