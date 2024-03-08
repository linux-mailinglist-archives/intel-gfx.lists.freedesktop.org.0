Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43375876679
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Mar 2024 15:40:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B12DE10F066;
	Fri,  8 Mar 2024 14:40:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Iu723rGs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B39F10F066
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Mar 2024 14:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709908800; x=1741444800;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=MI8UXyi8sLf3LlqlkTst/1R86Rh573wZeYaaDAJZWsc=;
 b=Iu723rGsnElQjupnaOCXcCK8CGFo8YEX5TMITRpDIO6v8k4+KLn89HK7
 KLM7VWX2p5hVw1DgE+C7Jx1wn02BsUU5ts0WQRyDtAcWbkYdWAeI14TbP
 o7mcC8SZzlnUwCU1Y5JJkj1L6KAm9cR4MjQNk6gFRq+QRyiCBrkmCuRMi
 pV/ouPD//WYqHm7vAbCx49sdX+ahdFePnLLS8U5j7wSWaOBcCopRuJxnc
 CTc20zoFcqS2Tuttt5JCMjbbgYA5xURBPvVdochxG4LzCuzz/exVNAjGI
 d8MnrJbM40iAXwu1f1RV/br07Tg1axm2qnPgE6jTNH8L6kqZVnPIdMfAa A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="4554489"
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; 
   d="scan'208";a="4554489"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2024 06:39:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="827775235"
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; d="scan'208";a="827775235"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 08 Mar 2024 06:39:56 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 08 Mar 2024 16:39:55 +0200
Date: Fri, 8 Mar 2024 16:39:55 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v5 4/5] drm/i915/psr: Add IO buffer wake times for
 LunarLake and beyond
Message-ID: <ZesjOx-OjJ4qT4wz@intel.com>
References: <20240308110039.3900838-1-jouni.hogander@intel.com>
 <20240308110039.3900838-5-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240308110039.3900838-5-jouni.hogander@intel.com>
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

On Fri, Mar 08, 2024 at 01:00:38PM +0200, Jouni Högander wrote:
> IO buffer wake time used for IO wake calculation is dependent on port clock
> on LunarLake and beyond. Take this into account in get_io_buffer_wake_time.
> 
> Bspec: 65450
> 
> v2: add own io_wake_time helper for LunarLake
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 747761efa4be..e3daaf05d640 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1165,11 +1165,23 @@ static int tgl_io_buffer_wake_time(void)
>  	return 10;
>  }
>  
> +static int lnl_io_buffer_wake_time(int port_clock)
> +{
> +	if (port_clock > 270000)
> +		return 10;
> +	else if (port_clock > 162000)
> +		return 11;
> +	else
> +		return 15;
> +}

These numbers are only listed in the MTL section of bspec. There
is nothing like this in the LNL PHY power section AFAICS.

> +
>  static int io_buffer_wake_time(const struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
>  
> -	if (DISPLAY_VER(i915) >= 12)
> +	if (DISPLAY_VER(i915) >= 20)
> +		return lnl_io_buffer_wake_time(crtc_state->port_clock);
> +	else if (DISPLAY_VER(i915) >= 12)
>  		return tgl_io_buffer_wake_time();
>  	else
>  		return skl_io_buffer_wake_time();
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
