Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 979601B0CAF
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2020 15:32:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 042176E56A;
	Mon, 20 Apr 2020 13:32:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9DE46E56A
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2020 13:32:14 +0000 (UTC)
IronPort-SDR: Fbj/eL2Yw9WgdyDraljgDLROvoq4jnNTDKsXiJMD4peS5LEiRRF/VXv9fn6oV4BHpTYKp9xSOY
 dsrOF8qCx7Uw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2020 06:32:14 -0700
IronPort-SDR: pswh/JH+pNgb8/XmlcHBBhvw827Z67A+xIZzeGScrZ+jVcDK08eKwIa9gxgkmRoIN+7RxvnVKv
 N+X1p7yuna3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,406,1580803200"; d="scan'208";a="289791236"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga008.jf.intel.com with ESMTP; 20 Apr 2020 06:32:14 -0700
Received: from fmsmsx102.amr.corp.intel.com (10.18.124.200) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 20 Apr 2020 06:32:13 -0700
Received: from bgsmsx101.gar.corp.intel.com (10.223.4.170) by
 FMSMSX102.amr.corp.intel.com (10.18.124.200) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 20 Apr 2020 06:32:13 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.58]) by
 BGSMSX101.gar.corp.intel.com ([169.254.1.75]) with mapi id 14.03.0439.000;
 Mon, 20 Apr 2020 19:02:10 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/display: Fixed kernel taint in audio codec init
Thread-Index: AQHWFxR91Nh35D1Rj0+om1O99kpZG6iCAQbQ
Date: Mon, 20 Apr 2020 13:32:09 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F82487B8E@BGSMSX104.gar.corp.intel.com>
References: <20200420133425.30289-1-uma.shankar@intel.com>
In-Reply-To: <20200420133425.30289-1-uma.shankar@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Fixed kernel taint in
 audio codec init
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
Cc: "Vehmanen, Kai" <kai.vehmanen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Shankar, Uma <uma.shankar@intel.com>
> Sent: Monday, April 20, 2020 7:04 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Vehmanen, Kai <kai.vehmanen@intel.com>; Gupta, Anshuman
> <anshuman.gupta@intel.com>; jani.nikula@linux.intel.com; chris-wilson.co.uk;
> Shankar, Uma <uma.shankar@intel.com>
> Subject: [PATCH] drm/i915/display: Fixed kernel taint in audio codec init
> 
> This patch fixes a kernel taint on non DSC DP monitors.
> 
> Fixes: 48b8b04c7 ("drm/i915/display: Enable DP Display Audio WA")
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1750
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>

We will abandon this and go with below patch
https://patchwork.freedesktop.org/series/76196/

Please ignore this patch for review.

>  drivers/gpu/drm/i915/display/intel_audio.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c
> b/drivers/gpu/drm/i915/display/intel_audio.c
> index 2663e71059af..0ff7c3f07fa5 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -606,7 +606,7 @@ static void enable_audio_dsc_wa(struct intel_encoder
> *encoder,
>  	h_active = crtc_state->hw.adjusted_mode.hdisplay;
> 
>  	if (!(h_active && crtc_state->port_clock && crtc_state->lane_count &&
> -	      crtc_state->dsc.compressed_bpp && i915->cdclk.hw.cdclk)) {
> +	      i915->cdclk.hw.cdclk)) {
>  		drm_err(&i915->drm, "Null Params rcvd for hblank early
> enabling\n");
>  		WARN_ON(1);
>  		return;
> @@ -620,8 +620,9 @@ static void enable_audio_dsc_wa(struct intel_encoder
> *encoder,
>  		val |= HBLANK_EARLY_ENABLE_TGL(pipe);
> 
>  	if (crtc_state->dsc.compression_enable &&
> +	    crtc_state->dsc.compressed_bpp &&
>  	    (crtc_state->hw.adjusted_mode.hdisplay >= 3840 &&
> -	    crtc_state->hw.adjusted_mode.vdisplay >= 2160)) {
> +	     crtc_state->hw.adjusted_mode.vdisplay >= 2160)) {
>  		/* Get hblank early enable value required */
>  		hblank_early_prog = get_hblank_early_enable_config(encoder,
>  								   crtc_state);
> --
> 2.22.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
