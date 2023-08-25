Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B1E4787C64
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Aug 2023 02:06:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AECE610E5B1;
	Fri, 25 Aug 2023 00:06:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC6B410E5FB;
 Fri, 25 Aug 2023 00:06:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692921993; x=1724457993;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=rB+F/qT3+UlXflCcRwnllN7ps9ihLENEc3HB12xOI6k=;
 b=RqFAL9B+iymZGl4gmp4t6xeTmxYS35gHHki5FGJB5QrMPaedLLnT2G2e
 FhYZVMb9DactiHhdUec1CGdp/wuK9eaUEtXzRysSvL2wvgdiMa/N+HzHq
 mtAX18HMVnksN5i32Imb+uxhYIWiOXJtduroAn5w7VsMTwVKlfV05giI9
 qfcStrtavFctjTNJdM5qq9eqdfg1qLs8F/Mx04//tmNFsatZbNg+ViWlT
 6HtewTDoXImLFJ/Dw/Bke04DEnyXtC3P+5BRcHV0GlXJEXMass206tNdf
 5lgtgFh948Bfpylx9njgxIml6WraCeoY3h9h3HQZXS40rs4mxYBZRinjn w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="359587763"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="359587763"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 17:06:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="737276816"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="737276816"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga002.jf.intel.com with ESMTP; 24 Aug 2023 17:06:31 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 17:06:30 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 17:06:30 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 17:06:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I4acs2d9Ed7DsISvdItmGNnbwSR2NUQmrzS3UCZDQx1BZZUuio6aJv74Kh0pU9BkY15cvMLgVD594dVAO6vSwkrAVeSSiAWiBQGDMxv44z0vqXV2e8M8ITU2ZQL0dnEgO/zHHBc0sdPeFdULg5w91MM1GW79DxbqmKj55WQA/iuTHBH4Fy75jQk6FHIup2oU/hADEPvOu8bvT3Ug09qO9da3t6ca6/mC1eR0lwU0nlhYMnrCKRgJqTl8qrbmjkuuBWMdkxSurIQEAtSbtcgcxD+zSowi9AJz1mgpHBjqcsI/YzmyB33si+s6zD7rBQxsTQAfIfEMDMe4okktz+Nuqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rBEGxllQzHxLCVoNFLKcfiZS6yU/3zoPn93x4ATdvvM=;
 b=gc7nAzEiCvwI/4zIktAz4wdBIK/3ComN/63RbIAqgtMHVgekqB4udyOBicwAktUhE8PUrLDMKMxuy3xoKsugZOlJa18/vzt+Z8wIvVHquDqG6wjOkF/z5/K5Kd6OHghhD/2KKANk/o8uYfvEOHmJmXuEXiIiASRs5E2+8641T98Iy8JKBo9blKQ5hPK8V0/EQrHyItgpVnu0qO14QbotuJo6v9vwYi9nQku5861VuYaI2Z7wTdRPxTE3/UzWm+G6dUv7wG/YRQSyYNC9pzVtiy0fhU2zu8vs6C1mcltjg0QoLy1/D+J8WIx6R4BkXeu9p90MYqIEAiycB9M61XtVSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA1PR11MB7854.namprd11.prod.outlook.com (2603:10b6:208:3f6::5)
 by BL3PR11MB5683.namprd11.prod.outlook.com (2603:10b6:208:33e::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.29; Fri, 25 Aug
 2023 00:06:28 +0000
Received: from IA1PR11MB7854.namprd11.prod.outlook.com
 ([fe80::c66d:c5f1:1ea6:74b7]) by IA1PR11MB7854.namprd11.prod.outlook.com
 ([fe80::c66d:c5f1:1ea6:74b7%5]) with mapi id 15.20.6699.027; Fri, 25 Aug 2023
 00:06:28 +0000
Date: Thu, 24 Aug 2023 17:06:24 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230825000624.GE1529860@mdroper-desk1.amr.corp.intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-40-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230823170740.1180212-40-lucas.demarchi@intel.com>
X-ClientProxiedBy: SJ0PR13CA0083.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::28) To IA1PR11MB7854.namprd11.prod.outlook.com
 (2603:10b6:208:3f6::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR11MB7854:EE_|BL3PR11MB5683:EE_
X-MS-Office365-Filtering-Correlation-Id: a41b206e-dbd4-48bd-4a04-08dba4ff20d1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1bvaZXYhdIY6qzTPy8A68zJfPlc/kHWMBq7VCQ7xhvSWqzb+c2b5GbUB8rSD7H1K7tfqEqdHDRR7CzjHwalzANyH4daUZEj9n5Q+5h2dsSubcHJ1m+qzPEDtv4y7y5Huy6R7OO6LPbkS31pjRV9KqAEVBZCWJskWed4TMbWBtLxn/kPvfScshrSrIF8hX7Gla2SvFvOVrD+wRK4eyNqGmyHMKo/qdUHlVDMMQj+3GVSVMLN/NhcMs42FxjqNGAq6PLUMeHf8gvSQWyRoNR3TrdpfbY36PBIaksP0vitaxsDS01pj227pVicedjfdYR7L54ftap0nO1QksCLz7FwP+3f1fIVfmM3J7GxTtUpwlGqqTicyCS42UG0+EsfedORD1pg97K5gWomI3+KrTh1rGmqOpx0MVkjnUjZE/l7waXUWTC5NnospZowHG8jbXvZkQGCeUyUqoAklHyaSkS2kF3f+rP8luTfmbRHcUIeVRmbW1DjA0y2c6izT9LQkZogn1NAU4OTtSecTe8TfaK8XE+XuU30E4+2Yg8d9zRujXq8lVevicfrj7Lzh8XfI3/lT
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB7854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(376002)(346002)(366004)(396003)(136003)(451199024)(1800799009)(186009)(82960400001)(450100002)(38100700002)(4326008)(8676002)(6862004)(8936002)(41300700001)(6486002)(6506007)(316002)(6666004)(33656002)(54906003)(6636002)(66476007)(66556008)(66946007)(86362001)(6512007)(26005)(478600001)(1076003)(83380400001)(2906002)(30864003)(107886003)(5660300002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?MEcSuwtMJvn/WZ2bIqSpdzM586PFuEiUxRD1VOm6ee9AFdKXnwiey7SmOYFI?=
 =?us-ascii?Q?Q9OrvUU0WvMgEWGLGJwXJ4lPCRmcu6hh0T0IBqkDSl0DAft4S9zTe4dLzook?=
 =?us-ascii?Q?xxHjWZSzTclBpxCSzoO+lZs5GV6Yphd4EuL+lX5RpyCu5HKfK0V6mWx6jnXP?=
 =?us-ascii?Q?CjwVejam5uwWCRQXoT9MDkZIA6cjo8j5GMFYuDcoBPxWINxguzIAVrDqT5Ql?=
 =?us-ascii?Q?5u1D2uil0yAWRO/NHrAm+f5CKLoTT1llLJsBAIkdZPl2ceffAEuibUBeLq8v?=
 =?us-ascii?Q?G9O+djFWaG96Gi/rir/JR2szcyB5uFaJBvsBAf2iHqhQAbxKvP3Nwi9g4BKL?=
 =?us-ascii?Q?HJWCpLT3CB08/1LQa6836hgcFo5TFmPn8zcT+YvPOozOLjzDLtvj2LPXnPOi?=
 =?us-ascii?Q?Pzd3wY/52BIKYk1StKu3Le+s4l/7FcOUexTRh6QH3e3hy3MYRQTd6EWq2ltr?=
 =?us-ascii?Q?TAzJGAKP/QZHLGAaZI1x683FkYe/Y7Fw19bSduF3jkG/1uMLmdy/Woxyo6PW?=
 =?us-ascii?Q?nqDEcmBJvjr8O88wdXV7UxzMDnzjEvPoB2l0fuK4P1QoiV9QIhyfTTKxsOO5?=
 =?us-ascii?Q?F0lsrWZwIkw06W9Y9RjFoEezmpraMXwZBHi/1JJoJOrtpc93lFyjL0byXyvb?=
 =?us-ascii?Q?hQR2EvErWe8k/O9kPtMRSlRMBuFmcqv7ACkeFl9WnL2cXIfm3ho/IJ0poP6i?=
 =?us-ascii?Q?F6vNxuRx4Gaxis7C0svKE6lnV9G/Ki+yODq4qyGdo7CiEoeYOF37C3OOzTsM?=
 =?us-ascii?Q?KI47yBgpz/oJboU3cjPL6zFY7oSStNcLSa1tUPhfWARCZaTYL7g2EzzCJfZC?=
 =?us-ascii?Q?md6OPp/tIT0K7DCK+I78dkFNfb804tu639Pc8fVrSgSj/u3fXahS001+bZZ/?=
 =?us-ascii?Q?ge88FA0zFfFY/E0TqWImoCFRfd2NJNVjz9xO6PC5T0UoxkgYqLRpClI1t5oA?=
 =?us-ascii?Q?izA8kMJWootAJ/eqeJ+2eyE0LdiwdQb779aFioGzJfuHgXBhA7+yJPDFDmhN?=
 =?us-ascii?Q?ipehl5o8/rLz59FGcf5mzXnCJSPCAyuTll4LEQMSGbJBO1kwQ287oUBn6h6X?=
 =?us-ascii?Q?nyfyE5yGTHqjnJIiJGLYfXovtVqIcKCD54nP5bIBRzGZou9BNGUQWYe/Dk+D?=
 =?us-ascii?Q?/OP2R7SE+kpzX5clZBJ4AoVGw3KfY/Ll0qT5qXjZ48g96hDy4nJ+DK702VxT?=
 =?us-ascii?Q?awu26I138pM0TskEPWdbfMK8FL5A0vcar9bNFoGSGCvaCiuKLS+n5y+Kvy/X?=
 =?us-ascii?Q?djyvk5IzVATNW6zovMmfp8WXHalDyeg4Rx8vcHlYE49wFacbk8hsm3R8Q+hx?=
 =?us-ascii?Q?LxcxAuaB3brRYUZm60qOxHy5tIHPzty5dV5ZmcBTczZkfoMsbfN50/flzXWf?=
 =?us-ascii?Q?+h6ylBY+sCUtDUqcKc28GC1ExJ0OJJXJ8QGhidSv9wOcB3ArxfB8+GCqhqls?=
 =?us-ascii?Q?DzikWTZMPCuNOHU/MeqTLlmgCF0vwPDVgh+AoucANMspVA494c0rE0/5TNx/?=
 =?us-ascii?Q?wPSOREhEzEBn6gp8e7HQCyqJA7FvzdJeAu7ykuXCH1iCGf0M16Oh1NAF7AWV?=
 =?us-ascii?Q?WksvU72i00wgD4O3nSevnds10iWTeuRnkKU2z6dSjC/CFSWgGgjmVT3LCEqA?=
 =?us-ascii?Q?Uw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a41b206e-dbd4-48bd-4a04-08dba4ff20d1
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB7854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Aug 2023 00:06:28.0331 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HwO/kCB6EpVxsVByNfCuIkw76oTqDisQpPwhgVS5uJc7JcX9E0EvFuAci8OEMgR9RU851awuRf0xBy2LQh7yfxIqoqYUtMJeSCkr5Yk5hoI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB5683
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 39/42] drm/i915/lnl: Add pll
 table for LNL platform
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 23, 2023 at 10:07:37AM -0700, Lucas De Marchi wrote:
> From: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
> 
> Add PLL Table for Lunar Lake platform.
> 
> BSpec: 68862

I think this should actually be 74224?

> Cc: Clint Taylor <Clinton.A.Taylor@intel.com>
> Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 411 ++++++++++++++++++-
>  1 file changed, 406 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 6533ec417806..c8da6985c179 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -697,6 +697,261 @@ static const struct intel_c10pll_state * const mtl_c10_edp_tables[] = {
>  	NULL,
>  };
>  
> +static const struct intel_c10pll_state lnl_c10_dp_rbr = {
> +	.clock = 162000,
> +	.tx = 0x10,
> +	.cmn = 0x21,
> +	.pll[0] = 0xB4,
> +	.pll[1] = 0,
> +	.pll[2] = 0x30,
> +	.pll[3] = 0x1,
> +	.pll[4] = 0x26,
> +	.pll[5] = 0xC0,

This one should be 0x0C, not 0xC0.

> +	.pll[6] = 0x98,
> +	.pll[7] = 0x46,
> +	.pll[8] = 0x1,
> +	.pll[9] = 0x1,
> +	.pll[10] = 0,
> +	.pll[11] = 0,
> +	.pll[12] = 0xC0,
> +	.pll[13] = 0,
> +	.pll[14] = 0,
> +	.pll[15] = 0x2,
> +	.pll[16] = 0x84,
> +	.pll[17] = 0x4F,
> +	.pll[18] = 0xE5,
> +	.pll[19] = 0x23,
> +};
> +
> +static const struct intel_c10pll_state lnl_c10_dp_hbr1 = {
> +	.clock = 270000,
> +	.tx = 0x10,
> +	.cmn = 0x21,
> +	.pll[0] = 0xF4,

And this one should be 0x4, not 0xF4

> +	.pll[1] = 0,
> +	.pll[2] = 0xF8,

A2

Actually, there are several values that seem to have been updated in the
spec since this patch was first written.  But from a quick skim it
actually looks like the LNL table now matches the same values we already
have in the driver for MTL (for both dp and hdmi).  So maybe this patch
isn't necessary anymore and we can just use MTL's tables (including all
the extra pre-computed ones)?


Matt

> +	.pll[3] = 0x0,
> +	.pll[4] = 0x20,
> +	.pll[5] = 0xA0,
> +	.pll[6] = 0x29,
> +	.pll[7] = 0x10,
> +	.pll[8] = 0x1,   /* Verify */
> +	.pll[9] = 0x1,
> +	.pll[10] = 0,
> +	.pll[11] = 0,
> +	.pll[12] = 0xA0,
> +	.pll[13] = 0,
> +	.pll[14] = 0,
> +	.pll[15] = 0x1,
> +	.pll[16] = 0x84,
> +	.pll[17] = 0x4F,
> +	.pll[18] = 0xE5,
> +	.pll[19] = 0x23,
> +};
> +
> +static const struct intel_c10pll_state lnl_c10_dp_hbr2 = {
> +	.clock = 540000,
> +	.tx = 0x10,
> +	.cmn = 0x21,
> +	.pll[0] = 0xF4,
> +	.pll[1] = 0,
> +	.pll[2] = 0xF8,
> +	.pll[3] = 0,
> +	.pll[4] = 0x20,
> +	.pll[5] = 0xA0,
> +	.pll[6] = 0x29,
> +	.pll[7] = 0x10,
> +	.pll[8] = 0x1,
> +	.pll[9] = 0x1,
> +	.pll[10] = 0,
> +	.pll[11] = 0,
> +	.pll[12] = 0xA0,
> +	.pll[13] = 0,
> +	.pll[14] = 0,
> +	.pll[15] = 0,
> +	.pll[16] = 0x84,
> +	.pll[17] = 0x4F,
> +	.pll[18] = 0xE5,
> +	.pll[19] = 0x23,
> +};
> +
> +static const struct intel_c10pll_state lnl_c10_dp_hbr3 = {
> +	.clock = 810000,
> +	.tx = 0x10,
> +	.cmn = 0x21,
> +	.pll[0] = 0x34,
> +	.pll[1] = 0,
> +	.pll[2] = 0x84,
> +	.pll[3] = 0x1,
> +	.pll[4] = 0x30,
> +	.pll[5] = 0xF0,
> +	.pll[6] = 0x3D,
> +	.pll[7] = 0x98,
> +	.pll[8] = 0x1,
> +	.pll[9] = 0x1,
> +	.pll[10] = 0,
> +	.pll[11] = 0,
> +	.pll[12] = 0xF0,
> +	.pll[13] = 0,
> +	.pll[14] = 0,
> +	.pll[15] = 0,
> +	.pll[16] = 0x84,
> +	.pll[17] = 0x0F,
> +	.pll[18] = 0xE5,
> +	.pll[19] = 0x23,
> +};
> +
> +static const struct intel_c10pll_state lnl_c10_edp_r216 = {
> +	.clock = 216000,
> +	.tx = 0x10,
> +	.cmn = 0x21,
> +	.pll[0] = 0x4,
> +	.pll[1] = 0,
> +	.pll[2] = 0xA2,
> +	.pll[3] = 0x1,
> +	.pll[4] = 0x33,
> +	.pll[5] = 0x10,
> +	.pll[6] = 0x75,
> +	.pll[7] = 0xB3,
> +	.pll[8] = 0x1,
> +	.pll[9] = 0x1,
> +	.pll[10] = 0,
> +	.pll[11] = 0,
> +	.pll[12] = 0,
> +	.pll[13] = 0,
> +	.pll[14] = 0,
> +	.pll[15] = 0x2,
> +	.pll[16] = 0x85,
> +	.pll[17] = 0x20,
> +	.pll[18] = 0xE6,
> +	.pll[19] = 0x2F,
> +};
> +
> +static const struct intel_c10pll_state lnl_c10_edp_r243 = {
> +	.clock = 243000,
> +	.tx = 0x10,
> +	.cmn = 0x21,
> +	.pll[0] = 0x34,
> +	.pll[1] = 0,
> +	.pll[2] = 0xDA,
> +	.pll[3] = 0x1,
> +	.pll[4] = 0x39,
> +	.pll[5] = 0x12,
> +	.pll[6] = 0xE3,
> +	.pll[7] = 0xE9,
> +	.pll[8] = 0x1,
> +	.pll[9] = 0x1,
> +	.pll[10] = 0,
> +	.pll[11] = 0,
> +	.pll[12] = 0x20,
> +	.pll[13] = 0,
> +	.pll[14] = 0,
> +	.pll[15] = 0x2,
> +	.pll[16] = 0x85,
> +	.pll[17] = 0xA0,
> +	.pll[18] = 0xE6,
> +	.pll[19] = 0x2F,
> +};
> +
> +static const struct intel_c10pll_state lnl_c10_edp_r324 = {
> +	.clock = 324000,
> +	.tx = 0x10,
> +	.cmn = 0x21,
> +	.pll[0] = 0xB4,
> +	.pll[1] = 0,
> +	.pll[2] = 0x30,
> +	.pll[3] = 0x1,
> +	.pll[4] = 0x26,
> +	.pll[5] = 0xC0,
> +	.pll[6] = 0x98,
> +	.pll[7] = 0x46,
> +	.pll[8] = 0x1,
> +	.pll[9] = 0x1,
> +	.pll[10] = 0,
> +	.pll[11] = 0,
> +	.pll[12] = 0xC0,
> +	.pll[13] = 0,
> +	.pll[14] = 0,
> +	.pll[15] = 0x1,
> +	.pll[16] = 0x85,
> +	.pll[17] = 0x60,
> +	.pll[18] = 0xE6,
> +	.pll[19] = 0x2F,
> +};
> +
> +static const struct intel_c10pll_state lnl_c10_edp_r432 = {
> +	.clock = 432000,
> +	.tx = 0x10,
> +	.cmn = 0x21,
> +	.pll[0] = 0x4,
> +	.pll[1] = 0,
> +	.pll[2] = 0xA2,
> +	.pll[3] = 0x1,
> +	.pll[4] = 0x33,
> +	.pll[5] = 0x10,
> +	.pll[6] = 0x75,
> +	.pll[7] = 0xB3,
> +	.pll[8] = 0x1,
> +	.pll[9] = 0x1,
> +	.pll[10] = 0,
> +	.pll[11] = 0,
> +	.pll[12] = 0,
> +	.pll[13] = 0,
> +	.pll[14] = 0,
> +	.pll[15] = 0x1,
> +	.pll[16] = 0x85,
> +	.pll[17] = 0x20,
> +	.pll[18] = 0xE6,
> +	.pll[19] = 0x2F,
> +};
> +
> +static const struct intel_c10pll_state lnl_c10_edp_r675 = {
> +	.clock = 675000,
> +	.tx = 0x10,
> +	.cmn = 0x21,
> +	.pll[0] = 0xB4,
> +	.pll[1] = 0,
> +	.pll[2] = 0x3E,
> +	.pll[3] = 0x1,
> +	.pll[4] = 0xA8,
> +	.pll[5] = 0xC8,
> +	.pll[6] = 0x33,
> +	.pll[7] = 0x54,
> +	.pll[8] = 0x1,
> +	.pll[9] = 0x1,
> +	.pll[10] = 0,
> +	.pll[11] = 0,
> +	.pll[12] = 0xC8,
> +	.pll[13] = 0,
> +	.pll[14] = 0,
> +	.pll[15] = 0,
> +	.pll[16] = 0x85,
> +	.pll[17] = 0xA0,
> +	.pll[18] = 0xE6,
> +	.pll[19] = 0x2F,
> +};
> +
> +static const struct intel_c10pll_state * const lnl_c10_dp_tables[] = {
> +	&lnl_c10_dp_rbr,
> +	&lnl_c10_dp_hbr1,
> +	&lnl_c10_dp_hbr2,
> +	&lnl_c10_dp_hbr3,
> +	NULL,
> +};
> +
> +static const struct intel_c10pll_state * const lnl_c10_edp_tables[] = {
> +	&lnl_c10_dp_rbr,
> +	&lnl_c10_edp_r216,
> +	&lnl_c10_edp_r243,
> +	&lnl_c10_dp_hbr1,
> +	&lnl_c10_edp_r324,
> +	&lnl_c10_edp_r432,
> +	&lnl_c10_dp_hbr2,
> +	&lnl_c10_edp_r675,
> +	&lnl_c10_dp_hbr3,
> +	NULL,
> +};
> +
>  /* C20 basic DP 1.4 tables */
>  static const struct intel_c20pll_state mtl_c20_dp_rbr = {
>  	.link_bit_rate = 162000,
> @@ -1474,6 +1729,140 @@ static const struct intel_c10pll_state * const mtl_c10_hdmi_tables[] = {
>  	NULL,
>  };
>  
> +/*
> + * HDMI link rates with 38.4 MHz reference clock.
> + */
> +
> +static const struct intel_c10pll_state lnl_c10_hdmi_252 = {
> +	.clock = 25200,
> +	.pll[0] = 0x4,
> +	.pll[1] = 0,
> +	.pll[2] = 0xB2,
> +	.pll[3] = 0,
> +	.pll[4] = 0,
> +	.pll[5] = 0,
> +	.pll[6] = 0,
> +	.pll[7] = 0,
> +	.pll[8] = 0x20,
> +	.pll[9] = 0x1,
> +	.pll[10] = 0,
> +	.pll[11] = 0,
> +	.pll[12] = 0,
> +	.pll[13] = 0,
> +	.pll[14] = 0,
> +	.pll[15] = 0xD,
> +	.pll[16] = 0x0A,
> +	.pll[17] = 0xA0,
> +	.pll[18] = 0x87,
> +	.pll[19] = 0x2F,
> +};
> +
> +static const struct intel_c10pll_state lnl_c10_hdmi_27_0 = {
> +	.clock = 27000,
> +	.pll[0] = 0x34,
> +	.pll[1] = 0,
> +	.pll[2] = 0xC0,
> +	.pll[3] = 0,
> +	.pll[4] = 0,
> +	.pll[5] = 0,
> +	.pll[6] = 0,
> +	.pll[7] = 0,
> +	.pll[8] = 0x20,
> +	.pll[9] = 0x1,
> +	.pll[10] = 0,
> +	.pll[11] = 0,
> +	.pll[12] = 0x80,
> +	.pll[13] = 0,
> +	.pll[14] = 0,
> +	.pll[15] = 0xD,
> +	.pll[16] = 0x6,
> +	.pll[17] = 0xE0,
> +	.pll[18] = 0x84,
> +	.pll[19] = 0x2F,
> +};
> +
> +static const struct intel_c10pll_state lnl_c10_hdmi_74_2 = {
> +	.clock = 74250,
> +	.pll[0] = 0xF4,
> +	.pll[1] = 0,
> +	.pll[2] = 0x7A,
> +	.pll[3] = 0,
> +	.pll[4] = 0,
> +	.pll[5] = 0,
> +	.pll[6] = 0,
> +	.pll[7] = 0,
> +	.pll[8] = 0x20,
> +	.pll[9] = 0x1,
> +	.pll[10] = 0,
> +	.pll[11] = 0,
> +	.pll[12] = 0x58,
> +	.pll[13] = 0,
> +	.pll[14] = 0,
> +	.pll[15] = 0xB,
> +	.pll[16] = 0x6,
> +	.pll[17] = 0x20,
> +	.pll[18] = 0x85,
> +	.pll[19] = 0x2F,
> +};
> +
> +static const struct intel_c10pll_state lnl_c10_hdmi_148_5 = {
> +	.clock = 148500,
> +	.pll[0] = 0xF4,
> +	.pll[1] = 0,
> +	.pll[2] = 0x7A,
> +	.pll[3] = 0,
> +	.pll[4] = 0,
> +	.pll[5] = 0,
> +	.pll[6] = 0,
> +	.pll[7] = 0,
> +	.pll[8] = 0x20,
> +	.pll[9] = 0x1,
> +	.pll[10] = 0,
> +	.pll[11] = 0,
> +	.pll[12] = 0x58,
> +	.pll[13] = 0,
> +	.pll[14] = 0,
> +	.pll[15] = 0xA,
> +	.pll[16] = 0x6,
> +	.pll[17] = 0x20,
> +	.pll[18] = 0x85,
> +	.pll[19] = 0x2F,
> +};
> +
> +static const struct intel_c10pll_state lnl_c10_hdmi_594 = {
> +	.clock = 594000,
> +	.pll[0] = 0xF4,
> +	.pll[1] = 0,
> +	.pll[2] = 0x7A,
> +	.pll[3] = 0,
> +	.pll[4] = 0,
> +	.pll[5] = 0,
> +	.pll[6] = 0,
> +	.pll[7] = 0,
> +	.pll[8] = 0x20,
> +	.pll[9] = 0x1,
> +	.pll[10] = 0,
> +	.pll[11] = 0,
> +	.pll[12] = 0x58,
> +	.pll[13] = 0,
> +	.pll[14] = 0,
> +	.pll[15] = 0x8,
> +	.pll[16] = 0x6,
> +	.pll[17] = 0x20,
> +	.pll[18] = 0x85,
> +	.pll[19] = 0x2F,
> +};
> +
> +/* Consolidated Table */
> +static const struct intel_c10pll_state * const lnl_c10_hdmi_tables[] = {
> +	&lnl_c10_hdmi_252,
> +	&lnl_c10_hdmi_27_0,
> +	&lnl_c10_hdmi_74_2,
> +	&lnl_c10_hdmi_148_5,
> +	&lnl_c10_hdmi_594,
> +	NULL,
> +};
> +
>  static const struct intel_c20pll_state mtl_c20_hdmi_25_175 = {
>  	.link_bit_rate = 25175,
>  	.clock = 25175,
> @@ -1765,13 +2154,25 @@ static const struct intel_c10pll_state * const *
>  intel_c10pll_tables_get(struct intel_crtc_state *crtc_state,
>  			struct intel_encoder *encoder)
>  {
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +
>  	if (intel_crtc_has_dp_encoder(crtc_state)) {
> -		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
> -			return mtl_c10_edp_tables;
> -		else
> -			return mtl_c10_dp_tables;
> +		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP)) {
> +			if (DISPLAY_VER(i915) >= 20)
> +				return lnl_c10_edp_tables;
> +			else
> +				return mtl_c10_edp_tables;
> +		} else {
> +			if (DISPLAY_VER(i915) >= 20)
> +				return lnl_c10_dp_tables;
> +			else
> +				return mtl_c10_dp_tables;
> +		}
>  	} else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
> -		return mtl_c10_hdmi_tables;
> +		if (DISPLAY_VER(i915) >= 20)
> +			return lnl_c10_hdmi_tables;
> +		else
> +			return mtl_c10_hdmi_tables;
>  	}
>  
>  	MISSING_CASE(encoder->type);
> -- 
> 2.40.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
