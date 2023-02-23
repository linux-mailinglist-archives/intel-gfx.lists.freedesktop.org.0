Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7727B6A0532
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Feb 2023 10:49:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D29BB10E037;
	Thu, 23 Feb 2023 09:49:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11A1F10E037
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Feb 2023 09:49:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677145777; x=1708681777;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=IlarMDUdVntJUkhUAYuHYNbI26k2BY5LYd0Cs785Tng=;
 b=UcqUmGG0bHIML6V+4dj56PLJwkCNI5iDhOGVxYsn7kmABQtpvM6LH8M8
 V+uDlWYUrvOaE8ECBrI6aS0ZJN1k9ypCMZCrmiFKf+gaSKHOpXuIUevsB
 y3IZEJbqwZ4/zQ9Uunou0qnL4+iO1F+co6g8AHciE5c3hBmaEYCm8l3Co
 TGxWddTKaA9jR3ScLLqxGR7AE8lTP8UCgMBCCSVaidNA3YGDEuqrfBJj/
 d55GmqfnEm8g1YtaSowZnyYqw4XeJYIThSk6FsgFCsupoXdcT6YgHX+3c
 72u7po/uHEqkb+Juf3uIpDpJZTU4+dEsOhf0opydcj2f6iAptxQdmeGGx A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="395649797"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="395649797"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2023 01:49:36 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="917917087"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="917917087"
Received: from swatish2-mobl2.gar.corp.intel.com (HELO [10.213.102.215])
 ([10.213.102.215])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2023 01:49:33 -0800
Message-ID: <36e159b9-0529-22fa-c9ce-968fbb421f1c@intel.com>
Date: Thu, 23 Feb 2023 15:19:30 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: "Shankar, Uma" <uma.shankar@intel.com>,
 Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20230222151454.24888-1-ville.syrjala@linux.intel.com>
 <DM4PR11MB6360EF96D84256E2EF2F5036F4AB9@DM4PR11MB6360.namprd11.prod.outlook.com>
From: Swati Sharma <swati2.sharma@intel.com>
Organization: Intel
In-Reply-To: <DM4PR11MB6360EF96D84256E2EF2F5036F4AB9@DM4PR11MB6360.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/audio: Track audio state
 per-transcoder
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

Hi Ville,

Please add closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8222

On 23-Feb-23 1:48 PM, Shankar, Uma wrote:
> 
> 
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ville Syrjala
>> Sent: Wednesday, February 22, 2023 8:45 PM
>> To: intel-gfx@lists.freedesktop.org
>> Subject: [Intel-gfx] [PATCH] drm/i915/audio: Track audio state per-transcoder
>>
>> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>
>> The audio logic lives in the transcoder rather than the pipe, so start tracking it like
>> that.
>>
>> This is only really important for bigjoiner cases where tracking by pipe doesn't work
>> at all since intel_audio_codec_{enable,disable}()
>> won't even be called for the slave pipe. This means the state checker won't find the
>> ELD for the slave pipe and gets upset.
>> The PD->has_audio readout does currently work since that gets read out from the
>> same transcoder for both pipes.
>>
>> For other cases this doesn't actually matter since it's only the normal pipe
>> transcoders that are audio capable, whereas the more special transcoders (EDP/DSI)
>> are not.
> 
> Change Looks Good to me.
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> 
>> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_audio.c    | 86 +++++++++----------
>>   .../gpu/drm/i915/display/intel_display_core.h |  2 +-
>>   .../gpu/drm/i915/display/intel_lpe_audio.c    |  6 +-
>>   .../gpu/drm/i915/display/intel_lpe_audio.h    |  4 +-
>>   4 files changed, 48 insertions(+), 50 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c
>> b/drivers/gpu/drm/i915/display/intel_audio.c
>> index a9335c856644..65151f5dcb15 100644
>> --- a/drivers/gpu/drm/i915/display/intel_audio.c
>> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
>> @@ -581,8 +581,7 @@ static void enable_audio_dsc_wa(struct intel_encoder
>> *encoder,
>>   				const struct intel_crtc_state *crtc_state)  {
>>   	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>> -	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>> -	enum pipe pipe = crtc->pipe;
>> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>>   	unsigned int hblank_early_prog, samples_room;
>>   	unsigned int val;
>>
>> @@ -592,32 +591,32 @@ static void enable_audio_dsc_wa(struct intel_encoder
>> *encoder,
>>   	val = intel_de_read(i915, AUD_CONFIG_BE);
>>
>>   	if (DISPLAY_VER(i915) == 11)
>> -		val |= HBLANK_EARLY_ENABLE_ICL(pipe);
>> +		val |= HBLANK_EARLY_ENABLE_ICL(cpu_transcoder);
>>   	else if (DISPLAY_VER(i915) >= 12)
>> -		val |= HBLANK_EARLY_ENABLE_TGL(pipe);
>> +		val |= HBLANK_EARLY_ENABLE_TGL(cpu_transcoder);
>>
>>   	if (crtc_state->dsc.compression_enable &&
>>   	    crtc_state->hw.adjusted_mode.hdisplay >= 3840 &&
>>   	    crtc_state->hw.adjusted_mode.vdisplay >= 2160) {
>>   		/* Get hblank early enable value required */
>> -		val &= ~HBLANK_START_COUNT_MASK(pipe);
>> +		val &= ~HBLANK_START_COUNT_MASK(cpu_transcoder);
>>   		hblank_early_prog = calc_hblank_early_prog(encoder, crtc_state);
>>   		if (hblank_early_prog < 32)
>> -			val |= HBLANK_START_COUNT(pipe,
>> HBLANK_START_COUNT_32);
>> +			val |= HBLANK_START_COUNT(cpu_transcoder,
>> HBLANK_START_COUNT_32);
>>   		else if (hblank_early_prog < 64)
>> -			val |= HBLANK_START_COUNT(pipe,
>> HBLANK_START_COUNT_64);
>> +			val |= HBLANK_START_COUNT(cpu_transcoder,
>> HBLANK_START_COUNT_64);
>>   		else if (hblank_early_prog < 96)
>> -			val |= HBLANK_START_COUNT(pipe,
>> HBLANK_START_COUNT_96);
>> +			val |= HBLANK_START_COUNT(cpu_transcoder,
>> HBLANK_START_COUNT_96);
>>   		else
>> -			val |= HBLANK_START_COUNT(pipe,
>> HBLANK_START_COUNT_128);
>> +			val |= HBLANK_START_COUNT(cpu_transcoder,
>> HBLANK_START_COUNT_128);
>>
>>   		/* Get samples room value required */
>> -		val &= ~NUMBER_SAMPLES_PER_LINE_MASK(pipe);
>> +		val &= ~NUMBER_SAMPLES_PER_LINE_MASK(cpu_transcoder);
>>   		samples_room = calc_samples_room(crtc_state);
>>   		if (samples_room < 3)
>> -			val |= NUMBER_SAMPLES_PER_LINE(pipe, samples_room);
>> +			val |= NUMBER_SAMPLES_PER_LINE(cpu_transcoder,
>> samples_room);
>>   		else /* Program 0 i.e "All Samples available in buffer" */
>> -			val |= NUMBER_SAMPLES_PER_LINE(pipe, 0x0);
>> +			val |= NUMBER_SAMPLES_PER_LINE(cpu_transcoder, 0x0);
>>   	}
>>
>>   	intel_de_write(i915, AUD_CONFIG_BE, val); @@ -812,9 +811,9 @@ void
>> intel_audio_codec_enable(struct intel_encoder *encoder,
>>   	struct i915_audio_component *acomp = i915->display.audio.component;
>>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>   	struct intel_connector *connector = to_intel_connector(conn_state-
>>> connector);
>> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>>   	struct intel_audio_state *audio_state;
>>   	enum port port = encoder->port;
>> -	enum pipe pipe = crtc->pipe;
>>
>>   	if (!crtc_state->has_audio)
>>   		return;
>> @@ -832,7 +831,7 @@ void intel_audio_codec_enable(struct intel_encoder
>> *encoder,
>>
>>   	mutex_lock(&i915->display.audio.mutex);
>>
>> -	audio_state = &i915->display.audio.state[pipe];
>> +	audio_state = &i915->display.audio.state[cpu_transcoder];
>>
>>   	audio_state->encoder = encoder;
>>   	BUILD_BUG_ON(sizeof(audio_state->eld) != sizeof(crtc_state->eld)); @@ -
>> 842,14 +841,14 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
>>
>>   	if (acomp && acomp->base.audio_ops &&
>>   	    acomp->base.audio_ops->pin_eld_notify) {
>> -		/* audio drivers expect pipe = -1 to indicate Non-MST cases */
>> +		/* audio drivers expect cpu_transcoder = -1 to indicate Non-MST
>> cases
>> +*/
>>   		if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST))
>> -			pipe = -1;
>> +			cpu_transcoder = -1;
>>   		acomp->base.audio_ops->pin_eld_notify(acomp->base.audio_ops-
>>> audio_ptr,
>> -						      (int)port, (int)pipe);
>> +						      (int)port, (int)cpu_transcoder);
>>   	}
>>
>> -	intel_lpe_audio_notify(i915, pipe, port, crtc_state->eld,
>> +	intel_lpe_audio_notify(i915, cpu_transcoder, port, crtc_state->eld,
>>   			       crtc_state->port_clock,
>>   			       intel_crtc_has_dp_encoder(crtc_state));
>>   }
>> @@ -871,9 +870,9 @@ void intel_audio_codec_disable(struct intel_encoder
>> *encoder,
>>   	struct i915_audio_component *acomp = i915->display.audio.component;
>>   	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
>>   	struct intel_connector *connector = to_intel_connector(old_conn_state-
>>> connector);
>> +	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
>>   	struct intel_audio_state *audio_state;
>>   	enum port port = encoder->port;
>> -	enum pipe pipe = crtc->pipe;
>>
>>   	if (!old_crtc_state->has_audio)
>>   		return;
>> @@ -890,7 +889,7 @@ void intel_audio_codec_disable(struct intel_encoder
>> *encoder,
>>
>>   	mutex_lock(&i915->display.audio.mutex);
>>
>> -	audio_state = &i915->display.audio.state[pipe];
>> +	audio_state = &i915->display.audio.state[cpu_transcoder];
>>
>>   	audio_state->encoder = NULL;
>>   	memset(audio_state->eld, 0, sizeof(audio_state->eld)); @@ -899,27
>> +898,26 @@ void intel_audio_codec_disable(struct intel_encoder *encoder,
>>
>>   	if (acomp && acomp->base.audio_ops &&
>>   	    acomp->base.audio_ops->pin_eld_notify) {
>> -		/* audio drivers expect pipe = -1 to indicate Non-MST cases */
>> +		/* audio drivers expect cpu_transcoder = -1 to indicate Non-MST
>> cases
>> +*/
>>   		if (!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DP_MST))
>> -			pipe = -1;
>> +			cpu_transcoder = -1;
>>   		acomp->base.audio_ops->pin_eld_notify(acomp->base.audio_ops-
>>> audio_ptr,
>> -						      (int)port, (int)pipe);
>> +						      (int)port, (int)cpu_transcoder);
>>   	}
>>
>> -	intel_lpe_audio_notify(i915, pipe, port, NULL, 0, false);
>> +	intel_lpe_audio_notify(i915, cpu_transcoder, port, NULL, 0, false);
>>   }
>>
>>   static void intel_acomp_get_config(struct intel_encoder *encoder,
>>   				   struct intel_crtc_state *crtc_state)  {
>>   	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>> -	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>>   	struct intel_audio_state *audio_state;
>> -	enum pipe pipe = crtc->pipe;
>>
>>   	mutex_lock(&i915->display.audio.mutex);
>>
>> -	audio_state = &i915->display.audio.state[pipe];
>> +	audio_state = &i915->display.audio.state[cpu_transcoder];
>>
>>   	if (audio_state->encoder)
>>   		memcpy(crtc_state->eld, audio_state->eld, sizeof(audio_state-
>>> eld)); @@ -1147,27 +1145,27 @@ static int
>> i915_audio_component_get_cdclk_freq(struct device *kdev)  }
>>
>>   /*
>> - * get the intel audio state according to the parameter port and pipe
>> - * MST & (pipe >= 0): return the audio.state[pipe].encoder],
>> + * get the intel audio state according to the parameter port and
>> + cpu_transcoder
>> + * MST & (cpu_transcoder >= 0): return the
>> + audio.state[cpu_transcoder].encoder],
>>    *   when port is matched
>> - * MST & (pipe < 0): this is invalid
>> - * Non-MST & (pipe >= 0): only pipe = 0 (the first device entry)
>> + * MST & (cpu_transcoder < 0): this is invalid
>> + * Non-MST & (cpu_transcoder >= 0): only cpu_transcoder = 0 (the first
>> + device entry)
>>    *   will get the right intel_encoder with port matched
>> - * Non-MST & (pipe < 0): get the right intel_encoder with port matched
>> + * Non-MST & (cpu_transcoder < 0): get the right intel_encoder with
>> + port matched
>>    */
>>   static struct intel_audio_state *find_audio_state(struct drm_i915_private *i915,
>> -						  int port, int pipe)
>> +						  int port, int cpu_transcoder)
>>   {
>>   	/* MST */
>> -	if (pipe >= 0) {
>> +	if (cpu_transcoder >= 0) {
>>   		struct intel_audio_state *audio_state;
>>   		struct intel_encoder *encoder;
>>
>>   		if (drm_WARN_ON(&i915->drm,
>> -				pipe >= ARRAY_SIZE(i915->display.audio.state)))
>> +				cpu_transcoder >= ARRAY_SIZE(i915-
>>> display.audio.state)))
>>   			return NULL;
>>
>> -		audio_state = &i915->display.audio.state[pipe];
>> +		audio_state = &i915->display.audio.state[cpu_transcoder];
>>   		encoder = audio_state->encoder;
>>
>>   		if (encoder && encoder->port == port && @@ -1176,14 +1174,14
>> @@ static struct intel_audio_state *find_audio_state(struct drm_i915_private
>> *i915,
>>   	}
>>
>>   	/* Non-MST */
>> -	if (pipe > 0)
>> +	if (cpu_transcoder > 0)
>>   		return NULL;
>>
>> -	for_each_pipe(i915, pipe) {
>> +	for_each_cpu_transcoder(i915, cpu_transcoder) {
>>   		struct intel_audio_state *audio_state;
>>   		struct intel_encoder *encoder;
>>
>> -		audio_state = &i915->display.audio.state[pipe];
>> +		audio_state = &i915->display.audio.state[cpu_transcoder];
>>   		encoder = audio_state->encoder;
>>
>>   		if (encoder && encoder->port == port && @@ -1195,7 +1193,7 @@
>> static struct intel_audio_state *find_audio_state(struct drm_i915_private *i915,  }
>>
>>   static int i915_audio_component_sync_audio_rate(struct device *kdev, int port,
>> -						int pipe, int rate)
>> +						int cpu_transcoder, int rate)
>>   {
>>   	struct drm_i915_private *i915 = kdev_to_i915(kdev);
>>   	struct i915_audio_component *acomp = i915->display.audio.component;
>> @@ -1211,7 +1209,7 @@ static int i915_audio_component_sync_audio_rate(struct
>> device *kdev, int port,
>>   	cookie = i915_audio_component_get_power(kdev);
>>   	mutex_lock(&i915->display.audio.mutex);
>>
>> -	audio_state = find_audio_state(i915, port, pipe);
>> +	audio_state = find_audio_state(i915, port, cpu_transcoder);
>>   	if (!audio_state) {
>>   		drm_dbg_kms(&i915->drm, "Not valid for port %c\n",
>> port_name(port));
>>   		err = -ENODEV;
>> @@ -1223,7 +1221,7 @@ static int i915_audio_component_sync_audio_rate(struct
>> device *kdev, int port,
>>   	/* FIXME stop using the legacy crtc pointer */
>>   	crtc = to_intel_crtc(encoder->base.crtc);
>>
>> -	/* port must be valid now, otherwise the pipe will be invalid */
>> +	/* port must be valid now, otherwise the cpu_transcoder will be
>> +invalid */
>>   	acomp->aud_sample_rate[port] = rate;
>>
>>   	/* FIXME get rid of the crtc->config stuff */ @@ -1236,7 +1234,7 @@ static
>> int i915_audio_component_sync_audio_rate(struct device *kdev, int port,  }
>>
>>   static int i915_audio_component_get_eld(struct device *kdev, int port,
>> -					int pipe, bool *enabled,
>> +					int cpu_transcoder, bool *enabled,
>>   					unsigned char *buf, int max_bytes)  {
>>   	struct drm_i915_private *i915 = kdev_to_i915(kdev); @@ -1245,7 +1243,7
>> @@ static int i915_audio_component_get_eld(struct device *kdev, int port,
>>
>>   	mutex_lock(&i915->display.audio.mutex);
>>
>> -	audio_state = find_audio_state(i915, port, pipe);
>> +	audio_state = find_audio_state(i915, port, cpu_transcoder);
>>   	if (!audio_state) {
>>   		drm_dbg_kms(&i915->drm, "Not valid for port %c\n",
>> port_name(port));
>>   		mutex_unlock(&i915->display.audio.mutex);
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
>> b/drivers/gpu/drm/i915/display/intel_display_core.h
>> index b870f7f47f2b..631a7b17899e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>> @@ -103,7 +103,7 @@ struct intel_audio {
>>   	u32 freq_cntrl;
>>
>>   	/* current audio state for the audio component hooks */
>> -	struct intel_audio_state state[I915_MAX_PIPES];
>> +	struct intel_audio_state state[I915_MAX_TRANSCODERS];
>>
>>   	/* necessary resource sharing with HDMI LPE audio driver. */
>>   	struct {
>> diff --git a/drivers/gpu/drm/i915/display/intel_lpe_audio.c
>> b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
>> index 8aaaef4d7856..20c8581f4868 100644
>> --- a/drivers/gpu/drm/i915/display/intel_lpe_audio.c
>> +++ b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
>> @@ -315,7 +315,7 @@ void intel_lpe_audio_teardown(struct drm_i915_private
>> *dev_priv)
>>    * intel_lpe_audio_notify() - notify lpe audio event
>>    * audio driver and i915
>>    * @dev_priv: the i915 drm device private data
>> - * @pipe: pipe
>> + * @cpt_transocer: CPU transcoder
>>    * @port: port
>>    * @eld : ELD data
>>    * @ls_clock: Link symbol clock in kHz
>> @@ -324,7 +324,7 @@ void intel_lpe_audio_teardown(struct drm_i915_private
>> *dev_priv)
>>    * Notify lpe audio driver of eld change.
>>    */
>>   void intel_lpe_audio_notify(struct drm_i915_private *dev_priv,
>> -			    enum pipe pipe, enum port port,
>> +			    enum transcoder cpu_transcoder, enum port port,
>>   			    const void *eld, int ls_clock, bool dp_output)  {
>>   	unsigned long irqflags;
>> @@ -344,7 +344,7 @@ void intel_lpe_audio_notify(struct drm_i915_private
>> *dev_priv,
>>
>>   	if (eld != NULL) {
>>   		memcpy(ppdata->eld, eld, HDMI_MAX_ELD_BYTES);
>> -		ppdata->pipe = pipe;
>> +		ppdata->pipe = cpu_transcoder;
>>   		ppdata->ls_clock = ls_clock;
>>   		ppdata->dp_output = dp_output;
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_lpe_audio.h
>> b/drivers/gpu/drm/i915/display/intel_lpe_audio.h
>> index f848c5038714..0beecac267ae 100644
>> --- a/drivers/gpu/drm/i915/display/intel_lpe_audio.h
>> +++ b/drivers/gpu/drm/i915/display/intel_lpe_audio.h
>> @@ -8,15 +8,15 @@
>>
>>   #include <linux/types.h>
>>
>> -enum pipe;
>>   enum port;
>> +enum transcoder;
>>   struct drm_i915_private;
>>
>>   int  intel_lpe_audio_init(struct drm_i915_private *dev_priv);  void
>> intel_lpe_audio_teardown(struct drm_i915_private *dev_priv);  void
>> intel_lpe_audio_irq_handler(struct drm_i915_private *dev_priv);  void
>> intel_lpe_audio_notify(struct drm_i915_private *dev_priv,
>> -			    enum pipe pipe, enum port port,
>> +			    enum transcoder cpu_transcoder, enum port port,
>>   			    const void *eld, int ls_clock, bool dp_output);
>>
>>   #endif /* __INTEL_LPE_AUDIO_H__ */
>> --
>> 2.39.2
> 

-- 
~Swati Sharma
