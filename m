Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 092D41D2E02
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2020 13:17:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EA436E31C;
	Thu, 14 May 2020 11:17:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA7A36E31C
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 May 2020 11:17:09 +0000 (UTC)
IronPort-SDR: MMpwmrB1EdCwKGSo/0oApEH3xyumlO2aroeHwmKH/rBqfNGvmPRGLYEkeNEN2PzRxn0RCeGZuS
 3BqNSWsh7UAg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2020 04:17:08 -0700
IronPort-SDR: 9paWRgw/+TJIYcdsoxmgyPTa7eg4ggEToxWzJynDL0PARKWgiciOiTUEXVpHcHkOe9S+P9wVJr
 zJrd/4nLYbkA==
X-IronPort-AV: E=Sophos;i="5.73,391,1583222400"; 
 d="scan'208,217";a="437868484"
Received: from amanna-mobl1.gar.corp.intel.com (HELO [10.213.82.17])
 ([10.213.82.17])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2020 04:16:44 -0700
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20200514075722.7941-1-animesh.manna@intel.com>
 <87r1vm50sy.fsf@intel.com>
From: "Manna, Animesh" <animesh.manna@intel.com>
Message-ID: <40ed41bd-8c5f-31b9-6ecc-053a7b0ae73d@intel.com>
Date: Thu, 14 May 2020 16:46:38 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <87r1vm50sy.fsf@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v6] drm/i915/dsb: Pre allocate and late
 cleanup of cmd buffer
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: multipart/mixed; boundary="===============0433950220=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--===============0433950220==
Content-Type: multipart/alternative;
 boundary="------------D3172ACF2CB43AB7A22A20AE"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------D3172ACF2CB43AB7A22A20AE
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Thanks Jani for review, added the changes in next version.


Regards,
Animesh

On 14-05-2020 14:51, Jani Nikula wrote:
> On Thu, 14 May 2020, Animesh Manna <animesh.manna@intel.com> wrote:
>> Pre-allocate command buffer in atomic_commit using intel_dsb_prepare
>> function which also includes pinning and map in cpu domain.
>>
>> No functional change is dsb write/commit functions.
>>
>> Now dsb get/put function is removed and ref-count mechanism is
>> not needed. Below dsb api added to do respective job mentioned
>> below.
>>
>> intel_dsb_prepare - Allocate, pin and map the buffer.
>> intel_dsb_cleanup - Unpin and release the gem object.
>>
>> RFC: Initial patch for design review.
>> v2: included _init() part in _prepare(). [Daniel, Ville]
>> v3: dsb_cleanup called after cleanup_planes. [Daniel]
>> v4: dsb structure is moved to intel_crtc_state from intel_crtc. [Maarten]
>> v5: dsb get/put/ref-count mechanism removed. [Maarten]
>> v6: Based on review feedback following changes are added,
>> - replaced intel_dsb structure by pointer in intel_crtc_state. [Maarten]
>> - passing intel_crtc_state to dsp-api to simplify the code. [Maarten]
>> - few dsb functions prototype modified to simplify code.
>>
>> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
>> Cc: Jani Nikula <jani.nikula@intel.com>
>> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
>> Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>
>> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_atomic.c   |   3 +
>>   drivers/gpu/drm/i915/display/intel_color.c    |  51 ++--
>>   drivers/gpu/drm/i915/display/intel_display.c  |  59 ++++-
>>   .../drm/i915/display/intel_display_types.h    |   6 +-
>>   drivers/gpu/drm/i915/display/intel_dsb.c      | 250 ++++++++----------
>>   drivers/gpu/drm/i915/display/intel_dsb.h      |  17 +-
>>   6 files changed, 202 insertions(+), 184 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
>> index d043057d2fa0..3cb866f22e74 100644
>> --- a/drivers/gpu/drm/i915/display/intel_atomic.c
>> +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
>> @@ -252,6 +252,7 @@ intel_crtc_duplicate_state(struct drm_crtc *crtc)
>>   	crtc_state->wm.need_postvbl_update = false;
>>   	crtc_state->fb_bits = 0;
>>   	crtc_state->update_planes = 0;
>> +	crtc_state->dsb = NULL;
>>   
>>   	return &crtc_state->uapi;
>>   }
>> @@ -292,6 +293,8 @@ intel_crtc_destroy_state(struct drm_crtc *crtc,
>>   {
>>   	struct intel_crtc_state *crtc_state = to_intel_crtc_state(state);
>>   
>> +	drm_WARN_ON(crtc->dev, crtc_state->dsb);
>> +
>>   	__drm_atomic_helper_crtc_destroy_state(&crtc_state->uapi);
>>   	intel_crtc_free_hw_state(crtc_state);
>>   	kfree(crtc_state);
>> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
>> index 98ece9cd7cdd..bc0934689505 100644
>> --- a/drivers/gpu/drm/i915/display/intel_color.c
>> +++ b/drivers/gpu/drm/i915/display/intel_color.c
>> @@ -717,13 +717,14 @@ static void bdw_load_lut_10(struct intel_crtc *crtc,
>>   static void ivb_load_lut_ext_max(struct intel_crtc *crtc)
>>   {
>>   	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>> -	struct intel_dsb *dsb = intel_dsb_get(crtc);
>> +	struct intel_crtc_state *crtc_state =
>> +		to_intel_crtc_state(crtc->base.state);
>>   	enum pipe pipe = crtc->pipe;
>>   
>>   	/* Program the max register to clamp values > 1.0. */
>> -	intel_dsb_reg_write(dsb, PREC_PAL_EXT_GC_MAX(pipe, 0), 1 << 16);
>> -	intel_dsb_reg_write(dsb, PREC_PAL_EXT_GC_MAX(pipe, 1), 1 << 16);
>> -	intel_dsb_reg_write(dsb, PREC_PAL_EXT_GC_MAX(pipe, 2), 1 << 16);
>> +	intel_dsb_reg_write(crtc_state, PREC_PAL_EXT_GC_MAX(pipe, 0), 1 << 16);
>> +	intel_dsb_reg_write(crtc_state, PREC_PAL_EXT_GC_MAX(pipe, 1), 1 << 16);
>> +	intel_dsb_reg_write(crtc_state, PREC_PAL_EXT_GC_MAX(pipe, 2), 1 << 16);
>>   
>>   	/*
>>   	 * Program the gc max 2 register to clamp values > 1.0.
>> @@ -731,15 +732,13 @@ static void ivb_load_lut_ext_max(struct intel_crtc *crtc)
>>   	 * from 3.0 to 7.0
>>   	 */
>>   	if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv)) {
>> -		intel_dsb_reg_write(dsb, PREC_PAL_EXT2_GC_MAX(pipe, 0),
>> +		intel_dsb_reg_write(crtc_state, PREC_PAL_EXT2_GC_MAX(pipe, 0),
>>   				    1 << 16);
>> -		intel_dsb_reg_write(dsb, PREC_PAL_EXT2_GC_MAX(pipe, 1),
>> +		intel_dsb_reg_write(crtc_state, PREC_PAL_EXT2_GC_MAX(pipe, 1),
>>   				    1 << 16);
>> -		intel_dsb_reg_write(dsb, PREC_PAL_EXT2_GC_MAX(pipe, 2),
>> +		intel_dsb_reg_write(crtc_state, PREC_PAL_EXT2_GC_MAX(pipe, 2),
>>   				    1 << 16);
>>   	}
>> -
>> -	intel_dsb_put(dsb);
>>   }
>>   
>>   static void ivb_load_luts(const struct intel_crtc_state *crtc_state)
>> @@ -900,14 +899,12 @@ icl_load_gcmax(const struct intel_crtc_state *crtc_state,
>>   	       const struct drm_color_lut *color)
>>   {
>>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>> -	struct intel_dsb *dsb = intel_dsb_get(crtc);
>>   	enum pipe pipe = crtc->pipe;
>>   
>>   	/* FIXME LUT entries are 16 bit only, so we can prog 0xFFFF max */
>> -	intel_dsb_reg_write(dsb, PREC_PAL_GC_MAX(pipe, 0), color->red);
>> -	intel_dsb_reg_write(dsb, PREC_PAL_GC_MAX(pipe, 1), color->green);
>> -	intel_dsb_reg_write(dsb, PREC_PAL_GC_MAX(pipe, 2), color->blue);
>> -	intel_dsb_put(dsb);
>> +	intel_dsb_reg_write(crtc_state, PREC_PAL_GC_MAX(pipe, 0), color->red);
>> +	intel_dsb_reg_write(crtc_state, PREC_PAL_GC_MAX(pipe, 1), color->green);
>> +	intel_dsb_reg_write(crtc_state, PREC_PAL_GC_MAX(pipe, 2), color->blue);
>>   }
>>   
>>   static void
>> @@ -916,7 +913,6 @@ icl_program_gamma_superfine_segment(const struct intel_crtc_state *crtc_state)
>>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>   	const struct drm_property_blob *blob = crtc_state->hw.gamma_lut;
>>   	const struct drm_color_lut *lut = blob->data;
>> -	struct intel_dsb *dsb = intel_dsb_get(crtc);
>>   	enum pipe pipe = crtc->pipe;
>>   	int i;
>>   
>> @@ -927,19 +923,17 @@ icl_program_gamma_superfine_segment(const struct intel_crtc_state *crtc_state)
>>   	 * 9 entries, corresponding to values 0, 1/(8 * 128 * 256),
>>   	 * 2/(8 * 128 * 256) ... 8/(8 * 128 * 256).
>>   	 */
>> -	intel_dsb_reg_write(dsb, PREC_PAL_MULTI_SEG_INDEX(pipe),
>> +	intel_dsb_reg_write(crtc_state, PREC_PAL_MULTI_SEG_INDEX(pipe),
>>   			    PAL_PREC_AUTO_INCREMENT);
>>   
>>   	for (i = 0; i < 9; i++) {
>>   		const struct drm_color_lut *entry = &lut[i];
>>   
>> -		intel_dsb_indexed_reg_write(dsb, PREC_PAL_MULTI_SEG_DATA(pipe),
>> +		intel_dsb_indexed_reg_write(crtc_state, PREC_PAL_MULTI_SEG_DATA(pipe),
>>   					    ilk_lut_12p4_ldw(entry));
>> -		intel_dsb_indexed_reg_write(dsb, PREC_PAL_MULTI_SEG_DATA(pipe),
>> +		intel_dsb_indexed_reg_write(crtc_state, PREC_PAL_MULTI_SEG_DATA(pipe),
>>   					    ilk_lut_12p4_udw(entry));
>>   	}
>> -
>> -	intel_dsb_put(dsb);
>>   }
>>   
>>   static void
>> @@ -949,7 +943,6 @@ icl_program_gamma_multi_segment(const struct intel_crtc_state *crtc_state)
>>   	const struct drm_property_blob *blob = crtc_state->hw.gamma_lut;
>>   	const struct drm_color_lut *lut = blob->data;
>>   	const struct drm_color_lut *entry;
>> -	struct intel_dsb *dsb = intel_dsb_get(crtc);
>>   	enum pipe pipe = crtc->pipe;
>>   	int i;
>>   
>> @@ -963,12 +956,13 @@ icl_program_gamma_multi_segment(const struct intel_crtc_state *crtc_state)
>>   	 * PAL_PREC_INDEX[0] and PAL_PREC_INDEX[1] map to seg2[1],
>>   	 * seg2[0] being unused by the hardware.
>>   	 */
>> -	intel_dsb_reg_write(dsb, PREC_PAL_INDEX(pipe), PAL_PREC_AUTO_INCREMENT);
>> +	intel_dsb_reg_write(crtc_state, PREC_PAL_INDEX(pipe),
>> +			    PAL_PREC_AUTO_INCREMENT);
>>   	for (i = 1; i < 257; i++) {
>>   		entry = &lut[i * 8];
>> -		intel_dsb_indexed_reg_write(dsb, PREC_PAL_DATA(pipe),
>> +		intel_dsb_indexed_reg_write(crtc_state, PREC_PAL_DATA(pipe),
>>   					    ilk_lut_12p4_ldw(entry));
>> -		intel_dsb_indexed_reg_write(dsb, PREC_PAL_DATA(pipe),
>> +		intel_dsb_indexed_reg_write(crtc_state, PREC_PAL_DATA(pipe),
>>   					    ilk_lut_12p4_udw(entry));
>>   	}
>>   
>> @@ -986,9 +980,9 @@ icl_program_gamma_multi_segment(const struct intel_crtc_state *crtc_state)
>>   	 */
>>   	for (i = 0; i < 256; i++) {
>>   		entry = &lut[i * 8 * 128];
>> -		intel_dsb_indexed_reg_write(dsb, PREC_PAL_DATA(pipe),
>> +		intel_dsb_indexed_reg_write(crtc_state, PREC_PAL_DATA(pipe),
>>   					    ilk_lut_12p4_ldw(entry));
>> -		intel_dsb_indexed_reg_write(dsb, PREC_PAL_DATA(pipe),
>> +		intel_dsb_indexed_reg_write(crtc_state, PREC_PAL_DATA(pipe),
>>   					    ilk_lut_12p4_udw(entry));
>>   	}
>>   
>> @@ -996,14 +990,12 @@ icl_program_gamma_multi_segment(const struct intel_crtc_state *crtc_state)
>>   	entry = &lut[256 * 8 * 128];
>>   	icl_load_gcmax(crtc_state, entry);
>>   	ivb_load_lut_ext_max(crtc);
>> -	intel_dsb_put(dsb);
>>   }
>>   
>>   static void icl_load_luts(const struct intel_crtc_state *crtc_state)
>>   {
>>   	const struct drm_property_blob *gamma_lut = crtc_state->hw.gamma_lut;
>>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>> -	struct intel_dsb *dsb = intel_dsb_get(crtc);
>>   
>>   	if (crtc_state->hw.degamma_lut)
>>   		glk_load_degamma_lut(crtc_state);
>> @@ -1021,8 +1013,7 @@ static void icl_load_luts(const struct intel_crtc_state *crtc_state)
>>   		ivb_load_lut_ext_max(crtc);
>>   	}
>>   
>> -	intel_dsb_commit(dsb);
>> -	intel_dsb_put(dsb);
>> +	intel_dsb_commit(crtc_state);
>>   }
>>   
>>   static u32 chv_cgm_degamma_ldw(const struct drm_color_lut *color)
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index 432b4eeaf9f6..f103d0030710 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -14873,8 +14873,28 @@ static int intel_atomic_check(struct drm_device *dev,
>>   
>>   static int intel_atomic_prepare_commit(struct intel_atomic_state *state)
>>   {
>> -	return drm_atomic_helper_prepare_planes(state->base.dev,
>> -						&state->base);
>> +	struct intel_crtc_state *crtc_state;
>> +	struct intel_crtc *crtc;
>> +	int i, ret;
>> +
>> +	ret = drm_atomic_helper_prepare_planes(state->base.dev, &state->base);
>> +	if (ret < 0)
>> +		return ret;
>> +
>> +	/*
>> +	 * In case of DSB buffer creation failure register programming will be
>> +	 * done by mmio and erroneous path will be handled by dsp-write api.
>> +	 */
> dsp?
>
> Do we need the comment at all? Or put it near intel_dsb_prepare()?
>
>> +	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
>> +		bool mode_changed = needs_modeset(crtc_state);
>> +
>> +		if (mode_changed || crtc_state->update_pipe ||
>> +		    crtc_state->uapi.color_mgmt_changed) {
>> +			intel_dsb_prepare(crtc_state);
>> +		}
>> +	}
>> +
>> +	return 0;
>>   }
>>   
>>   u32 intel_crtc_get_vblank_counter(struct intel_crtc *crtc)
>> @@ -15327,15 +15347,29 @@ static void intel_atomic_commit_fence_wait(struct intel_atomic_state *intel_stat
>>   		    &wait_reset);
>>   }
>>   
>> +static void intel_cleanup_dsbs(struct intel_atomic_state *state)
>> +{
>> +	struct intel_crtc_state *old_crtc_state, *new_crtc_state;
>> +	struct intel_crtc *crtc;
>> +	int i;
>> +
>> +	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>> +					    new_crtc_state, i) {
>> +		intel_dsb_cleanup(old_crtc_state);
>> +		old_crtc_state->dsb = NULL;
> Feels like that should be inside intel_dsb_cleanup().
>
>> +	}
>> +}
>> +
>>   static void intel_atomic_cleanup_work(struct work_struct *work)
>>   {
>> -	struct drm_atomic_state *state =
>> -		container_of(work, struct drm_atomic_state, commit_work);
>> -	struct drm_i915_private *i915 = to_i915(state->dev);
>> +	struct intel_atomic_state *state =
>> +		container_of(work, struct intel_atomic_state, base.commit_work);
>> +	struct drm_i915_private *i915 = to_i915(state->base.dev);
>>   
>> -	drm_atomic_helper_cleanup_planes(&i915->drm, state);
>> -	drm_atomic_helper_commit_cleanup_done(state);
>> -	drm_atomic_state_put(state);
>> +	intel_cleanup_dsbs(state);
>> +	drm_atomic_helper_cleanup_planes(&i915->drm, &state->base);
>> +	drm_atomic_helper_commit_cleanup_done(&state->base);
>> +	drm_atomic_state_put(&state->base);
>>   
>>   	intel_atomic_helper_free_state(i915);
>>   }
>> @@ -15469,6 +15503,8 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
>>   			modeset_put_power_domains(dev_priv, put_domains[i]);
>>   
>>   		intel_modeset_verify_crtc(crtc, state, old_crtc_state, new_crtc_state);
>> +
>> +		old_crtc_state->dsb = fetch_and_zero(&new_crtc_state->dsb);
> If you added only one comment in the entire patch, it would deserve to
> be above this line, explaining what's going on.
>
>>   	}
>>   
>>   	/* Underruns don't always raise interrupts, so check manually */
>> @@ -15618,8 +15654,15 @@ static int intel_atomic_commit(struct drm_device *dev,
>>   		intel_atomic_swap_global_state(state);
>>   
>>   	if (ret) {
>> +		struct intel_crtc_state *new_crtc_state;
>> +		struct intel_crtc *crtc;
>> +		int i;
>> +
>>   		i915_sw_fence_commit(&state->commit_ready);
>>   
>> +		for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
>> +			intel_dsb_cleanup(new_crtc_state);
>> +
>>   		drm_atomic_helper_cleanup_planes(dev, &state->base);
>>   		intel_runtime_pm_put(&dev_priv->runtime_pm, state->wakeref);
>>   		return ret;
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index 87876fce91a5..ca579005d818 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -1078,6 +1078,9 @@ struct intel_crtc_state {
>>   
>>   	/* Only valid on TGL+ */
>>   	enum transcoder mst_master_transcoder;
>> +
>> +	/* For DSB related info */
>> +	struct intel_dsb *dsb;
>>   };
>>   
>>   enum intel_pipe_crc_source {
>> @@ -1147,9 +1150,6 @@ struct intel_crtc {
>>   	/* scalers available on this crtc */
>>   	int num_scalers;
>>   
>> -	/* per pipe DSB related info */
>> -	struct intel_dsb dsb;
>> -
>>   #ifdef CONFIG_DEBUG_FS
>>   	struct intel_pipe_crc pipe_crc;
>>   #endif
>> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
>> index 29fec6a92d17..2952427241eb 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
>> @@ -34,152 +34,52 @@
>>   #define DSB_BYTE_EN_SHIFT		20
>>   #define DSB_REG_VALUE_MASK		0xfffff
>>   
>> -static bool is_dsb_busy(struct intel_dsb *dsb)
>> +static inline bool is_dsb_busy(struct drm_i915_private *dev_priv,
> No, please don't add inlines in .c files. I just removed the inlines
> from these functions in 81b55ef1f47b ("drm/i915: drop a bunch of
> superfluous inlines"). Please just let the compiler handle this.
>
> Since you're changing everything in the function, why not rename the
> parameter i915 while at it.
>
>> +			       enum pipe pipe, enum dsb_id id)
>>   {
>> -	struct intel_crtc *crtc = container_of(dsb, typeof(*crtc), dsb);
>> -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>> -	enum pipe pipe = crtc->pipe;
>> -
>> -	return DSB_STATUS & intel_de_read(dev_priv, DSB_CTRL(pipe, dsb->id));
>> +	return DSB_STATUS & intel_de_read(dev_priv, DSB_CTRL(pipe, id));
>>   }
>>   
>> -static bool intel_dsb_enable_engine(struct intel_dsb *dsb)
>> +static inline bool intel_dsb_enable_engine(struct drm_i915_private *dev_priv,
> Ditto.
>
>> +					   enum pipe pipe, enum dsb_id id)
>>   {
>> -	struct intel_crtc *crtc = container_of(dsb, typeof(*crtc), dsb);
>> -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>> -	enum pipe pipe = crtc->pipe;
>>   	u32 dsb_ctrl;
>>   
>> -	dsb_ctrl = intel_de_read(dev_priv, DSB_CTRL(pipe, dsb->id));
>> +	dsb_ctrl = intel_de_read(dev_priv, DSB_CTRL(pipe, id));
>>   	if (DSB_STATUS & dsb_ctrl) {
>>   		drm_dbg_kms(&dev_priv->drm, "DSB engine is busy.\n");
>>   		return false;
>>   	}
>>   
>>   	dsb_ctrl |= DSB_ENABLE;
>> -	intel_de_write(dev_priv, DSB_CTRL(pipe, dsb->id), dsb_ctrl);
>> +	intel_de_write(dev_priv, DSB_CTRL(pipe, id), dsb_ctrl);
>>   
>> -	intel_de_posting_read(dev_priv, DSB_CTRL(pipe, dsb->id));
>> +	intel_de_posting_read(dev_priv, DSB_CTRL(pipe, id));
>>   	return true;
>>   }
>>   
>> -static bool intel_dsb_disable_engine(struct intel_dsb *dsb)
>> +static inline bool intel_dsb_disable_engine(struct drm_i915_private *dev_priv,
> Ditto.
>
>> +					    enum pipe pipe, enum dsb_id id)
>>   {
>> -	struct intel_crtc *crtc = container_of(dsb, typeof(*crtc), dsb);
>> -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>> -	enum pipe pipe = crtc->pipe;
>>   	u32 dsb_ctrl;
>>   
>> -	dsb_ctrl = intel_de_read(dev_priv, DSB_CTRL(pipe, dsb->id));
>> +	dsb_ctrl = intel_de_read(dev_priv, DSB_CTRL(pipe, id));
>>   	if (DSB_STATUS & dsb_ctrl) {
>>   		drm_dbg_kms(&dev_priv->drm, "DSB engine is busy.\n");
>>   		return false;
>>   	}
>>   
>>   	dsb_ctrl &= ~DSB_ENABLE;
>> -	intel_de_write(dev_priv, DSB_CTRL(pipe, dsb->id), dsb_ctrl);
>> +	intel_de_write(dev_priv, DSB_CTRL(pipe, id), dsb_ctrl);
>>   
>> -	intel_de_posting_read(dev_priv, DSB_CTRL(pipe, dsb->id));
>> +	intel_de_posting_read(dev_priv, DSB_CTRL(pipe, id));
>>   	return true;
>>   }
>>   
>> -/**
>> - * intel_dsb_get() - Allocate DSB context and return a DSB instance.
>> - * @crtc: intel_crtc structure to get pipe info.
>> - *
>> - * This function provides handle of a DSB instance, for the further DSB
>> - * operations.
>> - *
>> - * Returns: address of Intel_dsb instance requested for.
>> - * Failure: Returns the same DSB instance, but without a command buffer.
>> - */
>> -
>> -struct intel_dsb *
>> -intel_dsb_get(struct intel_crtc *crtc)
>> -{
>> -	struct drm_device *dev = crtc->base.dev;
>> -	struct drm_i915_private *i915 = to_i915(dev);
>> -	struct intel_dsb *dsb = &crtc->dsb;
>> -	struct drm_i915_gem_object *obj;
>> -	struct i915_vma *vma;
>> -	u32 *buf;
>> -	intel_wakeref_t wakeref;
>> -
>> -	if (!HAS_DSB(i915))
>> -		return dsb;
>> -
>> -	if (dsb->refcount++ != 0)
>> -		return dsb;
>> -
>> -	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
>> -
>> -	obj = i915_gem_object_create_internal(i915, DSB_BUF_SIZE);
>> -	if (IS_ERR(obj)) {
>> -		drm_err(&i915->drm, "Gem object creation failed\n");
>> -		goto out;
>> -	}
>> -
>> -	vma = i915_gem_object_ggtt_pin(obj, NULL, 0, 0, 0);
>> -	if (IS_ERR(vma)) {
>> -		drm_err(&i915->drm, "Vma creation failed\n");
>> -		i915_gem_object_put(obj);
>> -		goto out;
>> -	}
>> -
>> -	buf = i915_gem_object_pin_map(vma->obj, I915_MAP_WC);
>> -	if (IS_ERR(buf)) {
>> -		drm_err(&i915->drm, "Command buffer creation failed\n");
>> -		goto out;
>> -	}
>> -
>> -	dsb->id = DSB1;
>> -	dsb->vma = vma;
>> -	dsb->cmd_buf = buf;
>> -
>> -out:
>> -	/*
>> -	 * On error dsb->cmd_buf will continue to be NULL, making the writes
>> -	 * pass-through. Leave the dangling ref to be removed later by the
>> -	 * corresponding intel_dsb_put(): the important error message will
>> -	 * already be logged above.
>> -	 */
>> -
>> -	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
>> -
>> -	return dsb;
>> -}
>> -
>> -/**
>> - * intel_dsb_put() - To destroy DSB context.
>> - * @dsb: intel_dsb structure.
>> - *
>> - * This function destroys the DSB context allocated by a dsb_get(), by
>> - * unpinning and releasing the VMA object associated with it.
>> - */
>> -
>> -void intel_dsb_put(struct intel_dsb *dsb)
>> -{
>> -	struct intel_crtc *crtc = container_of(dsb, typeof(*crtc), dsb);
>> -	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>> -
>> -	if (!HAS_DSB(i915))
>> -		return;
>> -
>> -	if (drm_WARN_ON(&i915->drm, dsb->refcount == 0))
>> -		return;
>> -
>> -	if (--dsb->refcount == 0) {
>> -		i915_vma_unpin_and_release(&dsb->vma, I915_VMA_RELEASE_MAP);
>> -		dsb->cmd_buf = NULL;
>> -		dsb->free_pos = 0;
>> -		dsb->ins_start_offset = 0;
>> -	}
>> -}
>> -
>>   /**
>>    * intel_dsb_indexed_reg_write() -Write to the DSB context for auto
>>    * increment register.
>> - * @dsb: intel_dsb structure.
>> + * @crtc_state: intel_crtc_state structure
>>    * @reg: register address.
>>    * @val: value.
>>    *
>> @@ -189,19 +89,20 @@ void intel_dsb_put(struct intel_dsb *dsb)
>>    * is done through mmio write.
>>    */
>>   
>> -void intel_dsb_indexed_reg_write(struct intel_dsb *dsb, i915_reg_t reg,
>> -				 u32 val)
>> +void intel_dsb_indexed_reg_write(const struct intel_crtc_state *crtc_state,
>> +				 i915_reg_t reg, u32 val)
>>   {
>> -	struct intel_crtc *crtc = container_of(dsb, typeof(*crtc), dsb);
>> +	struct intel_dsb *dsb = crtc_state->dsb;
>> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>   	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>> -	u32 *buf = dsb->cmd_buf;
>> +	u32 *buf;
>>   	u32 reg_val;
>>   
>> -	if (!buf) {
>> +	if (!(dsb && dsb->cmd_buf)) {
>>   		intel_de_write(dev_priv, reg, val);
>>   		return;
>>   	}
>> -
>> +	buf = dsb->cmd_buf;
>>   	if (drm_WARN_ON(&dev_priv->drm, dsb->free_pos >= DSB_BUF_SIZE)) {
>>   		drm_dbg_kms(&dev_priv->drm, "DSB buffer overflow\n");
>>   		return;
>> @@ -256,7 +157,7 @@ void intel_dsb_indexed_reg_write(struct intel_dsb *dsb, i915_reg_t reg,
>>   /**
>>    * intel_dsb_reg_write() -Write to the DSB context for normal
>>    * register.
>> - * @dsb: intel_dsb structure.
>> + * @crtc_state: intel_crtc_state structure
>>    * @reg: register address.
>>    * @val: value.
>>    *
>> @@ -265,17 +166,19 @@ void intel_dsb_indexed_reg_write(struct intel_dsb *dsb, i915_reg_t reg,
>>    * and rest all erroneous condition register programming is done
>>    * through mmio write.
>>    */
>> -void intel_dsb_reg_write(struct intel_dsb *dsb, i915_reg_t reg, u32 val)
>> +void intel_dsb_reg_write(const struct intel_crtc_state *crtc_state,
>> +			 i915_reg_t reg, u32 val)
>>   {
>> -	struct intel_crtc *crtc = container_of(dsb, typeof(*crtc), dsb);
>> +	struct intel_dsb *dsb = crtc_state->dsb;
>> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>   	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>>   	u32 *buf = dsb->cmd_buf;
>>   
>> -	if (!buf) {
>> +	if (!(dsb && dsb->cmd_buf)) {
>>   		intel_de_write(dev_priv, reg, val);
>>   		return;
>>   	}
>> -
>> +	buf = dsb->cmd_buf;
>>   	if (drm_WARN_ON(&dev_priv->drm, dsb->free_pos >= DSB_BUF_SIZE)) {
>>   		drm_dbg_kms(&dev_priv->drm, "DSB buffer overflow\n");
>>   		return;
>> @@ -290,26 +193,27 @@ void intel_dsb_reg_write(struct intel_dsb *dsb, i915_reg_t reg, u32 val)
>>   
>>   /**
>>    * intel_dsb_commit() - Trigger workload execution of DSB.
>> - * @dsb: intel_dsb structure.
>> + * @crtc_state: intel_crtc_state structure
>>    *
>>    * This function is used to do actual write to hardware using DSB.
>>    * On errors, fall back to MMIO. Also this function help to reset the context.
>>    */
>> -void intel_dsb_commit(struct intel_dsb *dsb)
>> +void intel_dsb_commit(const struct intel_crtc_state *crtc_state)
>>   {
>> -	struct intel_crtc *crtc = container_of(dsb, typeof(*crtc), dsb);
>> +	struct intel_dsb *dsb = crtc_state->dsb;
>> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>   	struct drm_device *dev = crtc->base.dev;
>>   	struct drm_i915_private *dev_priv = to_i915(dev);
>>   	enum pipe pipe = crtc->pipe;
>>   	u32 tail;
>>   
>> -	if (!dsb->free_pos)
>> +	if (!(dsb && dsb->free_pos))
>>   		return;
>>   
>> -	if (!intel_dsb_enable_engine(dsb))
>> +	if (!intel_dsb_enable_engine(dev_priv, pipe, dsb->id))
>>   		goto reset;
>>   
>> -	if (is_dsb_busy(dsb)) {
>> +	if (is_dsb_busy(dev_priv, pipe, dsb->id)) {
>>   		drm_err(&dev_priv->drm,
>>   			"HEAD_PTR write failed - dsb engine is busy.\n");
>>   		goto reset;
>> @@ -322,7 +226,7 @@ void intel_dsb_commit(struct intel_dsb *dsb)
>>   		memset(&dsb->cmd_buf[dsb->free_pos], 0,
>>   		       (tail - dsb->free_pos * 4));
>>   
>> -	if (is_dsb_busy(dsb)) {
>> +	if (is_dsb_busy(dev_priv, pipe, dsb->id)) {
>>   		drm_err(&dev_priv->drm,
>>   			"TAIL_PTR write failed - dsb engine is busy.\n");
>>   		goto reset;
>> @@ -332,7 +236,7 @@ void intel_dsb_commit(struct intel_dsb *dsb)
>>   		    i915_ggtt_offset(dsb->vma), tail);
>>   	intel_de_write(dev_priv, DSB_TAIL(pipe, dsb->id),
>>   		       i915_ggtt_offset(dsb->vma) + tail);
>> -	if (wait_for(!is_dsb_busy(dsb), 1)) {
>> +	if (wait_for(!is_dsb_busy(dev_priv, pipe, dsb->id), 1)) {
>>   		drm_err(&dev_priv->drm,
>>   			"Timed out waiting for DSB workload completion.\n");
>>   		goto reset;
>> @@ -341,5 +245,83 @@ void intel_dsb_commit(struct intel_dsb *dsb)
>>   reset:
>>   	dsb->free_pos = 0;
>>   	dsb->ins_start_offset = 0;
>> -	intel_dsb_disable_engine(dsb);
>> +	intel_dsb_disable_engine(dev_priv, pipe, dsb->id);
>> +}
>> +
>> +/**
>> + * intel_dsb_prepare() - Allocate, pin and map the DSB command buffer.
>> + * @crtc_state: intel_crtc_state structure to prepare associated dsb instance.
>> + *
>> + * This function prepare the command buffer which is used to store dsb
>> + * instructions with data.
>> + */
>> +
> Superfluous newline.
>
>> +void intel_dsb_prepare(struct intel_crtc_state *crtc_state)
>> +{
>> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>> +	struct intel_dsb *dsb;
>> +	struct drm_i915_gem_object *obj;
>> +	struct i915_vma *vma;
>> +	u32 *buf;
>> +	intel_wakeref_t wakeref;
>> +
>> +	if (!HAS_DSB(i915))
>> +		return;
>> +
>> +	dsb = kmalloc(sizeof(*dsb), GFP_KERNEL);
>> +
>> +	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
>> +
>> +	obj = i915_gem_object_create_internal(i915, DSB_BUF_SIZE);
>> +	if (IS_ERR(obj)) {
>> +		drm_err(&i915->drm, "Gem object creation failed\n");
>> +		goto out;
>> +	}
>> +
>> +	vma = i915_gem_object_ggtt_pin(obj, NULL, 0, 0, 0);
>> +	if (IS_ERR(vma)) {
>> +		drm_err(&i915->drm, "Vma creation failed\n");
>> +		i915_gem_object_put(obj);
>> +		goto out;
>> +	}
>> +
>> +	buf = i915_gem_object_pin_map(vma->obj, I915_MAP_WC);
>> +	if (IS_ERR(buf)) {
>> +		drm_err(&i915->drm, "Command buffer creation failed\n");
>> +		goto out;
>> +	}
>> +
>> +	dsb->id = DSB1;
>> +	dsb->vma = vma;
>> +	dsb->cmd_buf = buf;
>> +	dsb->free_pos = 0;
>> +	dsb->ins_start_offset = 0;
>> +	crtc_state->dsb = dsb;
>> +out:
>> +	/*
>> +	 * On error dsb->cmd_buf will continue to be NULL, making the writes
>> +	 * pass-through. Leave the dangling ref to be removed later by the
>> +	 * corresponding intel_dsb_put(): the important error message will
>> +	 * already be logged above.
>> +	 */
> Stale comment.
>
> The error paths leak dsb and more.
>
>> +
>> +	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
>> +}
>> +
>> +/**
>> + * intel_dsb_cleanup() - To cleanup DSB context.
>> + * @crtc_state: intel_crtc_state structure to cleanup associated dsb instance.
>> + *
>> + * This function cleanup the DSB context by unpinning and releasing
>> + * the VMA object associated with it.
>> + */
>> +
>> +void intel_dsb_cleanup(struct intel_crtc_state *crtc_state)
>> +{
>> +	if (crtc_state && crtc_state->dsb) {
>> +		i915_vma_unpin_and_release(&crtc_state->dsb->vma,
>> +					   I915_VMA_RELEASE_MAP);
>> +		kfree(crtc_state->dsb);
>> +	}
>>   }
>> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
>> index 395ef9ce558e..654a11f24b80 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dsb.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dsb.h
>> @@ -10,7 +10,7 @@
>>   
>>   #include "i915_reg.h"
>>   
>> -struct intel_crtc;
>> +struct intel_crtc_state;
>>   struct i915_vma;
>>   
>>   enum dsb_id {
>> @@ -22,7 +22,6 @@ enum dsb_id {
>>   };
>>   
>>   struct intel_dsb {
>> -	long refcount;
>>   	enum dsb_id id;
>>   	u32 *cmd_buf;
>>   	struct i915_vma *vma;
>> @@ -41,12 +40,12 @@ struct intel_dsb {
>>   	u32 ins_start_offset;
>>   };
>>   
>> -struct intel_dsb *
>> -intel_dsb_get(struct intel_crtc *crtc);
>> -void intel_dsb_put(struct intel_dsb *dsb);
>> -void intel_dsb_reg_write(struct intel_dsb *dsb, i915_reg_t reg, u32 val);
>> -void intel_dsb_indexed_reg_write(struct intel_dsb *dsb, i915_reg_t reg,
>> -				 u32 val);
>> -void intel_dsb_commit(struct intel_dsb *dsb);
>> +void intel_dsb_prepare(struct intel_crtc_state *crtc_state);
>> +void intel_dsb_cleanup(struct intel_crtc_state *crtc_state);
>> +void intel_dsb_reg_write(const struct intel_crtc_state *crtc_state,
>> +			 i915_reg_t reg, u32 val);
>> +void intel_dsb_indexed_reg_write(const struct intel_crtc_state *crtc_state,
>> +				 i915_reg_t reg, u32 val);
>> +void intel_dsb_commit(const struct intel_crtc_state *crtc_state);
>>   
>>   #endif

--------------D3172ACF2CB43AB7A22A20AE
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <pre>Thanks Jani for review, added the changes in next version.


Regards,
Animesh
</pre>
    <div class="moz-cite-prefix">On 14-05-2020 14:51, Jani Nikula wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:87r1vm50sy.fsf@intel.com">
      <pre class="moz-quote-pre" wrap="">On Thu, 14 May 2020, Animesh Manna <a class="moz-txt-link-rfc2396E" href="mailto:animesh.manna@intel.com">&lt;animesh.manna@intel.com&gt;</a> wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">Pre-allocate command buffer in atomic_commit using intel_dsb_prepare
function which also includes pinning and map in cpu domain.

No functional change is dsb write/commit functions.

Now dsb get/put function is removed and ref-count mechanism is
not needed. Below dsb api added to do respective job mentioned
below.

intel_dsb_prepare - Allocate, pin and map the buffer.
intel_dsb_cleanup - Unpin and release the gem object.

RFC: Initial patch for design review.
v2: included _init() part in _prepare(). [Daniel, Ville]
v3: dsb_cleanup called after cleanup_planes. [Daniel]
v4: dsb structure is moved to intel_crtc_state from intel_crtc. [Maarten]
v5: dsb get/put/ref-count mechanism removed. [Maarten]
v6: Based on review feedback following changes are added,
- replaced intel_dsb structure by pointer in intel_crtc_state. [Maarten]
- passing intel_crtc_state to dsp-api to simplify the code. [Maarten]
- few dsb functions prototype modified to simplify code.

Cc: Maarten Lankhorst <a class="moz-txt-link-rfc2396E" href="mailto:maarten.lankhorst@linux.intel.com">&lt;maarten.lankhorst@linux.intel.com&gt;</a>
Cc: Ville Syrjälä <a class="moz-txt-link-rfc2396E" href="mailto:ville.syrjala@linux.intel.com">&lt;ville.syrjala@linux.intel.com&gt;</a>
Cc: Jani Nikula <a class="moz-txt-link-rfc2396E" href="mailto:jani.nikula@intel.com">&lt;jani.nikula@intel.com&gt;</a>
Cc: Daniel Vetter <a class="moz-txt-link-rfc2396E" href="mailto:daniel.vetter@ffwll.ch">&lt;daniel.vetter@ffwll.ch&gt;</a>
Acked-by: Daniel Vetter <a class="moz-txt-link-rfc2396E" href="mailto:daniel.vetter@ffwll.ch">&lt;daniel.vetter@ffwll.ch&gt;</a>
Signed-off-by: Animesh Manna <a class="moz-txt-link-rfc2396E" href="mailto:animesh.manna@intel.com">&lt;animesh.manna@intel.com&gt;</a>
---
 drivers/gpu/drm/i915/display/intel_atomic.c   |   3 +
 drivers/gpu/drm/i915/display/intel_color.c    |  51 ++--
 drivers/gpu/drm/i915/display/intel_display.c  |  59 ++++-
 .../drm/i915/display/intel_display_types.h    |   6 +-
 drivers/gpu/drm/i915/display/intel_dsb.c      | 250 ++++++++----------
 drivers/gpu/drm/i915/display/intel_dsb.h      |  17 +-
 6 files changed, 202 insertions(+), 184 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
index d043057d2fa0..3cb866f22e74 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic.c
@@ -252,6 +252,7 @@ intel_crtc_duplicate_state(struct drm_crtc *crtc)
 	crtc_state-&gt;wm.need_postvbl_update = false;
 	crtc_state-&gt;fb_bits = 0;
 	crtc_state-&gt;update_planes = 0;
+	crtc_state-&gt;dsb = NULL;
 
 	return &amp;crtc_state-&gt;uapi;
 }
@@ -292,6 +293,8 @@ intel_crtc_destroy_state(struct drm_crtc *crtc,
 {
 	struct intel_crtc_state *crtc_state = to_intel_crtc_state(state);
 
+	drm_WARN_ON(crtc-&gt;dev, crtc_state-&gt;dsb);
+
 	__drm_atomic_helper_crtc_destroy_state(&amp;crtc_state-&gt;uapi);
 	intel_crtc_free_hw_state(crtc_state);
 	kfree(crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 98ece9cd7cdd..bc0934689505 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -717,13 +717,14 @@ static void bdw_load_lut_10(struct intel_crtc *crtc,
 static void ivb_load_lut_ext_max(struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc-&gt;base.dev);
-	struct intel_dsb *dsb = intel_dsb_get(crtc);
+	struct intel_crtc_state *crtc_state =
+		to_intel_crtc_state(crtc-&gt;base.state);
 	enum pipe pipe = crtc-&gt;pipe;
 
 	/* Program the max register to clamp values &gt; 1.0. */
-	intel_dsb_reg_write(dsb, PREC_PAL_EXT_GC_MAX(pipe, 0), 1 &lt;&lt; 16);
-	intel_dsb_reg_write(dsb, PREC_PAL_EXT_GC_MAX(pipe, 1), 1 &lt;&lt; 16);
-	intel_dsb_reg_write(dsb, PREC_PAL_EXT_GC_MAX(pipe, 2), 1 &lt;&lt; 16);
+	intel_dsb_reg_write(crtc_state, PREC_PAL_EXT_GC_MAX(pipe, 0), 1 &lt;&lt; 16);
+	intel_dsb_reg_write(crtc_state, PREC_PAL_EXT_GC_MAX(pipe, 1), 1 &lt;&lt; 16);
+	intel_dsb_reg_write(crtc_state, PREC_PAL_EXT_GC_MAX(pipe, 2), 1 &lt;&lt; 16);
 
 	/*
 	 * Program the gc max 2 register to clamp values &gt; 1.0.
@@ -731,15 +732,13 @@ static void ivb_load_lut_ext_max(struct intel_crtc *crtc)
 	 * from 3.0 to 7.0
 	 */
 	if (INTEL_GEN(dev_priv) &gt;= 10 || IS_GEMINILAKE(dev_priv)) {
-		intel_dsb_reg_write(dsb, PREC_PAL_EXT2_GC_MAX(pipe, 0),
+		intel_dsb_reg_write(crtc_state, PREC_PAL_EXT2_GC_MAX(pipe, 0),
 				    1 &lt;&lt; 16);
-		intel_dsb_reg_write(dsb, PREC_PAL_EXT2_GC_MAX(pipe, 1),
+		intel_dsb_reg_write(crtc_state, PREC_PAL_EXT2_GC_MAX(pipe, 1),
 				    1 &lt;&lt; 16);
-		intel_dsb_reg_write(dsb, PREC_PAL_EXT2_GC_MAX(pipe, 2),
+		intel_dsb_reg_write(crtc_state, PREC_PAL_EXT2_GC_MAX(pipe, 2),
 				    1 &lt;&lt; 16);
 	}
-
-	intel_dsb_put(dsb);
 }
 
 static void ivb_load_luts(const struct intel_crtc_state *crtc_state)
@@ -900,14 +899,12 @@ icl_load_gcmax(const struct intel_crtc_state *crtc_state,
 	       const struct drm_color_lut *color)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state-&gt;uapi.crtc);
-	struct intel_dsb *dsb = intel_dsb_get(crtc);
 	enum pipe pipe = crtc-&gt;pipe;
 
 	/* FIXME LUT entries are 16 bit only, so we can prog 0xFFFF max */
-	intel_dsb_reg_write(dsb, PREC_PAL_GC_MAX(pipe, 0), color-&gt;red);
-	intel_dsb_reg_write(dsb, PREC_PAL_GC_MAX(pipe, 1), color-&gt;green);
-	intel_dsb_reg_write(dsb, PREC_PAL_GC_MAX(pipe, 2), color-&gt;blue);
-	intel_dsb_put(dsb);
+	intel_dsb_reg_write(crtc_state, PREC_PAL_GC_MAX(pipe, 0), color-&gt;red);
+	intel_dsb_reg_write(crtc_state, PREC_PAL_GC_MAX(pipe, 1), color-&gt;green);
+	intel_dsb_reg_write(crtc_state, PREC_PAL_GC_MAX(pipe, 2), color-&gt;blue);
 }
 
 static void
@@ -916,7 +913,6 @@ icl_program_gamma_superfine_segment(const struct intel_crtc_state *crtc_state)
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state-&gt;uapi.crtc);
 	const struct drm_property_blob *blob = crtc_state-&gt;hw.gamma_lut;
 	const struct drm_color_lut *lut = blob-&gt;data;
-	struct intel_dsb *dsb = intel_dsb_get(crtc);
 	enum pipe pipe = crtc-&gt;pipe;
 	int i;
 
@@ -927,19 +923,17 @@ icl_program_gamma_superfine_segment(const struct intel_crtc_state *crtc_state)
 	 * 9 entries, corresponding to values 0, 1/(8 * 128 * 256),
 	 * 2/(8 * 128 * 256) ... 8/(8 * 128 * 256).
 	 */
-	intel_dsb_reg_write(dsb, PREC_PAL_MULTI_SEG_INDEX(pipe),
+	intel_dsb_reg_write(crtc_state, PREC_PAL_MULTI_SEG_INDEX(pipe),
 			    PAL_PREC_AUTO_INCREMENT);
 
 	for (i = 0; i &lt; 9; i++) {
 		const struct drm_color_lut *entry = &amp;lut[i];
 
-		intel_dsb_indexed_reg_write(dsb, PREC_PAL_MULTI_SEG_DATA(pipe),
+		intel_dsb_indexed_reg_write(crtc_state, PREC_PAL_MULTI_SEG_DATA(pipe),
 					    ilk_lut_12p4_ldw(entry));
-		intel_dsb_indexed_reg_write(dsb, PREC_PAL_MULTI_SEG_DATA(pipe),
+		intel_dsb_indexed_reg_write(crtc_state, PREC_PAL_MULTI_SEG_DATA(pipe),
 					    ilk_lut_12p4_udw(entry));
 	}
-
-	intel_dsb_put(dsb);
 }
 
 static void
@@ -949,7 +943,6 @@ icl_program_gamma_multi_segment(const struct intel_crtc_state *crtc_state)
 	const struct drm_property_blob *blob = crtc_state-&gt;hw.gamma_lut;
 	const struct drm_color_lut *lut = blob-&gt;data;
 	const struct drm_color_lut *entry;
-	struct intel_dsb *dsb = intel_dsb_get(crtc);
 	enum pipe pipe = crtc-&gt;pipe;
 	int i;
 
@@ -963,12 +956,13 @@ icl_program_gamma_multi_segment(const struct intel_crtc_state *crtc_state)
 	 * PAL_PREC_INDEX[0] and PAL_PREC_INDEX[1] map to seg2[1],
 	 * seg2[0] being unused by the hardware.
 	 */
-	intel_dsb_reg_write(dsb, PREC_PAL_INDEX(pipe), PAL_PREC_AUTO_INCREMENT);
+	intel_dsb_reg_write(crtc_state, PREC_PAL_INDEX(pipe),
+			    PAL_PREC_AUTO_INCREMENT);
 	for (i = 1; i &lt; 257; i++) {
 		entry = &amp;lut[i * 8];
-		intel_dsb_indexed_reg_write(dsb, PREC_PAL_DATA(pipe),
+		intel_dsb_indexed_reg_write(crtc_state, PREC_PAL_DATA(pipe),
 					    ilk_lut_12p4_ldw(entry));
-		intel_dsb_indexed_reg_write(dsb, PREC_PAL_DATA(pipe),
+		intel_dsb_indexed_reg_write(crtc_state, PREC_PAL_DATA(pipe),
 					    ilk_lut_12p4_udw(entry));
 	}
 
@@ -986,9 +980,9 @@ icl_program_gamma_multi_segment(const struct intel_crtc_state *crtc_state)
 	 */
 	for (i = 0; i &lt; 256; i++) {
 		entry = &amp;lut[i * 8 * 128];
-		intel_dsb_indexed_reg_write(dsb, PREC_PAL_DATA(pipe),
+		intel_dsb_indexed_reg_write(crtc_state, PREC_PAL_DATA(pipe),
 					    ilk_lut_12p4_ldw(entry));
-		intel_dsb_indexed_reg_write(dsb, PREC_PAL_DATA(pipe),
+		intel_dsb_indexed_reg_write(crtc_state, PREC_PAL_DATA(pipe),
 					    ilk_lut_12p4_udw(entry));
 	}
 
@@ -996,14 +990,12 @@ icl_program_gamma_multi_segment(const struct intel_crtc_state *crtc_state)
 	entry = &amp;lut[256 * 8 * 128];
 	icl_load_gcmax(crtc_state, entry);
 	ivb_load_lut_ext_max(crtc);
-	intel_dsb_put(dsb);
 }
 
 static void icl_load_luts(const struct intel_crtc_state *crtc_state)
 {
 	const struct drm_property_blob *gamma_lut = crtc_state-&gt;hw.gamma_lut;
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state-&gt;uapi.crtc);
-	struct intel_dsb *dsb = intel_dsb_get(crtc);
 
 	if (crtc_state-&gt;hw.degamma_lut)
 		glk_load_degamma_lut(crtc_state);
@@ -1021,8 +1013,7 @@ static void icl_load_luts(const struct intel_crtc_state *crtc_state)
 		ivb_load_lut_ext_max(crtc);
 	}
 
-	intel_dsb_commit(dsb);
-	intel_dsb_put(dsb);
+	intel_dsb_commit(crtc_state);
 }
 
 static u32 chv_cgm_degamma_ldw(const struct drm_color_lut *color)
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 432b4eeaf9f6..f103d0030710 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -14873,8 +14873,28 @@ static int intel_atomic_check(struct drm_device *dev,
 
 static int intel_atomic_prepare_commit(struct intel_atomic_state *state)
 {
-	return drm_atomic_helper_prepare_planes(state-&gt;base.dev,
-						&amp;state-&gt;base);
+	struct intel_crtc_state *crtc_state;
+	struct intel_crtc *crtc;
+	int i, ret;
+
+	ret = drm_atomic_helper_prepare_planes(state-&gt;base.dev, &amp;state-&gt;base);
+	if (ret &lt; 0)
+		return ret;
+
+	/*
+	 * In case of DSB buffer creation failure register programming will be
+	 * done by mmio and erroneous path will be handled by dsp-write api.
+	 */
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
dsp?

Do we need the comment at all? Or put it near intel_dsb_prepare()?

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">+	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
+		bool mode_changed = needs_modeset(crtc_state);
+
+		if (mode_changed || crtc_state-&gt;update_pipe ||
+		    crtc_state-&gt;uapi.color_mgmt_changed) {
+			intel_dsb_prepare(crtc_state);
+		}
+	}
+
+	return 0;
 }
 
 u32 intel_crtc_get_vblank_counter(struct intel_crtc *crtc)
@@ -15327,15 +15347,29 @@ static void intel_atomic_commit_fence_wait(struct intel_atomic_state *intel_stat
 		    &amp;wait_reset);
 }
 
+static void intel_cleanup_dsbs(struct intel_atomic_state *state)
+{
+	struct intel_crtc_state *old_crtc_state, *new_crtc_state;
+	struct intel_crtc *crtc;
+	int i;
+
+	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
+					    new_crtc_state, i) {
+		intel_dsb_cleanup(old_crtc_state);
+		old_crtc_state-&gt;dsb = NULL;
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Feels like that should be inside intel_dsb_cleanup().

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">+	}
+}
+
 static void intel_atomic_cleanup_work(struct work_struct *work)
 {
-	struct drm_atomic_state *state =
-		container_of(work, struct drm_atomic_state, commit_work);
-	struct drm_i915_private *i915 = to_i915(state-&gt;dev);
+	struct intel_atomic_state *state =
+		container_of(work, struct intel_atomic_state, base.commit_work);
+	struct drm_i915_private *i915 = to_i915(state-&gt;base.dev);
 
-	drm_atomic_helper_cleanup_planes(&amp;i915-&gt;drm, state);
-	drm_atomic_helper_commit_cleanup_done(state);
-	drm_atomic_state_put(state);
+	intel_cleanup_dsbs(state);
+	drm_atomic_helper_cleanup_planes(&amp;i915-&gt;drm, &amp;state-&gt;base);
+	drm_atomic_helper_commit_cleanup_done(&amp;state-&gt;base);
+	drm_atomic_state_put(&amp;state-&gt;base);
 
 	intel_atomic_helper_free_state(i915);
 }
@@ -15469,6 +15503,8 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 			modeset_put_power_domains(dev_priv, put_domains[i]);
 
 		intel_modeset_verify_crtc(crtc, state, old_crtc_state, new_crtc_state);
+
+		old_crtc_state-&gt;dsb = fetch_and_zero(&amp;new_crtc_state-&gt;dsb);
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
If you added only one comment in the entire patch, it would deserve to
be above this line, explaining what's going on.

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap=""> 	}
 
 	/* Underruns don't always raise interrupts, so check manually */
@@ -15618,8 +15654,15 @@ static int intel_atomic_commit(struct drm_device *dev,
 		intel_atomic_swap_global_state(state);
 
 	if (ret) {
+		struct intel_crtc_state *new_crtc_state;
+		struct intel_crtc *crtc;
+		int i;
+
 		i915_sw_fence_commit(&amp;state-&gt;commit_ready);
 
+		for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
+			intel_dsb_cleanup(new_crtc_state);
+
 		drm_atomic_helper_cleanup_planes(dev, &amp;state-&gt;base);
 		intel_runtime_pm_put(&amp;dev_priv-&gt;runtime_pm, state-&gt;wakeref);
 		return ret;
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 87876fce91a5..ca579005d818 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1078,6 +1078,9 @@ struct intel_crtc_state {
 
 	/* Only valid on TGL+ */
 	enum transcoder mst_master_transcoder;
+
+	/* For DSB related info */
+	struct intel_dsb *dsb;
 };
 
 enum intel_pipe_crc_source {
@@ -1147,9 +1150,6 @@ struct intel_crtc {
 	/* scalers available on this crtc */
 	int num_scalers;
 
-	/* per pipe DSB related info */
-	struct intel_dsb dsb;
-
 #ifdef CONFIG_DEBUG_FS
 	struct intel_pipe_crc pipe_crc;
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 29fec6a92d17..2952427241eb 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -34,152 +34,52 @@
 #define DSB_BYTE_EN_SHIFT		20
 #define DSB_REG_VALUE_MASK		0xfffff
 
-static bool is_dsb_busy(struct intel_dsb *dsb)
+static inline bool is_dsb_busy(struct drm_i915_private *dev_priv,
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
No, please don't add inlines in .c files. I just removed the inlines
from these functions in 81b55ef1f47b ("drm/i915: drop a bunch of
superfluous inlines"). Please just let the compiler handle this.

Since you're changing everything in the function, why not rename the
parameter i915 while at it.

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">+			       enum pipe pipe, enum dsb_id id)
 {
-	struct intel_crtc *crtc = container_of(dsb, typeof(*crtc), dsb);
-	struct drm_i915_private *dev_priv = to_i915(crtc-&gt;base.dev);
-	enum pipe pipe = crtc-&gt;pipe;
-
-	return DSB_STATUS &amp; intel_de_read(dev_priv, DSB_CTRL(pipe, dsb-&gt;id));
+	return DSB_STATUS &amp; intel_de_read(dev_priv, DSB_CTRL(pipe, id));
 }
 
-static bool intel_dsb_enable_engine(struct intel_dsb *dsb)
+static inline bool intel_dsb_enable_engine(struct drm_i915_private *dev_priv,
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Ditto.

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">+					   enum pipe pipe, enum dsb_id id)
 {
-	struct intel_crtc *crtc = container_of(dsb, typeof(*crtc), dsb);
-	struct drm_i915_private *dev_priv = to_i915(crtc-&gt;base.dev);
-	enum pipe pipe = crtc-&gt;pipe;
 	u32 dsb_ctrl;
 
-	dsb_ctrl = intel_de_read(dev_priv, DSB_CTRL(pipe, dsb-&gt;id));
+	dsb_ctrl = intel_de_read(dev_priv, DSB_CTRL(pipe, id));
 	if (DSB_STATUS &amp; dsb_ctrl) {
 		drm_dbg_kms(&amp;dev_priv-&gt;drm, "DSB engine is busy.\n");
 		return false;
 	}
 
 	dsb_ctrl |= DSB_ENABLE;
-	intel_de_write(dev_priv, DSB_CTRL(pipe, dsb-&gt;id), dsb_ctrl);
+	intel_de_write(dev_priv, DSB_CTRL(pipe, id), dsb_ctrl);
 
-	intel_de_posting_read(dev_priv, DSB_CTRL(pipe, dsb-&gt;id));
+	intel_de_posting_read(dev_priv, DSB_CTRL(pipe, id));
 	return true;
 }
 
-static bool intel_dsb_disable_engine(struct intel_dsb *dsb)
+static inline bool intel_dsb_disable_engine(struct drm_i915_private *dev_priv,
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Ditto.

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">+					    enum pipe pipe, enum dsb_id id)
 {
-	struct intel_crtc *crtc = container_of(dsb, typeof(*crtc), dsb);
-	struct drm_i915_private *dev_priv = to_i915(crtc-&gt;base.dev);
-	enum pipe pipe = crtc-&gt;pipe;
 	u32 dsb_ctrl;
 
-	dsb_ctrl = intel_de_read(dev_priv, DSB_CTRL(pipe, dsb-&gt;id));
+	dsb_ctrl = intel_de_read(dev_priv, DSB_CTRL(pipe, id));
 	if (DSB_STATUS &amp; dsb_ctrl) {
 		drm_dbg_kms(&amp;dev_priv-&gt;drm, "DSB engine is busy.\n");
 		return false;
 	}
 
 	dsb_ctrl &amp;= ~DSB_ENABLE;
-	intel_de_write(dev_priv, DSB_CTRL(pipe, dsb-&gt;id), dsb_ctrl);
+	intel_de_write(dev_priv, DSB_CTRL(pipe, id), dsb_ctrl);
 
-	intel_de_posting_read(dev_priv, DSB_CTRL(pipe, dsb-&gt;id));
+	intel_de_posting_read(dev_priv, DSB_CTRL(pipe, id));
 	return true;
 }
 
-/**
- * intel_dsb_get() - Allocate DSB context and return a DSB instance.
- * @crtc: intel_crtc structure to get pipe info.
- *
- * This function provides handle of a DSB instance, for the further DSB
- * operations.
- *
- * Returns: address of Intel_dsb instance requested for.
- * Failure: Returns the same DSB instance, but without a command buffer.
- */
-
-struct intel_dsb *
-intel_dsb_get(struct intel_crtc *crtc)
-{
-	struct drm_device *dev = crtc-&gt;base.dev;
-	struct drm_i915_private *i915 = to_i915(dev);
-	struct intel_dsb *dsb = &amp;crtc-&gt;dsb;
-	struct drm_i915_gem_object *obj;
-	struct i915_vma *vma;
-	u32 *buf;
-	intel_wakeref_t wakeref;
-
-	if (!HAS_DSB(i915))
-		return dsb;
-
-	if (dsb-&gt;refcount++ != 0)
-		return dsb;
-
-	wakeref = intel_runtime_pm_get(&amp;i915-&gt;runtime_pm);
-
-	obj = i915_gem_object_create_internal(i915, DSB_BUF_SIZE);
-	if (IS_ERR(obj)) {
-		drm_err(&amp;i915-&gt;drm, "Gem object creation failed\n");
-		goto out;
-	}
-
-	vma = i915_gem_object_ggtt_pin(obj, NULL, 0, 0, 0);
-	if (IS_ERR(vma)) {
-		drm_err(&amp;i915-&gt;drm, "Vma creation failed\n");
-		i915_gem_object_put(obj);
-		goto out;
-	}
-
-	buf = i915_gem_object_pin_map(vma-&gt;obj, I915_MAP_WC);
-	if (IS_ERR(buf)) {
-		drm_err(&amp;i915-&gt;drm, "Command buffer creation failed\n");
-		goto out;
-	}
-
-	dsb-&gt;id = DSB1;
-	dsb-&gt;vma = vma;
-	dsb-&gt;cmd_buf = buf;
-
-out:
-	/*
-	 * On error dsb-&gt;cmd_buf will continue to be NULL, making the writes
-	 * pass-through. Leave the dangling ref to be removed later by the
-	 * corresponding intel_dsb_put(): the important error message will
-	 * already be logged above.
-	 */
-
-	intel_runtime_pm_put(&amp;i915-&gt;runtime_pm, wakeref);
-
-	return dsb;
-}
-
-/**
- * intel_dsb_put() - To destroy DSB context.
- * @dsb: intel_dsb structure.
- *
- * This function destroys the DSB context allocated by a dsb_get(), by
- * unpinning and releasing the VMA object associated with it.
- */
-
-void intel_dsb_put(struct intel_dsb *dsb)
-{
-	struct intel_crtc *crtc = container_of(dsb, typeof(*crtc), dsb);
-	struct drm_i915_private *i915 = to_i915(crtc-&gt;base.dev);
-
-	if (!HAS_DSB(i915))
-		return;
-
-	if (drm_WARN_ON(&amp;i915-&gt;drm, dsb-&gt;refcount == 0))
-		return;
-
-	if (--dsb-&gt;refcount == 0) {
-		i915_vma_unpin_and_release(&amp;dsb-&gt;vma, I915_VMA_RELEASE_MAP);
-		dsb-&gt;cmd_buf = NULL;
-		dsb-&gt;free_pos = 0;
-		dsb-&gt;ins_start_offset = 0;
-	}
-}
-
 /**
  * intel_dsb_indexed_reg_write() -Write to the DSB context for auto
  * increment register.
- * @dsb: intel_dsb structure.
+ * @crtc_state: intel_crtc_state structure
  * @reg: register address.
  * @val: value.
  *
@@ -189,19 +89,20 @@ void intel_dsb_put(struct intel_dsb *dsb)
  * is done through mmio write.
  */
 
-void intel_dsb_indexed_reg_write(struct intel_dsb *dsb, i915_reg_t reg,
-				 u32 val)
+void intel_dsb_indexed_reg_write(const struct intel_crtc_state *crtc_state,
+				 i915_reg_t reg, u32 val)
 {
-	struct intel_crtc *crtc = container_of(dsb, typeof(*crtc), dsb);
+	struct intel_dsb *dsb = crtc_state-&gt;dsb;
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state-&gt;uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc-&gt;base.dev);
-	u32 *buf = dsb-&gt;cmd_buf;
+	u32 *buf;
 	u32 reg_val;
 
-	if (!buf) {
+	if (!(dsb &amp;&amp; dsb-&gt;cmd_buf)) {
 		intel_de_write(dev_priv, reg, val);
 		return;
 	}
-
+	buf = dsb-&gt;cmd_buf;
 	if (drm_WARN_ON(&amp;dev_priv-&gt;drm, dsb-&gt;free_pos &gt;= DSB_BUF_SIZE)) {
 		drm_dbg_kms(&amp;dev_priv-&gt;drm, "DSB buffer overflow\n");
 		return;
@@ -256,7 +157,7 @@ void intel_dsb_indexed_reg_write(struct intel_dsb *dsb, i915_reg_t reg,
 /**
  * intel_dsb_reg_write() -Write to the DSB context for normal
  * register.
- * @dsb: intel_dsb structure.
+ * @crtc_state: intel_crtc_state structure
  * @reg: register address.
  * @val: value.
  *
@@ -265,17 +166,19 @@ void intel_dsb_indexed_reg_write(struct intel_dsb *dsb, i915_reg_t reg,
  * and rest all erroneous condition register programming is done
  * through mmio write.
  */
-void intel_dsb_reg_write(struct intel_dsb *dsb, i915_reg_t reg, u32 val)
+void intel_dsb_reg_write(const struct intel_crtc_state *crtc_state,
+			 i915_reg_t reg, u32 val)
 {
-	struct intel_crtc *crtc = container_of(dsb, typeof(*crtc), dsb);
+	struct intel_dsb *dsb = crtc_state-&gt;dsb;
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state-&gt;uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc-&gt;base.dev);
 	u32 *buf = dsb-&gt;cmd_buf;
 
-	if (!buf) {
+	if (!(dsb &amp;&amp; dsb-&gt;cmd_buf)) {
 		intel_de_write(dev_priv, reg, val);
 		return;
 	}
-
+	buf = dsb-&gt;cmd_buf;
 	if (drm_WARN_ON(&amp;dev_priv-&gt;drm, dsb-&gt;free_pos &gt;= DSB_BUF_SIZE)) {
 		drm_dbg_kms(&amp;dev_priv-&gt;drm, "DSB buffer overflow\n");
 		return;
@@ -290,26 +193,27 @@ void intel_dsb_reg_write(struct intel_dsb *dsb, i915_reg_t reg, u32 val)
 
 /**
  * intel_dsb_commit() - Trigger workload execution of DSB.
- * @dsb: intel_dsb structure.
+ * @crtc_state: intel_crtc_state structure
  *
  * This function is used to do actual write to hardware using DSB.
  * On errors, fall back to MMIO. Also this function help to reset the context.
  */
-void intel_dsb_commit(struct intel_dsb *dsb)
+void intel_dsb_commit(const struct intel_crtc_state *crtc_state)
 {
-	struct intel_crtc *crtc = container_of(dsb, typeof(*crtc), dsb);
+	struct intel_dsb *dsb = crtc_state-&gt;dsb;
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state-&gt;uapi.crtc);
 	struct drm_device *dev = crtc-&gt;base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	enum pipe pipe = crtc-&gt;pipe;
 	u32 tail;
 
-	if (!dsb-&gt;free_pos)
+	if (!(dsb &amp;&amp; dsb-&gt;free_pos))
 		return;
 
-	if (!intel_dsb_enable_engine(dsb))
+	if (!intel_dsb_enable_engine(dev_priv, pipe, dsb-&gt;id))
 		goto reset;
 
-	if (is_dsb_busy(dsb)) {
+	if (is_dsb_busy(dev_priv, pipe, dsb-&gt;id)) {
 		drm_err(&amp;dev_priv-&gt;drm,
 			"HEAD_PTR write failed - dsb engine is busy.\n");
 		goto reset;
@@ -322,7 +226,7 @@ void intel_dsb_commit(struct intel_dsb *dsb)
 		memset(&amp;dsb-&gt;cmd_buf[dsb-&gt;free_pos], 0,
 		       (tail - dsb-&gt;free_pos * 4));
 
-	if (is_dsb_busy(dsb)) {
+	if (is_dsb_busy(dev_priv, pipe, dsb-&gt;id)) {
 		drm_err(&amp;dev_priv-&gt;drm,
 			"TAIL_PTR write failed - dsb engine is busy.\n");
 		goto reset;
@@ -332,7 +236,7 @@ void intel_dsb_commit(struct intel_dsb *dsb)
 		    i915_ggtt_offset(dsb-&gt;vma), tail);
 	intel_de_write(dev_priv, DSB_TAIL(pipe, dsb-&gt;id),
 		       i915_ggtt_offset(dsb-&gt;vma) + tail);
-	if (wait_for(!is_dsb_busy(dsb), 1)) {
+	if (wait_for(!is_dsb_busy(dev_priv, pipe, dsb-&gt;id), 1)) {
 		drm_err(&amp;dev_priv-&gt;drm,
 			"Timed out waiting for DSB workload completion.\n");
 		goto reset;
@@ -341,5 +245,83 @@ void intel_dsb_commit(struct intel_dsb *dsb)
 reset:
 	dsb-&gt;free_pos = 0;
 	dsb-&gt;ins_start_offset = 0;
-	intel_dsb_disable_engine(dsb);
+	intel_dsb_disable_engine(dev_priv, pipe, dsb-&gt;id);
+}
+
+/**
+ * intel_dsb_prepare() - Allocate, pin and map the DSB command buffer.
+ * @crtc_state: intel_crtc_state structure to prepare associated dsb instance.
+ *
+ * This function prepare the command buffer which is used to store dsb
+ * instructions with data.
+ */
+
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Superfluous newline.

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">+void intel_dsb_prepare(struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state-&gt;uapi.crtc);
+	struct drm_i915_private *i915 = to_i915(crtc-&gt;base.dev);
+	struct intel_dsb *dsb;
+	struct drm_i915_gem_object *obj;
+	struct i915_vma *vma;
+	u32 *buf;
+	intel_wakeref_t wakeref;
+
+	if (!HAS_DSB(i915))
+		return;
+
+	dsb = kmalloc(sizeof(*dsb), GFP_KERNEL);
+
+	wakeref = intel_runtime_pm_get(&amp;i915-&gt;runtime_pm);
+
+	obj = i915_gem_object_create_internal(i915, DSB_BUF_SIZE);
+	if (IS_ERR(obj)) {
+		drm_err(&amp;i915-&gt;drm, "Gem object creation failed\n");
+		goto out;
+	}
+
+	vma = i915_gem_object_ggtt_pin(obj, NULL, 0, 0, 0);
+	if (IS_ERR(vma)) {
+		drm_err(&amp;i915-&gt;drm, "Vma creation failed\n");
+		i915_gem_object_put(obj);
+		goto out;
+	}
+
+	buf = i915_gem_object_pin_map(vma-&gt;obj, I915_MAP_WC);
+	if (IS_ERR(buf)) {
+		drm_err(&amp;i915-&gt;drm, "Command buffer creation failed\n");
+		goto out;
+	}
+
+	dsb-&gt;id = DSB1;
+	dsb-&gt;vma = vma;
+	dsb-&gt;cmd_buf = buf;
+	dsb-&gt;free_pos = 0;
+	dsb-&gt;ins_start_offset = 0;
+	crtc_state-&gt;dsb = dsb;
+out:
+	/*
+	 * On error dsb-&gt;cmd_buf will continue to be NULL, making the writes
+	 * pass-through. Leave the dangling ref to be removed later by the
+	 * corresponding intel_dsb_put(): the important error message will
+	 * already be logged above.
+	 */
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Stale comment.

The error paths leak dsb and more.

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">+
+	intel_runtime_pm_put(&amp;i915-&gt;runtime_pm, wakeref);
+}
+
+/**
+ * intel_dsb_cleanup() - To cleanup DSB context.
+ * @crtc_state: intel_crtc_state structure to cleanup associated dsb instance.
+ *
+ * This function cleanup the DSB context by unpinning and releasing
+ * the VMA object associated with it.
+ */
+
+void intel_dsb_cleanup(struct intel_crtc_state *crtc_state)
+{
+	if (crtc_state &amp;&amp; crtc_state-&gt;dsb) {
+		i915_vma_unpin_and_release(&amp;crtc_state-&gt;dsb-&gt;vma,
+					   I915_VMA_RELEASE_MAP);
+		kfree(crtc_state-&gt;dsb);
+	}
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
index 395ef9ce558e..654a11f24b80 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb.h
@@ -10,7 +10,7 @@
 
 #include "i915_reg.h"
 
-struct intel_crtc;
+struct intel_crtc_state;
 struct i915_vma;
 
 enum dsb_id {
@@ -22,7 +22,6 @@ enum dsb_id {
 };
 
 struct intel_dsb {
-	long refcount;
 	enum dsb_id id;
 	u32 *cmd_buf;
 	struct i915_vma *vma;
@@ -41,12 +40,12 @@ struct intel_dsb {
 	u32 ins_start_offset;
 };
 
-struct intel_dsb *
-intel_dsb_get(struct intel_crtc *crtc);
-void intel_dsb_put(struct intel_dsb *dsb);
-void intel_dsb_reg_write(struct intel_dsb *dsb, i915_reg_t reg, u32 val);
-void intel_dsb_indexed_reg_write(struct intel_dsb *dsb, i915_reg_t reg,
-				 u32 val);
-void intel_dsb_commit(struct intel_dsb *dsb);
+void intel_dsb_prepare(struct intel_crtc_state *crtc_state);
+void intel_dsb_cleanup(struct intel_crtc_state *crtc_state);
+void intel_dsb_reg_write(const struct intel_crtc_state *crtc_state,
+			 i915_reg_t reg, u32 val);
+void intel_dsb_indexed_reg_write(const struct intel_crtc_state *crtc_state,
+				 i915_reg_t reg, u32 val);
+void intel_dsb_commit(const struct intel_crtc_state *crtc_state);
 
 #endif
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
  </body>
</html>

--------------D3172ACF2CB43AB7A22A20AE--

--===============0433950220==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0433950220==--
