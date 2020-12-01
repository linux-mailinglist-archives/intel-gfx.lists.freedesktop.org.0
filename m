Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D962CADB8
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 21:50:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 834EE6E91A;
	Tue,  1 Dec 2020 20:50:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 893CA6E917
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Dec 2020 20:50:31 +0000 (UTC)
IronPort-SDR: qZf1pYkHarEPvijHWQ6tLyryVf9sAY6LlvviBY+tsHNur7OKJH6wrrS4hH3J6276wXmtkT85Xi
 F44FsSaFklYw==
X-IronPort-AV: E=McAfee;i="6000,8403,9822"; a="172121293"
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="172121293"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 12:50:28 -0800
IronPort-SDR: GxHmESoCIpKjsoruANG90pvTlQWvVbGLhoFiJ6YHLrV+QhqGLJhPfKk3U7GCM9VQ3mZwumxXey
 bfnPc3Hmfv7w==
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="549736740"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 12:50:26 -0800
Date: Tue, 1 Dec 2020 22:50:21 +0200
From: Imre Deak <imre.deak@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20201201205021.GD2849269@ideak-desk.fi.intel.com>
References: <20201123182631.1740781-1-imre.deak@intel.com>
 <20201123182631.1740781-2-imre.deak@intel.com>
 <160682607520.4024.5213539229190522123@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <160682607520.4024.5213539229190522123@build.alporthouse.com>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/tgl: Add Clear Color support
 for TGL Render Decompression
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
Reply-To: imre.deak@intel.com
Cc: Ville Syrjala <ville.syrjala@intel.com>,
 Rafael Antognolli <rafael.antognolli@intel.com>,
 intel-gfx@lists.freedesktop.org,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>,
 Nanley G Chery <nanley.g.chery@intel.com>,
 Shashank Sharma <shashank.sharma@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Dec 01, 2020 at 12:34:35PM +0000, Chris Wilson wrote:
> [...]
> > @@ -16647,6 +16697,20 @@ static int intel_plane_pin_fb(struct intel_plane_state *plane_state)
> >  
> >         plane_state->vma = vma;
> >  
> > +       if (fb->modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC) {
> > +               void *map = kmap_atomic(i915_gem_object_get_page(intel_fb_obj(fb),
> > +                                                                fb->offsets[2] >> PAGE_SHIFT));
> 
> So at this point in time, we have only queued the wait for render
> completion (asynchronous waits) and not actually waited on either the
> explicit or implicit fences.
> 
> Only at intel_atomic_commit_tail do we know that the GPU [+ccs]
> writes will have been flushed.

Ok, so after intel_atomic_commit_fence_wait(). One problem is that
atomic state should not really get modified any more in commit_tail().
But I introduced that already earlier with the TC/TBT PLL selection, so
now I'd add one more exception.

> There's also the matter of coherency. Is the object coherent for reads
> from the CPU? -- in most cases it will not be, but you should check
> obj->cache_coherency to see if the read requires a preceding
> cache_clflush_range() / drm_clflush_virt_range().

Ok, at this point for the TGL-only modifier, we could then just
warn_on(!bo_cache_coherent_for_read) due to HAS_LLC.

> Also the page may not exist, not all scanout objects are backed by struct
> page. In which case, pulling it from a vmap (i915_gem_object_pin_map, or
> iomap) may be required. (A i915_gem_object_read may be very useful for
> such small accesses.)

Ok. Afaiu on TGL this would need the io/vmap special casing for stolen
memory only. That's only used for BIOS FBs, which is unlikely to be
fast-cleared and we haven't even added support to initial_fb for that.
Could we get away with that assumption and keep using kmap_atomic at
least for now?

Thanks for the explanation!

--Imre
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
