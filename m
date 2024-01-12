Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 065E282C40A
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jan 2024 17:55:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74D0C10E144;
	Fri, 12 Jan 2024 16:55:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3411C10E144
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jan 2024 16:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705078505; x=1736614505;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=gaJcvlHb17yhXVkBZDZQIH5JUMYryP8UE3u7Fa5N5Sg=;
 b=AiWzByeeUv9HLmGTK0o1WPKOPJmlL7/u1PSBInqK9gUd9rXJmK7x8Kj7
 I1EY6kAOzFmB+a/8U/O6bzLll6pMc53oVMhuyXZYRMlfaV24K96UGvgJj
 R0mb352axjpvgqITbL0MDxPRothFoSFe5UdetC0g4EUsWEfn8xFO0InyF
 7JwOtrVTWu4qoy+k05LwyVYd0a+ZP3LAXv2ZE39dD5N8WwtQrCos9FGMD
 LBNVChjzMQdBplm5cZgMwTzhYydOQVoktFBLfpjwx7C4/ugim6eYwLibf
 M9yarruZLPm1UrAQBDG4vg+7Vp28yzbrJD4Gw8Hs2xe4eDwREtmKQkgIf w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10951"; a="12584466"
X-IronPort-AV: E=Sophos;i="6.04,190,1695711600"; d="scan'208";a="12584466"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2024 08:55:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10951"; a="776044721"
X-IronPort-AV: E=Sophos;i="6.04,190,1695711600"; d="scan'208";a="776044721"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 12 Jan 2024 08:55:01 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Jan 2024 18:55:01 +0200
Date: Fri, 12 Jan 2024 18:55:01 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Nirmoy Das <nirmoy.das@linux.intel.com>
Subject: Re: [PATCH v2 04/15] drm/i915: Bypass LMEMBAR/GTTMMADR for MTL
 stolen memory access
Message-ID: <ZaFu5b5LId3bYw1e@intel.com>
References: <20231215105929.29568-1-ville.syrjala@linux.intel.com>
 <20231215105929.29568-5-ville.syrjala@linux.intel.com>
 <b266f56d-ddad-4836-b888-800c213e842f@linux.intel.com>
 <ZaFW2arHcLdDLTK-@intel.com>
 <d512219a-5c89-46ad-8335-91c43d54c24f@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <d512219a-5c89-46ad-8335-91c43d54c24f@linux.intel.com>
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
Cc: intel-gfx@lists.freedesktop.org, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 12, 2024 at 05:31:10PM +0100, Nirmoy Das wrote:
> 
> On 1/12/2024 4:12 PM, Ville Syrjälä wrote:
> > On Wed, Jan 10, 2024 at 11:49:47AM +0100, Nirmoy Das wrote:
> >> Hi Ville,
> >>
> >> Apologies, but I lost track of this series after I returned from sick leave.
> >>
> >>
> >> On 12/15/2023 11:59 AM, Ville Syrjala wrote:
> >>> From: Ville Syrjälä<ville.syrjala@linux.intel.com>
> >>>
> >>> On MTL accessing stolen memory via the BARs is somehow borked,
> >>> and it can hang the machine. As a workaround let's bypass the
> >>> BARs and just go straight to DSMBASE/GSMBASE instead.
> >>>
> >>> Note that on every other platform this itself would hang the
> >>> machine, but on MTL the system firmware is expected to relax
> >>> the access permission guarding stolen memory to enable this
> >>> workaround, and thus direct CPU accesses should be fine.
> >>>
> >>> TODO: add w/a numbers and whatnot
> >>>
> >>> Cc: Paz Zcharya<pazz@chromium.org>
> >>> Cc: Nirmoy Das<nirmoy.das@intel.com>
> >>> Cc: Radhakrishna Sripada<radhakrishna.sripada@intel.com>
> >>> Cc: Joonas Lahtinen<joonas.lahtinen@linux.intel.com>
> >>> Signed-off-by: Ville Syrjälä<ville.syrjala@linux.intel.com>
> >>> ---
> >>>    drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 11 ++++++++++-
> >>>    drivers/gpu/drm/i915/gt/intel_ggtt.c       | 13 ++++++++++++-
> >>>    2 files changed, 22 insertions(+), 2 deletions(-)
> >>>
> >>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> >>> index ee237043c302..252fe5cd6ede 100644
> >>> --- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> >>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> >>> @@ -941,7 +941,16 @@ i915_gem_stolen_lmem_setup(struct drm_i915_private *i915, u16 type,
> >>>    		dsm_size = ALIGN_DOWN(lmem_size - dsm_base, SZ_1M);
> >>>    	}
> >>>    
> >>> -	if (pci_resource_len(pdev, GEN12_LMEM_BAR) < lmem_size) {
> >>> +	if (IS_METEORLAKE(i915)) {
> >>> +		/*
> >>> +		 * Workaround: access via BAR can hang MTL, go directly to DSM.
> >>> +		 *
> >>> +		 * Normally this would not work but on MTL the system firmware
> >>> +		 * should have relaxed the access permissions sufficiently.
> >>> +		 */
> >>> +		io_start = intel_uncore_read64(uncore, GEN12_DSMBASE) & GEN12_BDSM_MASK;
> >>> +		io_size = dsm_size;
> >> This will work well on host driver but I am afraid this will not work on
> >> VM when someone tries to do direct device assignment of the igfx.
> >>
> >> GSMBASE/DSMBASE is reserved region so won't show up in VM, last I checked.
> > Hmm. So BARs get passed over but other regions won't be? I wonder if
> > there's a way to pass them explicitly...
> 
> Yes, when a user ask qemu to pass though a pci device then qemu will 
> ensure to map those
> 
> BARs.
> 
> >
> >> This is an obscure usages but are we suppose to support that? If so then
> >> we need to detect that and fall back to binder approach.
> > I suppose some people may attempt it. But I'm not sure how well that
> > will work in practice even on other platforms. I don't think we've
> > ever really considered that use case any kind of priority so bug
> > reports tend to go unanswered.
> >
> > My main worry with the MI_UPDATE_GTT stuff is:
> > - only used on this one platform so very limited testing coverage
> > - async so more opprtunities to screw things up
> > - what happens if the engine hangs while we're waiting for MI_UPDATE_GTT
> >    to finish?
> > - requires working command submission, so even getting a working
> >    display now depends on a lot more extra components working correctly
> >
> > hence the patch to disable it. During testing my MTL was very unstable
> > so I wanted to eliminate all potential sources of new bugs.
> 
> Valid concerns but unfortunately MI_UPDATE_GTT is the only generic 
> solution came up in the discussions
> 
> which supports host, vm, also SRIOV case.
> 
> >
> > Hmm. But we can't even use MI_UPDATE_GTT until command submission is
> > up and running, so we still need the direct CPU path for early ggtt
> > setup no?
> 
> It is very unlikely for the bug to appear when there is only single user 
> of the GPU. So the HW team is fine with
> 
> having a small window where we do modify GTT using stolen.
> 
> 
> How about a modparam which defaults to your approach and have a doc 
> saying to use binder on VM ?
> 
> It would be nice if i915 could detect if it is running in virtualized 
> environment but I don't have any ideas for that.

We have i915_run_as_guest() but dunno if that covers everything
we need.

So in order to accomodate both approachs we'd need:
1. select DSM/GSMBASE vs. BAR based on host vs. guest
2. perhaps disable binder on host for now to keep things
   more uniform between the platforms by default
3. maybe extend binder to more platforms and enable it
   across the board (in case we decide it has other real
   benefits besides not hanging mtl).

-- 
Ville Syrjälä
Intel
