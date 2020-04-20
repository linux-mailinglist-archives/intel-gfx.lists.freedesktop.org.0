Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DEF01B0C75
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2020 15:20:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 201236E55E;
	Mon, 20 Apr 2020 13:20:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99D2D6E55E
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2020 13:20:21 +0000 (UTC)
IronPort-SDR: lk38z0Q3hpC9x5UuG6/cXqgv5ZcXxWPM7FQGKKa4+vgVHZHOTM6i7buGX242hfxfgYOlHeSIaA
 wrtxN9qkAKqg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2020 06:20:20 -0700
IronPort-SDR: X4cSrYObCFs6+xzS7V48GpaZYtL46qyHmUTkbgwzqg1Sd8fL+MKB4KXPLc3sqkiUFrplM6/mEM
 Hq/pFpaueJXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,406,1580803200"; d="scan'208";a="289749901"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga008.jf.intel.com with ESMTP; 20 Apr 2020 06:20:20 -0700
Received: from FMSMSX110.amr.corp.intel.com (10.18.116.10) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 20 Apr 2020 06:20:20 -0700
Received: from bgsmsx154.gar.corp.intel.com (10.224.48.47) by
 fmsmsx110.amr.corp.intel.com (10.18.116.10) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 20 Apr 2020 06:20:19 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.58]) by
 BGSMSX154.gar.corp.intel.com ([169.254.7.253]) with mapi id 14.03.0439.000;
 Mon, 20 Apr 2020 18:50:17 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/audio: fix compressed_bpp check
Thread-Index: AQHWFxXxICEYRRc1gE+a70zZemX0RKiB/jgQ
Date: Mon, 20 Apr 2020 13:20:16 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F82487B55@BGSMSX104.gar.corp.intel.com>
References: <20200420131632.23283-1-jani.nikula@intel.com>
In-Reply-To: <20200420131632.23283-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/audio: fix compressed_bpp check
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Jani Nikula <jani.nikula@intel.com>
> Sent: Monday, April 20, 2020 6:47 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Gupta, Anshuman
> <anshuman.gupta@intel.com>; Shankar, Uma <uma.shankar@intel.com>
> Subject: [PATCH] drm/i915/audio: fix compressed_bpp check
> 
> The early check for compressed_bpp being zero is too early, as it is hit also when
> DSC is not enabled. Move the checks down to where the values are actually needed.
> This is a paranoid check for a situation that should not happen, so we don't really
> care about handling it gracefully apart from not oopsing.

Looks Good to me. Thanks Jani.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Fixes: 48b8b04c791d ("drm/i915/display: Enable DP Display Audio WA")
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1750
> Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_audio.c | 15 +++++----------
>  1 file changed, 5 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c
> b/drivers/gpu/drm/i915/display/intel_audio.c
> index 2663e71059af..36aaee8536f1 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -542,6 +542,10 @@ static unsigned int get_hblank_early_enable_config(struct
> intel_encoder *encoder
>  		    h_active, crtc_state->port_clock, crtc_state->lane_count,
>  		    vdsc_bpp, cdclk);
> 
> +	if (WARN_ON(!crtc_state->port_clock || !crtc_state->lane_count ||
> +		    !crtc_state->dsc.compressed_bpp || !i915->cdclk.hw.cdclk))
> +		return 0;
> +
>  	link_clks_available = ((((h_total - h_active) *
>  			       ((crtc_state->port_clock * ROUNDING_FACTOR) /
>  				pixel_clk)) / ROUNDING_FACTOR) - 28); @@ -
> 597,21 +601,12 @@ static void enable_audio_dsc_wa(struct intel_encoder
> *encoder,
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>  	enum pipe pipe = crtc->pipe;
> -	unsigned int hblank_early_prog, samples_room, h_active;
> +	unsigned int hblank_early_prog, samples_room;
>  	unsigned int val;
> 
>  	if (INTEL_GEN(i915) < 11)
>  		return;
> 
> -	h_active = crtc_state->hw.adjusted_mode.hdisplay;
> -
> -	if (!(h_active && crtc_state->port_clock && crtc_state->lane_count &&
> -	      crtc_state->dsc.compressed_bpp && i915->cdclk.hw.cdclk)) {
> -		drm_err(&i915->drm, "Null Params rcvd for hblank early
> enabling\n");
> -		WARN_ON(1);
> -		return;
> -	}
> -
>  	val = intel_de_read(i915, AUD_CONFIG_BE);
> 
>  	if (INTEL_GEN(i915) == 11)
> --
> 2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
