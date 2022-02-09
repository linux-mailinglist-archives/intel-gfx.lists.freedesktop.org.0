Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E3BD4AFDDD
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 20:58:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E73EE10E1FF;
	Wed,  9 Feb 2022 19:58:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C196110E1FF
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Feb 2022 19:58:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644436736; x=1675972736;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=6RcvqIhoxQAvpphAYVYWQ7NyYvXHfCmme4EeZdT2YyI=;
 b=GnudpLo1tYgQmU6IL57MnObHtidr6klYDPhEXZDb5ChVa3aSmkHAQkox
 W4CAPcQTXIkOQhDNC4WHjs4VlB18d9TvEnk4DpTfA3cG39eSy84VqZfxI
 ze2JV6/ipXEEZtKNevF7nv3L+pNm69ZhFoThDFPiqbMxzqPNQdEj6hg6Q
 velJy8vxeZBb+qtUbMiWOANUhxHZ4QdOmjBv2U5Et3ccExLhEXfIka+8B
 rm/5sCccGy3cKm2JZAQp0D06DyQJi4knVp95H64DX/vUy6qosL3htTYJU
 vsE/xFPqC/YLClVocW04Z68M+8euaMTHVTZnljBUaurUt6Yx/Y7sbG92p g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10253"; a="229290935"
X-IronPort-AV: E=Sophos;i="5.88,356,1635231600"; d="scan'208";a="229290935"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 11:58:45 -0800
X-IronPort-AV: E=Sophos;i="5.88,356,1635231600"; d="scan'208";a="771477866"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 11:58:45 -0800
Date: Wed, 9 Feb 2022 11:58:50 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220209195850.GB31646@labuser-Z97X-UD5H>
References: <20220203183823.22890-1-ville.syrjala@linux.intel.com>
 <20220203183823.22890-9-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220203183823.22890-9-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 08/10] drm/i915: Use
 for_each_intel_crtc_in_pipe_mask() more
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 03, 2022 at 08:38:21PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Convert a few hand roller for_each_intel_crtc_in_pipe_mask()
> to the real thing.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 12 ++++--------
>  1 file changed, 4 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 9a7f40d17b79..6df498fc720a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4069,14 +4069,12 @@ static u8 enabled_bigjoiner_pipes(struct drm_i915_private *dev_priv)
>  	u8 master_pipes = 0, slave_pipes = 0;
>  	struct intel_crtc *crtc;
>  
> -	for_each_intel_crtc(&dev_priv->drm, crtc) {
> +	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc,
> +					 bigjoiner_pipes(dev_priv)) {
>  		enum intel_display_power_domain power_domain;
>  		enum pipe pipe = crtc->pipe;
>  		intel_wakeref_t wakeref;
>  
> -		if ((bigjoiner_pipes(dev_priv) & BIT(pipe)) == 0)
> -			continue;
> -
>  		power_domain = intel_dsc_power_domain(crtc, (enum transcoder) pipe);
>  		with_intel_display_power_if_enabled(dev_priv, power_domain, wakeref) {
>  			u32 tmp = intel_de_read(dev_priv, ICL_PIPE_DSS_CTL1(pipe));
> @@ -8993,10 +8991,8 @@ static u32 intel_encoder_possible_crtcs(struct intel_encoder *encoder)
>  	struct intel_crtc *crtc;
>  	u32 possible_crtcs = 0;
>  
> -	for_each_intel_crtc(dev, crtc) {
> -		if (encoder->pipe_mask & BIT(crtc->pipe))
> -			possible_crtcs |= drm_crtc_mask(&crtc->base);
> -	}
> +	for_each_intel_crtc_in_pipe_mask(dev, crtc, encoder->pipe_mask)
> +		possible_crtcs |= drm_crtc_mask(&crtc->base);
>  
>  	return possible_crtcs;
>  }
> -- 
> 2.34.1
> 
