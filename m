Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C1811787C28
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Aug 2023 01:55:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC52E10E5EE;
	Thu, 24 Aug 2023 23:55:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C07010E32B;
 Thu, 24 Aug 2023 23:55:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692921306; x=1724457306;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=UfHQD8nxfVQLkRWl3Z69/CwTtVCg/0EGQNKzh0uTEAQ=;
 b=BNzdgLGVOmTogrrESXOCPQeoU7mN2/uEx6SqMxKkZpKnjO2olu4lLbjI
 8xJqrwxSXmDuPnVjcIV3nIj7LTknZR90MnW65pJfS97v+vWJ9pZSliwx7
 jWVbGrzvw/nB/C14GSxJXh5Of4J6QZplbCnIoEyCH3QBSmUQThJu3LSeO
 CGHbvaYABjFBhDKpGa7XwnrRd3VfBZ1TKRRC1/YhsxDdcgYF9wwgliiNx
 1i7J4HTP8xLyl3dV5sROH7yJrrPvboi0/sw83XeHxjqBtzi1i4fWS70d3
 vF++WL1QLWTvbwpYQblY8+YGeMK0xWFsSQ2eYXb4Uk5dzexE8HUU2FC9F g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="354116765"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="354116765"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 16:55:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="827375405"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="827375405"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by FMSMGA003.fm.intel.com with ESMTP; 24 Aug 2023 16:55:04 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 16:55:03 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 16:55:03 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 16:55:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=et2wd2o3SeZdUq2oyfEeoj8lw9qwyGPIDuoNsbkJ8xHmylwgBbQvaegkCDKzUeFxqnEPmAX8Lg2jq2gaoch+Zpz5s/7weZn//mc0FgQEZ1MUSXIkJCeoqBnCWTURKl1nwVZSYy+0b7LU0/ZBmDG0B0np/4ii3KieOP3m5gSzm8IucmX9iXLSSuReW0QMH6fLlanF7xz+Jy5gCvZyWNKm6XDgrWGSzgyrRECS09HeAtMef2M9xVDfNbeWhyPSl7+MctyYkVZz+ejlTDc1Qe2BvsmuAVdy0yUFR7xfmVTm09mb9LPZCE2L+0Jee/IwEirJ8aqvEf0iBkeTgWr2yYUQKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MqwAa/r3fCWlCmpdOdxXbmjTrow9yhxFQFSB14Okgus=;
 b=HUsyEKOjuOgQgU2+6F2Fzpe9ZxGa++T7yt8dKJeC5Mywc+N/DcUoUTfo0ctjaj4u9J1+kIws55Pm0dpZ/JEGEXFnBW8a8sJ/134mswJx+J+1uUtqTMlymCGctYWDxBGr5leudUtoVtMBHMjALtmMId3vxndI/xpiqTTifexPi3QUyWPx+/y1StuuwHD+SOBzvzg1YmDIyLYEtz2hIxvvd5MmJqX/7Jsq/TRhKTGJV4M1mVTYHwEuSXVOfyHCklKz6iuJ7xp3EOSVgyrD4X0TtLL4vO9HSXvibDwTidGxB/Zxmi+DZ2ajVEQX24jygcv9xHYBzlGgPccYqygkw+2sww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 DM4PR11MB6042.namprd11.prod.outlook.com (2603:10b6:8:61::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6699.27; Thu, 24 Aug 2023 23:55:01 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6699.027; Thu, 24 Aug 2023
 23:55:00 +0000
Date: Thu, 24 Aug 2023 16:54:57 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230824235457.GD1529860@mdroper-desk1.amr.corp.intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-37-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230823170740.1180212-37-lucas.demarchi@intel.com>
X-ClientProxiedBy: SJ0PR03CA0058.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::33) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|DM4PR11MB6042:EE_
X-MS-Office365-Filtering-Correlation-Id: 8e08f048-5096-4a6c-a08d-08dba4fd8749
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: okcNKwqoPClkfx/tQVDRoyEc1Z3f0c+z4xZRcTznGs94zBtytX8Y+E2LjKV3vVjxpUoTGfSOZbvD+Vlp6fOX4I/f3AEFVGbRGX0PFzlP9zMqJ1/rl7qOMVTxL9HCktt8uhkPcX9U1Tz1YufyQDcnZ8UjHkF3CWNRNLLOT4dGN3BwUv3afq/r+mPZqUQ1pjx1PGJ2Uml12ykmAmfDtjq7uwPTPNEpf/Ih2lzCAZ1iNDUb+OWSBMpq9L1o1gG0pDyGjFgQ0arDVt83hnEu4F0lu64wFEP6+BtMiAQ24T4wNhBSkTuvzlW2ewZ+Lrm1cI+6UBOMN7DkiZ6/jx3A+7d/3f2IWnmECCiiPnM1QDdZGWy5iTkIx+7K0z5CgI8H4h0Lp2YcpuxQN9r2eP5lm7//emTubgf7MQ34PfbRgCES0LwMtCVpaFSq6saRdD6kzPUxe5KVLhxxwZB1zFGoRBY7cB4Dyk8mnnLNIfLVk2z70AYip24a2fcOB1OtcsDUHnjNO2O4oTRy5E8Ia3eAz5OvHEbCktpiu7MHZA9pxtUK++hKDUwf2ILQp5rJRPXqguiv
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(39860400002)(396003)(136003)(346002)(186009)(1800799009)(451199024)(1076003)(5660300002)(4326008)(8676002)(450100002)(6862004)(8936002)(83380400001)(33656002)(26005)(6666004)(38100700002)(82960400001)(66556008)(66946007)(66476007)(6636002)(316002)(478600001)(41300700001)(6512007)(6506007)(2906002)(86362001)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?LRaUKwzvFQTOnxAvrxlssI26voeInjpBeY2EeefuY5AADGkKNHxu3/hA6Ptf?=
 =?us-ascii?Q?LS0gYgArkWmxJy46Hri6L6sjNckf9BHgD1SX7sRjhBAy3CGlnVImwWsbE6fi?=
 =?us-ascii?Q?O/UcWojkjhvbfuDh6VoxsrhdLkC+yjBsxVv34BReDkLr90LhX6Kgn7zS9fs2?=
 =?us-ascii?Q?kyN3zwnWT1yb47Wz78hLLwWlk+1/2YSEjN8aL4p5YWazRKIzhfsJKXslxMo0?=
 =?us-ascii?Q?GoEvrZEjuLXpYgiPtRJEXgpijhOkB+pWy3dHANZEUa7+fojlbP9a8KyO+VNg?=
 =?us-ascii?Q?OKoSQcEsMh08jYXZXLynrK4ok8Y52Kai79Ycr3vmLNq72W73Zu3xXJvj1zUZ?=
 =?us-ascii?Q?dR1uPjcWUYyRC8zhO3/fbGGoqSIeVnRU0HUrqT2M0KFSOASjpNS6Kau/TZxe?=
 =?us-ascii?Q?fLt1mAR3/58BTl1H7Wl9ojCfHNEHvu5lGLfj6nEaI2GIMJwrrlOdUPrNQmCm?=
 =?us-ascii?Q?g6q7vyCwN81WSH7C58hXUDJ/EjRnv+QUUwRfL3LecrdJEW0MRPAhvWbQFYMI?=
 =?us-ascii?Q?0QuOkXsQWU43uW7eXp7CTZkrKvJ8Ja+TkOFnwTf0DN7Az5BVR0iL9ankXNoC?=
 =?us-ascii?Q?8W3zFomcrnRPn+hllT1diJXWIwJn/LmxwOzGtkWMF4UP3s+mLelpA4JLhFsk?=
 =?us-ascii?Q?TrjceMlSw1xoJXNq5osa1FtPmcZcM1aJ9k2whXL0LgEQL4lsM1lYlSQwY4aC?=
 =?us-ascii?Q?/BTh4vzzxPGN15ECt71EA/sH0Sk9Vnzk7UGphpEEEGp9NtTpcF6qnyK4V4Qu?=
 =?us-ascii?Q?pi3p+iwI3KiqS3H0QDOgIDVik+wAnqsEuBbN0namYEqbG6GaDheLXyllK5/A?=
 =?us-ascii?Q?SVy2rC4VG3zuixTV4I41lta2+csCCLy5cUJb7wI6qe+ZzFNsf1qmAseggUqS?=
 =?us-ascii?Q?BpXND3p0ZiDIGF23PJLZQwN1IKnlkd1ZVNX/8KGhbO9h5/79PPTZ2TSrHbYG?=
 =?us-ascii?Q?69pBVtaTvVz2OfaL8tvkZ+0UjttVo63Rhd+KktryIUaCqcHy0EOxdMeyQHnX?=
 =?us-ascii?Q?OWrAQCeivnJ3/SD670qyynO1twt+KRon7z1lO/JDfveKYgTjBgJRqz9ipL4C?=
 =?us-ascii?Q?ZiPx7DKyLjflNdC6SjZoVJW5+vOX/vzLta/umGKyZAGgC6qjMn2E9SOxjj5L?=
 =?us-ascii?Q?6sAoze0fQbtqoTWTp8xZenJ5lPu9M5s1Isv5ruSeNe4+8XMU0JaDBhCbXObV?=
 =?us-ascii?Q?RqZyJuvF3GTnGOADCfd5lLEduNlemWmQhPyRz3jhan9TywN/x0o320Lpx3t0?=
 =?us-ascii?Q?lJvkVoeNM8AG4qmbn6OTcTMMew1+B/qNhzPZj9t/KZJk3j96btZE4Y7GAfVW?=
 =?us-ascii?Q?pkdnrfLqnwWjbM5kANOBn645MiB0f+UDNozeKPKYU3WSBPlCTHRm2BamuBaT?=
 =?us-ascii?Q?W278KaOll/hmbGpxliTjkLcWQRP2Wb70EtNKQPU/is/b3s5jZdolQQC+lZ2d?=
 =?us-ascii?Q?4Nmzc8R02PjlpzJeCgyyWRtuDhUFEd7i2Z/oWcDGbAi6WyHipc/Zw5tSGj8P?=
 =?us-ascii?Q?7p5BmBjzRHmLvYFfNq+1BKtn5tSMtgeZlfujVwIauz2s0um8e/m2VTG19oP3?=
 =?us-ascii?Q?BubZcfP/PvkpR2mAqBSpFxxQ57ExeDg8Ghh11EBjpw73DylqB/Y4xVb09MEB?=
 =?us-ascii?Q?BA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e08f048-5096-4a6c-a08d-08dba4fd8749
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Aug 2023 23:55:00.8708 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MK1Y08FylzkJOUoSwy4Tpwl/V3gUCZfHtKD2RBBXRwosEvdqNOxXRiyLUSwPr/0xd0XqN9gIRd2NM9/krkpmYsTf1JI8g1qHLCGFIXMDOPY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6042
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 36/42] drm/i915/lnl: Add support
 for CDCLK initialization sequence
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

On Wed, Aug 23, 2023 at 10:07:34AM -0700, Lucas De Marchi wrote:
> From: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
> 
> Add CDCLK initialization sequence changes and CDCLK set frequency
> sequence for LNL platform.
> 
> CDCLK frequency change sequence is different for LNL compared to MTL
> when a change in mdclk/cdclk ratio is observed. Below are changes to be
> made:
> 
> 1. In MBUS_CTL register translation Throttle Min value.
> 2. In DBUF_CTL_S* register Min Tracker State Service value.

The previous patch just did these same changes, but made the changes to
the existing functions.  It looks like we wound up with two patches
doing the same thing?

> 
> BSpec: 68846, 68864
> Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 58 ++++++++++++++++++++--
>  drivers/gpu/drm/i915/i915_reg.h            |  2 +
>  2 files changed, 57 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index aa1000db3cb9..4d8b960389ec 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -38,6 +38,7 @@
>  #include "intel_pcode.h"
>  #include "intel_psr.h"
>  #include "skl_watermark.h"
> +#include "skl_watermark_regs.h"
>  #include "vlv_sideband.h"
>  
>  /**
> @@ -1727,7 +1728,12 @@ static void adlp_cdclk_pll_crawl(struct drm_i915_private *dev_priv, int vco)
>  
>  static u32 bxt_cdclk_cd2x_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
>  {
> -	if (DISPLAY_VER(dev_priv) >= 12) {
> +	if (DISPLAY_VER(dev_priv) >= 20) {
> +		if (pipe == INVALID_PIPE)
> +			return LNL_CDCLK_CD2X_PIPE_NONE;
> +		else
> +			return LNL_CDCLK_CD2X_PIPE(pipe);

I don't think this change is correct; see note farther down on the
register definitions.

> +	} else if (DISPLAY_VER(dev_priv) >= 12) {
>  		if (pipe == INVALID_PIPE)
>  			return TGL_CDCLK_CD2X_PIPE_NONE;
>  		else
> @@ -1837,6 +1843,47 @@ static int get_mdclk_cdclk_ratio(struct drm_i915_private *i915,
>  		return 1;
>  }
>  
> +static void lnl_prog_mbus_dbuf_ctrl(struct drm_i915_private *i915,
> +				    const struct intel_cdclk_config *cdclk_config)
> +{
> +	int min_throttle_val;
> +	int min_tracker_state;
> +	enum dbuf_slice slice;
> +	int mdclk_cdclk_div_ratio;
> +	int mbus_join = intel_de_read(i915, MBUS_CTL) & MBUS_JOIN;
> +
> +	mdclk_cdclk_div_ratio = get_mdclk_cdclk_ratio(i915, cdclk_config);
> +
> +	min_throttle_val = MBUS_TRANS_THROTTLE_MIN_SELECT(mdclk_cdclk_div_ratio);
> +
> +	intel_de_rmw(i915, MBUS_CTL, MBUS_TRANS_THROTTLE_MIN_MASK, min_throttle_val);
> +
> +	if (mbus_join)
> +		mdclk_cdclk_div_ratio = (mdclk_cdclk_div_ratio << 1) + 1;
> +
> +	min_tracker_state = DBUF_MIN_TRACKER_STATE_SERVICE(mdclk_cdclk_div_ratio);
> +
> +	for_each_dbuf_slice(i915, slice)
> +		intel_de_rmw(i915, DBUF_CTL_S(slice),
> +			     DBUF_MIN_TRACKER_STATE_SERVICE_MASK,
> +			     min_tracker_state);
> +}
> +
> +static void lnl_cdclk_squash_program(struct drm_i915_private *i915,
> +				     const struct intel_cdclk_config *cdclk_config,
> +				     u16 waveform)
> +{
> +	if (cdclk_config->cdclk < i915->display.cdclk.hw.cdclk)
> +		/* Program mbus_ctrl and dbuf_ctrl registers as Pre hook */
> +		lnl_prog_mbus_dbuf_ctrl(i915, cdclk_config);
> +
> +	dg2_cdclk_squash_program(i915, waveform);
> +
> +	if (cdclk_config->cdclk > i915->display.cdclk.hw.cdclk)
> +		/* Program mbus_ctrl and dbuf_ctrl registers as Post hook */
> +		lnl_prog_mbus_dbuf_ctrl(i915, cdclk_config);
> +}
> +
>  static int cdclk_squash_divider(u16 waveform)
>  {
>  	return hweight16(waveform ?: 0xffff);
> @@ -1938,8 +1985,13 @@ static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  	else
>  		clock = cdclk;
>  
> -	if (HAS_CDCLK_SQUASH(dev_priv))
> -		dg2_cdclk_squash_program(dev_priv, waveform);
> +	if (HAS_CDCLK_SQUASH(dev_priv)) {
> +		if (DISPLAY_VER(dev_priv) >= 20)
> +			lnl_cdclk_squash_program(dev_priv, cdclk_config,
> +						 waveform);
> +		else
> +			dg2_cdclk_squash_program(dev_priv, waveform);
> +	}
>  
>  	val = bxt_cdclk_cd2x_div_sel(dev_priv, clock, vco) |
>  		bxt_cdclk_cd2x_pipe(dev_priv, pipe);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index d5850761a75a..c9639f0f4f49 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -5944,6 +5944,8 @@ enum skl_power_gate {
>  #define  BXT_CDCLK_CD2X_PIPE(pipe)	((pipe) << 20)
>  #define  CDCLK_DIVMUX_CD_OVERRIDE	(1 << 19)
>  #define  BXT_CDCLK_CD2X_PIPE_NONE	BXT_CDCLK_CD2X_PIPE(3)
> +#define  LNL_CDCLK_CD2X_PIPE(pipe)	((pipe) << 19)

This doesn't match what I see on bspec 69090:

Bits 21:19
  000 => Pipe A
  010 => Pipe B
  100 => Pipe C
  110 => Pipe D

So the pipe ID (0-3) should actually be shifted by 20 since bit 19 is
always 0 (except for the "none" case).  I think 


Matt

> +#define  LNL_CDCLK_CD2X_PIPE_NONE	(7 << 19)
>  #define  ICL_CDCLK_CD2X_PIPE(pipe)	(_PICK(pipe, 0, 2, 6) << 19)
>  #define  ICL_CDCLK_CD2X_PIPE_NONE	(7 << 19)
>  #define  TGL_CDCLK_CD2X_PIPE(pipe)	BXT_CDCLK_CD2X_PIPE(pipe)
> -- 
> 2.40.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
