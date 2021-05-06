Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2FBB375229
	for <lists+intel-gfx@lfdr.de>; Thu,  6 May 2021 12:19:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F107D6ECAD;
	Thu,  6 May 2021 10:19:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A7406ECAD;
 Thu,  6 May 2021 10:19:53 +0000 (UTC)
IronPort-SDR: fr//QPRvVdc1ucOLGKXOPN8ytWQJ1avXR/V6enKb2IR93bAJ4vNviZqgEfUA1w4lHeGNOTSu9B
 +Sa+zw+sIkJw==
X-IronPort-AV: E=McAfee;i="6200,9189,9975"; a="177995572"
X-IronPort-AV: E=Sophos;i="5.82,277,1613462400"; d="scan'208";a="177995572"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 03:19:52 -0700
IronPort-SDR: 2A5Ljam3LnzMWnpH2wyu5qYcOWIQYB5VoR7Ikh1p1P1PAc8QD7oFU9TCiD7RBkX9diy98QEvlr
 97zmELTih3Sg==
X-IronPort-AV: E=Sophos;i="5.82,277,1613462400"; d="scan'208";a="434281726"
Received: from tchrzano-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.42.214])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 03:19:49 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Werner Sembach <wse@tuxedocomputers.com>, wse@tuxedocomputers.com,
 ville.syrjala@linux.intel.com, airlied@linux.ie, daniel@ffwll.ch,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
In-Reply-To: <20210505172401.1453178-2-wse@tuxedocomputers.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210505172401.1453178-1-wse@tuxedocomputers.com>
 <20210505172401.1453178-2-wse@tuxedocomputers.com>
Date: Thu, 06 May 2021 13:19:46 +0300
Message-ID: <87v97ww4e5.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/3] New function to avoid duplicate code in
 upcomming commits
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 05 May 2021, Werner Sembach <wse@tuxedocomputers.com> wrote:
> Moves some checks that later will be performed 2 times to an own fuction. This
> avoids duplicate code later on.
>
> Signed-off-by: Werner Sembach <wse@tuxedocomputers.com>
> ---
>
> From 42a4a3a7d9ea9948b4071f406e7fcae23bfa0bdf Mon Sep 17 00:00:00 2001
> From: Werner Sembach <wse@tuxedocomputers.com>
> Date: Mon, 3 May 2021 14:35:39 +0200
> Subject: [PATCH 1/3] New function to avoid duplicate code in upcomming commits

What are you using to generate and send the patches? This looks like
unnecessary cruft, and our CI fails to apply and test the changes.

BR,
Jani.

>
> ---
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 41 ++++++++++++++---------
>  1 file changed, 26 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 46de56af33db..576d3d910d06 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -1861,6 +1861,31 @@ static int intel_hdmi_port_clock(int clock, int bpc)
>  	return clock * bpc / 8;
>  }
>  
> +static enum drm_mode_status
> +intel_hdmi_mode_clock_valid(struct intel_hdmi *hdmi, int clock, bool has_hdmi_sink)
> +{
> +	struct drm_device *dev = intel_hdmi_to_dev(hdmi);
> +	struct drm_i915_private *dev_priv = to_i915(dev);
> +	enum drm_mode_status status;
> +
> +	/* check if we can do 8bpc */
> +	status = hdmi_port_clock_valid(hdmi, clock, true, has_hdmi_sink);
> +
> +	if (has_hdmi_sink) {
> +		/* if we can't do 8bpc we may still be able to do 12bpc */
> +		if (status != MODE_OK && !HAS_GMCH(dev_priv))
> +			status = hdmi_port_clock_valid(hdmi, clock * 3 / 2,
> +						       true, has_hdmi_sink);
> +
> +		/* if we can't do 8,12bpc we may still be able to do 10bpc */
> +		if (status != MODE_OK && INTEL_GEN(dev_priv) >= 11)
> +			status = hdmi_port_clock_valid(hdmi, clock * 5 / 4,
> +						       true, has_hdmi_sink);
> +	}
> +
> +	return status;
> +}
> +
>  static enum drm_mode_status
>  intel_hdmi_mode_valid(struct drm_connector *connector,
>  		      struct drm_display_mode *mode)
> @@ -1891,21 +1916,7 @@ intel_hdmi_mode_valid(struct drm_connector *connector,
>  	if (drm_mode_is_420_only(&connector->display_info, mode))
>  		clock /= 2;
>  
> -	/* check if we can do 8bpc */
> -	status = hdmi_port_clock_valid(hdmi, intel_hdmi_port_clock(clock, 8),
> -				       true, has_hdmi_sink);
> -
> -	if (has_hdmi_sink) {
> -		/* if we can't do 8bpc we may still be able to do 12bpc */
> -		if (status != MODE_OK && !HAS_GMCH(dev_priv))
> -			status = hdmi_port_clock_valid(hdmi, intel_hdmi_port_clock(clock, 12),
> -						       true, has_hdmi_sink);
> -
> -		/* if we can't do 8,12bpc we may still be able to do 10bpc */
> -		if (status != MODE_OK && DISPLAY_VER(dev_priv) >= 11)
> -			status = hdmi_port_clock_valid(hdmi, intel_hdmi_port_clock(clock, 10),
> -						       true, has_hdmi_sink);
> -	}
> +	status = intel_hdmi_mode_clock_valid(hdmi, clock, has_hdmi_sink);
>  	if (status != MODE_OK)
>  		return status;

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
