Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GjaPBWcbC2pWDgUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 16:00:07 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A34B256E35B
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 16:00:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DE6D10E7C7;
	Mon, 18 May 2026 14:00:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jO4997m8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1931A10E7C7;
 Mon, 18 May 2026 14:00:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779112804; x=1810648804;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=MYuIv4jyQg5+I/AF7urku//Xv1J2XT5n5B1UTXHYbdU=;
 b=jO4997m8WO09G9wAvvEEGW47NzuOdQ31paQu3bqLqRM3vHbGoMHPUrVj
 6PON13+ew3cseIiKSt/sv8KxMiR5uzuLZkuLqjiWUv6IFsaRD8swCJVi6
 t1czTcEH+5Ahu8OfHNA5zT7IfcQoAaKbEakiNDvD2aI7eCcenL5xuQOyl
 YJ9MQkD5t/59xhdYAuASSMqME7KbALwXoyM7Hc6fQVjxD32tTe+v8XH+/
 HQ862VSVdcaR3Mmrh5p2bd3yuKyhh9suAnYXtj1USQM/TzB7FvLO3A4LI
 7Es+qyJxQ4mDmKIZG2/M+6SJenbxXKBvAfmjVS7cXxxFFuBmGLsgynOAS A==;
X-CSE-ConnectionGUID: cg/V20bmS4q6mGbl0Os89w==
X-CSE-MsgGUID: DhAcJKQwT5WLyMXXyNwrUw==
X-IronPort-AV: E=McAfee;i="6800,10657,11790"; a="97533671"
X-IronPort-AV: E=Sophos;i="6.23,242,1770624000"; d="scan'208";a="97533671"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 07:00:03 -0700
X-CSE-ConnectionGUID: ELBoi/f8SjOolkmb1i6J0Q==
X-CSE-MsgGUID: TybG274gQrmEFD9BIvOYjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,242,1770624000"; d="scan'208";a="243730931"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.108])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 07:00:01 -0700
Date: Mon, 18 May 2026 16:59:58 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 12/14] drm/xe: Use the correct stolen offset in initial
 FB readout
Message-ID: <agsbXorOruJcnOnh@intel.com>
References: <20260511214122.8468-1-ville.syrjala@linux.intel.com>
 <20260511214122.8468-13-ville.syrjala@linux.intel.com>
 <c0825b9e-533b-4af7-9e0c-55cf43fea30e@lankhorst.se>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <c0825b9e-533b-4af7-9e0c-55cf43fea30e@lankhorst.se>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [-0.75 / 15.00];
	R_MIXED_CHARSET(0.56)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: A34B256E35B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, May 18, 2026 at 11:27:46AM +0200, Maarten Lankhorst wrote:
> Hey Ville,
> 
> Den 2026-05-11 kl. 23:41, skrev Ville Syrjala:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > The current assumption that the initial FB offset into stolen and
> > GGTT are the same is completely wrong for MTL+. On these platforms
> > the GOP always places the FB at start of stolen, but then maps it
> > to the top of GGTT.
> > 
> > Read the correct phys_base from the PTE so that we at least take
> > over the correct part of the physical memory.
> > 
> > The GGTT offset is more annoying to deal with there. The horrible
> > ggtt->start and GUC_GGTT_TOP hacks prevent us from even keeping the
> > original GGTT mapping (ggtt->start blocks pre-MTL hardware and
> > GUC_GGTT_TOP blcoks MTL+). For now just hack this and remap the
> > FB to live at ggtt->start. On MTL+ this might even work correctly
> > since we're unlikely to overlap with the original mapping. But on
> > earlier platforms we're guaranteed to have an overlap if the FB
> > is larger than ggtt->start. Such an overlap will cause visible
> > glitches on the screen as the PTEs get overwritten while the
> > display hardware is still using them for scanout.
> > 
> > On i915 we don't have the ggtt->start hack and thus can always
> > bind the FB to actual start of GGTT. i915 does have the equivalent
> > of GUC_GGTT_TOP so it can't leave the mapping to the end of GGTT
> > either sadly.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/xe/display/xe_initial_plane.c | 35 +++++++++++++++----
> >  1 file changed, 28 insertions(+), 7 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/xe/display/xe_initial_plane.c b/drivers/gpu/drm/xe/display/xe_initial_plane.c
> > index d0a9f8599096..da44f6d1a5f8 100644
> > --- a/drivers/gpu/drm/xe/display/xe_initial_plane.c
> > +++ b/drivers/gpu/drm/xe/display/xe_initial_plane.c
> > @@ -42,6 +42,7 @@ initial_plane_bo(struct xe_device *xe,
> >  {
> >  	struct xe_tile *tile0 = xe_device_get_root_tile(xe);
> >  	struct xe_bo *bo;
> > +	dma_addr_t dma_addr;
> >  	resource_size_t phys_base;
> >  	u32 base, size, flags;
> >  	u64 page_size = xe->info.vram_flags & XE_VRAM_FLAGS_NEED64K ? SZ_64K : SZ_4K;
> > @@ -64,7 +65,8 @@ initial_plane_bo(struct xe_device *xe,
> >  			return NULL;
> >  		}
> >  
> > -		phys_base = pte & ~(page_size - 1);
> > +		dma_addr = pte & ~(page_size - 1);
> > +		phys_base = dma_addr;
> >  
> >  		flags |= XE_BO_FLAG_VRAM0;
> >  
> > @@ -78,10 +80,6 @@ initial_plane_bo(struct xe_device *xe,
> >  				&phys_base);
> >  			return NULL;
> >  		}
> > -
> > -		drm_dbg_kms(&xe->drm,
> > -			    "Using phys_base=%pa, based on initial plane programming\n",
> > -			    &phys_base);
> >  	} else {
> >  		struct ttm_resource_manager *stolen;
> >  		u64 pte;
> > @@ -99,11 +97,29 @@ initial_plane_bo(struct xe_device *xe,
> >  			return NULL;
> >  		}
> >  
> > -		phys_base = base;
> > +		dma_addr = pte & ~(page_size - 1);
> > +		phys_base = dma_addr - xe_ttm_stolen_gpu_offset(xe);
> > +
> >  		flags |= XE_BO_FLAG_STOLEN;
> >  	}
> >  
> > -	bo = xe_bo_create_pin_map_at_novm(xe, tile0, size, phys_base, phys_base,
> > +	drm_dbg_kms(&xe->drm,
> > +		    "Initial plane dma_addr=%pa phys_base=%pa\n",
> > +		    &dma_addr, &phys_base);
> > +
> > +	/*
> > +	 * Pin to xe_ggtt_start() to avoid conflicting with
> > +	 * the horrible ggtt->start and GUC_GGTT_TOP hacks.
> > +	 *
> > +	 * FIXME this is complete crap. To do this properly we
> > +	 * need to prevent the original PTEs from being overwritten
> > +	 * while bindind to the new address. Any overlap between
> > +	 * the old and new ranges will corrupt the old PTEs that
> > +	 * the display hardware is currently using for scanout.
> > +	 */
> > +	base = xe_ggtt_start(tile0->mem.ggtt);
> 
> The comment is mostly accurate in describing your solution. You have all
> the pieces to know which part of GGTT are allocatable. Only
> xe_ggtt_size() bytes starting at xe_ggtt_start() are allocatable.
> This is because xe also supports VF's, which only has a part of the GGTT
> usable.

We don't care about VFs here. But ggtt->start != 0 also for the PF for
whatever silly reason.

> 
> ggtt->start can be adjusted at runtime when the VF is migrated to a new
> location. I'm open for better solutions that are still O(1).
> See xe_ggtt_shift_nodes() for some details, or read through the SR-IOV
> documentation of the xe module.
> 
> The previous assumption used GGTT address == physical address on all
> platforms, which was accurate at the time it was written. Judging from
> the comments it now breaks on MTL.

It is also broken on older platforms due to that ggtt->start mess.
Clearly none of this has ever worked correctly.

> 
> Fortunately, you can derive the exact address of the current allocation.
> That makes it easy to handle this correctly. Can you extend
> xe_ggtt_insert_node() with a start + end argument, or create
> xe_ggtt_insert_node_at() that has those arguments?
> 
> If you then reserve the current allocation in advance, the workaround
> that required creating xe_ggtt_insert_bo_at() can then be removed.
> 
> After the BO is mapped, it's safe to call xe_ggtt_node_remove() on the
> current location with invalidate set to false. The contents will be
> cleared by xe_ggtt_init() later on during the init sequence.

If you really want to fix this properly then just get rid of those
ggtt->start and GUC_GGTT_TOP hacks and allow the code to just insert
the node at the same location where the GOP placed it. Then we wouldn't
need any stupid hacks here.

-- 
Ville Syrjälä
Intel
