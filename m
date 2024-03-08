Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 002A587666F
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Mar 2024 15:37:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62F9510F738;
	Fri,  8 Mar 2024 14:37:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k+eSv/c1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85DA21138D2
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Mar 2024 14:37:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709908633; x=1741444633;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=CZ17H5oWDkWMLRC80N047AFj5BWGjmeaEzzctbuR0Vw=;
 b=k+eSv/c1fUPyAaEzfT5lnJ+7olylOb1nfHhqmQrVfxTgS5QyA940m+tp
 KNHDlqHLjXYZoL4Ta0q62xJpHtC6WEl8TgMY85Cgw/splnn2p7WHnkRGZ
 A5QioSPedB1PNk00EO6++/4yPCB2I6HUYtuWNVQ8kZdWNgrUlgcxdIke2
 +P+JRuetHMU0Conx3h9OzmnS1NSIwhj7USgDDkYjfEw6Kd4HAqTWGxZmT
 73gSAOwbmzjb9IphF/PPbpgcxOfSoROT0AH4U+JATCWn5EN26ud/KcEcc
 m9q4ieiDrj0dUfjQCWBO2tq12MjVZY+GotEUiCgcz8MBDBj8chhraMPyt Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="4554308"
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; 
   d="scan'208";a="4554308"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2024 06:37:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="827775226"
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; d="scan'208";a="827775226"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 08 Mar 2024 06:37:08 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 08 Mar 2024 16:37:07 +0200
Date: Fri, 8 Mar 2024 16:37:07 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v5 1/5] drm/i915/display: Make intel_dp_aux_fw_sync_len
 available for PSR code
Message-ID: <Zesik6RgzYv9y6Kc@intel.com>
References: <20240308110039.3900838-1-jouni.hogander@intel.com>
 <20240308110039.3900838-2-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240308110039.3900838-2-jouni.hogander@intel.com>
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

On Fri, Mar 08, 2024 at 01:00:35PM +0200, Jouni Högander wrote:
> ALPM AUX-Wake fast wake sync pulse count is needed by PSR to calculate IO
> wake and fast wake lines. Convert intel_dp_aux_fw_sync_len as non-static
> to make it available for PSR code.
> 
> v2: use int instead of u8
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_aux.c | 2 +-
>  drivers/gpu/drm/i915/display/intel_dp_aux.h | 1 +
>  2 files changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> index 4f4a0e3b3114..7e69be100d90 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -143,7 +143,7 @@ static int intel_dp_aux_sync_len(void)
>  	return precharge + preamble;
>  }
>  
> -static int intel_dp_aux_fw_sync_len(void)
> +int intel_dp_aux_fw_sync_len(void)
>  {
>  	int precharge = 10; /* 10-16 */
>  	int preamble = 8;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.h b/drivers/gpu/drm/i915/display/intel_dp_aux.h
> index 8447f3e601fe..76d1f2ed7c2f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.h
> @@ -20,5 +20,6 @@ enum aux_ch intel_dp_aux_ch(struct intel_encoder *encoder);
>  
>  void intel_dp_aux_irq_handler(struct drm_i915_private *i915);
>  u32 intel_dp_aux_pack(const u8 *src, int src_bytes);
> +int intel_dp_aux_fw_sync_len(void);
>  
>  #endif /* __INTEL_DP_AUX_H__ */
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
