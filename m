Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 911DEA50094
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Mar 2025 14:32:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1608E10E298;
	Wed,  5 Mar 2025 13:32:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Tg733Wuq";
	dkim-atps=neutral
X-Original-To: intel-gfx@freedesktop.org
Delivered-To: intel-gfx@freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E297489A1E
 for <intel-gfx@freedesktop.org>; Wed,  5 Mar 2025 13:32:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741181560; x=1772717560;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=8wnYlg7ls6vkbtWs2+lbsge+esz865cJjcLAftuKCgM=;
 b=Tg733WuqZJjtVTVAF2PbzH3o+NgD52CMpuKhdoY2k3C52ILE2A9a2A9j
 FK0ZFoeYpT5YIdu9GEbKLDrjmvHR3+bFzO28otC2h+R9Q3X8RdpNm0zv5
 Eg3q00+W04dwHp5NzLPGe8zTYaXoq+CuUQAKPiGAu4D0CIz1FTJdheq1b
 oL9lD/skylK9SkSCMwn6dUW8UUqrclkrdhUVDVeM3TxkryPp6QvdwRSdI
 bkGAxE4tRNpNWpRpoT5OqmDTfTKkGWM1xZyFMqoeZWuTn+DIugJpuhFIV
 NN2aFfGHSJBrXyU3NlfRc1ZvZu4ZrVq662FhASpO9ZoNDD2m3NwJf++Im Q==;
X-CSE-ConnectionGUID: fpP+4aP6ST6vsSLCHWGEPA==
X-CSE-MsgGUID: KaVWucMdQb6JeRJuVM5eZA==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="67512504"
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="67512504"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 05:32:40 -0800
X-CSE-ConnectionGUID: uyIby9wpRliRWhHfh0nm2Q==
X-CSE-MsgGUID: Ebnm+liyT1S8OgjQCW8Jdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="123889476"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 05 Mar 2025 05:32:37 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 05 Mar 2025 15:32:36 +0200
Date: Wed, 5 Mar 2025 15:32:36 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>
Cc: intel-gfx@freedesktop.org, suraj.kandpal@intel.com
Subject: Re: [PATCH] drm/i915/xe3lpd: Prune modes for YUV420
Message-ID: <Z8hSdBQvBMMosSIR@intel.com>
References: <20250304200032.68292-1-matthew.s.atwood@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250304200032.68292-1-matthew.s.atwood@intel.com>
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

On Tue, Mar 04, 2025 at 12:00:31PM -0800, Matt Atwood wrote:
> From: Suraj Kandpal <suraj.kandpal@intel.com>
> 
> We only support resolution upto 4k for single pipe when using
> YUV420 format so we prune these modes and restrict the plane size
> at src.
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 205ec315b413..8bccc6e0b5b3 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1396,6 +1396,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  	struct intel_display *display = to_intel_display(_connector->dev);
>  	struct intel_connector *connector = to_intel_connector(_connector);
>  	struct intel_dp *intel_dp = intel_attached_dp(connector);
> +	enum intel_output_format sink_format;
>  	const struct drm_display_mode *fixed_mode;
>  	int target_clock = mode->clock;
>  	int max_rate, mode_rate, max_lanes, max_link_clock;
> @@ -1429,6 +1430,13 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  						     mode->hdisplay, target_clock);
>  	max_dotclk *= num_joined_pipes;
>  
> +	sink_format = intel_dp_sink_format(connector, mode);
> +	if (num_joined_pipes == 1) {
> +		if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 &&

sink_format is irrelevant. output_format is what matters.

> +		    mode->hdisplay > 4096)
> +			return MODE_NO_420;
> +	}

Which hardware limit are you actully trying to handle here?

> +
>  	if (target_clock > max_dotclk)
>  		return MODE_CLOCK_HIGH;
>  
> @@ -1444,10 +1452,9 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  					   intel_dp_mode_min_output_bpp(connector, mode));
>  
>  	if (intel_dp_has_dsc(connector)) {
> -		enum intel_output_format sink_format, output_format;
> +		enum intel_output_format output_format;
>  		int pipe_bpp;
>  
> -		sink_format = intel_dp_sink_format(connector, mode);
>  		output_format = intel_dp_output_format(connector, sink_format);
>  		/*
>  		 * TBD pass the connector BPC,
> -- 
> 2.45.0

-- 
Ville Syrjälä
Intel
