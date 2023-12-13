Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC1EA810719
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 01:59:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 416F410E22F;
	Wed, 13 Dec 2023 00:59:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3664710E22F
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 00:59:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702429150; x=1733965150;
 h=date:from:to:subject:message-id:references:mime-version:
 content-transfer-encoding:in-reply-to;
 bh=GjPGG/ENFW0qznvxHiAO2hO0A0SCJWS0ay1rRWZC9qA=;
 b=RKL1yVoI7D6g6Ngz++uPZh7f2u4UGKuRRsNTiq86+qq1NrZELF/oKS4M
 HELAAb4fuCpRLV+ETG9+XnOV2t6kYwLtZb4QISqjdkUMiZb/wB0aQJuOI
 Wc1TjK1QI4+IcfxxPwy/cOgrlFcHd+mgQo2ur4n8Np6eaw65p28c+TaSc
 pOaS5U3AL/h6LuZpiqdCILDx6s2YYj4rVJQiBysL0yYspc0k/1oTPclv4
 d7jIAF8RZZ1NjqVuIrCDhgWEg+79eOkOx+AP27pRi8MvcJ37RhX4n7Zrr
 LVyj4O6WrIrxhtdc27kXAxY6H5x3L3vHEkWjr+fId/clEtMjvdGJ8ekon w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="385312281"
X-IronPort-AV: E=Sophos;i="6.04,271,1695711600"; d="scan'208";a="385312281"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 16:59:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="767015674"
X-IronPort-AV: E=Sophos;i="6.04,271,1695711600"; d="scan'208";a="767015674"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 12 Dec 2023 16:59:07 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 13 Dec 2023 02:59:07 +0200
Date: Wed, 13 Dec 2023 02:59:07 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 01/12] drm/i915: Use struct resource for memory region IO
 as well
Message-ID: <ZXkB23jcF-ejG7sx@intel.com>
References: <20231213004237.20375-1-ville.syrjala@linux.intel.com>
 <20231213004237.20375-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231213004237.20375-2-ville.syrjala@linux.intel.com>
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

On Wed, Dec 13, 2023 at 02:42:26AM +0200, Ville Syrjala wrote:
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> index 717c3a3237c4..1ac05d90b2e8 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> @@ -78,7 +78,7 @@ int intel_fbdev_fb_fill_info(struct drm_i915_private *i915, struct fb_info *info
>  
>  		/* Use fbdev's framebuffer from lmem for discrete */
>  		info->fix.smem_start =
> -			(unsigned long)(mem->io_start +
> +			(unsigned long)(mem->io.start +
>  					i915_gem_object_get_dma_address(obj, 0));

Hmm. That looks wrong for MTL actually since dma address is relative
to the start of LMEMBAR but stolen io.start will be LMEMBAR+8MiB (or
just DSMBASE which points to the same place, with the w/a in place).
So we need to subtract mem->region.start from this to get the correct
value.

-- 
Ville Syrjälä
Intel
