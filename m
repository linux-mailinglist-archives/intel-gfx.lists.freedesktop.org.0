Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C205868035
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Feb 2024 19:58:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B3D110EE30;
	Mon, 26 Feb 2024 18:58:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lS2Kfe5v";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BAE110EE30
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Feb 2024 18:58:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708973899; x=1740509899;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=5faLvI7bzuzyazW1G6MaL7jA237G12mWE346HgEvAFw=;
 b=lS2Kfe5vIJZVosRsdxPenA2FnIpsw2V3xO5bU4TYIecolzHQ+WzXDkhh
 1B3x34kPHrTsEkknNB1jB7UFSZs2i0JOQWn7mo4E0SqmDGNz64Qvq26Aq
 wsUJnbJKzIhwEhSiSq0x0He4kVNTkPrFWVT8U+AVcOHDN212ZCCU/u5tV
 L4wmEwAHwYaG+NPdDJdD5h3KybXd0JWrRnZL1wXZi4TesoReqQwxXgUOs
 I/t03Rk1rJN7D5M+CYC/zZXsrHj0fqrSGTfvy9TGYv+L+jFOXC4iX+ay6
 1hvlCgHH5xqUCXs2FPmfYuuQ6sGTbcchlhpPDAYy3kDve84xziOynH23U g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="3394154"
X-IronPort-AV: E=Sophos;i="6.06,186,1705392000"; 
   d="scan'208";a="3394154"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 10:58:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="827770474"
X-IronPort-AV: E=Sophos;i="6.06,186,1705392000"; d="scan'208";a="827770474"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 26 Feb 2024 10:58:16 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 26 Feb 2024 20:58:16 +0200
Date: Mon, 26 Feb 2024 20:58:16 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Enrico Weigelt, metux IT consult" <info@metux.net>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2 5/6] stop using obsolete xf86BlockSIGIO() and
 xf86UnblockSIGIO()
Message-ID: <ZdzfSKhw2kDjmtE4@intel.com>
References: <20240221185550.11943-1-info@metux.net>
 <20240221185550.11943-5-info@metux.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240221185550.11943-5-info@metux.net>
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

On Wed, Feb 21, 2024 at 07:55:49PM +0100, Enrico Weigelt, metux IT consult wrote:
> These

Please spell out what "these" are.

> are just wrappers for calling input_lock()/input_unlock() and marked
> deprecated for quite a while now.
> 
> Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
> ---
>  src/sna/sna_display.c  | 5 +++--
>  src/uxa/intel_driver.c | 4 ++--
>  2 files changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/src/sna/sna_display.c b/src/sna/sna_display.c
> index 3ff3d2fe..460fb1ca 100644
> --- a/src/sna/sna_display.c
> +++ b/src/sna/sna_display.c
> @@ -1156,11 +1156,12 @@ static inline void sigio_unblock(int was_blocked)
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
> 2.39.2

-- 
Ville Syrjälä
Intel
