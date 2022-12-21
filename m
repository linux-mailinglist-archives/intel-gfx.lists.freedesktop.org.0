Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 443FD653237
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Dec 2022 15:10:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C76110E144;
	Wed, 21 Dec 2022 14:09:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C490910E144
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Dec 2022 14:09:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671631765; x=1703167765;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=WYXx2QMPgAPzwB4qu3fa6idkEVd1ikutZtPOe2+0vhY=;
 b=VtCLQIr3HJx+HOP2ozByxUcRQE0g//kPdpHzkPt1U6Bc+nUamgCj4Ebu
 Ecat01uhDpNgPhcL8EO1py575JENDxrV4PCkQSiXJ+gQuWpEkFrzReIFz
 4k4iIzkm/1Jh/WBAifH6tCZKGTmhFXyOw3AG5LHkNGGj7GhZYqldV1YYD
 y/+UTT6PWnpzLCv0WGgkEZEJwF/Lwa4qDXfXDpRteWUrVsnfx8sUf0477
 IDs2a7vjXsw2eSghtwT+rAasNMVKj8nwaH+e6xvcLBx+qLmfzcUZG99UP
 esuSa9hUaAfX25y/7PpUPiHLzs+MJFAi2b8zWfPRahkm9/b511Jp+Z7iT g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="300216975"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="300216975"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 06:09:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="775687145"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="775687145"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 21 Dec 2022 06:09:24 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 21 Dec 2022 06:09:24 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 21 Dec 2022 06:09:24 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 21 Dec 2022 06:09:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BG2ioxVknX1D/zxTkzICUyn3c5kdwZCF7h3Kq9mYbdcKvyQhF/bodXodDuiJMW2OC+p09SsPbD2ZFPqJ9JZaGuNgY01Pfwa5BhmVLGHuoBIZ8AwWUlP7t/K7EAGjuTW17duM2L8cOsLnicf64bz0MgVrtcatvP5Xpd7X7blROu7XRm/QtlrThq+BBIhu5PBcHYC7vsXjDbCJo1uck9FQxgw07+yyvsPq7h0N7hZscI2XP0XpS8gAtu6DmLWNj4Voko90hXPpUYcTqwnlPdurAW4heCTH9xAGufwwluGszpclCCFKuJ7eQI0gRfL6r+ZxefM1MrhuobJEPhIfvnGVcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eiE03ycZrSJwpAnHAnn1RBJmm6m368YMRiJf19Srna0=;
 b=FyHJmrluQOf5+8AKWUrcpYSuht3qz0uKaTFBbHvxuLGQfrX22uD8ieayE6AqkUHX32Q/XtKN/s11T204flRmnvhDngpU1nHhQDCe//ZpTsibRMWTQOo7DxnSyh9DLgiIuKt38gwoVJg672ZCGWciTHOG+1VfVCDr8qG2R/GEQb8UtB/CXf44Xch8a9BAQ2ixO1gHCDwK0tFpYWoTnNEzrRjKUqSXgPHkMTtKgEElYr0oIk514JcSdWG9bjRuXvhDQLqeS62j7jeAZNHIyBYbBRAblQdkROiR6d6hEZh4Ufd74KMBq74PBogNQ6ghiAHn8zvKcblm/sPZfsLGQYqb1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CH3PR11MB7300.namprd11.prod.outlook.com (2603:10b6:610:150::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.16; Wed, 21 Dec
 2022 14:09:21 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808%9]) with mapi id 15.20.5924.016; Wed, 21 Dec 2022
 14:09:21 +0000
Date: Wed, 21 Dec 2022 09:09:17 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <Y6MTjYpur4biU4HZ@intel.com>
References: <20221219172927.9603-1-sasa.dragic@gmail.com>
 <20221219172927.9603-2-sasa.dragic@gmail.com>
 <Y6GPJcaHBx/xs3Hi@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Y6GPJcaHBx/xs3Hi@intel.com>
X-ClientProxiedBy: SJ0PR13CA0106.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::21) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CH3PR11MB7300:EE_
X-MS-Office365-Filtering-Correlation-Id: be06fd04-bd8a-415c-be23-08dae35cf4be
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CiZOm85brD/LIt25c19636BaIkexELU+wVdE81uLd8X8h5XXImzp0lYBTXUpqgtevCtPo3Dlzoai14jVsrNaYHA95jVaj1bn6kEKJjop5HYRPnuBQr62WDrYQ1OboOadPJVUvhQK3rVxHH4y0/+Ynyl7/1wxI939BS3SlOySkGCZoXFlH1C//gi3TKGC0s+L81XXBJWDIlLInVCQWR+s49gVzRTvGAGR0JnmzZtTdOumnwTsOTtg+LoOHjb1S56t2gVtD+AqrLXfuRGFVhq9ND1MVUPj75zKcm9TxBZ/1Y/WkKwd3JN8kJj4pa/vGO9c8mSLtmsOGt2nzN0qY3Zaa21/ls1Diatw2v4GHaD2Rxeo1oXjlthu/tBC4VlyqE/+BA7uZCCSe3cJu1nY0G3b9srR2gFzDi/gE40xbP0w1XT72i7NOhl2sg0txEqAAbiGK+UeodJw8jmE8MRLbzV7E9Dzp9SZ7anccp5PoL/5QdmX4SE1Psv0ObVpvz1JyE66sXRCKBkcw+WiceA3oZhG1q0giWnKON1r6Bl2m5bpLuz6CyqkGttsYCMrtip34Po7LTbA0f7VS1FLojuvjGwAjxMiKYRBcEM+NPjSdfNeFH/LoZSiwxoea0aYqqJ7irmDeOMf/cqJRuYS6bB79RCFlUPFYimrVaowxJA803jfYMfviUErsoD843+fwgARepSc
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(346002)(39860400002)(136003)(366004)(376002)(451199015)(8676002)(66899015)(66946007)(66556008)(66476007)(8936002)(5660300002)(316002)(6916009)(2906002)(41300700001)(4326008)(6486002)(478600001)(6666004)(186003)(6506007)(6512007)(26005)(2616005)(83380400001)(36756003)(44832011)(86362001)(66574015)(38100700002)(82960400001)(32563001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?uY/Ii2Zfx8tsPoGdR3k9/1qjYZxYbnOhoSsFcZTP7RTSVtsPIw6hUWWbEK?=
 =?iso-8859-1?Q?Ske1FTpLNljMdLCzi0IQ8xO6SehrrjFP+aJWclxo+bAvxkZRwJHV0bUBj9?=
 =?iso-8859-1?Q?Da6vhd4oJOOh8liSMU9OLdFD+/ItyxXhDIPrt9BHDGe5NBZ/pvljrl66LB?=
 =?iso-8859-1?Q?pwXkczKC9yofHJXblxYuddkTKtbMpldlkbl+40C0+mJnK3TK3UGYw5fgY4?=
 =?iso-8859-1?Q?dpMuYbN9vGSlOnXwSzYK9vaOhOziT3axoPrelhTD+6/JpQBS2K1EJ0IdVP?=
 =?iso-8859-1?Q?dCMzUhP9hGjVxe9wwQzklm91D1cyZVKHGCeygnkObs/VEif8X0rYOHqIuk?=
 =?iso-8859-1?Q?F43bauh8MA1LVkGil91rEu/Fpf7oZebPsmtCOWads6G7GpmokWmPB04T7V?=
 =?iso-8859-1?Q?d0d3NJZGLL8JAKr47c8DHyRNlxv4sNun+fY8IHrzzVMB0VB4qJefhqPI3x?=
 =?iso-8859-1?Q?7a3C1pNWCM2HYb6duUhYUvwsbpxsp6kfcBwXXhtviEYO3oBQdSzBq9Egrg?=
 =?iso-8859-1?Q?AOujNRNoO37xYKTW8Q+sa64kykPTdsmd9tGUBfz5ZTRjjkEtbdl1BN5rQI?=
 =?iso-8859-1?Q?Vm4sxbWinTsKzheh+pbBeqTTSvgO9u8eDEjEA8DXhuz7E0YYH/0V6FXqvF?=
 =?iso-8859-1?Q?2sNamknEutV5W7cWoyafqHu3GIdtyRBvp9BbUXSCmaAhEsBUkU14NX+t4C?=
 =?iso-8859-1?Q?Ryqjbt4VzjL9649WBKTaYj0B5aw7t3my0wgxEp3T0WSqlIjBFlMmEd58Uf?=
 =?iso-8859-1?Q?REWBapjjP7X54SL2uFz+Z7pw4W+YyWnjuvavdqlIhcrvbWe3mhHaqIkeAx?=
 =?iso-8859-1?Q?vMyJY2wdcbwi7h9tHDLz/YWT5NrVo6r7j+bdYWr+zlNXs1iHelLGKpjmHL?=
 =?iso-8859-1?Q?UNoptmCaX1gAoFOIdrFCxEqx3tZU2yVKmoeB9SJybZIBnDBKIMCKxO438w?=
 =?iso-8859-1?Q?ulngD627v7uFkNX0iVdb45JsmU5ELAWVHp1rm4XZUZzxNtDE45WxUmbNgI?=
 =?iso-8859-1?Q?auBY74R0jF7ihIZbpW9/ecbnM7qq4K4w/xdbkG+/pvwHKJUo/OTXG8AQ9C?=
 =?iso-8859-1?Q?NxZ/728o26VXQUDQKnnlwDLQhdlYyow7vQVKxOlLYEhnMWzgKiUnmWkJAQ?=
 =?iso-8859-1?Q?uUgHxenUmjTxq2OvR7YyUCIIky7ZnHKt0B09C2jEnW6a752Jic0Yzlg3bp?=
 =?iso-8859-1?Q?0RnLR4dw+169jHrvaey1/mMXF2KRHJ9JTGOZXgKJzpTxKqwQI2ZP9T7abv?=
 =?iso-8859-1?Q?lG5OMfAF31otJZroQJjgGMfexkSSf2dmf/vohSTKV6rg5XzwHga+30YC3i?=
 =?iso-8859-1?Q?a+5CdbBLCuRGCXks1CObfwGkc5/mc2ILcpZJyz6wEpqrtGp1WlhQJ2JS3r?=
 =?iso-8859-1?Q?CkQmTxLfVC9NLrcETgSH9mYgfYLZ+p7McF1syZaeXtlRRxufjVD37EQIJW?=
 =?iso-8859-1?Q?nuXWRSOFcI+4SvBcpNc8TrkG2uF5ybm9tEWeFQxruu8Ce9wagHjvA7yITC?=
 =?iso-8859-1?Q?3/7xNYDnJBTqbOLP4s3sP7zET5bSSQqmBhQ9pm6Q8Nr+33HF9Ibhvaslje?=
 =?iso-8859-1?Q?SsVNcypz9NNx0LjpFPaBG8yjmCskDhNq12Gdo0RR2OeujBWkDHdRcw1mAE?=
 =?iso-8859-1?Q?TguslI3RykReWFdxDpboXIcZ6Uv4IKHSzY?=
X-MS-Exchange-CrossTenant-Network-Message-Id: be06fd04-bd8a-415c-be23-08dae35cf4be
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Dec 2022 14:09:21.2889 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IYEnCSrPHrm1VB6c+qO140C9/xj+RJgz/1SqXeR20hdAyqvsNPCki1Vg1XeP6c4UeKn3ur7Lf6VYF5vR8Kxclw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7300
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: re-disable RC6p on Sandy
 Bridge
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Dec 20, 2022 at 12:32:05PM +0200, Ville Syrjälä wrote:
> On Mon, Dec 19, 2022 at 06:29:27PM +0100, Sasa Dragic wrote:
> > RC6p on Sandy Bridge got re-enabled over time, causing visual glitches
> > and GPU hangs.
> > 
> > Disabled originally in commit 1c8ecf80fdee ("drm/i915: do not enable
> > RC6p on Sandy Bridge").
> 
> re cover letter:
> > It was originally disabled in commit 1c8ecf80fdee ("drm/i915: do not
> > enable RC6p on Sandy Bridge"), and subsequently re-enabled by
> > 13c5a577b342 ("drm/i915/gt: Select the deepest available parking mode
> > for rc6"), which seems to focus only on Ivy Bridge.
> 
> That only kicks in while parked (ie. fully idle from
> software POV). I think the real bad commit is
> fb6db0f5bf1d ("drm/i915: Remove unsafe i915.enable_rc6")
> which seems to affects which rc6 level is selected while
> unparked.
> 
> We should mention both of those commits here:
> Fixes: fb6db0f5bf1d ("drm/i915: Remove unsafe i915.enable_rc6")
> Fixes: 13c5a577b342 ("drm/i915/gt: Select the deepest available parking mode for rc6")
> 
> Also we want
> Cc: stable@vger.kernel.org
> 
> We can add those while pushing, so no need to resend for that.

agreed.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> > 
> > Signed-off-by: Sasa Dragic <sasa.dragic@gmail.com>
> > ---
> >  drivers/gpu/drm/i915/i915_pci.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> > index 668e9da52584..69377564028a 100644
> > --- a/drivers/gpu/drm/i915/i915_pci.c
> > +++ b/drivers/gpu/drm/i915/i915_pci.c
> > @@ -423,7 +423,8 @@ static const struct intel_device_info ilk_m_info = {
> >  	.has_coherent_ggtt = true, \
> >  	.has_llc = 1, \
> >  	.has_rc6 = 1, \
> > -	.has_rc6p = 1, \
> > +	/* snb does support rc6p, but enabling it causes various issues */ \
> > +	.has_rc6p = 0, \
> 
> The one downside of doing it this way is that we also lose
> the debugfs/sysfs files so we can't monitor rc6+/++
> residency anymore to make sure they are not entered.
> 
> I think ideally we'd split this into two parts: which rc6
> states the hw actually has vs. which rc6 states we actually
> want to use. But at least for the time being I think this
> simple should be sufficient, and should be easy to backport
> to stable releases.
> 
> >  	.has_rps = true, \
> >  	.dma_mask_size = 40, \
> >  	.__runtime.ppgtt_type = INTEL_PPGTT_ALIASING, \
> > -- 
> > 2.37.2
> 
> -- 
> Ville Syrjälä
> Intel
