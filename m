Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE58A97F0A6
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 20:30:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DB0B10E455;
	Mon, 23 Sep 2024 18:30:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l6cGgMIQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F0F010E455;
 Mon, 23 Sep 2024 18:30:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727116220; x=1758652220;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=znIsCdAmo+9KBBzq7RU+cc3FDPcR4jNJo0ZsE3rP+lE=;
 b=l6cGgMIQcgcPiuqW8Rkeg3fT/XwEpPvGE9YRgLIyjOmXQmXeQKvAOHjL
 vRHsljU5gUw7V5JbMzQaTIl6Ppg/ixOTP6vv6+opKBVS50ZQiX5BMH1Pe
 AdA2yQTkq8bPBpGaJ1dBZOChyV3IPqGMgUfymkheO9y0tN4gw0fqW0sxE
 itdtem4Vbu6+lKoXkfS9voL8XYM33taxfCT16ID68RnX94zGOHZYJ8QCI
 dbihERqndHFZGvbt9VS0R07F1KnxcE3VnloW6D1KEn+q/oEMSi+N9Vr3v
 l49vgtWzJnO+74JaWLFiE2FT0O0tHCd+wymSR7jeT0L0M2sGQ/Xl3yys1 Q==;
X-CSE-ConnectionGUID: bNuc9UCkQcaBUOfwWif+LA==
X-CSE-MsgGUID: B6utiB68RA2eb4yurBoYqQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="26035118"
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="26035118"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 11:30:20 -0700
X-CSE-ConnectionGUID: zBQQS6DvR0qjtQmzaM5QJg==
X-CSE-MsgGUID: rhyNtlL0R8eTixb9TLHtBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="71298150"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 23 Sep 2024 11:30:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 23 Sep 2024 21:30:16 +0300
Date: Mon, 23 Sep 2024 21:30:16 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 suraj.kandpal@intel.com
Subject: Re: [PATCH 01/16] drm/i915/display_device: Add Check HAS_DSC for
 bigjoiner
Message-ID: <ZvGzuPi9L5Kh824W@intel.com>
References: <20240923181336.3303940-1-ankit.k.nautiyal@intel.com>
 <20240923181336.3303940-2-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240923181336.3303940-2-ankit.k.nautiyal@intel.com>
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

On Mon, Sep 23, 2024 at 11:43:21PM +0530, Ankit Nautiyal wrote:
> Bigjoiner needs DSC, add a check to reflect that.

Might want to point out here that DSC can be fused off, hence
the platform check itself is not sufficient.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_device.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 5306bbd13e59..6a5bee59e6aa 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -118,7 +118,7 @@ enum intel_display_subplatform {
>  
>  #define HAS_4TILE(i915)			(IS_DG2(i915) || DISPLAY_VER(i915) >= 14)
>  #define HAS_ASYNC_FLIPS(i915)		(DISPLAY_VER(i915) >= 5)
> -#define HAS_BIGJOINER(i915)		(DISPLAY_VER(i915) >= 11)
> +#define HAS_BIGJOINER(i915)		(DISPLAY_VER(i915) >= 11 && HAS_DSC(i915))
>  #define HAS_CDCLK_CRAWL(i915)		(DISPLAY_INFO(i915)->has_cdclk_crawl)
>  #define HAS_CDCLK_SQUASH(i915)		(DISPLAY_INFO(i915)->has_cdclk_squash)
>  #define HAS_CUR_FBC(i915)		(!HAS_GMCH(i915) && IS_DISPLAY_VER(i915, 7, 13))
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
