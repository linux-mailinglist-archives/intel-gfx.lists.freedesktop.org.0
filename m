Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A4A395C9E5
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2024 12:08:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49DC410E45F;
	Fri, 23 Aug 2024 10:07:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IGvzFXv3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44F8B10E482;
 Fri, 23 Aug 2024 10:07:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724407677; x=1755943677;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=+AIJINrh5IXmBRszcBOSA8cO3I2o51pPQk/vqynzEPE=;
 b=IGvzFXv3QQPYexshRLNv8XUpv3/yUBwND+hwrCuJEPFqtxl2bKg8yjkg
 Gel/1uBUc3w13l6+kiwG1vNtby0ewVCFt6oJePWJ3oJJqpLkPprmsiXeS
 zX9EBI1gINH7l7inb2bj/KjP9cuRjZoEet0NuPFucJT1MC6JjpcUOjVr3
 mNI++4xAGZgBFN4LR5SI3O950ibG/3VoonCtVRemyjfbHtL9Y+neXCMnG
 uAIvwMqxttZ3rdEKJ7Lc3PQlS3L/sLzbkedj4XQMBJDcDT1dv0G6pLZsO
 WFYn6lf1DukORbQ0oW15MGrie3mxVFldBW2XHiPlLowuNUqm6Xmw8Dzas g==;
X-CSE-ConnectionGUID: gyLx1YIRS92fFRAXW7aUNg==
X-CSE-MsgGUID: r65VvhlVShK/+VswV5rk9w==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="48264053"
X-IronPort-AV: E=Sophos;i="6.10,170,1719903600"; d="scan'208";a="48264053"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2024 03:07:55 -0700
X-CSE-ConnectionGUID: sY4mw0DEQCiUfTCykGDuAA==
X-CSE-MsgGUID: zimfDG2ISiGXw0nL/uzDvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,170,1719903600"; d="scan'208";a="66453437"
Received: from mklonows-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.223])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2024 03:07:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 3/7] drm/i915/vblank: convert to struct intel_display
In-Reply-To: <Zsew3qUTK-qjhcuC@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1724342644.git.jani.nikula@intel.com>
 <40430651a45ddd9e350a1fd7938fe4054492f6ea.1724342644.git.jani.nikula@intel.com>
 <Zsew3qUTK-qjhcuC@intel.com>
Date: Fri, 23 Aug 2024 13:07:48 +0300
Message-ID: <87plpz362z.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 22 Aug 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Thu, Aug 22, 2024 at 07:04:51PM +0300, Jani Nikula wrote:
>> Going forward, struct intel_display shall replace struct
>> drm_i915_private as the main display device data pointer type. Convert
>> intel_vblank.[ch] to struct intel_display.
>> 
>> Some stragglers	are left behind	where needed.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_vblank.c | 97 +++++++++++----------
>>  1 file changed, 50 insertions(+), 47 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
>> index 2073e8075af4..838b55ecb1d8 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
>> @@ -67,7 +67,7 @@
>>   */
>>  u32 i915_get_vblank_counter(struct drm_crtc *crtc)
>>  {
>> -	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
>> +	struct intel_display *display = to_intel_display(crtc->dev);
>>  	struct drm_vblank_crtc *vblank = drm_crtc_vblank_crtc(crtc);
>>  	const struct drm_display_mode *mode = &vblank->hwmode;
>>  	enum pipe pipe = to_intel_crtc(crtc)->pipe;
>> @@ -103,8 +103,8 @@ u32 i915_get_vblank_counter(struct drm_crtc *crtc)
>>  	 * we get a low value that's stable across two reads of the high
>>  	 * register.
>>  	 */
>> -	frame = intel_de_read64_2x32(dev_priv, PIPEFRAMEPIXEL(dev_priv, pipe),
>> -				     PIPEFRAME(dev_priv, pipe));
>> +	frame = intel_de_read64_2x32(display, PIPEFRAMEPIXEL(display, pipe),
>> +				     PIPEFRAME(display, pipe));
>>  
>>  	pixel = frame & PIPE_PIXEL_MASK;
>>  	frame = (frame >> PIPE_FRAME_LOW_SHIFT) & 0xffffff;
>> @@ -119,19 +119,19 @@ u32 i915_get_vblank_counter(struct drm_crtc *crtc)
>>  
>>  u32 g4x_get_vblank_counter(struct drm_crtc *crtc)
>>  {
>> -	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
>> +	struct intel_display *display = to_intel_display(crtc->dev);
>>  	struct drm_vblank_crtc *vblank = drm_crtc_vblank_crtc(crtc);
>>  	enum pipe pipe = to_intel_crtc(crtc)->pipe;
>>  
>>  	if (!vblank->max_vblank_count)
>>  		return 0;
>>  
>> -	return intel_de_read(dev_priv, PIPE_FRMCOUNT_G4X(dev_priv, pipe));
>> +	return intel_de_read(display, PIPE_FRMCOUNT_G4X(display, pipe));
>>  }
>>  
>>  static u32 intel_crtc_scanlines_since_frame_timestamp(struct intel_crtc *crtc)
>>  {
>> -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>> +	struct intel_display *display = to_intel_display(crtc);
>>  	struct drm_vblank_crtc *vblank = drm_crtc_vblank_crtc(&crtc->base);
>>  	const struct drm_display_mode *mode = &vblank->hwmode;
>>  	u32 htotal = mode->crtc_htotal;
>> @@ -150,16 +150,16 @@ static u32 intel_crtc_scanlines_since_frame_timestamp(struct intel_crtc *crtc)
>>  		 * pipe frame time stamp. The time stamp value
>>  		 * is sampled at every start of vertical blank.
>>  		 */
>> -		scan_prev_time = intel_de_read_fw(dev_priv,
>> +		scan_prev_time = intel_de_read_fw(display,
>>  						  PIPE_FRMTMSTMP(crtc->pipe));
>>  
>>  		/*
>>  		 * The TIMESTAMP_CTR register has the current
>>  		 * time stamp value.
>>  		 */
>> -		scan_curr_time = intel_de_read_fw(dev_priv, IVB_TIMESTAMP_CTR);
>> +		scan_curr_time = intel_de_read_fw(display, IVB_TIMESTAMP_CTR);
>>  
>> -		scan_post_time = intel_de_read_fw(dev_priv,
>> +		scan_post_time = intel_de_read_fw(display,
>>  						  PIPE_FRMTMSTMP(crtc->pipe));
>>  	} while (scan_post_time != scan_prev_time);
>>  
>> @@ -192,6 +192,7 @@ static u32 __intel_get_crtc_scanline_from_timestamp(struct intel_crtc *crtc)
>>  
>>  static int intel_crtc_scanline_offset(const struct intel_crtc_state *crtc_state)
>>  {
>> +	struct intel_display *display = to_intel_display(crtc_state);
>>  	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
>>  
>>  	/*
>> @@ -220,7 +221,7 @@ static int intel_crtc_scanline_offset(const struct intel_crtc_state *crtc_state)
>>  	 * However if queried just before the start of vblank we'll get an
>>  	 * answer that's slightly in the future.
>>  	 */
>> -	if (DISPLAY_VER(i915) == 2)
>> +	if (DISPLAY_VER(display) == 2)
>>  		return -1;
>>  	else if (HAS_DDI(i915) && intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
>>  		return 2;
>> @@ -234,8 +235,7 @@ static int intel_crtc_scanline_offset(const struct intel_crtc_state *crtc_state)
>>   */
>>  static int __intel_get_crtc_scanline(struct intel_crtc *crtc)
>>  {
>> -	struct drm_device *dev = crtc->base.dev;
>> -	struct drm_i915_private *dev_priv = to_i915(dev);
>> +	struct intel_display *display = to_intel_display(crtc);
>>  	struct drm_vblank_crtc *vblank = drm_crtc_vblank_crtc(&crtc->base);
>>  	const struct drm_display_mode *mode = &vblank->hwmode;
>>  	enum pipe pipe = crtc->pipe;
>> @@ -249,7 +249,7 @@ static int __intel_get_crtc_scanline(struct intel_crtc *crtc)
>>  
>>  	vtotal = intel_mode_vtotal(mode);
>>  
>> -	position = intel_de_read_fw(dev_priv, PIPEDSL(dev_priv, pipe)) & PIPEDSL_LINE_MASK;
>> +	position = intel_de_read_fw(display, PIPEDSL(display, pipe)) & PIPEDSL_LINE_MASK;
>>  
>>  	/*
>>  	 * On HSW, the DSL reg (0x70000) appears to return 0 if we
>> @@ -263,13 +263,13 @@ static int __intel_get_crtc_scanline(struct intel_crtc *crtc)
>>  	 * problem.  We may need to extend this to include other platforms,
>>  	 * but so far testing only shows the problem on HSW.
>>  	 */
>> -	if (HAS_DDI(dev_priv) && !position) {
>> +	if (HAS_DDI(display) && !position) {
>>  		int i, temp;
>>  
>>  		for (i = 0; i < 100; i++) {
>>  			udelay(1);
>> -			temp = intel_de_read_fw(dev_priv,
>> -						PIPEDSL(dev_priv, pipe)) & PIPEDSL_LINE_MASK;
>> +			temp = intel_de_read_fw(display,
>> +						PIPEDSL(display, pipe)) & PIPEDSL_LINE_MASK;
>>  			if (temp != position) {
>>  				position = temp;
>>  				break;
>> @@ -304,23 +304,25 @@ int intel_crtc_scanline_to_hw(struct intel_crtc *crtc, int scanline)
>>   * otherwise they may hang.
>>   */
>>  #ifdef I915
>> -static void intel_vblank_section_enter(struct drm_i915_private *i915)
>> +static void intel_vblank_section_enter(struct intel_display *display)
>>  	__acquires(i915->uncore.lock)
>
> I'm surprised this works!
> thought we would need to have something like
> 	__acquires(to_i915(display->drm)->uncore.lock)

It's actually not a C identifier, although one is commonly used. From
sparse Documentation/annotations.rst:

  The first argument, *ctxt*, is an expression only used as documentation
  to identify the context. Usually, what is used is a pointer to the structure
  containing the context, for example, the structure protected by the lock.

> but anyway, if it works let's move on
>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Agreed, and thanks. The series pushed to din.

BR,
Jani.

>
>>  {
>> +	struct drm_i915_private *i915 = to_i915(display->drm);
>>  	spin_lock(&i915->uncore.lock);
>>  }
>>  
>> -static void intel_vblank_section_exit(struct drm_i915_private *i915)
>> +static void intel_vblank_section_exit(struct intel_display *display)
>>  	__releases(i915->uncore.lock)
>>  {
>> +	struct drm_i915_private *i915 = to_i915(display->drm);
>>  	spin_unlock(&i915->uncore.lock);
>>  }
>>  #else
>> -static void intel_vblank_section_enter(struct drm_i915_private *i915)
>> +static void intel_vblank_section_enter(struct intel_display *display)
>>  {
>>  }
>>  
>> -static void intel_vblank_section_exit(struct drm_i915_private *i915)
>> +static void intel_vblank_section_exit(struct intel_display *display)
>>  {
>>  }
>>  #endif
>> @@ -331,19 +333,19 @@ static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
>>  				     ktime_t *stime, ktime_t *etime,
>>  				     const struct drm_display_mode *mode)
>>  {
>> -	struct drm_device *dev = _crtc->dev;
>> -	struct drm_i915_private *dev_priv = to_i915(dev);
>> +	struct intel_display *display = to_intel_display(_crtc->dev);
>> +	struct drm_i915_private *dev_priv = to_i915(display->drm);
>>  	struct intel_crtc *crtc = to_intel_crtc(_crtc);
>>  	enum pipe pipe = crtc->pipe;
>>  	int position;
>>  	int vbl_start, vbl_end, hsync_start, htotal, vtotal;
>>  	unsigned long irqflags;
>> -	bool use_scanline_counter = DISPLAY_VER(dev_priv) >= 5 ||
>> -		IS_G4X(dev_priv) || DISPLAY_VER(dev_priv) == 2 ||
>> +	bool use_scanline_counter = DISPLAY_VER(display) >= 5 ||
>> +		IS_G4X(dev_priv) || DISPLAY_VER(display) == 2 ||
>>  		crtc->mode_flags & I915_MODE_FLAG_USE_SCANLINE_COUNTER;
>>  
>> -	if (drm_WARN_ON(&dev_priv->drm, !mode->crtc_clock)) {
>> -		drm_dbg(&dev_priv->drm,
>> +	if (drm_WARN_ON(display->drm, !mode->crtc_clock)) {
>> +		drm_dbg(display->drm,
>>  			"trying to get scanoutpos for disabled pipe %c\n",
>>  			pipe_name(pipe));
>>  		return false;
>> @@ -361,7 +363,7 @@ static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
>>  	 * preemption disabled, so the following code must not block.
>>  	 */
>>  	local_irq_save(irqflags);
>> -	intel_vblank_section_enter(dev_priv);
>> +	intel_vblank_section_enter(display);
>>  
>>  	/* preempt_disable_rt() should go right here in PREEMPT_RT patchset. */
>>  
>> @@ -393,7 +395,7 @@ static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
>>  		 * We can split this into vertical and horizontal
>>  		 * scanout position.
>>  		 */
>> -		position = (intel_de_read_fw(dev_priv, PIPEFRAMEPIXEL(dev_priv, pipe)) & PIPE_PIXEL_MASK) >> PIPE_PIXEL_SHIFT;
>> +		position = (intel_de_read_fw(display, PIPEFRAMEPIXEL(display, pipe)) & PIPE_PIXEL_MASK) >> PIPE_PIXEL_SHIFT;
>>  
>>  		/* convert to pixel counts */
>>  		vbl_start *= htotal;
>> @@ -429,7 +431,7 @@ static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
>>  
>>  	/* preempt_enable_rt() should go right here in PREEMPT_RT patchset. */
>>  
>> -	intel_vblank_section_exit(dev_priv);
>> +	intel_vblank_section_exit(display);
>>  	local_irq_restore(irqflags);
>>  
>>  	/*
>> @@ -464,42 +466,42 @@ bool intel_crtc_get_vblank_timestamp(struct drm_crtc *crtc, int *max_error,
>>  
>>  int intel_get_crtc_scanline(struct intel_crtc *crtc)
>>  {
>> -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>> +	struct intel_display *display = to_intel_display(crtc);
>>  	unsigned long irqflags;
>>  	int position;
>>  
>>  	local_irq_save(irqflags);
>> -	intel_vblank_section_enter(dev_priv);
>> +	intel_vblank_section_enter(display);
>>  
>>  	position = __intel_get_crtc_scanline(crtc);
>>  
>> -	intel_vblank_section_exit(dev_priv);
>> +	intel_vblank_section_exit(display);
>>  	local_irq_restore(irqflags);
>>  
>>  	return position;
>>  }
>>  
>> -static bool pipe_scanline_is_moving(struct drm_i915_private *dev_priv,
>> +static bool pipe_scanline_is_moving(struct intel_display *display,
>>  				    enum pipe pipe)
>>  {
>> -	i915_reg_t reg = PIPEDSL(dev_priv, pipe);
>> +	i915_reg_t reg = PIPEDSL(display, pipe);
>>  	u32 line1, line2;
>>  
>> -	line1 = intel_de_read(dev_priv, reg) & PIPEDSL_LINE_MASK;
>> +	line1 = intel_de_read(display, reg) & PIPEDSL_LINE_MASK;
>>  	msleep(5);
>> -	line2 = intel_de_read(dev_priv, reg) & PIPEDSL_LINE_MASK;
>> +	line2 = intel_de_read(display, reg) & PIPEDSL_LINE_MASK;
>>  
>>  	return line1 != line2;
>>  }
>>  
>>  static void wait_for_pipe_scanline_moving(struct intel_crtc *crtc, bool state)
>>  {
>> -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>> +	struct intel_display *display = to_intel_display(crtc);
>>  	enum pipe pipe = crtc->pipe;
>>  
>>  	/* Wait for the display line to settle/start moving */
>> -	if (wait_for(pipe_scanline_is_moving(dev_priv, pipe) == state, 100))
>> -		drm_err(&dev_priv->drm,
>> +	if (wait_for(pipe_scanline_is_moving(display, pipe) == state, 100))
>> +		drm_err(display->drm,
>>  			"pipe %c scanline %s wait timed out\n",
>>  			pipe_name(pipe), str_on_off(state));
>>  }
>> @@ -517,8 +519,8 @@ void intel_wait_for_pipe_scanline_moving(struct intel_crtc *crtc)
>>  void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state,
>>  				      bool vrr_enable)
>>  {
>> +	struct intel_display *display = to_intel_display(crtc_state);
>>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>> -	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>>  	u8 mode_flags = crtc_state->mode_flags;
>>  	struct drm_display_mode adjusted_mode;
>>  	int vmax_vblank_start = 0;
>> @@ -527,7 +529,8 @@ void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state,
>>  	drm_mode_init(&adjusted_mode, &crtc_state->hw.adjusted_mode);
>>  
>>  	if (vrr_enable) {
>> -		drm_WARN_ON(&i915->drm, (mode_flags & I915_MODE_FLAG_VRR) == 0);
>> +		drm_WARN_ON(display->drm,
>> +			    (mode_flags & I915_MODE_FLAG_VRR) == 0);
>>  
>>  		adjusted_mode.crtc_vtotal = crtc_state->vrr.vmax;
>>  		adjusted_mode.crtc_vblank_end = crtc_state->vrr.vmax;
>> @@ -549,8 +552,8 @@ void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state,
>>  	 * __intel_get_crtc_scanline()) with vblank_time_lock?
>>  	 * Need to audit everything to make sure it's safe.
>>  	 */
>> -	spin_lock_irqsave(&i915->drm.vblank_time_lock, irqflags);
>> -	intel_vblank_section_enter(i915);
>> +	spin_lock_irqsave(&display->drm->vblank_time_lock, irqflags);
>> +	intel_vblank_section_enter(display);
>>  
>>  	drm_calc_timestamping_constants(&crtc->base, &adjusted_mode);
>>  
>> @@ -559,8 +562,8 @@ void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state,
>>  	crtc->mode_flags = mode_flags;
>>  
>>  	crtc->scanline_offset = intel_crtc_scanline_offset(crtc_state);
>> -	intel_vblank_section_exit(i915);
>> -	spin_unlock_irqrestore(&i915->drm.vblank_time_lock, irqflags);
>> +	intel_vblank_section_exit(display);
>> +	spin_unlock_irqrestore(&display->drm->vblank_time_lock, irqflags);
>>  }
>>  
>>  int intel_mode_vdisplay(const struct drm_display_mode *mode)
>> @@ -666,7 +669,7 @@ void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
>>  int intel_vblank_evade(struct intel_vblank_evade_ctx *evade)
>>  {
>>  	struct intel_crtc *crtc = evade->crtc;
>> -	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>> +	struct intel_display *display = to_intel_display(crtc);
>>  	long timeout = msecs_to_jiffies_timeout(1);
>>  	wait_queue_head_t *wq = drm_crtc_vblank_waitqueue(&crtc->base);
>>  	DEFINE_WAIT(wait);
>> @@ -688,7 +691,7 @@ int intel_vblank_evade(struct intel_vblank_evade_ctx *evade)
>>  			break;
>>  
>>  		if (!timeout) {
>> -			drm_err(&i915->drm,
>> +			drm_err(display->drm,
>>  				"Potential atomic update failure on pipe %c\n",
>>  				pipe_name(crtc->pipe));
>>  			break;
>> -- 
>> 2.39.2
>> 

-- 
Jani Nikula, Intel
