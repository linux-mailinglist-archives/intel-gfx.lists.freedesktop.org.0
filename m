Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qNe1JJnbCmog8wQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 11:27:53 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F32F6569B12
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 11:27:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A53A710E73F;
	Mon, 18 May 2026 09:27:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="VbNxSZvD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7C9E10E73F;
 Mon, 18 May 2026 09:27:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1779096467;
 bh=XbodfArtk963br0QFw9GXyNWq55Zm9I+SeTXVFzVNwU=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=VbNxSZvDqq3bollE25Km53ugXzgG2sHHc/gEx1uNBiW+fXPvcJLNTDm9x7IVMXHUi
 aNyaijgOskEAYOO8pf7IyO7CLQYieesXlSOKAs0vRacGpeqeF6SWCyF2GRh0H6J0/H
 1uuukFtNYYy+ebhbkO2zbc62DGbyJ1mTajrt7aqaRKPF27ZJ70JKif4qs3lWYYKBsc
 xkJRyRLB98OJqKbzi1tkuO6XltVvnGR4mAFtZYp9KuZYGFYFTqHalTcitw4dAzeIms
 W3PJvBAdV9SdF0fupZkYBhYqCEUs5hNYymwZYm7WSHG8zGeA/yJQngABDMAwRfrVkv
 fnNYq8mqoLVMA==
Message-ID: <c0825b9e-533b-4af7-9e0c-55cf43fea30e@lankhorst.se>
Date: Mon, 18 May 2026 11:27:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 12/14] drm/xe: Use the correct stolen offset in initial FB
 readout
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
References: <20260511214122.8468-1-ville.syrjala@linux.intel.com>
 <20260511214122.8468-13-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: Maarten Lankhorst <dev@lankhorst.se>
In-Reply-To: <20260511214122.8468-13-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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
X-Rspamd-Queue-Id: F32F6569B12
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lankhorst.se:mid,lankhorst.se:dkim];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lankhorst.se:+]
X-Rspamd-Action: no action

Hey Ville,

Den 2026-05-11 kl. 23:41, skrev Ville Syrjala:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> The current assumption that the initial FB offset into stolen and
> GGTT are the same is completely wrong for MTL+. On these platforms
> the GOP always places the FB at start of stolen, but then maps it
> to the top of GGTT.
> 
> Read the correct phys_base from the PTE so that we at least take
> over the correct part of the physical memory.
> 
> The GGTT offset is more annoying to deal with there. The horrible
> ggtt->start and GUC_GGTT_TOP hacks prevent us from even keeping the
> original GGTT mapping (ggtt->start blocks pre-MTL hardware and
> GUC_GGTT_TOP blcoks MTL+). For now just hack this and remap the
> FB to live at ggtt->start. On MTL+ this might even work correctly
> since we're unlikely to overlap with the original mapping. But on
> earlier platforms we're guaranteed to have an overlap if the FB
> is larger than ggtt->start. Such an overlap will cause visible
> glitches on the screen as the PTEs get overwritten while the
> display hardware is still using them for scanout.
> 
> On i915 we don't have the ggtt->start hack and thus can always
> bind the FB to actual start of GGTT. i915 does have the equivalent
> of GUC_GGTT_TOP so it can't leave the mapping to the end of GGTT
> either sadly.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/xe/display/xe_initial_plane.c | 35 +++++++++++++++----
>  1 file changed, 28 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/display/xe_initial_plane.c b/drivers/gpu/drm/xe/display/xe_initial_plane.c
> index d0a9f8599096..da44f6d1a5f8 100644
> --- a/drivers/gpu/drm/xe/display/xe_initial_plane.c
> +++ b/drivers/gpu/drm/xe/display/xe_initial_plane.c
> @@ -42,6 +42,7 @@ initial_plane_bo(struct xe_device *xe,
>  {
>  	struct xe_tile *tile0 = xe_device_get_root_tile(xe);
>  	struct xe_bo *bo;
> +	dma_addr_t dma_addr;
>  	resource_size_t phys_base;
>  	u32 base, size, flags;
>  	u64 page_size = xe->info.vram_flags & XE_VRAM_FLAGS_NEED64K ? SZ_64K : SZ_4K;
> @@ -64,7 +65,8 @@ initial_plane_bo(struct xe_device *xe,
>  			return NULL;
>  		}
>  
> -		phys_base = pte & ~(page_size - 1);
> +		dma_addr = pte & ~(page_size - 1);
> +		phys_base = dma_addr;
>  
>  		flags |= XE_BO_FLAG_VRAM0;
>  
> @@ -78,10 +80,6 @@ initial_plane_bo(struct xe_device *xe,
>  				&phys_base);
>  			return NULL;
>  		}
> -
> -		drm_dbg_kms(&xe->drm,
> -			    "Using phys_base=%pa, based on initial plane programming\n",
> -			    &phys_base);
>  	} else {
>  		struct ttm_resource_manager *stolen;
>  		u64 pte;
> @@ -99,11 +97,29 @@ initial_plane_bo(struct xe_device *xe,
>  			return NULL;
>  		}
>  
> -		phys_base = base;
> +		dma_addr = pte & ~(page_size - 1);
> +		phys_base = dma_addr - xe_ttm_stolen_gpu_offset(xe);
> +
>  		flags |= XE_BO_FLAG_STOLEN;
>  	}
>  
> -	bo = xe_bo_create_pin_map_at_novm(xe, tile0, size, phys_base, phys_base,
> +	drm_dbg_kms(&xe->drm,
> +		    "Initial plane dma_addr=%pa phys_base=%pa\n",
> +		    &dma_addr, &phys_base);
> +
> +	/*
> +	 * Pin to xe_ggtt_start() to avoid conflicting with
> +	 * the horrible ggtt->start and GUC_GGTT_TOP hacks.
> +	 *
> +	 * FIXME this is complete crap. To do this properly we
> +	 * need to prevent the original PTEs from being overwritten
> +	 * while bindind to the new address. Any overlap between
> +	 * the old and new ranges will corrupt the old PTEs that
> +	 * the display hardware is currently using for scanout.
> +	 */
> +	base = xe_ggtt_start(tile0->mem.ggtt);

The comment is mostly accurate in describing your solution. You have all
the pieces to know which part of GGTT are allocatable. Only
xe_ggtt_size() bytes starting at xe_ggtt_start() are allocatable.
This is because xe also supports VF's, which only has a part of the GGTT
usable.

ggtt->start can be adjusted at runtime when the VF is migrated to a new
location. I'm open for better solutions that are still O(1).
See xe_ggtt_shift_nodes() for some details, or read through the SR-IOV
documentation of the xe module.

The previous assumption used GGTT address == physical address on all
platforms, which was accurate at the time it was written. Judging from
the comments it now breaks on MTL.

Fortunately, you can derive the exact address of the current allocation.
That makes it easy to handle this correctly. Can you extend
xe_ggtt_insert_node() with a start + end argument, or create
xe_ggtt_insert_node_at() that has those arguments?

If you then reserve the current allocation in advance, the workaround
that required creating xe_ggtt_insert_bo_at() can then be removed.

After the BO is mapped, it's safe to call xe_ggtt_node_remove() on the
current location with invalidate set to false. The contents will be
cleared by xe_ggtt_init() later on during the init sequence.

Kind regards,
~Maarten Lankhorst

> +	bo = xe_bo_create_pin_map_at_novm(xe, tile0, size, phys_base, base,
>  					  ttm_bo_type_kernel, flags, 0, false);
>  	if (IS_ERR(bo)) {
>  		drm_dbg_kms(&xe->drm,
> @@ -112,6 +128,11 @@ initial_plane_bo(struct xe_device *xe,
>  		return NULL;
>  	}
>  
> +	drm_dbg_kms(&xe->drm,
> +		    "Initial plane fb bound to 0x%llx in the ggtt (original 0x%x)\n",
> +		    xe_ggtt_node_addr(bo->ggtt_node[tile0->id]),
> +		    plane_config->base);
> +
>  	return bo;
>  }
>  

