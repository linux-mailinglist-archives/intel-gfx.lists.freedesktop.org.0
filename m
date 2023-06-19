Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E94037356DB
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jun 2023 14:29:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5848A10E1F4;
	Mon, 19 Jun 2023 12:29:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA38A10E1F4
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Jun 2023 12:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687177740; x=1718713740;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=DN55ja+rXWKb8JJsANeg8+CV0OINmf6YL8RrboQAmvE=;
 b=HqnJ6JLnI5t4EMMMhWEg561d9zpN/dZNwspjTEae6deSb0XjWPDHgPa5
 ujvHY8lYGrDop3m6HvxjvfVBtxdwioHT/FLzqtt3JAaeiWFbEek/PlaQy
 fJhCTux/oizCTyuhp9SodKAqV+cWxBlu7gCZkIYPNfNGTFvWjQGm/LEZ6
 G4uAM/bXUR+lSpgHTrdKwym5kjc2dlnuWjx6RPKr4zN6V7cgF9T0Pd1Ii
 qUB4PXvEoV5L5BumBDd1HX13Gst2FpBCi0QVunYgp236+keb/6mkFuI9O
 L5v+v0SP1sU8KUgagGCAA9bSfO3zqAK+A8z+Ubbm6Hjgauub5lna4aBWw w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="445993763"
X-IronPort-AV: E=Sophos;i="6.00,254,1681196400"; d="scan'208";a="445993763"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2023 05:29:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="716855990"
X-IronPort-AV: E=Sophos;i="6.00,254,1681196400"; d="scan'208";a="716855990"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2023 05:28:58 -0700
Date: Mon, 19 Jun 2023 15:25:52 +0300 (EEST)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@eliteleevi.tm.intel.com
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20230609174212.1946930-3-mitulkumar.ajitkumar.golani@intel.com>
Message-ID: <alpine.DEB.2.22.394.2306191423170.3532114@eliteleevi.tm.intel.com>
References: <20230609174212.1946930-1-mitulkumar.ajitkumar.golani@intel.com>
 <20230609174212.1946930-3-mitulkumar.ajitkumar.golani@intel.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
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

Hey,

replying to 9th June version (my mistake), but I checked the 15th June
patch version and comments applied to that one as well:

On Fri, 9 Jun 2023, Mitul Golani wrote:

> Initialize the source audio capabilities for HDMI in crtc_state
> property by setting them to their maximum supported values,
> including max_channel and max_frequency. This allows for the
> calculation of HDMI audio source capabilities with respect to
> the available mode bandwidth. These capabilities encompass
> parameters such as supported frequency and channel configurations.
[...]
> @@ -1131,6 +1131,12 @@ struct intel_crtc_state {
>  
>  	struct {
>  		bool has_audio;
> +
> +		/* Audio rate in Hz */
> +		int max_frequency;
> +
> +		/* Number of audio channels */
> +		int max_channel;
>  	} audio;

Comment on this below.

> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2277,6 +2277,40 @@ bool intel_hdmi_compute_has_hdmi_sink(struct intel_encoder *encoder,
>  		!intel_hdmi_is_cloned(crtc_state);
>  }
>  
> +static unsigned int calc_audio_bw(int channel, int frequency)
> +{
> +	int bits_per_sample = 32;
> +	unsigned int bandwidth = channel * frequency * bits_per_sample;

Maybe unsigned for bits_per_sample as well? And not sure how fixed this 
is, but having 32 as a define at start file with more descriptive name
might be a good idea as well. I.e. this is the audio sample container
size used in all calculations.

> +void
> +intel_hdmi_audio_compute_config(struct intel_crtc_state *pipe_config)
> +{
> +	struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
> +	int num_of_channel, aud_rates[7] = {192000, 176000, 96000, 88000, 48000, 44100, 32000};
> +	unsigned int audio_req_bandwidth, available_blank_bandwidth, vblank, hblank;
> +
> +	hblank = adjusted_mode->htotal - adjusted_mode->hdisplay;
> +	vblank = adjusted_mode->vtotal - adjusted_mode->vdisplay;
> +	available_blank_bandwidth = hblank * vblank *
> +				    drm_mode_vrefresh(adjusted_mode) * pipe_config->pipe_bpp;
> +	for (num_of_channel = 8; num_of_channel > 0; num_of_channel--) {

The maximum channel count of 8 would deserve its own define. It's pretty
much a constant coming from the specs, but still avoid magic numbers in 
code would be preferable. Or we remove this altoghter, see below...

> +		for (int index = 0; index < 7; index++) {
> +			audio_req_bandwidth = calc_audio_bw(num_of_channel,
> +							    aud_rates[index]);
> +			if (audio_req_bandwidth < available_blank_bandwidth) {

<= ?

> +				pipe_config->audio.max_frequency = aud_rates[index];
> +				pipe_config->audio.max_channel = num_of_channel;
> +				return;
> +			}

This will hit a problem if we have a case where bandwidth is not enough 
for 5.1 at 192kHz, but it is enough for 2ch 192kHz audio. This approach
forces us to give preference to either channel acount or sampling rate.

What if we just store the 'max audio samples per second' into pipe config:

 - have "int max_audio_samples_per_second;" in pipe_config
 - pipe_config->audio.max_audio_samples_per_second = 
available_blank_bandwidth / 32; 

Then when filtering SADs, the invidial channels+rate combination 
of each SAD is compared to the max_audio_samples_per_second and based
on that, the SAD is either filter or passed on. What do you think?

Br, Kai

