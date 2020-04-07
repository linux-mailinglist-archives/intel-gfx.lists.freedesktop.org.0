Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 909C71A0DE1
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 14:40:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 014B76E85D;
	Tue,  7 Apr 2020 12:40:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E5026E85D
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 12:40:41 +0000 (UTC)
IronPort-SDR: 6YfHJcdZdWh/0pJgNKvtWJWeDzsdLN8e5dnt6qdcmxoVjk72x+F6K9PD0xyM+ctpJZKv54QVPe
 khBb46qr4XLA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 05:40:40 -0700
IronPort-SDR: Jnthy4L6IC3QOKmWVhAi7pSIwrk5hbfaCxENbH6P9jfRHsi6uF2U2NNL2mC0u0N7Goo30q9g5G
 lfcyFPuLLESw==
X-IronPort-AV: E=Sophos;i="5.72,354,1580803200"; d="scan'208";a="424734577"
Received: from vogtstef-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.249.40.153])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 05:40:38 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Vipin Anand <vipin.anand@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200327052357.22269-7-vipin.anand@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200327052357.22269-1-vipin.anand@intel.com>
 <20200327052357.22269-7-vipin.anand@intel.com>
Date: Tue, 07 Apr 2020 15:40:36 +0300
Message-ID: <878sj7jwor.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 6/7] drm/i915/display: Reduce blanking to
 support 4k60@10bpp for LSPCON
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

On Fri, 27 Mar 2020, Vipin Anand <vipin.anand@intel.com> wrote:
> From: Uma Shankar <uma.shankar@intel.com>
>
> Blanking needs to be reduced to incorporate DP and HDMI timing/link
> bandwidth limitations for CEA modes (4k@60 at 10 bpp). DP can drive
> 17.28Gbs while 4k modes (VIC97 etc) at 10 bpp required 17.8 Gbps.
> This will cause mode to blank out. Reduced Htotal by shortening the
> back porch and front porch within permissible limits.
>
> v2: This is marked as Not for merge and the responsibilty to program
> these custom timings will be on userspace. This patch is just for
> reference purposes. This is based on Ville's recommendation.

This must be highlighted in the subject. HACK or whatever.

And even as a hack, don't change stuff in the .mode_valid hook. It
belongs to compute config.

BR,
Jani.


>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index c7424e2a04a3..3ab1fadb2ea3 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -616,9 +616,11 @@ intel_dp_mode_valid(struct drm_connector *connector,
>  {
>  	struct intel_dp *intel_dp = intel_attached_dp(to_intel_connector(connector));
>  	struct intel_connector *intel_connector = to_intel_connector(connector);
> +	struct intel_encoder *intel_encoder = intel_attached_encoder(intel_connector);
>  	struct drm_display_mode *fixed_mode = intel_connector->panel.fixed_mode;
>  	struct drm_i915_private *dev_priv = to_i915(connector->dev);
>  	int target_clock = mode->clock;
> +	struct intel_lspcon *lspcon = enc_to_intel_lspcon(intel_encoder);
>  	int max_rate, mode_rate, max_lanes, max_link_clock;
>  	int max_dotclk;
>  	u16 dsc_max_output_bpp = 0;
> @@ -638,6 +640,20 @@ intel_dp_mode_valid(struct drm_connector *connector,
>  
>  		target_clock = fixed_mode->clock;
>  	}
> +	/*
> +	 * Reducing Blanking to incorporate DP and HDMI timing/link bandwidth
> +	 * limitations for CEA modes (4k@60 at 10 bpp). DP can drive 17.28Gbs
> +	 * while 4k modes (VIC97 etc) at 10 bpp required 17.8 Gbps. This will
> +	 * cause mode to blank out. Reduced Htotal by shortening the back porch
> +	 * and front porch within permissible limits.
> +	 */
> +	if (lspcon->active && lspcon->hdr_supported &&
> +	    mode->clock > 570000) {
> +		mode->clock = 570000;
> +		mode->htotal -= 180;
> +		mode->hsync_start -= 72;
> +		mode->hsync_end -= 72;
> +	}
>  
>  	max_link_clock = intel_dp_max_link_rate(intel_dp);
>  	max_lanes = intel_dp_max_lane_count(intel_dp);

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
