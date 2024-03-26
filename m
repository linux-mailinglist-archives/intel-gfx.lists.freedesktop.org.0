Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA76288C1EB
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Mar 2024 13:20:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BAA510E7EE;
	Tue, 26 Mar 2024 12:20:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WXTtZ3HY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B43F610E7EE
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Mar 2024 12:20:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711455619; x=1742991619;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=bqqUgsswySbKHsGHIkPLfJ+fPYsgPb6K85jHwhXowHw=;
 b=WXTtZ3HYudB8fjgMps45rTQ0yXEwDZTyH/iv41LplKJD5aGYajYx5xxj
 +VMzlWPMnuQduZCaACNT3W+fOWXF+ReBAD+MWRLuGNRvfZDUgDEYiczxT
 XpiVNDZepSywNFFXxFz/QoCW5lZapjbSFhDasttwDYkJ0eZSzHH6YbyRv
 NaLA+WFhW9Gn+1On3+ioCOFhe/ZiTlIrKlXykyaTCP3rO7uDVClrUMAkZ
 FUr6simbzBz+rTd+ASlXECmgVw3j+nmuZxMF0ajtHS0Wbw/DAy7LPpvvY
 PyhAzdvw8KEMSuxKRvQUIY5VlyECgSIQ0sgGTdecREJXQlqpurLHNsJjn A==;
X-CSE-ConnectionGUID: by1WqEfHQVOzHTWCYW95tQ==
X-CSE-MsgGUID: Z3vD4QjzRaqcAniDMZN6kw==
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="6396811"
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; 
   d="scan'208";a="6396811"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 05:20:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="827785215"
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="827785215"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 26 Mar 2024 05:20:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 26 Mar 2024 14:20:16 +0200
Date: Tue, 26 Mar 2024 14:20:16 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Borislav Petkov <bp@alien8.de>
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Subject: Re: [PATCH] drm/i915: Pre-populate the cursor physical dma address
Message-ID: <ZgK9gFwhNjqMEd-h@intel.com>
References: <20240325175738.3440-1-ville.syrjala@linux.intel.com>
 <20240325182135.GGZgHAr9jz8I-geZff@fat_crate.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240325182135.GGZgHAr9jz8I-geZff@fat_crate.local>
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

On Mon, Mar 25, 2024 at 07:21:35PM +0100, Borislav Petkov wrote:
> On Mon, Mar 25, 2024 at 07:57:38PM +0200, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Calling i915_gem_object_get_dma_address() from the vblank
> > evade critical section triggers might_sleep().
> > 
> > While we know that we've already pinned the framebuffer
> > and thus i915_gem_object_get_dma_address() will in fact
> > not sleep in this case, it seems reasonable to keep the
> > unconditional might_sleep() for maximum coverage.
> > 
> > So let's instead pre-populate the dma address during
> > fb pinning, which all happens before we enter the
> > vblank evade critical section.
> > 
> > We can use u32 for the dma address as this class of
> > hardware doesn't support >32bit addresses.
> > 
> > Cc: stable@vger.kernel.org
> > Fixes: 0225a90981c8 ("drm/i915: Make cursor plane registers unlocked")
> > Link: https://lore.kernel.org/intel-gfx/20240227100342.GAZd2zfmYcPS_SndtO@fat_crate.local/
> > Reported-by: Borislav Petkov <bp@alien8.de>
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Thanks for the fix - splat is gone.
> 
> Tested-by: Borislav Petkov (AMD) <bp@alien8.de>

Thanks. Pushed to drm-intel-next.

-- 
Ville Syrjälä
Intel
