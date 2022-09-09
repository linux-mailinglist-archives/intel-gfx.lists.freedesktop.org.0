Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71B3B5B34F0
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Sep 2022 12:15:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC60110EC5C;
	Fri,  9 Sep 2022 10:15:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15B5C10EC5C
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Sep 2022 10:15:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662718543; x=1694254543;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Rc00/gfKY2ihOkzqP6Ucr7doWHyEpNHCCEUe1YiQP4Y=;
 b=cqKjWDuGIg2tIAq+R8L/AA+SmzpfGExc6nTaah2wTbC/n8V4rjYp2lWX
 vR/e2gm9C5xle4hfvG4z0X/DqcnztWEnbvV31CHZcnYU7b3oTBbhu5S2o
 Gp/LXtgXxO79zG3H/6TwwiYW7PBFu20NdVBozPtDgCsDVoenI2IhB0Kug
 iYCpPgcw+CmPaVWcZY92GSDuLcqFNE9uisyXUXLzM1kCNvIwkIlzzKYiQ
 umDMmpENV2zL8QHtpCtGQ0UF16T1OkIoA+PCJ2HMsj0yGNo1eJdMK+td/
 27UsrrPZzmQs/YEJ6UtCypyTntN2QBPi78jxULFdA5c0cv+X2RU1t/gh0 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="297443955"
X-IronPort-AV: E=Sophos;i="5.93,302,1654585200"; d="scan'208";a="297443955"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 03:15:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,302,1654585200"; d="scan'208";a="592559253"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 09 Sep 2022 03:15:42 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 9 Sep 2022 03:15:41 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 9 Sep 2022 03:15:41 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 9 Sep 2022 03:15:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CqomGsnpg0U3x2BAZkO1ptz3gzkz8OEn8xI/4p00MM1Y9UOFNHDFD/51xBhRAlqZf19Zs4KuMw0WijDbxjCJkGTdoq9k1FSh4DoD0NGs3hSOgeyVThcLXpf7scLtPVEryudaDT+MFC0tTCN2nqmLeFIVWrjPX6zNf+S6DapUP1+IoVN+lbrAcj91rI8wM0zdEXkS/sHj0YjtwFZIqBK7sZ4jiVIt9S/+un/3qarakP5diGik1Lx+cad7IVQs+78YjtFpJVu4PaJ8jCM3WKmryzsMyPfEZHZd3VawqkFniiT1nJYMZ1iqer7iaesr/6M1cHY3mMaihrHCk/lrmTW+WA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AonHgICxqkn9UbduPAz38KPSGXWaHEnxej6V1MBG8xQ=;
 b=Gfq9HtJ3xDNrL3CBB1jVAsnNVEttk4aXOuduPFp2K9Zc9Tky2wQhAmbm2Tgq5LIgx7A8H98W88utvIKu0VRuyeD9XnKGd1fCkyOMJzL3iKiOqEUfTOuAQbGIr9CdeBNMQUzQHJB7d6KfbPwKZgWGEsSiiZuxdyfo93eCnjxvhxCvlSrBxHEiD/cbqUSIV3shkP4s7AJFB3RNYgo7vBGTFFOZ/KtXq8FkptD9ybrS+uiETuoChaYJifBy84WOAc6+MTjmSRPmXyQcnn/VakjslU/8B+1AMvNI/fT0UkP1hsJACldh2woy5AyvG/gmivMyaGYP2a21vycXLyTDoyMfmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DM4PR11MB7301.namprd11.prod.outlook.com (2603:10b6:8:10a::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.18; Fri, 9 Sep
 2022 10:15:39 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7ce8:1e4e:20d4:6bd4]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7ce8:1e4e:20d4:6bd4%9]) with mapi id 15.20.5588.016; Fri, 9 Sep 2022
 10:15:39 +0000
Date: Fri, 9 Sep 2022 06:15:35 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ashutosh Dixit <ashutosh.dixit@intel.com>
Message-ID: <YxsSR0FNNlpaxmPs@intel.com>
References: <cover.1662613377.git.ashutosh.dixit@intel.com>
 <33dce2f6fd36cbaa570265997a5b2f4034fb6688.1662613377.git.ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <33dce2f6fd36cbaa570265997a5b2f4034fb6688.1662613377.git.ashutosh.dixit@intel.com>
X-ClientProxiedBy: BYAPR21CA0008.namprd21.prod.outlook.com
 (2603:10b6:a03:114::18) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7a1d07bb-d790-4188-2915-08da924c3e9d
X-MS-TrafficTypeDiagnostic: DM4PR11MB7301:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Zr1fstwTmMYYbuYJeT6gM7QioihfHAEbnWoTcL7Zdc5IKx1CWsY/RHmH1FCavL8a5DlzS19sAzE/glwtG8dsfFzsBaY5t0ARN+v/yxRQEBZ9XCcrZC/5+tAA7WCPGbkI8ZLYJxe8yluRxbaP3P9ss4qNy/zDy4DG7HiNYd2PSLPDePHT/NVzPmOsQCWgkDRaX/YAqoPeQBlePK5AGLYvXKdjmMcGHzl9Ffl2DzI6eWzEWKucnyn8J/kDYEH+FFeKEhoqJ0oTpg3lEfMuAgi8mcuzxlo8ZGxP0Ug+s4KiPlh5RlnSNaQ0o999FojJgQ9F4x1BQpONiuvIXO/kVD47OHR1CUiF2eSgRmfsrF8F28eaIaKwjV1YA0eVFRrQxcPYokKh/ZACvu6/XCGrKuPe9dBQMf5UizewlAip8FZB76kR3yEv4F5NcetfiTy20lwPHBLfaDl6XdqSfTdiCp85CG1oaeGxvLGQcmuPdr0uWlIfI6oBQpLsVJT4296E/zxjS1RwbZ9R3xGpvaAOg38V3sLPJQQXynrcR0BEfVSbPbOEXlzopvcmxtTomu5sdI+ZrtIXbp98PNHq1ntDBMb/A3gqyWRB/1RD6BRFT+1l8p91SyAe7ah+3G9nuPIjUIQSV1nr5FpaboVf9p/4NjzXNeZv9SO9kBGebNsXbzMLvceDfcS5f8biK7mPlwfknhqITkKWrPxlnKb/Js8v5mF7Hg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(136003)(346002)(39860400002)(396003)(366004)(38100700002)(26005)(6666004)(6862004)(66476007)(6506007)(8936002)(4326008)(66946007)(8676002)(66556008)(6512007)(2906002)(5660300002)(36756003)(44832011)(82960400001)(478600001)(6486002)(316002)(41300700001)(6636002)(86362001)(83380400001)(186003)(37006003)(2616005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?6hz9U/P6wJOM/8AY6VlTanSB0Dx/qn+QO12HiRzI+4STM5N6HHkmC+qSX4/D?=
 =?us-ascii?Q?P6WES9KqyAWfLW2nh2VOTYVQxvpJwbiLhEp4+7tQvPHd0q/rTB0kFWvRMyBF?=
 =?us-ascii?Q?S6B1/dnIdzOUfxEXZCj0CtMDSLfbxW0rOnd/kN+7xrM6V8AHTpKrdzMAVV8A?=
 =?us-ascii?Q?SwCrgN7iH/nxJ6jTQCOdXPRL0skIaupxrdeNpNIJgH0Tz7L290kZOKeoRNQi?=
 =?us-ascii?Q?65EVmzv/VjLJxA8W2a3DKWHEqct57wM75EaNC0FTJYPSXDNSF0UwrPw619bM?=
 =?us-ascii?Q?7KjNTS8abJAmVSjj50UiZxm9huG7qTfAxDPy0l618tzBDIVq5YA/o5ccCeJJ?=
 =?us-ascii?Q?jLaXqZeSdngVONPCTCkCTCh+T/LFzoni7/PFfbsaGbobxVwr6YE0AvUGR9Su?=
 =?us-ascii?Q?EhB7dFmIPDNaIQKh19N6Q7yM348ZelCCwW6csbcDcUD5bSNwBLpX3l+3407e?=
 =?us-ascii?Q?lUkdKXQZQ9vr/mrFnKR7ErfZNkinMLh/cyJF7+9Mlb2H0FTMg+BFRTPhSrG/?=
 =?us-ascii?Q?mGG1/B8YiC5EtOETZrB2hI7WNMTaVtM4np6+b9N5y0ryibFOMABddRLMTQfy?=
 =?us-ascii?Q?kdvZAdGJdZBP6AKvCTSG9J31F4uZmqNNR2k8tHMVkrJ/RuFE2oQnS/chXrxs?=
 =?us-ascii?Q?tHTZ2fUU7Om1/uPN/gxQ2+aPVE4E1vfG4tn3XwZxw9AK9tT17Aig2c1hzV67?=
 =?us-ascii?Q?F4OCuC4A4HnYlL4gcNmIzMapzVaAEOWzTKdgPLe63v5XfVlxMb5Rx3+776pE?=
 =?us-ascii?Q?DTRNISZXJ7kKec2TPqyAwLO/4WwXXwvb1mCBLtsWg72RTWmPAC6vOkps4JZW?=
 =?us-ascii?Q?UbB3z1L5cytLXNEf6qymIKygiPkjy918/2P/PmeYgYw4mEC/2yCEUQSikjUX?=
 =?us-ascii?Q?KyzkLV8yVW0u7BgVF2SuiVG1RCTrZYduZM7nTAWG3Us4+8KcngPaYfQCh4V2?=
 =?us-ascii?Q?saOm0gY6OwVJOXWY2gFD0NPPv4aUvkNPlCq4yUlyAsq20qfuPZlnEJiveRIf?=
 =?us-ascii?Q?ooU3A0JmWsznI9Dc4KxfSqtp1q0ga/HPOR2vsE9SYYpoZKTg+Z2CGdDMb92d?=
 =?us-ascii?Q?DkNgKvJW1ZLvLrior3yDpjOvWBNXcPwn+ZDBabK0t45pPQTIS9NZRowZZMlw?=
 =?us-ascii?Q?4k5WQMYo7h+3EJMUHmlQXkWFA2L2ZaSB86bFpw6e4zlPBgtwiXJWikOEyVLQ?=
 =?us-ascii?Q?27WbJLfBzv84n0qiBbQQpv5uS61gHPgA+Wh+l74qaqExDACSzC+3fdvtTrel?=
 =?us-ascii?Q?C6SuE7UniuLcKF26zckCgKkikrIQ+QvmAlAU7ay+9updeetWK3bLkiPUcgx4?=
 =?us-ascii?Q?OFTjDhy46emekDI8QlzPi2HrMPuSa82nBIz05cck0dYlVZMz4LghXlwopwmG?=
 =?us-ascii?Q?IGqCNwvo52UETZ1o5huhBEvkelhGrO9J4NVSjGgUcPtW7uTiif58deiTD9Wh?=
 =?us-ascii?Q?aPcLElP/z2rTvnzMo7wLshsbYbF/KHrC4ii92kxUDUXy+kUSetnFfyqQAfdj?=
 =?us-ascii?Q?pqgKKQJ/5BXvde66HF0LtNtEn/MPqLnoII8AIKQulRgLrSjAo8Su0mkKIRBo?=
 =?us-ascii?Q?iPhGPVPT9SY9di65QRQkNDtwIuHd3BA5Aj7jxjMSRmXnDjDrsgriy3xHlUf0?=
 =?us-ascii?Q?mA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a1d07bb-d790-4188-2915-08da924c3e9d
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2022 10:15:39.4521 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: W2PTnwWlhwp6XJhdw++sGncpUV4+N1kNmi/wiNP7sf1ULg+sBiF8yXWHzh8JL6akW1Iu/G1l1f41WTt4Dp8Qag==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7301
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 7/8] drm/i915/mtl: PERF_LIMIT_REASONS
 changes for MTL
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

On Wed, Sep 07, 2022 at 10:23:38PM -0700, Ashutosh Dixit wrote:
> PERF_LIMIT_REASONS register for MTL media gt is different now.
> 
> v2: Avoid static inline for intel_gt_perf_limit_reasons_reg() (Jani)
> 
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Badal Nilawar <badal.nilawar@intel.com>
> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt.c            | 6 ++++++
>  drivers/gpu/drm/i915/gt/intel_gt.h            | 1 +
>  drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c | 4 ++--
>  drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c   | 6 +++---
>  drivers/gpu/drm/i915/i915_reg.h               | 1 +
>  5 files changed, 13 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index 070068524a19..602d711d3c9e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -224,6 +224,12 @@ static void gen6_clear_engine_error_register(struct intel_engine_cs *engine)
>  	GEN6_RING_FAULT_REG_POSTING_READ(engine);
>  }
>  
> +i915_reg_t intel_gt_perf_limit_reasons_reg(struct intel_gt *gt)
> +{
> +	return gt->type == GT_MEDIA ?
> +		MTL_MEDIA_PERF_LIMIT_REASONS : GT0_PERF_LIMIT_REASONS;
> +}
> +
>  void
>  intel_gt_clear_error_registers(struct intel_gt *gt,
>  			       intel_engine_mask_t engine_mask)
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
> index c9a359f35d0f..b6509d3e8804 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.h
> @@ -60,6 +60,7 @@ void intel_gt_driver_late_release_all(struct drm_i915_private *i915);
>  int intel_gt_wait_for_idle(struct intel_gt *gt, long timeout);
>  
>  void intel_gt_check_and_clear_faults(struct intel_gt *gt);
> +i915_reg_t intel_gt_perf_limit_reasons_reg(struct intel_gt *gt);
>  void intel_gt_clear_error_registers(struct intel_gt *gt,
>  				    intel_engine_mask_t engine_mask);
>  
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
> index a009cf69103a..68310881a793 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
> @@ -661,7 +661,7 @@ static int perf_limit_reasons_get(void *data, u64 *val)
>  	intel_wakeref_t wakeref;
>  
>  	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
> -		*val = intel_uncore_read(gt->uncore, GT0_PERF_LIMIT_REASONS);
> +		*val = intel_uncore_read(gt->uncore, intel_gt_perf_limit_reasons_reg(gt));
>  
>  	return 0;
>  }
> @@ -677,7 +677,7 @@ static int perf_limit_reasons_clear(void *data, u64 val)
>  	 * "status" bits except that the "log" bits remain set until cleared.
>  	 */
>  	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
> -		intel_uncore_rmw(gt->uncore, GT0_PERF_LIMIT_REASONS,
> +		intel_uncore_rmw(gt->uncore, intel_gt_perf_limit_reasons_reg(gt),
>  				 GT0_PERF_LIMIT_REASONS_LOG_MASK, 0);
>  
>  	return 0;
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
> index e066cc33d9f2..54deae45d81f 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
> @@ -510,7 +510,7 @@ struct intel_gt_bool_throttle_attr {
>  	struct attribute attr;
>  	ssize_t (*show)(struct device *dev, struct device_attribute *attr,
>  			char *buf);
> -	i915_reg_t reg32;
> +	i915_reg_t (*reg32)(struct intel_gt *gt);
>  	u32 mask;
>  };
>  
> @@ -521,7 +521,7 @@ static ssize_t throttle_reason_bool_show(struct device *dev,
>  	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(dev, attr->attr.name);
>  	struct intel_gt_bool_throttle_attr *t_attr =
>  				(struct intel_gt_bool_throttle_attr *) attr;
> -	bool val = rps_read_mask_mmio(&gt->rps, t_attr->reg32, t_attr->mask);
> +	bool val = rps_read_mask_mmio(&gt->rps, t_attr->reg32(gt), t_attr->mask);
>  
>  	return sysfs_emit(buff, "%u\n", val);
>  }
> @@ -530,7 +530,7 @@ static ssize_t throttle_reason_bool_show(struct device *dev,
>  struct intel_gt_bool_throttle_attr attr_##sysfs_func__ = { \
>  	.attr = { .name = __stringify(sysfs_func__), .mode = 0444 }, \
>  	.show = throttle_reason_bool_show, \
> -	.reg32 = GT0_PERF_LIMIT_REASONS, \
> +	.reg32 = intel_gt_perf_limit_reasons_reg, \
>  	.mask = mask__, \
>  }
>  
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 9492f8f43b25..10a89d869b00 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1803,6 +1803,7 @@
>  #define   POWER_LIMIT_1_MASK		REG_BIT(10)
>  #define   POWER_LIMIT_2_MASK		REG_BIT(11)
>  #define   GT0_PERF_LIMIT_REASONS_LOG_MASK REG_GENMASK(31, 16)
> +#define MTL_MEDIA_PERF_LIMIT_REASONS	_MMIO(0x138030)
>  
>  #define CHV_CLK_CTL1			_MMIO(0x101100)
>  #define VLV_CLK_CTL2			_MMIO(0x101104)
> -- 
> 2.34.1
> 
