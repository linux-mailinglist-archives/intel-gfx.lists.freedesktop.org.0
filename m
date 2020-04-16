Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10FDF1ABD76
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2020 12:01:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E82F56E2BD;
	Thu, 16 Apr 2020 10:01:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CED026E2BD
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Apr 2020 10:01:05 +0000 (UTC)
IronPort-SDR: Yl0Pubj34Azxo9hhVbgOrBas95QtWogDj9fclDP+a5iTlPO5kbIiGQ23C2coSTG46IzCRnmRQq
 8q7kanEKBEWQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2020 03:01:05 -0700
IronPort-SDR: VEBYRdh41xJuYehQO79+Fnk4fXSzH1unqzuL9JAhqj0tDddjFlpDUB7InU1cdfSYN9tl20FXyz
 kdAU2kyZIyQw==
X-IronPort-AV: E=Sophos;i="5.72,390,1580803200"; 
 d="scan'208,217";a="427779348"
Received: from amanna-mobl1.gar.corp.intel.com (HELO [10.252.169.242])
 ([10.252.169.242])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2020 03:01:02 -0700
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200413063420.20668-1-animesh.manna@intel.com>
 <eb5d8471-0f50-6518-3f44-e38e091bb7ec@linux.intel.com>
From: "Manna, Animesh" <animesh.manna@intel.com>
Message-ID: <acffdc93-6b84-f1d9-da24-407655217da2@intel.com>
Date: Thu, 16 Apr 2020 15:30:58 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <eb5d8471-0f50-6518-3f44-e38e091bb7ec@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915/dsb: Pre allocate and late
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
Cc: Jani Nikula <jani.nikula@intel.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: multipart/mixed; boundary="===============0154600606=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--===============0154600606==
Content-Type: multipart/alternative;
 boundary="------------FBE705E89493FB89FE98AEDE"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------FBE705E89493FB89FE98AEDE
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 16-04-2020 15:19, Maarten Lankhorst wrote:
> Hey,
>
> Seems we're lacking error handling still when get fails?

Hi Maarten,

Error handling is taken care by dsb-framework, if _prepare() is failed then dsb->cmd_buf will be null and during dsb-write() mmio-write will be used to program registers.
As we have mmio fallback so do not want to fail the commit. Added a code-comment in intel_atomic_prepare_commit(). Maybe if needed I can elaborate a bit more. Please let me know your view on this.

Regards,
Animesh

>
> ~Maarten
>
> Op 13-04-2020 om 08:34 schreef Animesh Manna:
>> Pre-allocate command buffer in atomic_commit using intel_dsb_prepare
>> function which also includes pinning and map in cpu domain.
>>
>> No change is dsb write/commit functions.
>>
>> Now dsb get/put function is refactored and currently used only for
>> reference counting. Below dsb api added to do respective job
>> mentioned below.
>>
>> intel_dsb_prepare - Allocate, pin and map the buffer.
>> intel_dsb_cleanup - Unpin and release the gem object.
>>
>> RFC: Initial patch for design review.
>> v2: included _init() part in _prepare(). [Daniel, Ville]
>> v3: dsb_cleanup called after cleanup_planes. [Daniel]
>> v4: dsb structure is moved to intel_crtc_state from intel_crtc. [Maarten]
>>
>> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
>> Cc: Jani Nikula <jani.nikula@intel.com>
>> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
>> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_color.c    |  19 +-
>>   drivers/gpu/drm/i915/display/intel_display.c  |  47 ++++-
>>   .../drm/i915/display/intel_display_types.h    |   6 +-
>>   drivers/gpu/drm/i915/display/intel_dsb.c      | 169 ++++++++++++------
>>   drivers/gpu/drm/i915/display/intel_dsb.h      |   6 +-
>>   5 files changed, 170 insertions(+), 77 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
>> index 98ece9cd7cdd..fb2caee90734 100644
>> --- a/drivers/gpu/drm/i915/display/intel_color.c
>> +++ b/drivers/gpu/drm/i915/display/intel_color.c
>> @@ -717,7 +717,7 @@ static void bdw_load_lut_10(struct intel_crtc *crtc,
>>   static void ivb_load_lut_ext_max(struct intel_crtc *crtc)
>>   {
>>   	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>> -	struct intel_dsb *dsb = intel_dsb_get(crtc);
>> +	struct intel_dsb *dsb = intel_dsb_get(crtc->config);
>>   	enum pipe pipe = crtc->pipe;
>>   
>>   	/* Program the max register to clamp values > 1.0. */
>> @@ -900,7 +900,7 @@ icl_load_gcmax(const struct intel_crtc_state *crtc_state,
>>   	       const struct drm_color_lut *color)
>>   {
>>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>> -	struct intel_dsb *dsb = intel_dsb_get(crtc);
>> +	struct intel_dsb *dsb = intel_dsb_get(crtc->config);
>>   	enum pipe pipe = crtc->pipe;
>>   
>>   	/* FIXME LUT entries are 16 bit only, so we can prog 0xFFFF max */
>> @@ -916,7 +916,7 @@ icl_program_gamma_superfine_segment(const struct intel_crtc_state *crtc_state)
>>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>   	const struct drm_property_blob *blob = crtc_state->hw.gamma_lut;
>>   	const struct drm_color_lut *lut = blob->data;
>> -	struct intel_dsb *dsb = intel_dsb_get(crtc);
>> +	struct intel_dsb *dsb = intel_dsb_get(crtc->config);
>>   	enum pipe pipe = crtc->pipe;
>>   	int i;
>>   
>> @@ -949,7 +949,7 @@ icl_program_gamma_multi_segment(const struct intel_crtc_state *crtc_state)
>>   	const struct drm_property_blob *blob = crtc_state->hw.gamma_lut;
>>   	const struct drm_color_lut *lut = blob->data;
>>   	const struct drm_color_lut *entry;
>> -	struct intel_dsb *dsb = intel_dsb_get(crtc);
>> +	struct intel_dsb *dsb = intel_dsb_get(crtc->config);
>>   	enum pipe pipe = crtc->pipe;
>>   	int i;
>>   
>> @@ -1003,7 +1003,16 @@ static void icl_load_luts(const struct intel_crtc_state *crtc_state)
>>   {
>>   	const struct drm_property_blob *gamma_lut = crtc_state->hw.gamma_lut;
>>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>> -	struct intel_dsb *dsb = intel_dsb_get(crtc);
>> +	struct intel_dsb *dsb = intel_dsb_get(crtc->config);
>> +
>> +	/*
>> +	 * TODO: Currently dsb buffer filling is done in load_lut() which
>> +	 * can be done much earlier, like initial stage of atomic_commit().
>> +	 * As currently replacing the mmio-write with dsb-write so the same
>> +	 * load_lut() api is used for dsb buffer creation which may not
>> +	 * fit in initial stage. Need to create a separate interface and
>> +	 * a different path in color framework while dealing with dsb.
>> +	 */
>>   
>>   	if (crtc_state->hw.degamma_lut)
>>   		glk_load_degamma_lut(crtc_state);
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index 70ec301fe6e3..42c4d6c7f334 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -14844,8 +14844,28 @@ static int intel_atomic_check(struct drm_device *dev,
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
>> +	 * Failure in DSB buffer creation enable fallback mmio for register
>> +	 * programming and erroneous path will be handled by dsp-write api.
>> +	 */
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
>> @@ -15298,15 +15318,26 @@ static void intel_atomic_commit_fence_wait(struct intel_atomic_state *intel_stat
>>   		    &wait_reset);
>>   }
>>   
>> +static void intel_cleanup_dsbs(struct intel_atomic_state *state)
>> +{
>> +	struct intel_crtc_state *crtc_state;
>> +	struct intel_crtc *crtc;
>> +	int i;
>> +
>> +	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i)
>> +		intel_dsb_cleanup(crtc_state);
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
>> +	drm_atomic_helper_cleanup_planes(&i915->drm, &state->base);
>> +	intel_cleanup_dsbs(state);
>> +	drm_atomic_helper_commit_cleanup_done(&state->base);
>> +	drm_atomic_state_put(&state->base);
>>   
>>   	intel_atomic_helper_free_state(i915);
>>   }
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index ba8c08145c88..8b21bab088ea 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -1079,6 +1079,9 @@ struct intel_crtc_state {
>>   
>>   	/* Only valid on TGL+ */
>>   	enum transcoder mst_master_transcoder;
>> +
>> +	/* For DSB related info */
>> +	struct intel_dsb dsb;
>>   };
>>   
>>   enum intel_pipe_crc_source {
>> @@ -1148,9 +1151,6 @@ struct intel_crtc {
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
>> index d7a6bf2277df..2c5840240ddc 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
>> @@ -34,9 +34,92 @@
>>   #define DSB_BYTE_EN_SHIFT		20
>>   #define DSB_REG_VALUE_MASK		0xfffff
>>   
>> +/**
>> + * intel_dsb_prepare() - Allocate, pin and map the DSB command buffer.
>> + * @crtc: intel_crtc structure to get pipe info.
>> + *
>> + * This function prepare the command buffer which is used to store dsb
>> + * instructions with data.
>> + */
>> +
>> +void intel_dsb_prepare(struct intel_crtc_state *crtc_state)
>> +{
>> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>> +	struct intel_dsb *dsb = &crtc_state->dsb;
>> +	struct drm_i915_gem_object *obj;
>> +	struct i915_vma *vma;
>> +	u32 *buf;
>> +	intel_wakeref_t wakeref;
>> +
>> +	if (!HAS_DSB(i915) || dsb->cmd_buf)
>> +		return;
>> +
>> +	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
>> +
>> +	obj = i915_gem_object_create_internal(i915, DSB_BUF_SIZE);
>> +	if (IS_ERR(obj)) {
>> +		DRM_ERROR("Gem object creation failed\n");
>> +		goto out;
>> +	}
>> +
>> +	vma = i915_gem_object_ggtt_pin(obj, NULL, 0, 0, 0);
>> +	if (IS_ERR(vma)) {
>> +		DRM_ERROR("Vma creation failed\n");
>> +		i915_gem_object_put(obj);
>> +		goto out;
>> +	}
>> +
>> +	buf = i915_gem_object_pin_map(vma->obj, I915_MAP_WC);
>> +	if (IS_ERR(buf)) {
>> +		DRM_ERROR("Command buffer creation failed\n");
>> +		goto out;
>> +	}
>> +
>> +	dsb->id = DSB1;
>> +	dsb->vma = vma;
>> +	dsb->cmd_buf = buf;
>> +
>> +out:
>> +	/*
>> +	 * On error dsb->cmd_buf will continue to be NULL, making the writes
>> +	 * pass-through. Leave the dangling ref to be removed later by the
>> +	 * corresponding intel_dsb_put(): the important error message will
>> +	 * already be logged above.
>> +	 */
>> +
>> +	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
>> +}
>> +
>> +/**
>> + * intel_dsb_cleanup() - To cleanup DSB context.
>> + * @dsb: intel_dsb structure.
>> + *
>> + * This function cleanup the DSB context by unpinning and releasing
>> + * the VMA object associated with it.
>> + */
>> +
>> +void intel_dsb_cleanup(struct intel_crtc_state *crtc_state)
>> +{
>> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>> +	struct intel_dsb *dsb = &crtc_state->dsb;
>> +
>> +	if (!HAS_DSB(i915))
>> +		return;
>> +
>> +	if (dsb->vma) {
>> +		i915_vma_unpin_and_release(&dsb->vma, I915_VMA_RELEASE_MAP);
>> +		dsb->vma = NULL;
>> +		dsb->cmd_buf = NULL;
>> +	}
>> +}
>> +
>>   static inline bool is_dsb_busy(struct intel_dsb *dsb)
>>   {
>> -	struct intel_crtc *crtc = container_of(dsb, typeof(*crtc), dsb);
>> +	struct intel_crtc_state *crtc_state =
>> +		container_of(dsb, typeof(*crtc_state), dsb);
>> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>   	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>>   	enum pipe pipe = crtc->pipe;
>>   
>> @@ -45,7 +128,9 @@ static inline bool is_dsb_busy(struct intel_dsb *dsb)
>>   
>>   static inline bool intel_dsb_enable_engine(struct intel_dsb *dsb)
>>   {
>> -	struct intel_crtc *crtc = container_of(dsb, typeof(*crtc), dsb);
>> +	struct intel_crtc_state *crtc_state =
>> +		container_of(dsb, typeof(*crtc_state), dsb);
>> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>   	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>>   	enum pipe pipe = crtc->pipe;
>>   	u32 dsb_ctrl;
>> @@ -65,7 +150,9 @@ static inline bool intel_dsb_enable_engine(struct intel_dsb *dsb)
>>   
>>   static inline bool intel_dsb_disable_engine(struct intel_dsb *dsb)
>>   {
>> -	struct intel_crtc *crtc = container_of(dsb, typeof(*crtc), dsb);
>> +	struct intel_crtc_state *crtc_state =
>> +		container_of(dsb, typeof(*crtc_state), dsb);
>> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>   	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>>   	enum pipe pipe = crtc->pipe;
>>   	u32 dsb_ctrl;
>> @@ -84,68 +171,26 @@ static inline bool intel_dsb_disable_engine(struct intel_dsb *dsb)
>>   }
>>   
>>   /**
>> - * intel_dsb_get() - Allocate DSB context and return a DSB instance.
>> + * intel_dsb_get() - Return a DSB instance and increase reference count.
>>    * @crtc: intel_crtc structure to get pipe info.
>>    *
>>    * This function provides handle of a DSB instance, for the further DSB
>>    * operations.
>>    *
>>    * Returns: address of Intel_dsb instance requested for.
>> - * Failure: Returns the same DSB instance, but without a command buffer.
>>    */
>>   
>>   struct intel_dsb *
>> -intel_dsb_get(struct intel_crtc *crtc)
>> +intel_dsb_get(struct intel_crtc_state *crtc_state)
>>   {
>> -	struct drm_device *dev = crtc->base.dev;
>> -	struct drm_i915_private *i915 = to_i915(dev);
>> -	struct intel_dsb *dsb = &crtc->dsb;
>> -	struct drm_i915_gem_object *obj;
>> -	struct i915_vma *vma;
>> -	u32 *buf;
>> -	intel_wakeref_t wakeref;
>> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>> +	struct intel_dsb *dsb = &crtc_state->dsb;
>>   
>>   	if (!HAS_DSB(i915))
>>   		return dsb;
>>   
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
>> +	dsb->refcount++;
>>   	return dsb;
>>   }
>>   
>> @@ -153,13 +198,15 @@ intel_dsb_get(struct intel_crtc *crtc)
>>    * intel_dsb_put() - To destroy DSB context.
>>    * @dsb: intel_dsb structure.
>>    *
>> - * This function destroys the DSB context allocated by a dsb_get(), by
>> - * unpinning and releasing the VMA object associated with it.
>> + * This function decrease the reference count and reset the command
>> + * buffer position.
>>    */
>>   
>>   void intel_dsb_put(struct intel_dsb *dsb)
>>   {
>> -	struct intel_crtc *crtc = container_of(dsb, typeof(*crtc), dsb);
>> +	struct intel_crtc_state *crtc_state =
>> +		container_of(dsb, typeof(*crtc_state), dsb);
>> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>   	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>>   
>>   	if (!HAS_DSB(i915))
>> @@ -169,8 +216,6 @@ void intel_dsb_put(struct intel_dsb *dsb)
>>   		return;
>>   
>>   	if (--dsb->refcount == 0) {
>> -		i915_vma_unpin_and_release(&dsb->vma, I915_VMA_RELEASE_MAP);
>> -		dsb->cmd_buf = NULL;
>>   		dsb->free_pos = 0;
>>   		dsb->ins_start_offset = 0;
>>   	}
>> @@ -192,7 +237,9 @@ void intel_dsb_put(struct intel_dsb *dsb)
>>   void intel_dsb_indexed_reg_write(struct intel_dsb *dsb, i915_reg_t reg,
>>   				 u32 val)
>>   {
>> -	struct intel_crtc *crtc = container_of(dsb, typeof(*crtc), dsb);
>> +	struct intel_crtc_state *crtc_state =
>> +		container_of(dsb, typeof(*crtc_state), dsb);
>> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>   	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>>   	u32 *buf = dsb->cmd_buf;
>>   	u32 reg_val;
>> @@ -267,7 +314,9 @@ void intel_dsb_indexed_reg_write(struct intel_dsb *dsb, i915_reg_t reg,
>>    */
>>   void intel_dsb_reg_write(struct intel_dsb *dsb, i915_reg_t reg, u32 val)
>>   {
>> -	struct intel_crtc *crtc = container_of(dsb, typeof(*crtc), dsb);
>> +	struct intel_crtc_state *crtc_state =
>> +		container_of(dsb, typeof(*crtc_state), dsb);
>> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>   	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>>   	u32 *buf = dsb->cmd_buf;
>>   
>> @@ -297,7 +346,9 @@ void intel_dsb_reg_write(struct intel_dsb *dsb, i915_reg_t reg, u32 val)
>>    */
>>   void intel_dsb_commit(struct intel_dsb *dsb)
>>   {
>> -	struct intel_crtc *crtc = container_of(dsb, typeof(*crtc), dsb);
>> +	struct intel_crtc_state *crtc_state =
>> +		container_of(dsb, typeof(*crtc_state), dsb);
>> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>   	struct drm_device *dev = crtc->base.dev;
>>   	struct drm_i915_private *dev_priv = to_i915(dev);
>>   	enum pipe pipe = crtc->pipe;
>> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
>> index 395ef9ce558e..65e2d0d1c71e 100644
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
>> @@ -41,8 +41,10 @@ struct intel_dsb {
>>   	u32 ins_start_offset;
>>   };
>>   
>> +void intel_dsb_prepare(struct intel_crtc_state *crtc_state);
>> +void intel_dsb_cleanup(struct intel_crtc_state *crtc_state);
>>   struct intel_dsb *
>> -intel_dsb_get(struct intel_crtc *crtc);
>> +intel_dsb_get(struct intel_crtc_state *crtc_state);
>>   void intel_dsb_put(struct intel_dsb *dsb);
>>   void intel_dsb_reg_write(struct intel_dsb *dsb, i915_reg_t reg, u32 val);
>>   void intel_dsb_indexed_reg_write(struct intel_dsb *dsb, i915_reg_t reg,
>

--------------FBE705E89493FB89FE98AEDE
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 16-04-2020 15:19, Maarten Lankhorst
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:eb5d8471-0f50-6518-3f44-e38e091bb7ec@linux.intel.com">
      <pre class="moz-quote-pre" wrap="">Hey,

Seems we're lacking error handling still when get fails?</pre>
    </blockquote>
    <pre>
Hi Maarten,

Error handling is taken care by dsb-framework, if _prepare() is failed then dsb-&gt;cmd_buf will be null and during dsb-write() mmio-write will be used to program registers.
As we have mmio fallback so do not want to fail the commit. Added a code-comment in intel_atomic_prepare_commit(). Maybe if needed I can elaborate a bit more. Please let me know your view on this.  

Regards,
Animesh
</pre>
    <blockquote type="cite"
      cite="mid:eb5d8471-0f50-6518-3f44-e38e091bb7ec@linux.intel.com">
      <pre class="moz-quote-pre" wrap="">

~Maarten

Op 13-04-2020 om 08:34 schreef Animesh Manna:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">Pre-allocate command buffer in atomic_commit using intel_dsb_prepare
function which also includes pinning and map in cpu domain.

No change is dsb write/commit functions.

Now dsb get/put function is refactored and currently used only for
reference counting. Below dsb api added to do respective job
mentioned below.

intel_dsb_prepare - Allocate, pin and map the buffer.
intel_dsb_cleanup - Unpin and release the gem object.

RFC: Initial patch for design review.
v2: included _init() part in _prepare(). [Daniel, Ville]
v3: dsb_cleanup called after cleanup_planes. [Daniel]
v4: dsb structure is moved to intel_crtc_state from intel_crtc. [Maarten]

Cc: Maarten Lankhorst <a class="moz-txt-link-rfc2396E" href="mailto:maarten.lankhorst@linux.intel.com">&lt;maarten.lankhorst@linux.intel.com&gt;</a>
Cc: Ville Syrjälä <a class="moz-txt-link-rfc2396E" href="mailto:ville.syrjala@linux.intel.com">&lt;ville.syrjala@linux.intel.com&gt;</a>
Cc: Jani Nikula <a class="moz-txt-link-rfc2396E" href="mailto:jani.nikula@intel.com">&lt;jani.nikula@intel.com&gt;</a>
Cc: Daniel Vetter <a class="moz-txt-link-rfc2396E" href="mailto:daniel.vetter@ffwll.ch">&lt;daniel.vetter@ffwll.ch&gt;</a>
Signed-off-by: Animesh Manna <a class="moz-txt-link-rfc2396E" href="mailto:animesh.manna@intel.com">&lt;animesh.manna@intel.com&gt;</a>
---
 drivers/gpu/drm/i915/display/intel_color.c    |  19 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  47 ++++-
 .../drm/i915/display/intel_display_types.h    |   6 +-
 drivers/gpu/drm/i915/display/intel_dsb.c      | 169 ++++++++++++------
 drivers/gpu/drm/i915/display/intel_dsb.h      |   6 +-
 5 files changed, 170 insertions(+), 77 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 98ece9cd7cdd..fb2caee90734 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -717,7 +717,7 @@ static void bdw_load_lut_10(struct intel_crtc *crtc,
 static void ivb_load_lut_ext_max(struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc-&gt;base.dev);
-	struct intel_dsb *dsb = intel_dsb_get(crtc);
+	struct intel_dsb *dsb = intel_dsb_get(crtc-&gt;config);
 	enum pipe pipe = crtc-&gt;pipe;
 
 	/* Program the max register to clamp values &gt; 1.0. */
@@ -900,7 +900,7 @@ icl_load_gcmax(const struct intel_crtc_state *crtc_state,
 	       const struct drm_color_lut *color)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state-&gt;uapi.crtc);
-	struct intel_dsb *dsb = intel_dsb_get(crtc);
+	struct intel_dsb *dsb = intel_dsb_get(crtc-&gt;config);
 	enum pipe pipe = crtc-&gt;pipe;
 
 	/* FIXME LUT entries are 16 bit only, so we can prog 0xFFFF max */
@@ -916,7 +916,7 @@ icl_program_gamma_superfine_segment(const struct intel_crtc_state *crtc_state)
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state-&gt;uapi.crtc);
 	const struct drm_property_blob *blob = crtc_state-&gt;hw.gamma_lut;
 	const struct drm_color_lut *lut = blob-&gt;data;
-	struct intel_dsb *dsb = intel_dsb_get(crtc);
+	struct intel_dsb *dsb = intel_dsb_get(crtc-&gt;config);
 	enum pipe pipe = crtc-&gt;pipe;
 	int i;
 
@@ -949,7 +949,7 @@ icl_program_gamma_multi_segment(const struct intel_crtc_state *crtc_state)
 	const struct drm_property_blob *blob = crtc_state-&gt;hw.gamma_lut;
 	const struct drm_color_lut *lut = blob-&gt;data;
 	const struct drm_color_lut *entry;
-	struct intel_dsb *dsb = intel_dsb_get(crtc);
+	struct intel_dsb *dsb = intel_dsb_get(crtc-&gt;config);
 	enum pipe pipe = crtc-&gt;pipe;
 	int i;
 
@@ -1003,7 +1003,16 @@ static void icl_load_luts(const struct intel_crtc_state *crtc_state)
 {
 	const struct drm_property_blob *gamma_lut = crtc_state-&gt;hw.gamma_lut;
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state-&gt;uapi.crtc);
-	struct intel_dsb *dsb = intel_dsb_get(crtc);
+	struct intel_dsb *dsb = intel_dsb_get(crtc-&gt;config);
+
+	/*
+	 * TODO: Currently dsb buffer filling is done in load_lut() which
+	 * can be done much earlier, like initial stage of atomic_commit().
+	 * As currently replacing the mmio-write with dsb-write so the same
+	 * load_lut() api is used for dsb buffer creation which may not
+	 * fit in initial stage. Need to create a separate interface and
+	 * a different path in color framework while dealing with dsb.
+	 */
 
 	if (crtc_state-&gt;hw.degamma_lut)
 		glk_load_degamma_lut(crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 70ec301fe6e3..42c4d6c7f334 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -14844,8 +14844,28 @@ static int intel_atomic_check(struct drm_device *dev,
 
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
+	 * Failure in DSB buffer creation enable fallback mmio for register
+	 * programming and erroneous path will be handled by dsp-write api.
+	 */
+	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
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
@@ -15298,15 +15318,26 @@ static void intel_atomic_commit_fence_wait(struct intel_atomic_state *intel_stat
 		    &amp;wait_reset);
 }
 
+static void intel_cleanup_dsbs(struct intel_atomic_state *state)
+{
+	struct intel_crtc_state *crtc_state;
+	struct intel_crtc *crtc;
+	int i;
+
+	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i)
+		intel_dsb_cleanup(crtc_state);
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
+	drm_atomic_helper_cleanup_planes(&amp;i915-&gt;drm, &amp;state-&gt;base);
+	intel_cleanup_dsbs(state);
+	drm_atomic_helper_commit_cleanup_done(&amp;state-&gt;base);
+	drm_atomic_state_put(&amp;state-&gt;base);
 
 	intel_atomic_helper_free_state(i915);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index ba8c08145c88..8b21bab088ea 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1079,6 +1079,9 @@ struct intel_crtc_state {
 
 	/* Only valid on TGL+ */
 	enum transcoder mst_master_transcoder;
+
+	/* For DSB related info */
+	struct intel_dsb dsb;
 };
 
 enum intel_pipe_crc_source {
@@ -1148,9 +1151,6 @@ struct intel_crtc {
 	/* scalers available on this crtc */
 	int num_scalers;
 
-	/* per pipe DSB related info */
-	struct intel_dsb dsb;
-
 #ifdef CONFIG_DEBUG_FS
 	struct intel_pipe_crc pipe_crc;
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index d7a6bf2277df..2c5840240ddc 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -34,9 +34,92 @@
 #define DSB_BYTE_EN_SHIFT		20
 #define DSB_REG_VALUE_MASK		0xfffff
 
+/**
+ * intel_dsb_prepare() - Allocate, pin and map the DSB command buffer.
+ * @crtc: intel_crtc structure to get pipe info.
+ *
+ * This function prepare the command buffer which is used to store dsb
+ * instructions with data.
+ */
+
+void intel_dsb_prepare(struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state-&gt;uapi.crtc);
+	struct drm_i915_private *i915 = to_i915(crtc-&gt;base.dev);
+	struct intel_dsb *dsb = &amp;crtc_state-&gt;dsb;
+	struct drm_i915_gem_object *obj;
+	struct i915_vma *vma;
+	u32 *buf;
+	intel_wakeref_t wakeref;
+
+	if (!HAS_DSB(i915) || dsb-&gt;cmd_buf)
+		return;
+
+	wakeref = intel_runtime_pm_get(&amp;i915-&gt;runtime_pm);
+
+	obj = i915_gem_object_create_internal(i915, DSB_BUF_SIZE);
+	if (IS_ERR(obj)) {
+		DRM_ERROR("Gem object creation failed\n");
+		goto out;
+	}
+
+	vma = i915_gem_object_ggtt_pin(obj, NULL, 0, 0, 0);
+	if (IS_ERR(vma)) {
+		DRM_ERROR("Vma creation failed\n");
+		i915_gem_object_put(obj);
+		goto out;
+	}
+
+	buf = i915_gem_object_pin_map(vma-&gt;obj, I915_MAP_WC);
+	if (IS_ERR(buf)) {
+		DRM_ERROR("Command buffer creation failed\n");
+		goto out;
+	}
+
+	dsb-&gt;id = DSB1;
+	dsb-&gt;vma = vma;
+	dsb-&gt;cmd_buf = buf;
+
+out:
+	/*
+	 * On error dsb-&gt;cmd_buf will continue to be NULL, making the writes
+	 * pass-through. Leave the dangling ref to be removed later by the
+	 * corresponding intel_dsb_put(): the important error message will
+	 * already be logged above.
+	 */
+
+	intel_runtime_pm_put(&amp;i915-&gt;runtime_pm, wakeref);
+}
+
+/**
+ * intel_dsb_cleanup() - To cleanup DSB context.
+ * @dsb: intel_dsb structure.
+ *
+ * This function cleanup the DSB context by unpinning and releasing
+ * the VMA object associated with it.
+ */
+
+void intel_dsb_cleanup(struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state-&gt;uapi.crtc);
+	struct drm_i915_private *i915 = to_i915(crtc-&gt;base.dev);
+	struct intel_dsb *dsb = &amp;crtc_state-&gt;dsb;
+
+	if (!HAS_DSB(i915))
+		return;
+
+	if (dsb-&gt;vma) {
+		i915_vma_unpin_and_release(&amp;dsb-&gt;vma, I915_VMA_RELEASE_MAP);
+		dsb-&gt;vma = NULL;
+		dsb-&gt;cmd_buf = NULL;
+	}
+}
+
 static inline bool is_dsb_busy(struct intel_dsb *dsb)
 {
-	struct intel_crtc *crtc = container_of(dsb, typeof(*crtc), dsb);
+	struct intel_crtc_state *crtc_state =
+		container_of(dsb, typeof(*crtc_state), dsb);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state-&gt;uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc-&gt;base.dev);
 	enum pipe pipe = crtc-&gt;pipe;
 
@@ -45,7 +128,9 @@ static inline bool is_dsb_busy(struct intel_dsb *dsb)
 
 static inline bool intel_dsb_enable_engine(struct intel_dsb *dsb)
 {
-	struct intel_crtc *crtc = container_of(dsb, typeof(*crtc), dsb);
+	struct intel_crtc_state *crtc_state =
+		container_of(dsb, typeof(*crtc_state), dsb);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state-&gt;uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc-&gt;base.dev);
 	enum pipe pipe = crtc-&gt;pipe;
 	u32 dsb_ctrl;
@@ -65,7 +150,9 @@ static inline bool intel_dsb_enable_engine(struct intel_dsb *dsb)
 
 static inline bool intel_dsb_disable_engine(struct intel_dsb *dsb)
 {
-	struct intel_crtc *crtc = container_of(dsb, typeof(*crtc), dsb);
+	struct intel_crtc_state *crtc_state =
+		container_of(dsb, typeof(*crtc_state), dsb);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state-&gt;uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc-&gt;base.dev);
 	enum pipe pipe = crtc-&gt;pipe;
 	u32 dsb_ctrl;
@@ -84,68 +171,26 @@ static inline bool intel_dsb_disable_engine(struct intel_dsb *dsb)
 }
 
 /**
- * intel_dsb_get() - Allocate DSB context and return a DSB instance.
+ * intel_dsb_get() - Return a DSB instance and increase reference count.
  * @crtc: intel_crtc structure to get pipe info.
  *
  * This function provides handle of a DSB instance, for the further DSB
  * operations.
  *
  * Returns: address of Intel_dsb instance requested for.
- * Failure: Returns the same DSB instance, but without a command buffer.
  */
 
 struct intel_dsb *
-intel_dsb_get(struct intel_crtc *crtc)
+intel_dsb_get(struct intel_crtc_state *crtc_state)
 {
-	struct drm_device *dev = crtc-&gt;base.dev;
-	struct drm_i915_private *i915 = to_i915(dev);
-	struct intel_dsb *dsb = &amp;crtc-&gt;dsb;
-	struct drm_i915_gem_object *obj;
-	struct i915_vma *vma;
-	u32 *buf;
-	intel_wakeref_t wakeref;
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state-&gt;uapi.crtc);
+	struct drm_i915_private *i915 = to_i915(crtc-&gt;base.dev);
+	struct intel_dsb *dsb = &amp;crtc_state-&gt;dsb;
 
 	if (!HAS_DSB(i915))
 		return dsb;
 
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
+	dsb-&gt;refcount++;
 	return dsb;
 }
 
@@ -153,13 +198,15 @@ intel_dsb_get(struct intel_crtc *crtc)
  * intel_dsb_put() - To destroy DSB context.
  * @dsb: intel_dsb structure.
  *
- * This function destroys the DSB context allocated by a dsb_get(), by
- * unpinning and releasing the VMA object associated with it.
+ * This function decrease the reference count and reset the command
+ * buffer position.
  */
 
 void intel_dsb_put(struct intel_dsb *dsb)
 {
-	struct intel_crtc *crtc = container_of(dsb, typeof(*crtc), dsb);
+	struct intel_crtc_state *crtc_state =
+		container_of(dsb, typeof(*crtc_state), dsb);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state-&gt;uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc-&gt;base.dev);
 
 	if (!HAS_DSB(i915))
@@ -169,8 +216,6 @@ void intel_dsb_put(struct intel_dsb *dsb)
 		return;
 
 	if (--dsb-&gt;refcount == 0) {
-		i915_vma_unpin_and_release(&amp;dsb-&gt;vma, I915_VMA_RELEASE_MAP);
-		dsb-&gt;cmd_buf = NULL;
 		dsb-&gt;free_pos = 0;
 		dsb-&gt;ins_start_offset = 0;
 	}
@@ -192,7 +237,9 @@ void intel_dsb_put(struct intel_dsb *dsb)
 void intel_dsb_indexed_reg_write(struct intel_dsb *dsb, i915_reg_t reg,
 				 u32 val)
 {
-	struct intel_crtc *crtc = container_of(dsb, typeof(*crtc), dsb);
+	struct intel_crtc_state *crtc_state =
+		container_of(dsb, typeof(*crtc_state), dsb);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state-&gt;uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc-&gt;base.dev);
 	u32 *buf = dsb-&gt;cmd_buf;
 	u32 reg_val;
@@ -267,7 +314,9 @@ void intel_dsb_indexed_reg_write(struct intel_dsb *dsb, i915_reg_t reg,
  */
 void intel_dsb_reg_write(struct intel_dsb *dsb, i915_reg_t reg, u32 val)
 {
-	struct intel_crtc *crtc = container_of(dsb, typeof(*crtc), dsb);
+	struct intel_crtc_state *crtc_state =
+		container_of(dsb, typeof(*crtc_state), dsb);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state-&gt;uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc-&gt;base.dev);
 	u32 *buf = dsb-&gt;cmd_buf;
 
@@ -297,7 +346,9 @@ void intel_dsb_reg_write(struct intel_dsb *dsb, i915_reg_t reg, u32 val)
  */
 void intel_dsb_commit(struct intel_dsb *dsb)
 {
-	struct intel_crtc *crtc = container_of(dsb, typeof(*crtc), dsb);
+	struct intel_crtc_state *crtc_state =
+		container_of(dsb, typeof(*crtc_state), dsb);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state-&gt;uapi.crtc);
 	struct drm_device *dev = crtc-&gt;base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	enum pipe pipe = crtc-&gt;pipe;
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
index 395ef9ce558e..65e2d0d1c71e 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb.h
@@ -10,7 +10,7 @@
 
 #include "i915_reg.h"
 
-struct intel_crtc;
+struct intel_crtc_state;
 struct i915_vma;
 
 enum dsb_id {
@@ -41,8 +41,10 @@ struct intel_dsb {
 	u32 ins_start_offset;
 };
 
+void intel_dsb_prepare(struct intel_crtc_state *crtc_state);
+void intel_dsb_cleanup(struct intel_crtc_state *crtc_state);
 struct intel_dsb *
-intel_dsb_get(struct intel_crtc *crtc);
+intel_dsb_get(struct intel_crtc_state *crtc_state);
 void intel_dsb_put(struct intel_dsb *dsb);
 void intel_dsb_reg_write(struct intel_dsb *dsb, i915_reg_t reg, u32 val);
 void intel_dsb_indexed_reg_write(struct intel_dsb *dsb, i915_reg_t reg,
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">

</pre>
    </blockquote>
  </body>
</html>

--------------FBE705E89493FB89FE98AEDE--

--===============0154600606==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0154600606==--
