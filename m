Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4261FA6C5A0
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 23:07:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C366E10E83B;
	Fri, 21 Mar 2025 22:07:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oJSz10nn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 494B810E83B
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Mar 2025 22:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742594828; x=1774130828;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=vGgVs5TcQ+aI/e0ztj9Tv87pAuUtz6EkhJbBSCW2gFw=;
 b=oJSz10nnvqwdYF31j26SFT79ofQF/rfyV2sJrR3e+UxwVm9e0Nz9UWRb
 m+gCRoeyIodERmhu/VUjT1a9D/da91NBl+7nIuHaqNFZd/nZRQdaa3lhI
 PFUXIpJX2e5IY9QIs+vVstVgueq9u55fzYkp4cnlSloQ/7IPw/NS9TZ7X
 6cnCnaDv8RipeIyZS023qvZkmy4DkD0oqwqwG+LzMJFIbjW/euKHQSpuB
 fG1YsipNGN3/ihWQGZwPcAYsz63MiPxlxotn0681z54XQCGtRzGKzu/lp
 hFKCb5R29A0vkBBVKYsGbYfHJ2bU6pSspOHnHxRMa21Esm0965rwnnDuP Q==;
X-CSE-ConnectionGUID: NNyiI9uOQ3il7a+gF4yDpQ==
X-CSE-MsgGUID: kTC7J8l4SlWtOzkPu4QILw==
X-IronPort-AV: E=McAfee;i="6700,10204,11380"; a="43601064"
X-IronPort-AV: E=Sophos;i="6.14,266,1736841600"; d="scan'208";a="43601064"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 15:07:08 -0700
X-CSE-ConnectionGUID: TsVhRJ4aRla27Zn3puP+lg==
X-CSE-MsgGUID: BKze5echR9O52nH4Lwdz1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,266,1736841600"; d="scan'208";a="128738054"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 21 Mar 2025 15:07:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 22 Mar 2025 00:07:05 +0200
Date: Sat, 22 Mar 2025 00:07:05 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Enrico Weigelt, metux IT consult" <info@metux.net>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 08/16] stop using obsolete xf86BlockSIGIO() and
 xf86UnblockSIGIO()
Message-ID: <Z93jCRu-GEAz35_Z@intel.com>
References: <20250304155809.30399-1-info@metux.net>
 <20250304155809.30399-9-info@metux.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250304155809.30399-9-info@metux.net>
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

On Tue, Mar 04, 2025 at 04:58:01PM +0100, Enrico Weigelt, metux IT consult wrote:
> These are just wrappers for calling input_lock()/input_unlock() and marked
> deprecated for quite a while now.

Listing the relevant xserver commit(s) would be nice here too.

> 
> Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
> ---
>  src/sna/sna_display.c  | 5 +++--
>  src/uxa/intel_driver.c | 4 ++--
>  2 files changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/src/sna/sna_display.c b/src/sna/sna_display.c
> index d33a88af..d4adf34f 100644
> --- a/src/sna/sna_display.c
> +++ b/src/sna/sna_display.c
> @@ -1161,11 +1161,12 @@ static inline void sigio_unblock(int was_blocked)
>  #include <xf86_OSproc.h>
>  static inline int sigio_block(void)
>  {
> -	return xf86BlockSIGIO();
> +	input_lock();
> +	return 0;
>  }
>  static inline void sigio_unblock(int was_blocked)
>  {
> -	xf86UnblockSIGIO(was_blocked);
> +	input_unlock();
>  }
>  #endif
> 
> diff --git a/src/uxa/intel_driver.c b/src/uxa/intel_driver.c
> index 9c3fe85f..79105b89 100644
> --- a/src/uxa/intel_driver.c
> +++ b/src/uxa/intel_driver.c
> @@ -641,10 +641,10 @@ redisplay_dirty(ScreenPtr screen, PixmapDirtyUpdatePtr dirty)
>          intel_flush(intel);
>  	if (!intel->has_prime_vmap_flush) {
>  		drm_intel_bo *bo = intel_uxa_get_pixmap_bo(PixmapDirtyPrimary(dirty));
> -		was_blocked = xf86BlockSIGIO();
> +		input_lock();
>  		drm_intel_bo_map(bo, FALSE);
>  		drm_intel_bo_unmap(bo);
> -		xf86UnblockSIGIO(was_blocked);
> +		input_unlock();
>  	}
> 
>  	DamageRegionProcessPending(&PixmapDirtyDst(dirty)->drawable);
> --
> 2.39.5

-- 
Ville Syrjälä
Intel
