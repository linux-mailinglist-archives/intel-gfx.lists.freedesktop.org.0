Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BD155ACEDA
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Sep 2022 11:31:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C14F210E22C;
	Mon,  5 Sep 2022 09:31:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AF1010E2D6
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Sep 2022 09:31:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662370263; x=1693906263;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=uQ/zkuicZoivyojX225rQTexQzVpQZVfRWI6qUrLU4I=;
 b=SZue2y9p06KVZo9nd7SW79udQGcRPiDR/ZeJmd8VdbY9lqxpK1fEUBmD
 v8r4NPGTlqiTj87aqSC8EuqsAxyOHOfpPVh5YAAkF6o76yZkCk7e185/V
 faEgx13mvRhnvOMWJhkuJrQiB9WF1oydo7BrGHElFBAi1PJ2iEm6wxAXJ
 sw0PZEl6yMj3C0seYN7Dz+E4fIqKsy7l2cmaszy19x/P0vLpKkGS3PdDw
 tJh53MG4GESrK7DWK7IgVpBg7JdDhDcqm25nau54nBDiNVTtcLe2ytoBQ
 MNuXP4G8+YAP/Tsxn8OLwmCsUWLdYH8ANo1N/cCPvJ5ZynXrPrsOfe+RM w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10460"; a="276743672"
X-IronPort-AV: E=Sophos;i="5.93,290,1654585200"; d="scan'208";a="276743672"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 02:31:02 -0700
X-IronPort-AV: E=Sophos;i="5.93,290,1654585200"; d="scan'208";a="590850510"
Received: from smaciag-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.57.57])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 02:31:01 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ashutosh Dixit <ashutosh.dixit@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220902235302.1112388-6-ashutosh.dixit@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220902235302.1112388-1-ashutosh.dixit@intel.com>
 <20220902235302.1112388-6-ashutosh.dixit@intel.com>
Date: Mon, 05 Sep 2022 12:30:45 +0300
Message-ID: <87h71mb22i.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915/mtl: PERF_LIMIT_REASONS
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 02 Sep 2022, Ashutosh Dixit <ashutosh.dixit@intel.com> wrote:
> PERF_LIMIT_REASONS register for MTL media gt is different now.
>
> Cc: Badal Nilawar <badal.nilawar@intel.com>
> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt.h            | 8 ++++++++
>  drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c | 4 ++--
>  drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c   | 6 +++---
>  drivers/gpu/drm/i915/i915_reg.h               | 1 +
>  4 files changed, 14 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
> index c9a359f35d0f..7286d47113ee 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.h
> @@ -9,6 +9,7 @@
>  #include "intel_engine_types.h"
>  #include "intel_gt_types.h"
>  #include "intel_reset.h"
> +#include "i915_reg.h"
>  
>  struct drm_i915_private;
>  struct drm_printer;
> @@ -86,6 +87,13 @@ static inline bool intel_gt_is_wedged(const struct intel_gt *gt)
>  	return unlikely(test_bit(I915_WEDGED, &gt->reset.flags));
>  }
>  
> +static inline
> +i915_reg_t intel_gt_perf_limit_reasons_reg(struct intel_gt *gt)
> +{
> +	return gt->type == GT_MEDIA ?
> +		MTL_MEDIA_PERF_LIMIT_REASONS : GT0_PERF_LIMIT_REASONS;
> +}

Nowadays, I pretty much think of everything from the standpoint of
setting the example for future changes. Is this what we want people to
copy? Because that's what we do, look for examples for what we want to
achieve, and emulate.

Do we want this to be duplicated for other registers? Choose register
offset based on platform/engine/fusing/whatever parameter? Is this a
register definition that should be in a _regs.h file?

I don't know.

I've also grown to dislike static inlines a lot, and this one's the
worst because it actually can't be static inline because its passed as a
function pointer.


BR,
Jani.



> +
>  int intel_gt_probe_all(struct drm_i915_private *i915);
>  int intel_gt_tiles_init(struct drm_i915_private *i915);
>  void intel_gt_release_all(struct drm_i915_private *i915);
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
> index 5c95cba5e5df..fe0091f953c1 100644
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
> @@ -673,7 +673,7 @@ static int perf_limit_reasons_clear(void *data, u64 val)
>  
>  	/* Clear the upper 16 log bits, the lower 16 status bits are read-only */
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
> index 10126995e1f6..06d555321651 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1803,6 +1803,7 @@
>  #define   POWER_LIMIT_1_MASK		REG_BIT(11)
>  #define   POWER_LIMIT_2_MASK		REG_BIT(12)
>  #define   GT0_PERF_LIMIT_REASONS_LOG_MASK REG_GENMASK(31, 16)
> +#define MTL_MEDIA_PERF_LIMIT_REASONS	_MMIO(0x138030)
>  
>  #define CHV_CLK_CTL1			_MMIO(0x101100)
>  #define VLV_CLK_CTL2			_MMIO(0x101104)

-- 
Jani Nikula, Intel Open Source Graphics Center
