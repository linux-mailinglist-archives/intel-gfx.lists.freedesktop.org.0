Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40D32811A4C
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 18:01:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0CEE10E296;
	Wed, 13 Dec 2023 17:01:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BD5510E296
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 17:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702486882; x=1734022882;
 h=date:from:to:subject:message-id:references:mime-version:
 content-transfer-encoding:in-reply-to;
 bh=HfFDO/RJQyRH+X0ruWpqcm60/Bzz1e/vMRz2aHXcFNg=;
 b=M/QYS3EYQ1JflJ0Z7lKmIwFP6eX12eIdZApF+3vv0du7oTpXjJaM09en
 cS+m2hOHvpoY+ISbKXlAFOYEf311CthpqSwSOtLSctkufTlWNauAFSPN+
 sV6FewoMXAxOMapmVaQHJ0eJVqHFv9AL9jqx/G9Q1kBa687GXSSXn+H6i
 elcYoCkUn6tvzX6W3D+MfHHUSUM52GIsMWW3uXRrAnvGTR/sAZ081mWR8
 s9pSKC+qjwuuKj1LBgs2Iw/HgGhExf97R8FzlYpDNFj6VU24EWJ7fcLBk
 vmf4V6JxvLQ47ZfAJ0i1zcs4VlVzawZ2fqPlowdGYM46sdma3YW18Li2J g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="1832484"
X-IronPort-AV: E=Sophos;i="6.04,273,1695711600"; 
   d="scan'208";a="1832484"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 09:01:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="767276007"
X-IronPort-AV: E=Sophos;i="6.04,273,1695711600"; d="scan'208";a="767276007"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 13 Dec 2023 09:01:19 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 13 Dec 2023 19:01:18 +0200
Date: Wed, 13 Dec 2023 19:01:18 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 01/12] drm/i915: Use struct resource for memory region IO
 as well
Message-ID: <ZXnjXvIw-1uf7TeW@intel.com>
References: <20231213004237.20375-1-ville.syrjala@linux.intel.com>
 <20231213004237.20375-2-ville.syrjala@linux.intel.com>
 <ZXkB23jcF-ejG7sx@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZXkB23jcF-ejG7sx@intel.com>
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

On Wed, Dec 13, 2023 at 02:59:07AM +0200, Ville Syrjälä wrote:
> On Wed, Dec 13, 2023 at 02:42:26AM +0200, Ville Syrjala wrote:
> > diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> > index 717c3a3237c4..1ac05d90b2e8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> > @@ -78,7 +78,7 @@ int intel_fbdev_fb_fill_info(struct drm_i915_private *i915, struct fb_info *info
> >  
> >  		/* Use fbdev's framebuffer from lmem for discrete */
> >  		info->fix.smem_start =
> > -			(unsigned long)(mem->io_start +
> > +			(unsigned long)(mem->io.start +
> >  					i915_gem_object_get_dma_address(obj, 0));
> 
> Hmm. That looks wrong for MTL actually since dma address is relative
> to the start of LMEMBAR but stolen io.start will be LMEMBAR+8MiB (or
> just DSMBASE which points to the same place, with the w/a in place).
> So we need to subtract mem->region.start from this to get the correct
> value.

I suppose this doesn't matter anymore as we have our own .fb_mmap()
these days. So presumably we could just always leave this set to zero.

-- 
Ville Syrjälä
Intel
