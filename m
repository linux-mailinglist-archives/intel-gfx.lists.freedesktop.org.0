Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EE7045C826
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Nov 2021 15:58:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E1256E1D8;
	Wed, 24 Nov 2021 14:58:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0884B6E1D8
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Nov 2021 14:58:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10177"; a="222165217"
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="222165217"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 06:58:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="509900154"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 24 Nov 2021 06:58:49 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 24 Nov 2021 16:58:48 +0200
Date: Wed, 24 Nov 2021 16:58:48 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>
Message-ID: <YZ5TKAAVV30iYX0o@intel.com>
References: <20211123193649.3153258-1-uma.shankar@intel.com>
 <20211123193649.3153258-2-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211123193649.3153258-2-uma.shankar@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/xelpd: Enable Pipe color
 support for D13 platform
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
Cc: intel-gfx@lists.freedesktop.org, =ville.syrjala@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 24, 2021 at 01:06:47AM +0530, Uma Shankar wrote:
> Enable pipe color support for Display 13 platforms. Currently
> limit to just 10bit gamma and later extend it for logarithmic
> gamma, once the new UAPI is agreed by community and implemented
> by a userspace consumer.
> 
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_color.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index c870a0e50cb1..e529dbeee525 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -1574,6 +1574,8 @@ static int glk_color_check(struct intel_crtc_state *crtc_state)
>  
>  static u32 icl_gamma_mode(const struct intel_crtc_state *crtc_state)
>  {
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);

s/dev_priv/i915/ for new stuff please.

>  	u32 gamma_mode = 0;
>  
>  	if (crtc_state->hw.degamma_lut)
> @@ -1586,6 +1588,13 @@ static u32 icl_gamma_mode(const struct intel_crtc_state *crtc_state)
>  	if (!crtc_state->hw.gamma_lut ||
>  	    crtc_state_is_legacy_gamma(crtc_state))
>  		gamma_mode |= GAMMA_MODE_MODE_8BIT;
> +	/*
> +	 * Enable 10bit gamma for D13
> +	 * ToDo: Extend to Logarithmic Gamma once the new UAPI
> +	 * is acccepted and implemented by a userspace consumer
> +	 */
> +	else if (DISPLAY_VER(dev_priv) >= 13)
> +		gamma_mode |= GAMMA_MODE_MODE_10BIT;

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  	else
>  		gamma_mode |= GAMMA_MODE_MODE_12BIT_MULTI_SEGMENTED;
>  
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
