Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C24A6A4812
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Feb 2023 18:33:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 364AD10E2D4;
	Mon, 27 Feb 2023 17:33:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 872FC10E2D4
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Feb 2023 17:33:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677519232; x=1709055232;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Ln3h3l7ouyek/rwxNS4v9RhI9SFu5wOUOdrse6p+mp4=;
 b=PK4leaWJIu5sIHWzCAOuk8i4K61mfQWCtKedjFaDRsUuC5jnF81EQL3P
 0whUyq5ZQpppEH17q4TSYjzo3b9LJFBG6UY8Z67qNHcXpTzxaaa51eiVH
 5xxWUPsodyfgG9/6NF6ZPTjB7EfIIdhsPt07ncvMiKFzWeknQWnpGaSYz
 tJ0BVYSiLct2Lg4HsDaPvruR6Kxmq3bR4ZfH7C0DuGHcewXjXk3Jtlen0
 IeSvZXb/bBlnYYibdmX0Bp3nkS28yjG2tP2S3rGa35ztGmI9Rhl04fIb+
 4crmixr/3uu6BW6Nr0J40dKJRAFgS7xqw4JWvxxbJq23gbyDTFGJzllE7 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="336201152"
X-IronPort-AV: E=Sophos;i="5.98,219,1673942400"; d="scan'208";a="336201152"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 09:29:06 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="623682900"
X-IronPort-AV: E=Sophos;i="5.98,219,1673942400"; d="scan'208";a="623682900"
Received: from jkaisrli-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.56.158])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 09:29:05 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: imre.deak@intel.com
In-Reply-To: <Y+9VJ4WjNGYsVPTL@ideak-desk.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230216161739.668294-1-jani.nikula@intel.com>
 <20230216161739.668294-3-jani.nikula@intel.com>
 <Y+6OCCJ4tzIIdSIV@ideak-desk.fi.intel.com> <874jrkzjz5.fsf@intel.com>
 <Y+9VJ4WjNGYsVPTL@ideak-desk.fi.intel.com>
Date: Mon, 27 Feb 2023 19:29:02 +0200
Message-ID: <87wn43yq3l.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2 3/3] drm/i915/dmc: allocate dmc structure
 dynamically
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

On Fri, 17 Feb 2023, Imre Deak <imre.deak@intel.com> wrote:
> On Fri, Feb 17, 2023 at 12:04:14PM +0200, Jani Nikula wrote:
>> On Thu, 16 Feb 2023, Imre Deak <imre.deak@intel.com> wrote:
>> > On Thu, Feb 16, 2023 at 06:17:39PM +0200, Jani Nikula wrote:
>> >> sizeof(struct intel_dmc) > 1024 bytes, allocated on all platforms as
>> >> part of struct drm_i915_private, whether they have DMC or not.
>> >> 
>> >> Allocate struct intel_dmc dynamically, and hide all the dmc details
>> >> behind an opaque pointer in intel_dmc.c.
>> >> 
>> >> Care must be taken to take into account all cases: DMC not supported on
>> >> the platform, DMC supported but not initialized, and DMC initialized but
>> >> not loaded. For the second case, we need to move the wakeref out of
>> >> struct intel_dmc.
>> >> 
>> >> Cc: Imre Deak <imre.deak@intel.com>
>> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> >> ---
>> >>  .../gpu/drm/i915/display/intel_display_core.h |  8 ++-
>> >>  drivers/gpu/drm/i915/display/intel_dmc.c      | 50 +++++++++++++++++--
>> >>  drivers/gpu/drm/i915/display/intel_dmc.h      | 34 +------------
>> >>  .../drm/i915/display/intel_modeset_setup.c    |  1 +
>> >>  4 files changed, 53 insertions(+), 40 deletions(-)
>> >> 
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
>> >> index b870f7f47f2b..ff51149c5fcb 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
>> >> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>> >> @@ -19,7 +19,6 @@
>> >>  #include "intel_cdclk.h"
>> >>  #include "intel_display_limits.h"
>> >>  #include "intel_display_power.h"
>> >> -#include "intel_dmc.h"
>> >>  #include "intel_dpll_mgr.h"
>> >>  #include "intel_fbc.h"
>> >>  #include "intel_global_state.h"
>> >> @@ -40,6 +39,7 @@ struct intel_cdclk_vals;
>> >>  struct intel_color_funcs;
>> >>  struct intel_crtc;
>> >>  struct intel_crtc_state;
>> >> +struct intel_dmc;
>> >>  struct intel_dpll_funcs;
>> >>  struct intel_dpll_mgr;
>> >>  struct intel_fbdev;
>> >> @@ -340,6 +340,11 @@ struct intel_display {
>> >>  		spinlock_t phy_lock;
>> >>  	} dkl;
>> >>  
>> >> +	struct {
>> >> +		struct intel_dmc *dmc;
>> >> +		intel_wakeref_t wakeref;
>> >> +	} dmc;
>> >> +
>> >>  	struct {
>> >>  		/* VLV/CHV/BXT/GLK DSI MMIO register base address */
>> >>  		u32 mmio_base;
>> >> @@ -467,7 +472,6 @@ struct intel_display {
>> >>  
>> >>  	/* Grouping using named structs. Keep sorted. */
>> >>  	struct intel_audio audio;
>> >> -	struct intel_dmc dmc;
>> >>  	struct intel_dpll dpll;
>> >>  	struct intel_fbc *fbc[I915_MAX_FBCS];
>> >>  	struct intel_frontbuffer_tracking fb_tracking;
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
>> >> index 1d156ac2eb4c..8428d08e0c3d 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
>> >> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>> >> @@ -38,9 +38,37 @@
>> >>   * low-power state and comes back to normal.
>> >>   */
>> >>  
>> >> +enum intel_dmc_id {
>> >> +	DMC_FW_MAIN = 0,
>> >> +	DMC_FW_PIPEA,
>> >> +	DMC_FW_PIPEB,
>> >> +	DMC_FW_PIPEC,
>> >> +	DMC_FW_PIPED,
>> >> +	DMC_FW_MAX
>> >> +};
>> >> +
>> >> +struct intel_dmc {
>> >> +	struct drm_i915_private *i915;
>> >> +	struct work_struct work;
>> >> +	const char *fw_path;
>> >> +	u32 max_fw_size; /* bytes */
>> >> +	u32 version;
>> >> +	struct dmc_fw_info {
>> >> +		u32 mmio_count;
>> >> +		i915_reg_t mmioaddr[20];
>> >> +		u32 mmiodata[20];
>> >> +		u32 dmc_offset;
>> >> +		u32 start_mmioaddr;
>> >> +		u32 dmc_fw_size; /*dwords */
>> >> +		u32 *payload;
>> >> +		bool present;
>> >> +	} dmc_info[DMC_FW_MAX];
>> >> +};
>> >> +
>> >> +/* Note: This may be NULL. */
>> >>  static struct intel_dmc *i915_to_dmc(struct drm_i915_private *i915)
>> >>  {
>> >> -	return &i915->display.dmc;
>> >> +	return i915->display.dmc.dmc;
>> >>  }
>> >>  
>> >>  #define DMC_VERSION(major, minor)	((major) << 16 | (minor))
>> >> @@ -937,7 +965,10 @@ void intel_dmc_init(struct drm_i915_private *dev_priv)
>> >>  	if (!HAS_DMC(dev_priv))
>> >>  		return;
>> >>  
>> >> -	dmc = i915_to_dmc(dev_priv);
>> >> +	dmc = kzalloc(sizeof(*dmc), GFP_KERNEL);
>> >> +	if (!dmc)
>> >> +		return;
>> >
>> > Couldn't driver loading fail in this case instead (simplifying the
>> > dmc==NULL checks elsewhere)?
>> 
>> We could fail driver load, yes, but it still wouldn't simplify the NULL
>> checks because you could use i915.dmc_firmware_path="" to disable the
>> firmware, and what's the point in keeping the 1k memory allocated in
>> that case?
>
> Right, only noticed the same later. But that's only a debug feature so
> could be acceptable trade-off for simplicity imo; also the supported but
> non-initialized state wouldn't be needed then either.
>
> It's not a big deal and the check is local to intel_dmc.c, so either way
> on the patchset:
> Reviewed-by: Imre Deak <imre.deak@intel.com>
>
> (Querying the DMC FW presence in IGT needs to be fixed before merging.)

The IGT part seemed harder to fix than just preserving the debugfs
output for dmc == NULL. v3 at:

https://patchwork.freedesktop.org/series/114431/

>
>> BR,
>> Jani.
>> 
>> 
>> >
>> >> +
>> >>  	dmc->i915 = dev_priv;
>> >>  
>> >>  	INIT_WORK(&dmc->work, dmc_load_work_fn);
>> >> @@ -991,10 +1022,9 @@ void intel_dmc_init(struct drm_i915_private *dev_priv)
>> >>  
>> >>  	if (dev_priv->params.dmc_firmware_path) {
>> >>  		if (strlen(dev_priv->params.dmc_firmware_path) == 0) {
>> >> -			dmc->fw_path = NULL;
>> >>  			drm_info(&dev_priv->drm,
>> >>  				 "Disabling DMC firmware and runtime PM\n");
>> >> -			return;
>> >> +			goto out;
>> >>  		}
>> >>  
>> >>  		dmc->fw_path = dev_priv->params.dmc_firmware_path;
>> >> @@ -1003,11 +1033,18 @@ void intel_dmc_init(struct drm_i915_private *dev_priv)
>> >>  	if (!dmc->fw_path) {
>> >>  		drm_dbg_kms(&dev_priv->drm,
>> >>  			    "No known DMC firmware for platform, disabling runtime PM\n");
>> >> -		return;
>> >> +		goto out;
>> >>  	}
>> >>  
>> >> +	dev_priv->display.dmc.dmc = dmc;
>> >> +
>> >>  	drm_dbg_kms(&dev_priv->drm, "Loading %s\n", dmc->fw_path);
>> >>  	schedule_work(&dmc->work);
>> >> +
>> >> +	return;
>> >> +
>> >> +out:
>> >> +	kfree(dmc);
>> >>  }
>> >>  
>> >>  /**
>> >> @@ -1074,6 +1111,9 @@ void intel_dmc_fini(struct drm_i915_private *dev_priv)
>> >>  	if (dmc) {
>> >>  		for_each_dmc_id(dmc_id)
>> >>  			kfree(dmc->dmc_info[dmc_id].payload);
>> >> +
>> >> +		kfree(dmc);
>> >> +		dev_priv->display.dmc.dmc = NULL;
>> >>  	}
>> >>  }
>> >>  
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
>> >> index b74635497aa7..fd607afff2ef 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_dmc.h
>> >> +++ b/drivers/gpu/drm/i915/display/intel_dmc.h
>> >> @@ -6,44 +6,12 @@
>> >>  #ifndef __INTEL_DMC_H__
>> >>  #define __INTEL_DMC_H__
>> >>  
>> >> -#include "i915_reg_defs.h"
>> >> -#include "intel_wakeref.h"
>> >> -#include <linux/workqueue.h>
>> >> +#include <linux/types.h>
>> >>  
>> >>  struct drm_i915_error_state_buf;
>> >>  struct drm_i915_private;
>> >> -
>> >>  enum pipe;
>> >>  
>> >> -enum intel_dmc_id {
>> >> -	DMC_FW_MAIN = 0,
>> >> -	DMC_FW_PIPEA,
>> >> -	DMC_FW_PIPEB,
>> >> -	DMC_FW_PIPEC,
>> >> -	DMC_FW_PIPED,
>> >> -	DMC_FW_MAX
>> >> -};
>> >> -
>> >> -struct intel_dmc {
>> >> -	struct drm_i915_private *i915;
>> >> -	struct work_struct work;
>> >> -	const char *fw_path;
>> >> -	u32 max_fw_size; /* bytes */
>> >> -	u32 version;
>> >> -	struct dmc_fw_info {
>> >> -		u32 mmio_count;
>> >> -		i915_reg_t mmioaddr[20];
>> >> -		u32 mmiodata[20];
>> >> -		u32 dmc_offset;
>> >> -		u32 start_mmioaddr;
>> >> -		u32 dmc_fw_size; /*dwords */
>> >> -		u32 *payload;
>> >> -		bool present;
>> >> -	} dmc_info[DMC_FW_MAX];
>> >> -
>> >> -	intel_wakeref_t wakeref;
>> >> -};
>> >> -
>> >>  void intel_dmc_init(struct drm_i915_private *i915);
>> >>  void intel_dmc_load_program(struct drm_i915_private *i915);
>> >>  void intel_dmc_disable_program(struct drm_i915_private *i915);
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
>> >> index 5359b9663a07..42bfd56fcbe4 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
>> >> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
>> >> @@ -22,6 +22,7 @@
>> >>  #include "intel_display.h"
>> >>  #include "intel_display_power.h"
>> >>  #include "intel_display_types.h"
>> >> +#include "intel_dmc.h"
>> >>  #include "intel_modeset_setup.h"
>> >>  #include "intel_pch_display.h"
>> >>  #include "intel_pm.h"
>> >> -- 
>> >> 2.34.1
>> >> 
>> 
>> -- 
>> Jani Nikula, Intel Open Source Graphics Center

-- 
Jani Nikula, Intel Open Source Graphics Center
