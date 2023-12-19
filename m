Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA574817E53
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Dec 2023 01:01:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9829B10E06E;
	Tue, 19 Dec 2023 00:01:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 517D610E06E
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Dec 2023 00:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702944085; x=1734480085;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=bZqZAVJ9bGNtxGjxt87sk2NO7AE1bz3L88LTMs/H1D0=;
 b=bg7WldOUMKNozcIpipabcpj4rBkV0rPHGEUWdlCWXWjZ1WUyZm2hpWXt
 /rGrq2HKAF4FJhGhP/P32074woHYSPmxXGxYsJRKEtC1fFUSFvr3PH96m
 ndN0n+WOK/L5vuHlYHsngN04A2eybm/wbnMfFHJFpGmpWhkrzynzMMKQh
 VLAM9OtPmwCKFpzxrmk3AHiKefjXMRc+l/Pj6D1AgikmoHJdSJLORoudM
 SLQJVL593Ir0re2StC2q5ba82wQjckmbAZ0lXCyZYagvdlZS7CPbry3O6
 G0eyxVp+hZfW4e4CaNAEhaWs361xTNcH1cm+hs8I27SwbQqzBHVjcVyyQ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="17141762"
X-IronPort-AV: E=Sophos;i="6.04,286,1695711600"; d="scan'208";a="17141762"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 16:01:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="769013593"
X-IronPort-AV: E=Sophos;i="6.04,286,1695711600"; d="scan'208";a="769013593"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 18 Dec 2023 16:01:16 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 19 Dec 2023 02:01:15 +0200
Date: Tue, 19 Dec 2023 02:01:15 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Subject: Re: [PATCH v2 08/15] drm/i915: Fix region start during initial plane
 readout
Message-ID: <ZYDdS0xqHT2_tS61@intel.com>
References: <20231215105929.29568-1-ville.syrjala@linux.intel.com>
 <20231215105929.29568-9-ville.syrjala@linux.intel.com>
 <da14d87c-499f-43ba-b7cf-d2a8b46190c6@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <da14d87c-499f-43ba-b7cf-d2a8b46190c6@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Dec 18, 2023 at 02:00:10PM +0100, Andrzej Hajda wrote:
> On 15.12.2023 11:59, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > On MTL the stolen region starts at offset 8MiB from the start of
> > LMEMBAR. The dma addresses are thus also offset by 8MiB. However the
> > mm_node/etc. is zero based, and i915_pages_create_for_stolen() will
> > add the appropriate region.start into the sg dma address. So when
> > we do the readout we need to convert the dma address read from
> > the PTE to be zero based as well.
> > 
> > Note that currently we don't take this path on MTL, but we should
> > and thus this needs to be fixed. For lmem this works correctly
> > already as the lmem region.start==0.
> > 
> > While at it let's also make sure the address points to somewhere within
> > the memory region. We don't need to check the size as
> > i915_gem_object_create_region_at() should later fail if the object size
> > exceeds the region size.
> > 
> > Cc: Paz Zcharya <pazz@chromium.org>
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >   drivers/gpu/drm/i915/display/intel_plane_initial.c | 8 +++++---
> >   1 file changed, 5 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> > index ffc92b18fcf5..db594ccf0323 100644
> > --- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
> > +++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> > @@ -79,16 +79,18 @@ initial_plane_vma(struct drm_i915_private *i915,
> >   		 * We don't currently expect this to ever be placed in the
> >   		 * stolen portion.
> >   		 */
> > -		if (phys_base >= resource_size(&mem->region)) {
> > +		if (phys_base < mem->region.start || phys_base > mem->region.end) {
> 
> Maybe better:
> phys_base + fb_size > mem->region.end" ?
> Btw it seems redundant with later checks in 
> i915_gem_object_create_region_at.
> IMO at this moment we need only check if "phys_base -= 
> mem->region.start" makes sense.

Yeah, I guess that alone would be sufficient. I left out the size
check exactly because I knew it would fail later, and making an
accurate check here (with page size rounding and whatnot) would
be tedious. But this should also be true when the start offset
is past the end of the region as well, so yeah I suppose I can
just drop the second check.


> 
> Regards
> Andrzej
> 
> 
> >   			drm_err(&i915->drm,
> > -				"Initial plane programming using invalid range, phys_base=%pa\n",
> > -				&phys_base);
> > +				"Initial plane programming using invalid range, phys_base=%pa (%s [%pa-%pa])\n",
> > +				&phys_base, mem->region.name, &mem->region.start, &mem->region.end);
> >   			return NULL;
> >   		}
> >   
> >   		drm_dbg(&i915->drm,
> >   			"Using phys_base=%pa, based on initial plane programming\n",
> >   			&phys_base);
> > +
> > +		phys_base -= mem->region.start;
> >   	} else {
> >   		phys_base = base;
> >   		mem = i915->mm.stolen_region;

-- 
Ville Syrjälä
Intel
