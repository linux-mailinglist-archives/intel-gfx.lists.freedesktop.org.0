Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83E683F96B1
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Aug 2021 11:13:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC1F76E908;
	Fri, 27 Aug 2021 09:13:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E98BF6E908
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Aug 2021 09:13:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10088"; a="303503504"
X-IronPort-AV: E=Sophos;i="5.84,356,1620716400"; d="scan'208";a="303503504"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2021 02:13:26 -0700
X-IronPort-AV: E=Sophos;i="5.84,356,1620716400"; d="scan'208";a="528246819"
Received: from gali-mobl2.gar.corp.intel.com (HELO localhost)
 ([10.251.212.203])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2021 02:13:25 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
In-Reply-To: <YSftSWNn1xGo2zPW@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1629906431.git.jani.nikula@intel.com>
 <da1609dfce4623f8ec86254aea6c2c8679b6a37f.1629906431.git.jani.nikula@intel.com>
 <YSftSWNn1xGo2zPW@intel.com>
Date: Fri, 27 Aug 2021 12:13:22 +0300
Message-ID: <87fsuvckst.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/fdi: move
 intel_update_fdi_pll_freq to intel_fdi.c
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

On Thu, 26 Aug 2021, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Wed, Aug 25, 2021 at 06:47:48PM +0300, Jani Nikula wrote:
>> Move FDI related functions to intel_fdi.c. Rename to have intel_fdi
>> prefix while at it.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks, pushed the series.

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display.c | 18 +-----------------
>>  drivers/gpu/drm/i915/display/intel_fdi.c     | 16 ++++++++++++++++
>>  drivers/gpu/drm/i915/display/intel_fdi.h     |  1 +
>>  3 files changed, 18 insertions(+), 17 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index 794690c0dba5..3a9afe04ce0a 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -11564,22 +11564,6 @@ static void sanitize_watermarks(struct drm_i915_private *dev_priv)
>>  	drm_modeset_acquire_fini(&ctx);
>>  }
>>  
>> -static void intel_update_fdi_pll_freq(struct drm_i915_private *dev_priv)
>> -{
>> -	if (IS_IRONLAKE(dev_priv)) {
>> -		u32 fdi_pll_clk =
>> -			intel_de_read(dev_priv, FDI_PLL_BIOS_0) & FDI_PLL_FB_CLOCK_MASK;
>> -
>> -		dev_priv->fdi_pll_freq = (fdi_pll_clk + 2) * 10000;
>> -	} else if (IS_SANDYBRIDGE(dev_priv) || IS_IVYBRIDGE(dev_priv)) {
>> -		dev_priv->fdi_pll_freq = 270000;
>> -	} else {
>> -		return;
>> -	}
>> -
>> -	drm_dbg(&dev_priv->drm, "FDI PLL freq=%d\n", dev_priv->fdi_pll_freq);
>> -}
>> -
>>  static int intel_initial_commit(struct drm_device *dev)
>>  {
>>  	struct drm_atomic_state *state = NULL;
>> @@ -11833,7 +11817,7 @@ int intel_modeset_init_nogem(struct drm_i915_private *i915)
>>  
>>  	intel_plane_possible_crtcs_init(i915);
>>  	intel_shared_dpll_init(dev);
>> -	intel_update_fdi_pll_freq(i915);
>> +	intel_fdi_pll_freq_update(i915);
>>  
>>  	intel_update_czclk(i915);
>>  	intel_modeset_init_hw(i915);
>> diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
>> index 13f8ba4c9188..88a78dafd54d 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fdi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fdi.c
>> @@ -95,6 +95,22 @@ static int ilk_check_fdi_lanes(struct drm_device *dev, enum pipe pipe,
>>  	}
>>  }
>>  
>> +void intel_fdi_pll_freq_update(struct drm_i915_private *i915)
>> +{
>> +	if (IS_IRONLAKE(i915)) {
>> +		u32 fdi_pll_clk =
>> +			intel_de_read(i915, FDI_PLL_BIOS_0) & FDI_PLL_FB_CLOCK_MASK;
>> +
>> +		i915->fdi_pll_freq = (fdi_pll_clk + 2) * 10000;
>> +	} else if (IS_SANDYBRIDGE(i915) || IS_IVYBRIDGE(i915)) {
>> +		i915->fdi_pll_freq = 270000;
>> +	} else {
>> +		return;
>> +	}
>> +
>> +	drm_dbg(&i915->drm, "FDI PLL freq=%d\n", i915->fdi_pll_freq);
>> +}
>> +
>>  int intel_fdi_link_freq(struct drm_i915_private *i915,
>>  			const struct intel_crtc_state *pipe_config)
>>  {
>> diff --git a/drivers/gpu/drm/i915/display/intel_fdi.h b/drivers/gpu/drm/i915/display/intel_fdi.h
>> index 2c8ffd9ceaed..cda9a32c25ba 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fdi.h
>> +++ b/drivers/gpu/drm/i915/display/intel_fdi.h
>> @@ -23,5 +23,6 @@ void ilk_fdi_pll_enable(const struct intel_crtc_state *crtc_state);
>>  void intel_fdi_init_hook(struct drm_i915_private *dev_priv);
>>  void hsw_fdi_link_train(struct intel_encoder *encoder,
>>  			const struct intel_crtc_state *crtc_state);
>> +void intel_fdi_pll_freq_update(struct drm_i915_private *i915);
>>  
>>  #endif
>> -- 
>> 2.20.1
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center
