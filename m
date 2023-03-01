Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B4E6A6B29
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Mar 2023 11:57:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FD7A10E22E;
	Wed,  1 Mar 2023 10:57:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08B4210E22E
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Mar 2023 10:57:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677668256; x=1709204256;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=9hC/4v+oeTnOAZWAjCWmhfNcWuJPnLXiJM3P8Q0c6rc=;
 b=TGxNkLW7xFMJ+VucbfpVjQhfkeSKcuf9HaJfvO+vIhh5m/YneYcAlv6Q
 Xjyh6hwNbZciUempfJCDhQ5Uq5KI/VUAIgptdO2DiNj4yhW64SRsCjlsK
 EtkXI69zJakV2gw5Obi5OQqFmt1NP+MHVd/U/P8pVyStYgT/Xg0ladXan
 1Ln61oEiRioju/3CDnpY9KC3fO3RbUFrVGJ8Lvxj4EBHAm7H028MWkvF2
 Jcp7OVEf6TYcEcYjW/6tkmO3vYXAj+4J8Ik6DvrEnfp82hs3iSrPLyYmF
 UhzelNyrjHPqjQkqmSb6Z1MR5OUpOBrIxjQB56ZhunwydUQoufonDoVPw A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="336672278"
X-IronPort-AV: E=Sophos;i="5.98,224,1673942400"; d="scan'208";a="336672278"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 02:57:35 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="817517560"
X-IronPort-AV: E=Sophos;i="5.98,224,1673942400"; d="scan'208";a="817517560"
Received: from dsvarnas-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.46.249])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 02:57:33 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: imre.deak@intel.com
In-Reply-To: <Y/8q05ywydKM/7uE@ideak-desk.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230227172521.851935-1-jani.nikula@intel.com>
 <20230227172521.851935-4-jani.nikula@intel.com>
 <Y/8q05ywydKM/7uE@ideak-desk.fi.intel.com>
Date: Wed, 01 Mar 2023 12:57:31 +0200
Message-ID: <87bklcwxgk.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v3 4/4] drm/i915/dmc: allocate dmc structure
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

On Wed, 01 Mar 2023, Imre Deak <imre.deak@intel.com> wrote:
> On Mon, Feb 27, 2023 at 07:25:21PM +0200, Jani Nikula wrote:
>> sizeof(struct intel_dmc) > 1024 bytes, allocated on all platforms as
>> part of struct drm_i915_private, whether they have DMC or not.
>> 
>> Allocate struct intel_dmc dynamically, and hide all the dmc details
>> behind an opaque pointer in intel_dmc.c.
>> 
>> Care must be taken to take into account all cases: DMC not supported on
>> the platform, DMC supported but not initialized, and DMC initialized but
>> not loaded. For the second case, we need to move the wakeref out of
>> struct intel_dmc.
>> 
>> Cc: Imre Deak <imre.deak@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  .../gpu/drm/i915/display/intel_display_core.h |  8 ++-
>>  drivers/gpu/drm/i915/display/intel_dmc.c      | 50 +++++++++++++++++--
>>  drivers/gpu/drm/i915/display/intel_dmc.h      | 34 +------------
>>  .../drm/i915/display/intel_modeset_setup.c    |  1 +
>>  4 files changed, 53 insertions(+), 40 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
>> index 631a7b17899e..fdab7bb93a7d 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>> @@ -19,7 +19,6 @@
>>  #include "intel_cdclk.h"
>>  #include "intel_display_limits.h"
>>  #include "intel_display_power.h"
>> -#include "intel_dmc.h"
>>  #include "intel_dpll_mgr.h"
>>  #include "intel_fbc.h"
>>  #include "intel_global_state.h"
>> @@ -40,6 +39,7 @@ struct intel_cdclk_vals;
>>  struct intel_color_funcs;
>>  struct intel_crtc;
>>  struct intel_crtc_state;
>> +struct intel_dmc;
>>  struct intel_dpll_funcs;
>>  struct intel_dpll_mgr;
>>  struct intel_fbdev;
>> @@ -340,6 +340,11 @@ struct intel_display {
>>  		spinlock_t phy_lock;
>>  	} dkl;
>>  
>> +	struct {
>> +		struct intel_dmc *dmc;
>> +		intel_wakeref_t wakeref;
>> +	} dmc;
>> +
>>  	struct {
>>  		/* VLV/CHV/BXT/GLK DSI MMIO register base address */
>>  		u32 mmio_base;
>> @@ -467,7 +472,6 @@ struct intel_display {
>>  
>>  	/* Grouping using named structs. Keep sorted. */
>>  	struct intel_audio audio;
>> -	struct intel_dmc dmc;
>>  	struct intel_dpll dpll;
>>  	struct intel_fbc *fbc[I915_MAX_FBCS];
>>  	struct intel_frontbuffer_tracking fb_tracking;
>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
>> index 0b54b9b96249..8deebd4b62fb 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>> @@ -38,9 +38,37 @@
>>   * low-power state and comes back to normal.
>>   */
>>  
>> +enum intel_dmc_id {
>> +	DMC_FW_MAIN = 0,
>> +	DMC_FW_PIPEA,
>> +	DMC_FW_PIPEB,
>> +	DMC_FW_PIPEC,
>> +	DMC_FW_PIPED,
>> +	DMC_FW_MAX
>> +};
>> +
>> +struct intel_dmc {
>> +	struct drm_i915_private *i915;
>> +	struct work_struct work;
>> +	const char *fw_path;
>> +	u32 max_fw_size; /* bytes */
>> +	u32 version;
>> +	struct dmc_fw_info {
>> +		u32 mmio_count;
>> +		i915_reg_t mmioaddr[20];
>> +		u32 mmiodata[20];
>> +		u32 dmc_offset;
>> +		u32 start_mmioaddr;
>> +		u32 dmc_fw_size; /*dwords */
>> +		u32 *payload;
>> +		bool present;
>> +	} dmc_info[DMC_FW_MAX];
>> +};
>> +
>> +/* Note: This may be NULL. */
>>  static struct intel_dmc *i915_to_dmc(struct drm_i915_private *i915)
>>  {
>> -	return &i915->display.dmc;
>> +	return i915->display.dmc.dmc;
>>  }
>>  
>>  #define DMC_VERSION(major, minor)	((major) << 16 | (minor))
>> @@ -937,7 +965,10 @@ void intel_dmc_init(struct drm_i915_private *dev_priv)
>>  	if (!HAS_DMC(dev_priv))
>>  		return;
>>  
>> -	dmc = i915_to_dmc(dev_priv);
>> +	dmc = kzalloc(sizeof(*dmc), GFP_KERNEL);
>> +	if (!dmc)
>> +		return;
>
> I missed this in my review: the above implies the same thing as the
> firmware not being loaded for other reasons, so it would still require
> calling intel_dmc_runtime_pm_get() as it's done in those cases.

Aye. Good catch.

>
>> +
>>  	dmc->i915 = dev_priv;
>>  
>>  	INIT_WORK(&dmc->work, dmc_load_work_fn);
>> @@ -991,10 +1022,9 @@ void intel_dmc_init(struct drm_i915_private *dev_priv)
>>  
>>  	if (dev_priv->params.dmc_firmware_path) {
>>  		if (strlen(dev_priv->params.dmc_firmware_path) == 0) {
>> -			dmc->fw_path = NULL;
>>  			drm_info(&dev_priv->drm,
>>  				 "Disabling DMC firmware and runtime PM\n");
>> -			return;
>> +			goto out;
>>  		}
>>  
>>  		dmc->fw_path = dev_priv->params.dmc_firmware_path;
>> @@ -1003,11 +1033,18 @@ void intel_dmc_init(struct drm_i915_private *dev_priv)
>>  	if (!dmc->fw_path) {
>>  		drm_dbg_kms(&dev_priv->drm,
>>  			    "No known DMC firmware for platform, disabling runtime PM\n");
>> -		return;
>> +		goto out;
>>  	}
>>  
>> +	dev_priv->display.dmc.dmc = dmc;
>> +
>>  	drm_dbg_kms(&dev_priv->drm, "Loading %s\n", dmc->fw_path);
>>  	schedule_work(&dmc->work);
>> +
>> +	return;
>> +
>> +out:
>> +	kfree(dmc);
>>  }
>>  
>>  /**
>> @@ -1074,6 +1111,9 @@ void intel_dmc_fini(struct drm_i915_private *dev_priv)
>>  	if (dmc) {
>>  		for_each_dmc_id(dmc_id)
>>  			kfree(dmc->dmc_info[dmc_id].payload);
>> +
>> +		kfree(dmc);
>> +		dev_priv->display.dmc.dmc = NULL;
>>  	}
>>  }
>>  
>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
>> index b74635497aa7..fd607afff2ef 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dmc.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dmc.h
>> @@ -6,44 +6,12 @@
>>  #ifndef __INTEL_DMC_H__
>>  #define __INTEL_DMC_H__
>>  
>> -#include "i915_reg_defs.h"
>> -#include "intel_wakeref.h"
>> -#include <linux/workqueue.h>
>> +#include <linux/types.h>
>>  
>>  struct drm_i915_error_state_buf;
>>  struct drm_i915_private;
>> -
>>  enum pipe;
>>  
>> -enum intel_dmc_id {
>> -	DMC_FW_MAIN = 0,
>> -	DMC_FW_PIPEA,
>> -	DMC_FW_PIPEB,
>> -	DMC_FW_PIPEC,
>> -	DMC_FW_PIPED,
>> -	DMC_FW_MAX
>> -};
>> -
>> -struct intel_dmc {
>> -	struct drm_i915_private *i915;
>> -	struct work_struct work;
>> -	const char *fw_path;
>> -	u32 max_fw_size; /* bytes */
>> -	u32 version;
>> -	struct dmc_fw_info {
>> -		u32 mmio_count;
>> -		i915_reg_t mmioaddr[20];
>> -		u32 mmiodata[20];
>> -		u32 dmc_offset;
>> -		u32 start_mmioaddr;
>> -		u32 dmc_fw_size; /*dwords */
>> -		u32 *payload;
>> -		bool present;
>> -	} dmc_info[DMC_FW_MAX];
>> -
>> -	intel_wakeref_t wakeref;
>> -};
>> -
>>  void intel_dmc_init(struct drm_i915_private *i915);
>>  void intel_dmc_load_program(struct drm_i915_private *i915);
>>  void intel_dmc_disable_program(struct drm_i915_private *i915);
>> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
>> index 60f71e6f0491..0f7b414eb472 100644
>> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
>> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
>> @@ -22,6 +22,7 @@
>>  #include "intel_display.h"
>>  #include "intel_display_power.h"
>>  #include "intel_display_types.h"
>> +#include "intel_dmc.h"
>>  #include "intel_fifo_underrun.h"
>>  #include "intel_modeset_setup.h"
>>  #include "intel_pch_display.h"
>> -- 
>> 2.39.1
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center
