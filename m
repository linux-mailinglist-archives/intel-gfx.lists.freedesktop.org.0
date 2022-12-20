Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03A60651CC1
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Dec 2022 10:02:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A9B710E09C;
	Tue, 20 Dec 2022 09:01:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97F1210E339
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 09:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671526886; x=1703062886;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=/m1rTkyKbc7WTELnTtWV/XCXto8U2qpw0IxkzflFT8o=;
 b=QxBbPiN+gmfj1pB4eNpO3ejEouGjp41dg97pk0hR4TiITb0sfSuvMDwJ
 h3SarMMHMNznI8CbF/ybFcCvbOjbTm/uoGXLDWKeDEIpDntenpoqyztRl
 q9zfvPwz7c21uEy1EIdsMuVdzavFxrHPa1IGLerDZVTyknrY5sUcJfU/y
 NdmM81cXGPe0HOeWii1ZJbQGZjr35MFw5BraHn8NeEebr9dAe7F/czk7M
 VP+p+eS0Zahf0yg5J6apfMOHiBAdoFZENqQCxTPau0Lsf0syh7j26+g8m
 7coYfuimxN0f1i7XsL+PMXslrDqdAiq6ORtfOafnIj5Uydvds8XHfLJOB A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="346666227"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="346666227"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 01:01:25 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="681558695"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="681558695"
Received: from spalapa-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.60.249])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 01:01:23 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221220034512.2898859-1-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221220034512.2898859-1-ankit.k.nautiyal@intel.com>
Date: Tue, 20 Dec 2022 11:01:20 +0200
Message-ID: <875ye64ffj.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/hdmi: Go for scrambling only if
 platform supports TMDS clock > 340MHz
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

On Tue, 20 Dec 2022, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> There are cases, where devices have an HDMI1.4 retimer, and TMDS clock rate
> is capped to 340MHz via VBT. In such cases scrambling might be supported
> by the platform and an HDMI2.0 sink for lower TMDS rates, but not
> supported by the retimer, causing blankouts.
>
> So avoid enabling scrambling, if the TMDS clock is capped to <= 340MHz.
>
> v2: Added comment, documenting the rationale to check for TMDS clock,
> before going for scrambling. (Arun)
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 21 ++++++++++++++++++++-
>  1 file changed, 20 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index efa2da080f62..7603426af9a0 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2244,6 +2244,25 @@ static bool intel_hdmi_is_cloned(const struct intel_crtc_state *crtc_state)
>  		!is_power_of_2(crtc_state->uapi.encoder_mask);
>  }
>  
> +static bool source_can_support_scrambling(struct intel_encoder *encoder)

"source can support scrambling" reads like "if this function returns
true, source might support scrambing, but also might not, depends on
something else".

So does this mean "source supports scrambling" or "source can support
scrambling"? If the latter, as it is now named, what *else* is required
for source to support scrambling?

BR,
Jani.



> +{
> +	/*
> +	 * Gen 10+ support HDMI 2.0 : the max tmds clock is 594MHz, and
> +	 * scrambling is supported.
> +	 * But there seem to be cases where certain platforms that support
> +	 * HDMI 2.0, have an HDMI1.4 retimer chip, and the max tmds clock is
> +	 * capped by VBT to less than 340MHz.
> +	 *
> +	 * In such cases when an HDMI2.0 sink is connected, it creates a
> +	 * problem : the platform and the sink both support scrambling but the
> +	 * HDMI 1.4 retimer chip doesn't.
> +	 *
> +	 * So go for scrambling, based on the max tmds clock taking into account,
> +	 * restrictions coming from VBT.
> +	 */
> +	return intel_hdmi_source_max_tmds_clock(encoder) > 340000;
> +}
> +
>  int intel_hdmi_compute_config(struct intel_encoder *encoder,
>  			      struct intel_crtc_state *pipe_config,
>  			      struct drm_connector_state *conn_state)
> @@ -2301,7 +2320,7 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
>  
>  	pipe_config->lane_count = 4;
>  
> -	if (scdc->scrambling.supported && DISPLAY_VER(dev_priv) >= 10) {
> +	if (scdc->scrambling.supported && source_can_support_scrambling(encoder)) {
>  		if (scdc->scrambling.low_rates)
>  			pipe_config->hdmi_scrambling = true;

-- 
Jani Nikula, Intel Open Source Graphics Center
