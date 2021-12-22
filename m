Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93A8E47D452
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Dec 2021 16:38:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9319710E14C;
	Wed, 22 Dec 2021 15:38:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE42C10E14C
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Dec 2021 15:38:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640187522; x=1671723522;
 h=date:from:to:subject:message-id:references:mime-version:
 content-transfer-encoding:in-reply-to;
 bh=QLxH46RUV1e+aCttXsX7U9uT0kNXwDo8h1tUo+fVG8o=;
 b=oBSpHmx9xHymvc4mha6x7NmaoHvw1CNzDVwkwy1IadhxtaDGz82bNcp8
 o6IRoIkmjBYdrzY3IoaazyYj2Aovy40F3LAfBwXNxrT8JU3rNAeRhsGx/
 FepW1wCvRRqAdRoGlTNb1Hzga5SA9GqNJ10hxmtETEEaZIkTThThVKgFz
 1j8P1BNo/9r8vaw0UjXVrGqHyoqVhM1qy6aMmwbKecTqOAaYx7dou5gE6
 9RBMEn44MOEJ3xI2/7HIO1uR3jzvK9crx9m3nXMwFYbcs87nn8NQnYlfZ
 nm6vxnHOJyGkLVeEGarg8PKCPv5O2+Da44KfiBkPBwxaz0dFyhXbik+Bx A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10205"; a="220656340"
X-IronPort-AV: E=Sophos;i="5.88,226,1635231600"; d="scan'208";a="220656340"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2021 07:38:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,226,1635231600"; d="scan'208";a="468210850"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga006.jf.intel.com with SMTP; 22 Dec 2021 07:38:40 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 22 Dec 2021 17:38:39 +0200
Date: Wed, 22 Dec 2021 17:38:39 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YcNGf4imh8p4cV8U@intel.com>
References: <20211217155403.31477-1-ville.syrjala@linux.intel.com>
 <20211217155403.31477-7-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211217155403.31477-7-ville.syrjala@linux.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915/hdmi: Ignore DP++ TMDS clock
 limit for native HDMI ports
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

On Fri, Dec 17, 2021 at 05:54:03PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Lots of machines these days seem to have a crappy type1 DP dual
> mode adaptor chip slapped onto the motherboard. Based on the
> DP dual mode spec we currently limit those to 165MHz max TMDS
> clock.
> 
> Windows OTOH ignores DP dual mode adaptors when the VBT
> indicates that the port is not actually DP++, so we can
> perhaps assume that the vendors did intend that the 165MHz
> clock limit doesn't apply here. Though it would be much
> nicer if they actually declared an explicit limit through
> VBT, but that doesn't seem to be happening either.
> 
> So in order to match Windows behaviour let's ignore the
> DP dual mode adaptor's TMDS clock limit for ports that
> don't look like DP++ in VBT.
> 
> Unfortunately many older VBTs misdelcare their DP++ ports
> as just HDMI (eg. ILK Dell Latitude E5410) or DP (eg. SNB
> Lenovo ThinkPad X220). So we can't really do this universally
> without risking black screens. I suppose a sensible cutoff
> is HSW+ since that's when 4k became a thing and one might
> assume that the machines have been tested to work with higher
> TMDS clock rates.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 3b5b9e7b05b7..9f0557d9e9a5 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2359,6 +2359,14 @@ intel_hdmi_dp_dual_mode_detect(struct drm_connector *connector, bool has_edid)
>  		    "DP dual mode adaptor (%s) detected (max TMDS clock: %d kHz)\n",
>  		    drm_dp_get_dual_mode_type_name(type),
>  		    hdmi->dp_dual_mode.max_tmds_clock);
> +
> +	/* Older VBTs are often buggy and can't be trusted :( Play it safe. */
> +	if ((DISPLAY_VER(dev_priv) >= 8 || IS_BROADWELL(dev_priv)) &&

As stated in the commit message I actually meant to say IS_HASWELL
here, not IS_BROADWELL.

> +	    !intel_bios_is_port_dp_dual_mode(dev_priv, port)) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "Ignoring DP dual mode adaptor max TMDS clock for native HDMI port\n");
> +		hdmi->dp_dual_mode.max_tmds_clock = 0;
> +	}
>  }
>  
>  static bool
> -- 
> 2.32.0

-- 
Ville Syrjälä
Intel
