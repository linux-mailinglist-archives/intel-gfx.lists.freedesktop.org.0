Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC31735B2A
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jun 2023 17:33:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44A4F10E056;
	Mon, 19 Jun 2023 15:33:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43C9010E056
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Jun 2023 15:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687188780; x=1718724780;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Vdwm5voVHPErfE2rWalFZaGMxaPkdXIQbEgIO2p35NY=;
 b=VyFZf9HK8aMcFp3/GDwwjPsx0hYRbFAJAHKB5NYp2fZfBDWJrHg02e7y
 RZAtFfW7FC2VE4AVK9IOuwglT/ckKHgpJj8kpZ+NdRC/UL/Lkw2ooECXQ
 pTR1CAUqelDshZydkS6VKhSjlZ9ttg5VA/cDHWsRMCUA/ioXe38jlNq99
 PkbqeKY3mjY14f7vvZahVHdv4VCqcRzS0wSh5Dar61vYWOb4j8oIxP1Kf
 iIjOWrMbqb4M3wmlwkN9DjaOfL9ou2G/SBWjUIIWhRxQ5mEV5yPUzNces
 8hhiHrQ6btTR3ztzmn/g0bHecWhyxHpKqERUncvLAi+T7A1AU1g+gdIjg g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="357148870"
X-IronPort-AV: E=Sophos;i="6.00,254,1681196400"; d="scan'208";a="357148870"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2023 08:32:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="826622655"
X-IronPort-AV: E=Sophos;i="6.00,254,1681196400"; d="scan'208";a="826622655"
Received: from fuhrberg-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.37.35])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2023 08:32:57 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>, Mitul Golani
 <mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <alpine.DEB.2.22.394.2306191423170.3532114@eliteleevi.tm.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230609174212.1946930-1-mitulkumar.ajitkumar.golani@intel.com>
 <20230609174212.1946930-3-mitulkumar.ajitkumar.golani@intel.com>
 <alpine.DEB.2.22.394.2306191423170.3532114@eliteleevi.tm.intel.com>
Date: Mon, 19 Jun 2023 18:32:54 +0300
Message-ID: <878rcfjwm1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [RFC 2/3] drm/i915/display: Configure and
 initialize HDMI audio capabilities
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
Cc: intel-gfx@lists.freedesktop.org, jyri.sarha@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 19 Jun 2023, Kai Vehmanen <kai.vehmanen@linux.intel.com> wrote:
> Hey,
>
> replying to 9th June version (my mistake), but I checked the 15th June
> patch version and comments applied to that one as well:
>
> On Fri, 9 Jun 2023, Mitul Golani wrote:
>
>> Initialize the source audio capabilities for HDMI in crtc_state
>> property by setting them to their maximum supported values,
>> including max_channel and max_frequency. This allows for the
>> calculation of HDMI audio source capabilities with respect to
>> the available mode bandwidth. These capabilities encompass
>> parameters such as supported frequency and channel configurations.
> [...]
>> @@ -1131,6 +1131,12 @@ struct intel_crtc_state {
>>  
>>  	struct {
>>  		bool has_audio;
>> +
>> +		/* Audio rate in Hz */
>> +		int max_frequency;
>> +
>> +		/* Number of audio channels */
>> +		int max_channel;
>>  	} audio;
>
> Comment on this below.
>
>> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> @@ -2277,6 +2277,40 @@ bool intel_hdmi_compute_has_hdmi_sink(struct intel_encoder *encoder,
>>  		!intel_hdmi_is_cloned(crtc_state);
>>  }
>>  
>> +static unsigned int calc_audio_bw(int channel, int frequency)
>> +{
>> +	int bits_per_sample = 32;
>> +	unsigned int bandwidth = channel * frequency * bits_per_sample;
>
> Maybe unsigned for bits_per_sample as well?

Personally, I'd always go for signed ints. Integer promotions are hard.

BR,
Jani.


> And not sure how fixed this 
> is, but having 32 as a define at start file with more descriptive name
> might be a good idea as well. I.e. this is the audio sample container
> size used in all calculations.
>
>> +void
>> +intel_hdmi_audio_compute_config(struct intel_crtc_state *pipe_config)
>> +{
>> +	struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
>> +	int num_of_channel, aud_rates[7] = {192000, 176000, 96000, 88000, 48000, 44100, 32000};
>> +	unsigned int audio_req_bandwidth, available_blank_bandwidth, vblank, hblank;
>> +
>> +	hblank = adjusted_mode->htotal - adjusted_mode->hdisplay;
>> +	vblank = adjusted_mode->vtotal - adjusted_mode->vdisplay;
>> +	available_blank_bandwidth = hblank * vblank *
>> +				    drm_mode_vrefresh(adjusted_mode) * pipe_config->pipe_bpp;
>> +	for (num_of_channel = 8; num_of_channel > 0; num_of_channel--) {
>
> The maximum channel count of 8 would deserve its own define. It's pretty
> much a constant coming from the specs, but still avoid magic numbers in 
> code would be preferable. Or we remove this altoghter, see below...
>
>> +		for (int index = 0; index < 7; index++) {
>> +			audio_req_bandwidth = calc_audio_bw(num_of_channel,
>> +							    aud_rates[index]);
>> +			if (audio_req_bandwidth < available_blank_bandwidth) {
>
> <= ?
>
>> +				pipe_config->audio.max_frequency = aud_rates[index];
>> +				pipe_config->audio.max_channel = num_of_channel;
>> +				return;
>> +			}
>
> This will hit a problem if we have a case where bandwidth is not enough 
> for 5.1 at 192kHz, but it is enough for 2ch 192kHz audio. This approach
> forces us to give preference to either channel acount or sampling rate.
>
> What if we just store the 'max audio samples per second' into pipe config:
>
>  - have "int max_audio_samples_per_second;" in pipe_config
>  - pipe_config->audio.max_audio_samples_per_second = 
> available_blank_bandwidth / 32; 
>
> Then when filtering SADs, the invidial channels+rate combination 
> of each SAD is compared to the max_audio_samples_per_second and based
> on that, the SAD is either filter or passed on. What do you think?
>
> Br, Kai
>

-- 
Jani Nikula, Intel Open Source Graphics Center
