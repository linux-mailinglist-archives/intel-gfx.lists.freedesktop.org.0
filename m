Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3C7EC165FB
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Oct 2025 19:03:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A92610E002;
	Tue, 28 Oct 2025 18:03:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j7XAF1Yt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DA3610E002;
 Tue, 28 Oct 2025 18:03:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761674600; x=1793210600;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=m8W9O0fquRG2yljys2MtRR+4kDyj8LSYNyTtM6YuOOI=;
 b=j7XAF1YtIwhjtPud8DV9PV2UPsQ7WuI+5X40RB5yKbn5mri8dlMw9EEp
 7RNEtuJR8xDu30G/1nhSYJmq1X9lCWnVWoiqokhqO+bJwym2GqGsCJHQY
 UOKxjXz5fzH0opDfdkfEbhUvFAXZocuivgD1//aCdUTR7LoNzFTxrlLpS
 qS+uLVAg4hg3fRK7AjOK8wpLBxsZriCMp6KKd1EJuSQN+HKYrsUYRlkIh
 W6wjMv1daYVAWK62h06JJ0f2U40WPUpu2U/13TByrHbNF6tgYDlQesgNb
 nA+FTDbnGjDabbUU3kGJWfdZJI4A8rbGlc80RkhEkJ0Ei+RBRF3qdw5CL g==;
X-CSE-ConnectionGUID: 1cO4TgRgRGCrTDPVAngfOQ==
X-CSE-MsgGUID: qbMiPYvWRtGvoBUQZNx8Ww==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63823436"
X-IronPort-AV: E=Sophos;i="6.19,261,1754982000"; d="scan'208";a="63823436"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2025 11:03:20 -0700
X-CSE-ConnectionGUID: j2oVBiDJSrCUNNaX5Z4Klw==
X-CSE-MsgGUID: qGXbuR16RzWrVQ3tOWSr8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,261,1754982000"; d="scan'208";a="185310131"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.169])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2025 11:03:18 -0700
Date: Tue, 28 Oct 2025 20:03:15 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/2] drm/i915/dsi: debug log send packet sequence contents
Message-ID: <aQEFY6_JA9oE66vF@intel.com>
References: <20251028155712.1824565-1-jani.nikula@intel.com>
 <20251028155712.1824565-2-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251028155712.1824565-2-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Tue, Oct 28, 2025 at 05:57:12PM +0200, Jani Nikula wrote:
> This might help debug issues better than just debug logging the function
> name.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> index 748e5462bd95..2528c0996c25 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> @@ -107,8 +107,7 @@ static const u8 *mipi_exec_send_packet(struct intel_dsi *intel_dsi,
>  	u16 len;
>  	enum port port;
>  	ssize_t ret;
> -
> -	drm_dbg_kms(display->drm, "\n");
> +	bool hs_mode;
>  
>  	flags = *data++;
>  	type = *data++;
> @@ -130,13 +129,18 @@ static const u8 *mipi_exec_send_packet(struct intel_dsi *intel_dsi,
>  		goto out;
>  	}
>  
> -	if ((flags >> MIPI_TRANSFER_MODE_SHIFT) & 1)
> +	hs_mode = (flags >> MIPI_TRANSFER_MODE_SHIFT) & 1;
> +	if (hs_mode)
>  		dsi_device->mode_flags &= ~MIPI_DSI_MODE_LPM;
>  	else
>  		dsi_device->mode_flags |= MIPI_DSI_MODE_LPM;
>  
>  	dsi_device->channel = (flags >> MIPI_VIRTUAL_CHANNEL_SHIFT) & 3;
>  
> +	drm_dbg_kms(display->drm, "DSI packet: Port %c (seq %u), Flags 0x%02x, VC %u, %s, Type %u, Length %u, Data %*ph\n",
> +		    port_name(port), seq_port, flags, dsi_device->channel,
> +		    hs_mode ? "HS" : "LP", type, len, (int)len, data);

We're printing the type as hex in igt, and looks like the enum uses
hex as well, and the DSI spec has both hex and binary. So seems to
me that hex would be the best way to go here too.

Otherwise lgtm
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> +
>  	switch (type) {
>  	case MIPI_DSI_GENERIC_SHORT_WRITE_0_PARAM:
>  		ret = mipi_dsi_generic_write(dsi_device, NULL, 0);
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
