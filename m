Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A864978675
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2024 19:12:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59DC110E28D;
	Fri, 13 Sep 2024 17:12:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="go/HW/My";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8781710E28D;
 Fri, 13 Sep 2024 17:12:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726247573; x=1757783573;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=9LchBqf6k/tNCJWHz96riOHuR9lD+rEQIppqxed0cdc=;
 b=go/HW/MyoMCQ+XdYxF5R2pLSw3zq6RiAx93MZeRTE6OeoTUkhHgPUJNa
 byjiOmrcpYlHSIfhyePBbMBUuwRWq6Qa1e6QigB4acgtRqwvK6MSxCaCS
 XyGqmzk6qIsdN4xq1/q27BBKmG+o6Z5BOBfQ7KvOAyeYC1hWbHQkRwd9V
 hVU0mfDZqCUXOgi6Ue6sSjEwlg23wpUTo9dPnYo3ml0jY7WS4sPUCc8nb
 XF00GwV/kDs3O4mHuGrJHb4ndFXCOz8CDgsUkPqQueDRrZ+WXULR7yoMn
 zGgCZYbDDBaTuqOyMc7cPQfRuzidoCEPQtvTPemN2shmX0uqzJ/L2n1eo w==;
X-CSE-ConnectionGUID: QJfxHgKARQ2xRajO3QOkzQ==
X-CSE-MsgGUID: 19z0dY7pQTSd0LHEkyrx6w==
X-IronPort-AV: E=McAfee;i="6700,10204,11194"; a="24981070"
X-IronPort-AV: E=Sophos;i="6.10,226,1719903600"; d="scan'208";a="24981070"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2024 10:12:53 -0700
X-CSE-ConnectionGUID: uYvanj2QQ+Cfu2dHQnFA6A==
X-CSE-MsgGUID: lMnD5RTDRhOkh6DDKml4sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,226,1719903600"; d="scan'208";a="68229664"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 13 Sep 2024 10:12:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 13 Sep 2024 20:12:49 +0300
Date: Fri, 13 Sep 2024 20:12:49 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/2] drm/xe: Fix DSB buffer coherency
Message-ID: <ZuRykc_etbea6063@intel.com>
References: <20240913114754.7956-1-maarten.lankhorst@linux.intel.com>
 <20240913114754.7956-2-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240913114754.7956-2-maarten.lankhorst@linux.intel.com>
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

On Fri, Sep 13, 2024 at 01:47:53PM +0200, Maarten Lankhorst wrote:
> Add the scanout flag to force WC caching, and add the memory barrier
> where needed.
> 
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> ---
>  drivers/gpu/drm/xe/display/xe_dsb_buffer.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/display/xe_dsb_buffer.c b/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
> index f99d901a3214f..f7949bf5426af 100644
> --- a/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
> +++ b/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
> @@ -48,11 +48,12 @@ bool intel_dsb_buffer_create(struct intel_crtc *crtc, struct intel_dsb_buffer *d
>  	if (!vma)
>  		return false;
>  
> +	/* Set scanout flag for WC mapping */
>  	obj = xe_bo_create_pin_map(xe, xe_device_get_root_tile(xe),
>  				   NULL, PAGE_ALIGN(size),
>  				   ttm_bo_type_kernel,
>  				   XE_BO_FLAG_VRAM_IF_DGFX(xe_device_get_root_tile(xe)) |
> -				   XE_BO_FLAG_GGTT);
> +				   XE_BO_FLAG_SCANOUT | XE_BO_FLAG_GGTT);
>  	if (IS_ERR(obj)) {
>  		kfree(vma);
>  		return false;
> @@ -73,5 +74,5 @@ void intel_dsb_buffer_cleanup(struct intel_dsb_buffer *dsb_buf)
>  
>  void intel_dsb_buffer_flush_map(struct intel_dsb_buffer *dsb_buf)
>  {
> -	/* TODO: add xe specific flush_map() for dsb buffer object. */
> +	xe_device_wmb(dsb_buf->vma->bo->tile->xe);

MMIO itself should be sufficient to flush the WC buffer.
But I guess no real harm in hammering it a bit harder.

>  }
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
