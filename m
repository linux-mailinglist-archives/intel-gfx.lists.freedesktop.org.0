Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3496AAD2544
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Jun 2025 19:59:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44ED210E41D;
	Mon,  9 Jun 2025 17:59:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JMpdBqZN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0C0B10E41E;
 Mon,  9 Jun 2025 17:59:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749491989; x=1781027989;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=6BfvE1E35OnGWZEQT1llWkkElS7k+eUJ10fFBh+L4JY=;
 b=JMpdBqZNqu5Q4lausGNqrNM+Kbtg1m9BiJCb84pK1D36gVG6tFaWqZqr
 4jliwe8SuttQ2leRNw/bMDea1/D3R4iJyyILaHz7H7Lbh83n2S1HJcNFJ
 d7wubAYM3KVEsS/kVksWFdOAX1/7IOF9mTXGC+6s+wHKXXOc3SY+jOP49
 huWbZDlvhC7KkBehcBppA+ZEzdTLyKUadKT6AIN3BTSKN9hPI/aFwsIuP
 CHCvvaYlqPTsdRP63goMLQZfXZY0GNX/BSsCQt9V1RHk6mHlMG5dgt2ee
 cI82h4NYi+7SxV1Jz5v4/rpZS4+QQsggDOOm8LYjAcqUqcrhrAMMHlXMg Q==;
X-CSE-ConnectionGUID: zq63e5koQ3Sii40eoNwSmg==
X-CSE-MsgGUID: JiwAWJVNQOWNXMElYEFDrQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11459"; a="51459027"
X-IronPort-AV: E=Sophos;i="6.16,222,1744095600"; d="scan'208";a="51459027"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 10:59:48 -0700
X-CSE-ConnectionGUID: 7H9khdDnTBG4SLmyojpEfQ==
X-CSE-MsgGUID: fh3o+5KiQRiE1C8CtBH3bA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,222,1744095600"; d="scan'208";a="151835303"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.99])
 by orviesa005.jf.intel.com with SMTP; 09 Jun 2025 10:59:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 09 Jun 2025 20:59:45 +0300
Date: Mon, 9 Jun 2025 20:59:45 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 ankit.k.nautiyal@intel.com
Subject: Re: [PATCH] drm/i915/xe3lpd: Prune modes for YUV420
Message-ID: <aEchEa8p0bIKXMJa@intel.com>
References: <20250609164548.2878908-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250609164548.2878908-1-suraj.kandpal@intel.com>
X-Patchwork-Hint: comment
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

On Mon, Jun 09, 2025 at 10:15:48PM +0530, Suraj Kandpal wrote:
> We only support resolution up to 4k for single pipe when using
> YUV420 format so we prune these modes and restrict the plane size
> at src. This is because pipe scaling will not support YUV420 scaling
> for hwidth > 4096.
> 
> --v2
> -Use output format to check [Ville]
> -Add Bspec references
> -Modify commit messge to point to why this is needed
> 
> Bspec: 49247, 50441
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index d04609460e8c..2691eeb50a26 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1419,6 +1419,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  	struct intel_display *display = to_intel_display(_connector->dev);
>  	struct intel_connector *connector = to_intel_connector(_connector);
>  	struct intel_dp *intel_dp = intel_attached_dp(connector);
> +	enum intel_output_format sink_format, output_format;
>  	const struct drm_display_mode *fixed_mode;
>  	int target_clock = mode->clock;
>  	int max_rate, mode_rate, max_lanes, max_link_clock;
> @@ -1452,6 +1453,14 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  						     mode->hdisplay, target_clock);
>  	max_dotclk *= num_joined_pipes;
>  
> +	sink_format = intel_dp_sink_format(connector, mode);
> +	output_format = intel_dp_output_format(connector, sink_format);
> +	if (num_joined_pipes == 1) {
> +		if (output_format == INTEL_OUTPUT_FORMAT_YCBCR420 &&
> +		    mode->hdisplay > 4096)

Sprinkling random hw limits all over the codebase isn't a very good
approach. I think we want some kind of skl_scaler_mode_valid() for this.
And that should probably be routed via a intel_pfit_mode_valid() to keep
the level of abstraction similar to intel_pfit_compute_config().

> +			return MODE_NO_420;
> +	}
> +
>  	if (target_clock > max_dotclk)
>  		return MODE_CLOCK_HIGH;
>  
> @@ -1467,11 +1476,8 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  					   intel_dp_mode_min_output_bpp(connector, mode));
>  
>  	if (intel_dp_has_dsc(connector)) {
> -		enum intel_output_format sink_format, output_format;
>  		int pipe_bpp;
>  
> -		sink_format = intel_dp_sink_format(connector, mode);
> -		output_format = intel_dp_output_format(connector, sink_format);
>  		/*
>  		 * TBD pass the connector BPC,
>  		 * for now U8_MAX so that max BPC on that platform would be picked
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
