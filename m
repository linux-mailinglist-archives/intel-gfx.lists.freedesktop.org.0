Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE74D5149B3
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Apr 2022 14:43:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4072D10E925;
	Fri, 29 Apr 2022 12:43:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DA2210E925
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Apr 2022 12:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651236188; x=1682772188;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=UadgwE7VkTRORfhZbLP1FZAjXfJyr+6loEoA1Ix0Pcs=;
 b=Al1kY6RzXw5fFyPBMZ5HCWLfBiC/nfkchZ7wafpXCPFppximG4Fznp4x
 da25ncWg7AtlFqoDpSgOqNRs1J+OcgMu1JrNpoJ7Hz+95AKeb3/XOUUEm
 mUPG9uOnv5dtpVb8uHT7cXF3EQ87/beMhynUU6zJ8kpGcBuf6la5zm6e9
 tiMkTgtb8BGsVQXup2x/MOcY2gep3S6244YcnuqzCE9qa60NjLgDiEarq
 Cu1l5LRuOM3pho50jnfveucDRSmitbof9IlNMHTyw8TJOmGN8UZX/O0Ob
 5R3KpG0ef/yOvMsUQVnMbe0WFhfl5irKtnWcUkE4FsMscof23NnXS8gUl g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10331"; a="266790575"
X-IronPort-AV: E=Sophos;i="5.91,185,1647327600"; d="scan'208";a="266790575"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2022 05:43:07 -0700
X-IronPort-AV: E=Sophos;i="5.91,185,1647327600"; d="scan'208";a="566127282"
Received: from mleon-mobl2.amr.corp.intel.com (HELO intel.com)
 ([10.255.39.124])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2022 05:43:07 -0700
Date: Fri, 29 Apr 2022 08:42:58 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ashutosh Dixit <ashutosh.dixit@intel.com>
Message-ID: <YmvdUg/jm1Ayuvl0@intel.com>
References: <cover.1651192357.git.ashutosh.dixit@intel.com>
 <289816f201c5d40aeb05fb6827e70d4410e4833e.1651192357.git.ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <289816f201c5d40aeb05fb6827e70d4410e4833e.1651192357.git.ashutosh.dixit@intel.com>
Subject: Re: [Intel-gfx] [PATCH 9/9] drm/i915/gt: Expose default value for
 media_freq_factor in per-gt sysfs
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

On Thu, Apr 28, 2022 at 05:39:43PM -0700, Ashutosh Dixit wrote:
> Add the following sysfs file to gt/gtN/.defaults:
> * media_freq_factor
> 
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c | 18 ++++++++++++++++++
>  drivers/gpu/drm/i915/gt/intel_gt_types.h    |  1 +
>  drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c |  2 ++
>  3 files changed, 21 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
> index bbf49613ecd0..3c84731e0eca 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
> @@ -759,6 +759,18 @@ default_boost_freq_mhz_show(struct kobject *kobj, struct kobj_attribute *attr, c
>  static struct kobj_attribute default_boost_freq_mhz =
>  __ATTR(rps_boost_freq_mhz, 0444, default_boost_freq_mhz_show, NULL);
>  
> +static ssize_t
> +default_media_freq_factor_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
> +{
> +	struct intel_gt *gt = kobj_to_gt(kobj->parent);
> +
> +	return sysfs_emit(buf, "%d\n",
> +			  media_ratio_mode_to_factor(gt->rps_defaults.media_ratio_mode));
> +}
> +
> +static struct kobj_attribute default_media_freq_factor =
> +__ATTR(media_freq_factor, 0444, default_media_freq_factor_show, NULL);
> +
>  static const struct attribute * const rps_defaults_attrs[] = {
>  	&default_min_freq_mhz.attr,
>  	&default_max_freq_mhz.attr,
> @@ -819,6 +831,12 @@ void intel_gt_sysfs_pm_init(struct intel_gt *gt, struct kobject *kobj)
>  			drm_warn(&gt->i915->drm,
>  				 "failed to create add gt%u media_perf_power_attrs sysfs (%pe)\n",
>  				 gt->info.id, ERR_PTR(ret));
> +
> +		ret = sysfs_create_file(gt->sysfs_defaults, &default_media_freq_factor.attr);
> +		if (ret)
> +			drm_warn(&gt->i915->drm,
> +				 "failed to add gt%u default_media_freq_factor sysfs (%pe)\n",
> +				 gt->info.id, ERR_PTR(ret));
>  	}
>  
>  	ret = add_rps_defaults(gt);
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> index 8b696669b846..07d368ca78ca 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> @@ -66,6 +66,7 @@ struct intel_rps_defaults {
>  	u32 min_freq;
>  	u32 max_freq;
>  	u32 boost_freq;
> +	u32 media_ratio_mode;
>  };
>  
>  enum intel_submission_method {
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> index cefd864c84eb..047c80838fcd 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> @@ -260,7 +260,9 @@ int intel_guc_slpc_init(struct intel_guc_slpc *slpc)
>  	slpc->boost_freq = 0;
>  	atomic_set(&slpc->num_waiters, 0);
>  	slpc->num_boosts = 0;
> +
>  	slpc->media_ratio_mode = SLPC_MEDIA_RATIO_MODE_DYNAMIC_CONTROL;
> +	slpc_to_gt(slpc)->rps_defaults.media_ratio_mode = slpc->media_ratio_mode;
>  
>  	mutex_init(&slpc->lock);
>  	INIT_WORK(&slpc->boost_work, slpc_boost_work);
> -- 
> 2.34.1
> 
