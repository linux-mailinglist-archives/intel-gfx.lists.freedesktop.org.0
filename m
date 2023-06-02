Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8ED07208C3
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jun 2023 20:04:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 620AC10E0D4;
	Fri,  2 Jun 2023 18:04:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D936D10E0D4
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jun 2023 18:04:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685729067; x=1717265067;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Cpxzx9aYEoRuPTVwOsFOrYZinJ159L+ACq10+YK2D2g=;
 b=gkKb6NbK2Xrx1fx5CS2kOXXksMdSRvIVckLt7FBBvxhsk/U9u1ClndPU
 3VsqkwMItBynKSUKqEssyfVKN9UJmLzb5fSEVgk0F06OqMC+1utq7jWAn
 5EmPaKDYDMsht90wmWVTRusfxselP2njvDD0ysnJrhpr8kl95Dz+3DeNT
 05bggPt5vILsHreD7UMdc7VUL9uHkClXOMR3qxBq9e5lUT4mJIbeuQKMp
 C7E0ovoyki3WMtpUREbxUpV4KUxuI7my7vNX1++0uTe3ttOsi4VEmZ6PC
 BVemlrQFjEjs/OAnh/5Jm8XoIrFttSwnEr+S8jsRb6PldHOwlAoQkSfB1 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="419464072"
X-IronPort-AV: E=Sophos;i="6.00,213,1681196400"; d="scan'208";a="419464072"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 11:04:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="658351622"
X-IronPort-AV: E=Sophos;i="6.00,213,1681196400"; d="scan'208";a="658351622"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 02 Jun 2023 11:04:26 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 2 Jun 2023 11:04:26 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 2 Jun 2023 11:04:26 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 2 Jun 2023 11:04:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YkYvVP9UeGx2sCMlw02ff8d+9I8sY3Z+kNOpzf/EvFut6NpzT5ixZQ66OXjXMUnibgsb53kBfRGCIBPlzADizPdsdiGwZyf/iaSO4FSNqzSgLsaTFvQLHgjT+V1RvIckjTzviH0esyZ6qX91yqkwiEW0ZJTDwjmLYP12lxc1GlxMyEK82ZmJ8rdLWOlkm+/r6rKkHKgWWUtWyG3eAQSFqozowjEZqwZ2cya1n8jf4g7z2y1rKH3daacFNmKQhnMP2VX7p5lp2rzJySM8DIX8pEs3jBRVXGF+ibZLezDANMwwUExCDmteAUv8ZS1UwKC6S5q5a0guH9S5f1ncnvtsww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r5pPPXAsXyTe9Rv6a+QSpmYuJ+P2qbGlZaieBRdplKs=;
 b=jEz6UONRoTXKCQFldNIs0/6HAhJirVcgwXUj7HGBCy9zWCGO9caIgKMFpdWNEyzFxV2Dem8o0G0+3Kqt5oufxnfhn2+c+TDJvtFgV4xiUMkAMl1k5siVwDI3Kc/7hprxg0cQ2ni52kiZkFhAZhzkVxzIMlp4gG4jGSPEzYMNDAM5GiVd+RTss/jYjS3Kj4KnfHuB/+nFKol7YgfSxJy3onhNVIGqLv57NanCkGChK9lOlQ6ing5md+yS6OqldRWKnA+bts+faw4nrGgXK/IKagetp9lPmsO0sxqgFFE+z7XSm3wCsjLwyu/HAFRzOnpNe8ZE4DU7TfQyeWfmGYov+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA1PR11MB7854.namprd11.prod.outlook.com (2603:10b6:208:3f6::5)
 by CH3PR11MB8139.namprd11.prod.outlook.com (2603:10b6:610:157::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.24; Fri, 2 Jun
 2023 18:04:23 +0000
Received: from IA1PR11MB7854.namprd11.prod.outlook.com
 ([fe80::1b87:eeb5:fa80:79ba]) by IA1PR11MB7854.namprd11.prod.outlook.com
 ([fe80::1b87:eeb5:fa80:79ba%7]) with mapi id 15.20.6433.024; Fri, 2 Jun 2023
 18:04:23 +0000
Date: Fri, 2 Jun 2023 11:04:19 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20230602180419.GO6953@mdroper-desk1.amr.corp.intel.com>
References: <20230601212535.675751-1-matthew.d.roper@intel.com>
 <87bkhyfaeh.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <87bkhyfaeh.fsf@intel.com>
X-ClientProxiedBy: BY5PR16CA0001.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::14) To IA1PR11MB7854.namprd11.prod.outlook.com
 (2603:10b6:208:3f6::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR11MB7854:EE_|CH3PR11MB8139:EE_
X-MS-Office365-Filtering-Correlation-Id: e8ddb85b-99f9-487c-3a23-08db6393cb7a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XH9bEWJYhLNMtOX9WY/g+nTuGtMJat6BTwaeNTChiDFL7UYJ98DQRNnRIjmoo2aPlltTZiqkbQLox6cjWd8vmUpGke5pAWmlyM1PmhGN5gcWwGQ/fPCdL4jrstfeTgyDnqSe8rV40dykLaPLlyj/gxEEdJXrx7Htef5bGntRKraK7qfRweuepmnONk7NKycZLPTlfHaFD1Regj+K17V30U5LUdUnadIblquT9h3ZqNtBRtYGN/djwi+miOR/T4UW3p/1LlJHJNHFzHe61lbYIBpCz6XBvKM3KtCqQHbgvkS48gAo1S9EOnmjS8kXz/HXLaQA7ulrV/U+G0g3d0v9rfUER7F74ZQC8tkyaYOzsS20cHuoRBGT79Vo+2TKDgODovSFqp/PFgcWFI+iw0cDIkjCQ/PeVO4PqAiINc28me9dx+j3o2reJWoUBf0V0m5vIHMWAXhew42oC9Uz/gcNrObY8OdJcGTHpIguRjC/5xbExQJXx/HfToqmP5t6sONWSH3ct4ee5qmUHdalPy/zY6wnNqJ396KwzGcjAgJcpELRQpLgd40g8maOJMt0KhIp
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB7854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(136003)(396003)(346002)(39860400002)(366004)(451199021)(26005)(1076003)(478600001)(8676002)(8936002)(82960400001)(38100700002)(66476007)(66556008)(66946007)(6506007)(6916009)(4326008)(6512007)(86362001)(30864003)(6666004)(316002)(5660300002)(186003)(6486002)(41300700001)(83380400001)(33656002)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?f0jlGA9gUPJeczdE0dhEH5uYZcV9Ilx/slM96tq8dLt/wdm2LVuyhQuMrtLN?=
 =?us-ascii?Q?OTxuHjfmtonAbd2Uo0rrznhTaIDmzKJUzXAojBsg6kggiPzFiLhnLV9DkQHi?=
 =?us-ascii?Q?zh4v0Qc0G5Tsb0i+bbexLnnwXuK+QEa3lJliOsUP1cG/OvDhHm9jtthRTaYD?=
 =?us-ascii?Q?AdZcoVRrcf6XdvtlYbEfICNXS5oK/nddXTfU53deycJMVs57uc23rxUgyjm+?=
 =?us-ascii?Q?b+eUPZj8ZZfFKytwiZu+men19rlw0/z8018vIrdRezdHWD+eNtFR48kyiBXM?=
 =?us-ascii?Q?HAFMEEhdG+e3H5NaBV1i61aXKbAUwZ752hWs682wEUzwbq3hCdBwk0Rd8vFp?=
 =?us-ascii?Q?/vRihSu7DWEpeWKiuqzwdPoXoP/GVyoLmZUibpAR37rs674h8QoSc50HecQW?=
 =?us-ascii?Q?y7Z6IbsamA5LsgiyWNZj1QCXP9ZEFCOH6gYBlEHBtS1TFeV+JhjLSksbobhC?=
 =?us-ascii?Q?8/nvywkZK5hpDXWOHc2Xn/55X+qNhI34Dxggx6A8/o+2PMyq0O9asaJ9jZpf?=
 =?us-ascii?Q?pbevdQI1Ll8CSdKox27xMiubik82B1W4c0JUFQRKQq8euo5C/m0ZMBWfDvuV?=
 =?us-ascii?Q?OZ9F5hf3589UbNpZuo/+UtwI5TvwU1maq1pW7AtVTc9QfoZQfDnlr/tUEGWD?=
 =?us-ascii?Q?AZm2P359SsLgGRTnXVtScBD8qIkT7n5LjW58eFkTbfrTEWsVrmWD1hwFkjsf?=
 =?us-ascii?Q?7pSe0gNPLdDLzsAranbVuR3PfBvp1TdheAJOMv1j16HiHFGC8p6sSIwgRvUN?=
 =?us-ascii?Q?QmrQ0aKNPK+T8zBbt4BP59fXZPDrZULNChFamqnzH4ksaSqsMxPtgL1RfhLC?=
 =?us-ascii?Q?jtXTaQ8gueCpYCx30QUkbd7/2vMfnGtcvEn69oiXP/gBiEXSXba9BsuozxXI?=
 =?us-ascii?Q?p9aamwmONwecI7R6Aakq3AM44twD0xTyM/tAXOSzJ9rWOr9JW9ILHjIUGzqv?=
 =?us-ascii?Q?EInDQLPWCsXnyluR/ArhB4GdxA599zlCBfcUT6iSOfVv5DCE97eRAyv3RIBl?=
 =?us-ascii?Q?aM3ypKo+EajzQcwdV2zsE8pQaoGFun2wXc6GlfykZ4oyHqjoRxYOJIgueyXh?=
 =?us-ascii?Q?Y/NJ5eMvpuyBrNL6I0Pyjdm593DqARJjTg4QWEiDpovuMEcSnS/AAAuoFRbO?=
 =?us-ascii?Q?hNCbm3NjhUNj2DZcyERA+DESMLAr8VF7peucqqG0j5GdAjwDUZj+5hNz5t6r?=
 =?us-ascii?Q?cdzQXA2fRRnICHstr2dUBBUcEFlQ6r+KLaa+brITEt9T0lJhsh+pAvLw2y7r?=
 =?us-ascii?Q?SkoqSuPi4L/pnLR8ZfV7QMCdAjl2/qqegZ1gBh7VlKDxeilEOgdzO/4/n9Rq?=
 =?us-ascii?Q?6bqnMQFWlbNO3llBp//mG2e0jnjCxdm+lgNs+Y9KTSRigQpV6yz1m4nJrOuF?=
 =?us-ascii?Q?V08/5//dn6ykOVwiznWflgD5Jj9QI14wS9huCV2FCanJd88EI+uQsmQ7ZCY+?=
 =?us-ascii?Q?RCsCxTfdGdps8WVx0GeaZUneFP2A/YjUFHgLSAESR6+6zMa6CbTGjP7+P9AY?=
 =?us-ascii?Q?e/QTFpUTUcEBoG8qBNPS9vJL5ZNVKgQxIzIErIAjL2NaXKEnde5lQxfYClVA?=
 =?us-ascii?Q?sYj1x1FmjnpXkjX50lUTVAHDA60CMH3Mz83Ptzg5xtT7cnB0NSuAZtlp3QXV?=
 =?us-ascii?Q?Kw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e8ddb85b-99f9-487c-3a23-08db6393cb7a
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB7854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jun 2023 18:04:23.0417 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zGeLE1AvorB7/pisODqMVdBWLmA/Hq3VpQQMeiUR53HI031qcUkBxk33g/fAe/4onxACxtWIr2Pyk7yQZvzt+0pizZ8SOe24oQlkVhwyRbU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8139
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Extract display init from
 intel_device_info_runtime_init
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

On Fri, Jun 02, 2023 at 01:04:06PM +0300, Jani Nikula wrote:
> On Thu, 01 Jun 2023, Matt Roper <matthew.d.roper@intel.com> wrote:
> > Moving display-specific runtime info initialization into display/ makes
> > the display code more self-contained and also makes it easier to call
> > from the Xe driver.
> 
> I like the direction here. A few minor issues, comments inline.
> 
> >
> > Cc: Jani Nikula <jani.nikula@linux.intel.com>
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > ---
> >  .../drm/i915/display/intel_display_device.c   | 124 +++++++++++++++++
> >  .../drm/i915/display/intel_display_device.h   |   1 +
> >  drivers/gpu/drm/i915/intel_device_info.c      | 130 +-----------------
> >  3 files changed, 128 insertions(+), 127 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> > index 464df1764a86..8d379da877dc 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> > @@ -7,6 +7,8 @@
> >  #include <drm/drm_color_mgmt.h>
> >  #include <linux/pci.h>
> >  
> > +#include "display/intel_de.h"
> > +#include "display/intel_display.h"
> 
> The display/ prefix should be dropped.
> 
> >  #include "i915_drv.h"
> >  #include "i915_reg.h"
> >  #include "intel_display_device.h"
> > @@ -778,3 +780,125 @@ intel_display_device_probe(struct drm_i915_private *i915, bool has_gmdid,
> >  
> >  	return &no_display;
> >  }
> > +
> > +void intel_display_device_info_runtime_init(struct drm_i915_private *i915)
> > +{
> > +	struct intel_display_runtime_info *display_runtime = DISPLAY_RUNTIME_INFO(i915);
> > +	enum pipe pipe;
> > +
> > +	/* Wa_14011765242: adl-s A0,A1 */
> > +	if (IS_ADLS_DISPLAY_STEP(i915, STEP_A0, STEP_A2))
> > +		for_each_pipe(i915, pipe)
> > +			display_runtime->num_scalers[pipe] = 0;
> > +	else if (DISPLAY_VER(i915) >= 11) {
> > +		for_each_pipe(i915, pipe)
> > +			display_runtime->num_scalers[pipe] = 2;
> > +	} else if (DISPLAY_VER(i915) >= 9) {
> > +		display_runtime->num_scalers[PIPE_A] = 2;
> > +		display_runtime->num_scalers[PIPE_B] = 2;
> > +		display_runtime->num_scalers[PIPE_C] = 1;
> > +	}
> > +
> > +	if (DISPLAY_VER(i915) >= 13 || HAS_D12_PLANE_MINIMIZATION(i915))
> > +		for_each_pipe(i915, pipe)
> > +			display_runtime->num_sprites[pipe] = 4;
> > +	else if (DISPLAY_VER(i915) >= 11)
> > +		for_each_pipe(i915, pipe)
> > +			display_runtime->num_sprites[pipe] = 6;
> > +	else if (DISPLAY_VER(i915) == 10)
> > +		for_each_pipe(i915, pipe)
> > +			display_runtime->num_sprites[pipe] = 3;
> > +	else if (IS_BROXTON(i915)) {
> > +		/*
> > +		 * Skylake and Broxton currently don't expose the topmost plane as its
> > +		 * use is exclusive with the legacy cursor and we only want to expose
> > +		 * one of those, not both. Until we can safely expose the topmost plane
> > +		 * as a DRM_PLANE_TYPE_CURSOR with all the features exposed/supported,
> > +		 * we don't expose the topmost plane at all to prevent ABI breakage
> > +		 * down the line.
> > +		 */
> > +
> > +		display_runtime->num_sprites[PIPE_A] = 2;
> > +		display_runtime->num_sprites[PIPE_B] = 2;
> > +		display_runtime->num_sprites[PIPE_C] = 1;
> > +	} else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
> > +		for_each_pipe(i915, pipe)
> > +			display_runtime->num_sprites[pipe] = 2;
> > +	} else if (DISPLAY_VER(i915) >= 5 || IS_G4X(i915)) {
> > +		for_each_pipe(i915, pipe)
> > +			display_runtime->num_sprites[pipe] = 1;
> > +	}
> > +
> > +	if ((IS_DGFX(i915) || DISPLAY_VER(i915) >= 14) &&
> > +	    !(intel_de_read(i915, GU_CNTL_PROTECTED) & DEPRESENT)) {
> > +		drm_info(&i915->drm, "Display not present, disabling\n");
> > +		goto display_fused_off;
> > +	}
> > +
> > +	if (IS_GRAPHICS_VER(i915, 7, 8) && HAS_PCH_SPLIT(i915)) {
> > +		u32 fuse_strap = intel_de_read(i915, FUSE_STRAP);
> > +		u32 sfuse_strap = intel_de_read(i915, SFUSE_STRAP);
> > +
> > +		/*
> > +		 * SFUSE_STRAP is supposed to have a bit signalling the display
> > +		 * is fused off. Unfortunately it seems that, at least in
> > +		 * certain cases, fused off display means that PCH display
> > +		 * reads don't land anywhere. In that case, we read 0s.
> > +		 *
> > +		 * On CPT/PPT, we can detect this case as SFUSE_STRAP_FUSE_LOCK
> > +		 * should be set when taking over after the firmware.
> > +		 */
> > +		if (fuse_strap & ILK_INTERNAL_DISPLAY_DISABLE ||
> > +		    sfuse_strap & SFUSE_STRAP_DISPLAY_DISABLED ||
> > +		    (HAS_PCH_CPT(i915) &&
> > +		     !(sfuse_strap & SFUSE_STRAP_FUSE_LOCK))) {
> > +			drm_info(&i915->drm,
> > +				 "Display fused off, disabling\n");
> > +			goto display_fused_off;
> > +		} else if (fuse_strap & IVB_PIPE_C_DISABLE) {
> > +			drm_info(&i915->drm, "PipeC fused off\n");
> > +			display_runtime->pipe_mask &= ~BIT(PIPE_C);
> > +			display_runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_C);
> > +		}
> > +	} else if (DISPLAY_VER(i915) >= 9) {
> > +		u32 dfsm = intel_de_read(i915, SKL_DFSM);
> > +
> > +		if (dfsm & SKL_DFSM_PIPE_A_DISABLE) {
> > +			display_runtime->pipe_mask &= ~BIT(PIPE_A);
> > +			display_runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_A);
> > +			display_runtime->fbc_mask &= ~BIT(INTEL_FBC_A);
> > +		}
> > +		if (dfsm & SKL_DFSM_PIPE_B_DISABLE) {
> > +			display_runtime->pipe_mask &= ~BIT(PIPE_B);
> > +			display_runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_B);
> > +		}
> > +		if (dfsm & SKL_DFSM_PIPE_C_DISABLE) {
> > +			display_runtime->pipe_mask &= ~BIT(PIPE_C);
> > +			display_runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_C);
> > +		}
> > +
> > +		if (DISPLAY_VER(i915) >= 12 &&
> > +		    (dfsm & TGL_DFSM_PIPE_D_DISABLE)) {
> > +			display_runtime->pipe_mask &= ~BIT(PIPE_D);
> > +			display_runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_D);
> > +		}
> 
> I'm not sure if it's likely at all, but what if ->pipe_mask == 0 after
> the disables above? Then this no longer clears display runtime info like
> it used to.
> 
> Although later on that still leads to setting info->display =
> &no_display. But I guess I'd like to not make functional changes like
> that here if possible.
> 
> > +
> > +		if (dfsm & SKL_DFSM_DISPLAY_HDCP_DISABLE)
> > +			display_runtime->has_hdcp = 0;
> > +
> > +		if (dfsm & SKL_DFSM_DISPLAY_PM_DISABLE)
> > +			display_runtime->fbc_mask = 0;
> > +
> > +		if (DISPLAY_VER(i915) >= 11 && (dfsm & ICL_DFSM_DMC_DISABLE))
> > +			display_runtime->has_dmc = 0;
> > +
> > +		if (IS_DISPLAY_VER(i915, 10, 12) &&
> > +		    (dfsm & GLK_DFSM_DISPLAY_DSC_DISABLE))
> > +			display_runtime->has_dsc = 0;
> > +	}
> > +
> > +	return;
> > +
> > +display_fused_off:
> > +	memset(display_runtime, 0, sizeof(*display_runtime));
> > +}
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> > index 2aa82cbdf1c5..4f931258d81d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> > @@ -124,5 +124,6 @@ struct intel_display_device_info {
> >  const struct intel_display_device_info *
> >  intel_display_device_probe(struct drm_i915_private *i915, bool has_gmdid,
> >  			   u16 *ver, u16 *rel, u16 *step);
> > +void intel_display_device_info_runtime_init(struct drm_i915_private *i915);
> >  
> >  #endif
> > diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> > index 2f79d232b04a..ed6183aaaa5c 100644
> > --- a/drivers/gpu/drm/i915/intel_device_info.c
> > +++ b/drivers/gpu/drm/i915/intel_device_info.c
> > @@ -27,9 +27,7 @@
> >  #include <drm/drm_print.h>
> >  #include <drm/i915_pciids.h>
> >  
> > -#include "display/intel_cdclk.h"
> > -#include "display/intel_de.h"
> > -#include "display/intel_display.h"
> > +#include "display/intel_display_device.h"
> >  #include "gt/intel_gt_regs.h"
> >  #include "i915_drv.h"
> >  #include "i915_reg.h"
> > @@ -411,126 +409,12 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
> >  {
> >  	struct intel_device_info *info = mkwrite_device_info(dev_priv);
> >  	struct intel_runtime_info *runtime = RUNTIME_INFO(dev_priv);
> > -	struct intel_display_runtime_info *display_runtime =
> > -		DISPLAY_RUNTIME_INFO(dev_priv);
> > -	enum pipe pipe;
> >  
> > -	/* Wa_14011765242: adl-s A0,A1 */
> > -	if (IS_ADLS_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A2))
> > -		for_each_pipe(dev_priv, pipe)
> > -			display_runtime->num_scalers[pipe] = 0;
> > -	else if (DISPLAY_VER(dev_priv) >= 11) {
> > -		for_each_pipe(dev_priv, pipe)
> > -			display_runtime->num_scalers[pipe] = 2;
> > -	} else if (DISPLAY_VER(dev_priv) >= 9) {
> > -		display_runtime->num_scalers[PIPE_A] = 2;
> > -		display_runtime->num_scalers[PIPE_B] = 2;
> > -		display_runtime->num_scalers[PIPE_C] = 1;
> > -	}
> > +	if (HAS_DISPLAY(dev_priv))
> > +		intel_display_device_info_runtime_init(dev_priv);
> 
> I'm wondering if it would make sense to have that function return a
> value that would get used instead of the later !HAS_DISPLAY() branch
> later. Now it feels like there's a bit of a disconnect between the
> two. Or at least move that block right here:
> 
> 	if (HAS_DISPLAY(dev_priv)) {
> 		intel_display_device_info_runtime_init(dev_priv);
> 
> 		if (!HAS_DISPLAY(dev_priv)) {
> 			...

This probably shouldn't be nested since we still want to run this even
if the first HAS_DISPLAY was already false before we read these fuses
and such (e.g., on a PVC or ATS-M).  But moving these next to each other
sounds like a good idea.


Matt


> 		}
> 	}
> 
> This way there's more clarity I think. Can be a follow-up patch too.
> 
> I think the contents of that branch i.e.
> 
> 		dev_priv->drm.driver_features &= ~(DRIVER_MODESET |
> 						   DRIVER_ATOMIC);
> 		info->display = &no_display;
> 
> should stay here (like you've left them) to have all of that at about
> the same layer.
> 
> BR,
> Jani.
> 
> 
> >  
> >  	BUILD_BUG_ON(BITS_PER_TYPE(intel_engine_mask_t) < I915_NUM_ENGINES);
> >  
> > -	if (DISPLAY_VER(dev_priv) >= 13 || HAS_D12_PLANE_MINIMIZATION(dev_priv))
> > -		for_each_pipe(dev_priv, pipe)
> > -			display_runtime->num_sprites[pipe] = 4;
> > -	else if (DISPLAY_VER(dev_priv) >= 11)
> > -		for_each_pipe(dev_priv, pipe)
> > -			display_runtime->num_sprites[pipe] = 6;
> > -	else if (DISPLAY_VER(dev_priv) == 10)
> > -		for_each_pipe(dev_priv, pipe)
> > -			display_runtime->num_sprites[pipe] = 3;
> > -	else if (IS_BROXTON(dev_priv)) {
> > -		/*
> > -		 * Skylake and Broxton currently don't expose the topmost plane as its
> > -		 * use is exclusive with the legacy cursor and we only want to expose
> > -		 * one of those, not both. Until we can safely expose the topmost plane
> > -		 * as a DRM_PLANE_TYPE_CURSOR with all the features exposed/supported,
> > -		 * we don't expose the topmost plane at all to prevent ABI breakage
> > -		 * down the line.
> > -		 */
> > -
> > -		display_runtime->num_sprites[PIPE_A] = 2;
> > -		display_runtime->num_sprites[PIPE_B] = 2;
> > -		display_runtime->num_sprites[PIPE_C] = 1;
> > -	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
> > -		for_each_pipe(dev_priv, pipe)
> > -			display_runtime->num_sprites[pipe] = 2;
> > -	} else if (DISPLAY_VER(dev_priv) >= 5 || IS_G4X(dev_priv)) {
> > -		for_each_pipe(dev_priv, pipe)
> > -			display_runtime->num_sprites[pipe] = 1;
> > -	}
> > -
> > -	if (HAS_DISPLAY(dev_priv) &&
> > -	    (IS_DGFX(dev_priv) || DISPLAY_VER(dev_priv) >= 14) &&
> > -	    !(intel_de_read(dev_priv, GU_CNTL_PROTECTED) & DEPRESENT)) {
> > -		drm_info(&dev_priv->drm, "Display not present, disabling\n");
> > -
> > -		display_runtime->pipe_mask = 0;
> > -	}
> > -
> > -	if (HAS_DISPLAY(dev_priv) && IS_GRAPHICS_VER(dev_priv, 7, 8) &&
> > -	    HAS_PCH_SPLIT(dev_priv)) {
> > -		u32 fuse_strap = intel_de_read(dev_priv, FUSE_STRAP);
> > -		u32 sfuse_strap = intel_de_read(dev_priv, SFUSE_STRAP);
> > -
> > -		/*
> > -		 * SFUSE_STRAP is supposed to have a bit signalling the display
> > -		 * is fused off. Unfortunately it seems that, at least in
> > -		 * certain cases, fused off display means that PCH display
> > -		 * reads don't land anywhere. In that case, we read 0s.
> > -		 *
> > -		 * On CPT/PPT, we can detect this case as SFUSE_STRAP_FUSE_LOCK
> > -		 * should be set when taking over after the firmware.
> > -		 */
> > -		if (fuse_strap & ILK_INTERNAL_DISPLAY_DISABLE ||
> > -		    sfuse_strap & SFUSE_STRAP_DISPLAY_DISABLED ||
> > -		    (HAS_PCH_CPT(dev_priv) &&
> > -		     !(sfuse_strap & SFUSE_STRAP_FUSE_LOCK))) {
> > -			drm_info(&dev_priv->drm,
> > -				 "Display fused off, disabling\n");
> > -			display_runtime->pipe_mask = 0;
> > -		} else if (fuse_strap & IVB_PIPE_C_DISABLE) {
> > -			drm_info(&dev_priv->drm, "PipeC fused off\n");
> > -			display_runtime->pipe_mask &= ~BIT(PIPE_C);
> > -			display_runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_C);
> > -		}
> > -	} else if (HAS_DISPLAY(dev_priv) && DISPLAY_VER(dev_priv) >= 9) {
> > -		u32 dfsm = intel_de_read(dev_priv, SKL_DFSM);
> > -
> > -		if (dfsm & SKL_DFSM_PIPE_A_DISABLE) {
> > -			display_runtime->pipe_mask &= ~BIT(PIPE_A);
> > -			display_runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_A);
> > -			display_runtime->fbc_mask &= ~BIT(INTEL_FBC_A);
> > -		}
> > -		if (dfsm & SKL_DFSM_PIPE_B_DISABLE) {
> > -			display_runtime->pipe_mask &= ~BIT(PIPE_B);
> > -			display_runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_B);
> > -		}
> > -		if (dfsm & SKL_DFSM_PIPE_C_DISABLE) {
> > -			display_runtime->pipe_mask &= ~BIT(PIPE_C);
> > -			display_runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_C);
> > -		}
> > -
> > -		if (DISPLAY_VER(dev_priv) >= 12 &&
> > -		    (dfsm & TGL_DFSM_PIPE_D_DISABLE)) {
> > -			display_runtime->pipe_mask &= ~BIT(PIPE_D);
> > -			display_runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_D);
> > -		}
> > -
> > -		if (dfsm & SKL_DFSM_DISPLAY_HDCP_DISABLE)
> > -			display_runtime->has_hdcp = 0;
> > -
> > -		if (dfsm & SKL_DFSM_DISPLAY_PM_DISABLE)
> > -			display_runtime->fbc_mask = 0;
> > -
> > -		if (DISPLAY_VER(dev_priv) >= 11 && (dfsm & ICL_DFSM_DMC_DISABLE))
> > -			display_runtime->has_dmc = 0;
> > -
> > -		if (IS_DISPLAY_VER(dev_priv, 10, 12) &&
> > -		    (dfsm & GLK_DFSM_DISPLAY_DSC_DISABLE))
> > -			display_runtime->has_dsc = 0;
> > -	}
> > -
> >  	if (GRAPHICS_VER(dev_priv) == 6 && i915_vtd_active(dev_priv)) {
> >  		drm_info(&dev_priv->drm,
> >  			 "Disabling ppGTT for VT-d support\n");
> > @@ -544,14 +428,6 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
> >  		dev_priv->drm.driver_features &= ~(DRIVER_MODESET |
> >  						   DRIVER_ATOMIC);
> >  		info->display = &no_display;
> > -
> > -		display_runtime->cpu_transcoder_mask = 0;
> > -		memset(display_runtime->num_sprites, 0, sizeof(display_runtime->num_sprites));
> > -		memset(display_runtime->num_scalers, 0, sizeof(display_runtime->num_scalers));
> > -		display_runtime->fbc_mask = 0;
> > -		display_runtime->has_hdcp = false;
> > -		display_runtime->has_dmc = false;
> > -		display_runtime->has_dsc = false;
> >  	}
> >  
> >  	/* Disable nuclear pageflip by default on pre-g4x */
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
