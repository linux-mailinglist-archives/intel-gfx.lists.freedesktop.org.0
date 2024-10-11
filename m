Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C8D999AE38
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2024 23:45:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C87110E245;
	Fri, 11 Oct 2024 21:45:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Kfd8yf84";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D63E810E185;
 Fri, 11 Oct 2024 21:45:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728683142; x=1760219142;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=CRcQorTApqJvf0noT8XEfrUeppmhliZeMWU3QS+9cVU=;
 b=Kfd8yf84XNu0GiK+27JXP8ZX2nmuYAKIX50DFElfSUWZHwSC0sbey6qZ
 rfGAnKC0HXMnw5x2lN0+7smSlFW8svDH1memUy9z6NpYLetjrZwDAkD+8
 N7nCspr1h2JBl7CItxifU/EIOWUAfY7qXNjp0qltb5citqGhn8C0hxyih
 KnD/wgjhtRJK1azNg/mR55EIX7l3XGvuhZjUdt84YEDWUdtb0I3bQj5f0
 O9jYD4tz5Ug0bdNjs9dWqgvmcVT4iaCcLpWLqZmTdDbXd0r17cMGJ1AXD
 lM0aOlN4MTtgWWXS8SPWrQSh1TxQDzYFgbsPtQs6ukil1lFCY1J6rrOH+ w==;
X-CSE-ConnectionGUID: GM3W+cWzQN6eCY5WGH1BLQ==
X-CSE-MsgGUID: XFTxhO3wRju+rdpzuA8WCQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="38672836"
X-IronPort-AV: E=Sophos;i="6.11,196,1725346800"; d="scan'208";a="38672836"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 14:45:42 -0700
X-CSE-ConnectionGUID: MypxWNDOTe+y704sU8+KGw==
X-CSE-MsgGUID: Y85AURooSJyiUg/H4luMuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,196,1725346800"; d="scan'208";a="77029437"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Oct 2024 14:45:41 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 11 Oct 2024 14:45:40 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 11 Oct 2024 14:45:40 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 11 Oct 2024 14:45:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mbq2iL2UOOtxuPlH/qJ8V4suEl54IZMoYx9vY6SY97YaAaLbOCyEZ9oQr2VaPK//MPMl1RsRBmKyAwabMlHWhqD457SRgqd26vpho0InSvjdTEuvDeUfv+80eoPEqs049Rhhwojb3qdbfdgsDNKUok0VBtfj05MySILTlRknOb8LCg7R8RnW/r+y1d8762zY0PrkGvtebmdhFJEHFtnGkFhamxbbo8ufb8XOS92FudNzpqYVBezaIdxcdWISD4HrvM9A7806CORTV/jZnru8dUM6jvzoTNy/sEncQIZ4QfQuyTBG8CLn/ey4hrLXyq08a7Jy/vd96HRYRZ585Nfqmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BLXHEmWoaBMiOuvsDRhSj3BNbmFSKKCyyO1TvE3BynA=;
 b=tohwK1Mm4oFN2SyUmFmbv73VOfjTBq8bSsKPlCGRqIzShmJgpgvC+2zAPkn9eCkPCTXaK+qfDoyWqhPVQpwP0wvs3zkY++K1MBmSkSkF5Cn+9eZpBmLWX2YcvB1ph7LW4UvTpxqtghzX7aMjL+EEvR2tOPpqLlkwI0WAtb1z8WylN+9/BJ9z4BJsrYvBj59tImfblZ4UU6eLGujcJOalKdtxadtxDQkdwIKuiuGFUMrJT2O+epz/ELJRFrB5kz9+rvEaD6G7cq2O+1eyta9sL8hrEPqgxRs3oqKiKaQbjP99NBkG9+faPskIQ6rbuBNn1mcxEGGGWZ5ZyoPNlhA+xg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DS7PR11MB7739.namprd11.prod.outlook.com (2603:10b6:8:e0::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.16; Fri, 11 Oct
 2024 21:45:38 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8048.017; Fri, 11 Oct 2024
 21:45:38 +0000
Date: Fri, 11 Oct 2024 14:45:35 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Suraj Kandpal" <suraj.kandpal@intel.com>, Clint Taylor
 <Clinton.A.Taylor@intel.com>
Subject: Re: [PATCH v2 07/10] drm/i915/xe3lpd: Add C20 Phy consolidated
 programming table
Message-ID: <20241011214535.GT4891@mdroper-desk1.amr.corp.intel.com>
References: <20241010224311.50133-1-matthew.s.atwood@intel.com>
 <20241010224311.50133-8-matthew.s.atwood@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241010224311.50133-8-matthew.s.atwood@intel.com>
X-ClientProxiedBy: SJ0P220CA0024.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::32) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DS7PR11MB7739:EE_
X-MS-Office365-Filtering-Correlation-Id: ebbcf003-3c6d-4505-7eae-08dcea3e0b6d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?A2tgdnFp/ohGyYLJj98xGyhNCQhbLaEGIP6d6WuoGKVmbp/jKYYalKDzm/k6?=
 =?us-ascii?Q?nH6JFxRCfO+ib6BeRdQdeFQEOgoofbmgPGRvGYoMJZZ3hAxuxEn/lSVDlk0e?=
 =?us-ascii?Q?g/0QP50gCZqnZV8NeqkHPTECLIBWlpQYG0gJ8zmBj3/ZUoeOYiVU3HZe4Uau?=
 =?us-ascii?Q?L+pcOlwKU3plXztfo+7RmKDr7u/emFzBi49Zsywr8y04blU75v4/rflpA2OP?=
 =?us-ascii?Q?hsjCbSfbtJbbs+5PIDS4ia31tjpxTLgG+6RsEjEdePrBa0Pp1Vn7pXpzOBN3?=
 =?us-ascii?Q?ZRpZhZGwF5u8kwGehRL3GZtpw5PV2hJg8KNG+qKKH2ZxljbIkwPNDnn3KiIM?=
 =?us-ascii?Q?uKaDoiFz7Kj8OYugJIzKaPsJE74KBqABLlsPH9h+ntK/VWClTvlqCUznEl74?=
 =?us-ascii?Q?W2ISwAYjo+mYsbx9Oo/vA7/pUifuAU+tW2T371ZYImxiehqcacMCpRcvQvay?=
 =?us-ascii?Q?OaZAiHx8rGt1JRq/0Uinya73wzr0VumzD7W1sXa+LuLdA8OK7unAJF+Vne1z?=
 =?us-ascii?Q?SmwqqPOs8PBazf5uW9kB861vFcdvmuI5/YOurSvpx7qn6ZADxF4hwoGTf0NI?=
 =?us-ascii?Q?6PpadsoyeIbQEuLBP2fxqF5c8cyk+Uc2SiFS0vsCRT84iGbICV6vnqskr80q?=
 =?us-ascii?Q?6pYl/+vA6sb+Q+5kZH0zXs2TPSZaigTvR6gNmC/lH11GsWynQ4k6Yctuq351?=
 =?us-ascii?Q?Qss32uFeNI94C2WbXdtePKr+dYbQtEYu6vPylDcBqikAaHByTvn5L9+mZLk/?=
 =?us-ascii?Q?3WRs/ifqt54bmQF92NxGUCp0JuAanBEQDYgMQXz++tk3hRep0hF+EG14YR/U?=
 =?us-ascii?Q?rQhcw4hVd1ENH+8twXSbiQJhWci+JkMF+gyRx5PPDVyR+qR9tWHHqTg0mukl?=
 =?us-ascii?Q?ypRdzkzih00YsMy7cYI0TbjM7PsuL0bJt3RhmuZo5YsMT8vR80K1aOb9bK89?=
 =?us-ascii?Q?ndXHigu2J9XIfoFB4VxYBudpmm5noXcNe9H4qkY4/5NY1GSbzrKugRWOQV1t?=
 =?us-ascii?Q?8KHuIIqnYl88jKfksxuh6jnkGCZpuT6sZ8PnKulqNkTyrjTKf4NvMYCTXJ7m?=
 =?us-ascii?Q?iFYWJQMYq7pX/tPL01p37DmBIDwpES0sI44fJ2VHg02TByuVm9TNIdgUoY6C?=
 =?us-ascii?Q?biz9bkTpiiL2afuQ+EiGbBMJisLYcQPyydivjhm1trMExF1zYx2mceynrko8?=
 =?us-ascii?Q?woN0WXlVzTvsn9xxt9gs7zVDxqBfJhpCumCJu1vbXOo0mY/YXnx6Uz2W8vdE?=
 =?us-ascii?Q?XefkPQ3p2w1YdG1TnXOGTJmxkrr13JFycpcLWe78+Q=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?LKrXcWGGkMbYV7C+U2y5Ap/LWr6ZLJO2YEiDdRUa84ujwQtN3OHe5EAejC+e?=
 =?us-ascii?Q?XhJ9fBoyj1d6Q/r3W6I+65cLlhjbOuUPlVM+pjK3kvoColRku2pcusgrM0Ya?=
 =?us-ascii?Q?+hwNg6GA94sDsSc4ank1C/m1Wuo7EoEVbfaIkmjy1VxRGDctnPU7doUD8ksm?=
 =?us-ascii?Q?W8U8UKoLJF7yZNheI5rMAQr2RhD+VDDQCnU0+TwYhbC/ivAXgp2V/FiXzW+X?=
 =?us-ascii?Q?qwaKQI0VzQYjzTRTmrHe/15cxTwydKsmfWVdS71fS33smsXOPcnJNKJJlU+/?=
 =?us-ascii?Q?EVcBOhqTQyFbV9Q6siT6ZmAMA4so0SqwGFA5ZHLcFgfIa465fg/5hm+7Vb1e?=
 =?us-ascii?Q?Ux32IbIzZE6+U3u+gb+90cg6OY7E5WDvgOXU3bnZ+2g1JuFj95iBTL83czjL?=
 =?us-ascii?Q?ndrcohqwJ61y0HO5LtKX5VEaSo2HimMoO8rrYCuk9t8eUhaAw4vA9Pt6z490?=
 =?us-ascii?Q?4g1aY0XpJtb1yZWNYJRpV+rR7AWfKSxc0MwN3HsUhfq25RcyV6cyrYq3ESfy?=
 =?us-ascii?Q?qxTJuWsTm6FLqHhaiSYihd/ODsV3yBdUxyXPARRsXzvFgn3cv5DmJbODpA+l?=
 =?us-ascii?Q?fP5ypKm5bTNFJCwa5I0y/Vvji+AmntOpn9Ei3EqJuO3uuB8/lmMKEMppke1y?=
 =?us-ascii?Q?eHlYJTDaQkeIsUs/htZAnqc+E1PT5VM9jFHidEPOvDN9HEMIJAM5iMxqlEIM?=
 =?us-ascii?Q?OtcJk5twbncqTacnT/rTXYSXiTHn8E9HY9veepLmwNnDAIQvQyuJvbSDi67K?=
 =?us-ascii?Q?BneV+ZeVsGEGxGxMJyggfSmkcth60MrEGDqSBoEN+bnJ8zvNucAUKO/4CYmh?=
 =?us-ascii?Q?9KjLXeEuurctMs/WeqxCZVQrhM+jkYfknvAGJXnPmlxYkO1SI9n5fRblNLyJ?=
 =?us-ascii?Q?AAlEqRFUl1k05sRKITP2gHcpK84VPf5oUwCKOd6bKBylbc8uAFC7/XWShjA7?=
 =?us-ascii?Q?y89tlSfEHKFyrFihcEc1wqep/Iauk8ZoXpttIQJ+0DGKH1dQNQhBWhRMhGgJ?=
 =?us-ascii?Q?eiiXV4Ss1bgCz/ScU2NyZp4ttd54U1gncmNw3koQlvXMVC4h0epMMbG7t7Nv?=
 =?us-ascii?Q?U4b0hoFFWFNTIuU81OWAde3tkFZoe42doJrkDTZ4dbufGR5ewljfaV22FymL?=
 =?us-ascii?Q?6LegYHvOxn4WCFG9RwdCEw8EMk+0u8vo/tDH2iRAh+LnRjhG+6dykzaEQCsi?=
 =?us-ascii?Q?w2ctK0erygq0dAHWxi2wXSdHxLNqe73VlmVh9QnwKgLZVGtm6i9gCAHbV5Ef?=
 =?us-ascii?Q?LIvrTz2NLQlnTJ3hEJnNCQNgmNrJAwG+bFPXZI4rKsbrUboVWapQepBdvIb6?=
 =?us-ascii?Q?78to6heUgdCjXjfTB2sKWPh0eL7d35LI3REc0wbvdzNfcFF5cWD+1bTgEEYM?=
 =?us-ascii?Q?RW8oFpCZg+fyruQtBdt38SCYBOcMSa+OYabYxR4gBlnRR2Ex6pWzKvBymVRn?=
 =?us-ascii?Q?PdqAaKWit8hqYUs3S0vKNJcUY1vxJw5vnh1A/DI4/h6zi6x62jBszYoCVgTy?=
 =?us-ascii?Q?KhIOZVE32ZLGZuKTfogEWTSuJBZqq6FFSJrRO2jT+v6phCeQ+FSQ60QE4exw?=
 =?us-ascii?Q?1zvmb++q1KqDWnJ4FfB2KVUZ4qPT6N/WsuVAdQEV6Bg82uNYy0+Td3utMCpY?=
 =?us-ascii?Q?dQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ebbcf003-3c6d-4505-7eae-08dcea3e0b6d
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Oct 2024 21:45:38.1924 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Gv+d+JpgefWNbZM29wIQE7zU4x30kyj2Z7COSqu4PRsRI2LnYpnWYFP8HPm2kVe85+vVijFfFGC8xbshjqo3o0XOfvGtFH4uNSvtqWRM0rI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7739
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

On Thu, Oct 10, 2024 at 03:43:08PM -0700, Matt Atwood wrote:
> From: Suraj Kandpal <suraj.kandpal@intel.com>
> 
> From DISPLAY_VER() >= 30 C20 PHY consolidated programming table of
> DP and eDP been merged and now use the same rates and values. eDP
> over TypeC has also been introduced.
> Moreover it allows more granular and higher rates. Add new table to
> represent this change.
> 
> Bspec: 68961
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> Reviewed-by: Clint Taylor <Clinton.A.Taylor@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 24 ++++++++++++++++++--
>  1 file changed, 22 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index f73d576fd99e..f1aea5ead41b 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -1122,6 +1122,22 @@ static const struct intel_c20pll_state * const xe2hpd_c20_dp_tables[] = {
>  	NULL,
>  };
>  
> +static const struct intel_c20pll_state * const xe3lpd_c20_dp_edp_tables[] = {
> +	&mtl_c20_dp_rbr,
> +	&xe2hpd_c20_edp_r216,
> +	&xe2hpd_c20_edp_r243,
> +	&mtl_c20_dp_hbr1,
> +	&xe2hpd_c20_edp_r324,
> +	&xe2hpd_c20_edp_r432,
> +	&mtl_c20_dp_hbr2,
> +	&xe2hpd_c20_edp_r675,
> +	&mtl_c20_dp_hbr3,
> +	&mtl_c20_dp_uhbr10,
> +	&xe2hpd_c20_dp_uhbr13_5,
> +	&mtl_c20_dp_uhbr20,
> +	NULL,
> +};
> +
>  /*
>   * HDMI link rates with 38.4 MHz reference clock.
>   */
> @@ -2242,11 +2258,15 @@ intel_c20_pll_tables_get(struct intel_crtc_state *crtc_state,
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  
>  	if (intel_crtc_has_dp_encoder(crtc_state)) {
> -		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
> -			return xe2hpd_c20_edp_tables;
> +		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP)) {
> +			if (DISPLAY_VER_FULL(i915) == IP_VER(14, 1))

It might be a bit simpler to && the conditions here instead of nesting
if's.

> +				return xe2hpd_c20_edp_tables;
> +		}
>  
>  		if (DISPLAY_VER_FULL(i915) == IP_VER(14, 1))
>  			return xe2hpd_c20_dp_tables;
> +		else if (DISPLAY_VER(i915) >= 30)

Shouldn't this ladder be using the standard "newest platform first"
ordering?


Matt

> +			return xe3lpd_c20_dp_edp_tables;
>  		else
>  			return mtl_c20_dp_tables;
>  
> -- 
> 2.45.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
