Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A763B3F83FB
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Aug 2021 10:55:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C67016E566;
	Thu, 26 Aug 2021 08:55:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4197B6E563;
 Thu, 26 Aug 2021 08:55:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10087"; a="214575359"
X-IronPort-AV: E=Sophos;i="5.84,353,1620716400"; d="scan'208";a="214575359"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2021 01:55:29 -0700
X-IronPort-AV: E=Sophos;i="5.84,353,1620716400"; d="scan'208";a="527761366"
Received: from jwhogabo-mobl2.amr.corp.intel.com (HELO localhost)
 ([10.249.45.163])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2021 01:55:27 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matthew Brost <matthew.brost@intel.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: daniele.ceraolospurio@intel.com, john.c.harrison@intel.com
In-Reply-To: <20210727002348.97202-22-matthew.brost@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210727002348.97202-1-matthew.brost@intel.com>
 <20210727002348.97202-22-matthew.brost@intel.com>
Date: Thu, 26 Aug 2021 11:55:23 +0300
Message-ID: <87tujcd1qc.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 21/33] drm/i915/guc: Connect reset modparam
 updates to GuC policy flags
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

On Mon, 26 Jul 2021, Matthew Brost <matthew.brost@intel.com> wrote:
> From: John Harrison <John.C.Harrison@Intel.com>
>
> Changing the reset module parameter has no effect on a running GuC.
> The corresponding entry in the ADS must be updated and then the GuC
> informed via a Host2GuC message.
>
> The new debugfs interface to module parameters allows this to happen.
> However, connecting the parameter data address back to anything useful
> is messy. One option would be to pass a new private data structure
> address through instead of just the parameter pointer. However, that
> means having a new (and different) data structure for each parameter
> and a new (and different) write function for each parameter. This
> method keeps everything generic by instead using a string lookup on
> the directory entry name.
>
> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> Reviewed-by: Matthew Brost <matthew.brost@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c |  2 +-
>  drivers/gpu/drm/i915/i915_debugfs_params.c | 32 ++++++++++++++++++++++
>  2 files changed, 33 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> index 60b73625f686..7797766c56a9 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> @@ -99,7 +99,7 @@ static int guc_action_policies_update(struct intel_guc *guc, u32 policy_offset)
>  		policy_offset
>  	};
>  
> -	return intel_guc_send(guc, action, ARRAY_SIZE(action));
> +	return intel_guc_send_busy_loop(guc, action, ARRAY_SIZE(action), 0, true);
>  }
>  
>  int intel_guc_global_policies_update(struct intel_guc *guc)
> diff --git a/drivers/gpu/drm/i915/i915_debugfs_params.c b/drivers/gpu/drm/i915/i915_debugfs_params.c
> index 4e2b077692cb..20424275d41e 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs_params.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs_params.c
> @@ -6,9 +6,21 @@
>  #include <linux/kernel.h>
>  
>  #include "i915_debugfs_params.h"
> +#include "gt/intel_gt.h"
> +#include "gt/uc/intel_guc.h"
>  #include "i915_drv.h"
>  #include "i915_params.h"
>  
> +#define MATCH_DEBUGFS_NODE_NAME(_file, _name) \
> +	(strcmp((_file)->f_path.dentry->d_name.name, (_name)) == 0)
> +
> +#define GET_I915(i915, name, ptr)	\
> +	do {	\
> +		struct i915_params *params;	\
> +		params = container_of(((void *)(ptr)), typeof(*params), name);	\
> +		(i915) = container_of(params, typeof(*(i915)), params);	\
> +	} while (0)
> +
>  /* int param */
>  static int i915_param_int_show(struct seq_file *m, void *data)
>  {
> @@ -24,6 +36,16 @@ static int i915_param_int_open(struct inode *inode, struct file *file)
>  	return single_open(file, i915_param_int_show, inode->i_private);
>  }
>  
> +static int notify_guc(struct drm_i915_private *i915)
> +{
> +	int ret = 0;
> +
> +	if (intel_uc_uses_guc_submission(&i915->gt.uc))
> +		ret = intel_guc_global_policies_update(&i915->gt.uc.guc);
> +
> +	return ret;
> +}
> +
>  static ssize_t i915_param_int_write(struct file *file,
>  				    const char __user *ubuf, size_t len,
>  				    loff_t *offp)
> @@ -81,8 +103,10 @@ static ssize_t i915_param_uint_write(struct file *file,
>  				     const char __user *ubuf, size_t len,
>  				     loff_t *offp)
>  {
> +	struct drm_i915_private *i915;
>  	struct seq_file *m = file->private_data;
>  	unsigned int *value = m->private;
> +	unsigned int old = *value;
>  	int ret;
>  
>  	ret = kstrtouint_from_user(ubuf, len, 0, value);
> @@ -95,6 +119,14 @@ static ssize_t i915_param_uint_write(struct file *file,
>  			*value = b;
>  	}
>  
> +	if (!ret && MATCH_DEBUGFS_NODE_NAME(file, "reset")) {
> +		GET_I915(i915, reset, value);
> +
> +		ret = notify_guc(i915);
> +		if (ret)
> +			*value = old;
> +	}

Only stumbled on this now. It was never the idea to add this kind of
checks in the middle of the generic functions. What if the type was bool
or ulong, where the generic function is a debugfs helper outside of
i915?

See the comment in i915_debugfs_params() that I added there exactly
because I envisioned someone was going to need this facility:

	/*
	 * Note: We could create files for params needing special handling
	 * here. Set mode in params to 0 to skip the generic create file, or
	 * just let the generic create file fail silently with -EEXIST.
	 */

The idea was that you create your own handlers for params that need
special handling.


BR,
Jani.


> +
>  	return ret ?: len;
>  }

-- 
Jani Nikula, Intel Open Source Graphics Center
