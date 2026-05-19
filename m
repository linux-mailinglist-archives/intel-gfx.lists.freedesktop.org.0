Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id BKdqOFRyDGqihwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 16:23:16 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47A9B580764
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 16:23:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1E8010EBA6;
	Tue, 19 May 2026 14:23:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GRN/xvQh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0555D10EBA6;
 Tue, 19 May 2026 14:23:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779200592; x=1810736592;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=f1it0MEpMHMfRp+rWyIKzMmHXZVHURXxspA0ggnh7yg=;
 b=GRN/xvQhoKMKwap3jIHWDnaeqlp950AKdxrzC0fmRzOwzIHdtlFcXSWa
 +uxGEIuP8ZMg+l7SpEVu/+k3icHKMcHvmk6ycRy66gsnnGC1aexV/uhf4
 6niR+u9PD/u2xjVO1x9ot4FakyABlPmGl1HIAv3pI8s9PL011lzjAv4nK
 iPmNBl2nY3f01DTjqOIGZcrmi+YIOR4BYtKa1/Zt3vRGbQabKJHjueSZn
 C53Jx573wRXyJGEfSfTUrTTja7EU+N4m68zfPmzw48v/Lqk4P6I9ozgon
 R+U2mGWBofpBeF3/Uds41z3YrNw/A3rWR0hfsgucQmunimlB1U0BRUMqI g==;
X-CSE-ConnectionGUID: fx2YhRvKRgm0ODs0bVXRuw==
X-CSE-MsgGUID: f0ayIhqoSnuMOe2a5c6UTQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11791"; a="80111185"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="80111185"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2026 07:23:11 -0700
X-CSE-ConnectionGUID: sbhYr90tSPuhwiklKCuRqw==
X-CSE-MsgGUID: +tLq6M2VTCmTjsGPpDs/0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="235523395"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.218])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2026 07:23:10 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Maarten
 Lankhorst <dev@lankhorst.se>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 12/14] drm/xe: Use the correct stolen offset in initial
 FB readout
In-Reply-To: <agxW3n83Oywqz9Hi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260511214122.8468-1-ville.syrjala@linux.intel.com>
 <20260511214122.8468-13-ville.syrjala@linux.intel.com>
 <c0825b9e-533b-4af7-9e0c-55cf43fea30e@lankhorst.se>
 <agsbXorOruJcnOnh@intel.com>
 <86e155fd-1cc1-4249-b59e-80fc5d081fa3@lankhorst.se>
 <agxW3n83Oywqz9Hi@intel.com>
Date: Tue, 19 May 2026 17:23:07 +0300
Message-ID: <7cda3e157474161211088a2ac97dd93ad594fd8f@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
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
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 47A9B580764
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 19 May 2026, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Mon, May 18, 2026 at 10:16:55PM +0200, Maarten Lankhorst wrote:
>> Hello,
>>=20
>> Den 2026-05-18 kl. 15:59, skrev Ville Syrj=C3=A4l=C3=A4:
>> > On Mon, May 18, 2026 at 11:27:46AM +0200, Maarten Lankhorst wrote:
>> >> Hey Ville,
>> >>
>> >> Den 2026-05-11 kl. 23:41, skrev Ville Syrjala:
>> >>> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >>>
>> >>> The current assumption that the initial FB offset into stolen and
>> >>> GGTT are the same is completely wrong for MTL+. On these platforms
>> >>> the GOP always places the FB at start of stolen, but then maps it
>> >>> to the top of GGTT.
>> >>>
>> >>> Read the correct phys_base from the PTE so that we at least take
>> >>> over the correct part of the physical memory.
>> >>>
>> >>> The GGTT offset is more annoying to deal with there. The horrible
>> >>> ggtt->start and GUC_GGTT_TOP hacks prevent us from even keeping the
>> >>> original GGTT mapping (ggtt->start blocks pre-MTL hardware and
>> >>> GUC_GGTT_TOP blcoks MTL+). For now just hack this and remap the
>> >>> FB to live at ggtt->start. On MTL+ this might even work correctly
>> >>> since we're unlikely to overlap with the original mapping. But on
>> >>> earlier platforms we're guaranteed to have an overlap if the FB
>> >>> is larger than ggtt->start. Such an overlap will cause visible
>> >>> glitches on the screen as the PTEs get overwritten while the
>> >>> display hardware is still using them for scanout.
>> >>>
>> >>> On i915 we don't have the ggtt->start hack and thus can always
>> >>> bind the FB to actual start of GGTT. i915 does have the equivalent
>> >>> of GUC_GGTT_TOP so it can't leave the mapping to the end of GGTT
>> >>> either sadly.
>> >>>
>> >>> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.co=
m>
>> >>> ---
>> >>>  drivers/gpu/drm/xe/display/xe_initial_plane.c | 35 +++++++++++++++-=
---
>> >>>  1 file changed, 28 insertions(+), 7 deletions(-)
>> >>>
>> >>> diff --git a/drivers/gpu/drm/xe/display/xe_initial_plane.c b/drivers=
/gpu/drm/xe/display/xe_initial_plane.c
>> >>> index d0a9f8599096..da44f6d1a5f8 100644
>> >>> --- a/drivers/gpu/drm/xe/display/xe_initial_plane.c
>> >>> +++ b/drivers/gpu/drm/xe/display/xe_initial_plane.c
>> >>> @@ -42,6 +42,7 @@ initial_plane_bo(struct xe_device *xe,
>> >>>  {
>> >>>  	struct xe_tile *tile0 =3D xe_device_get_root_tile(xe);
>> >>>  	struct xe_bo *bo;
>> >>> +	dma_addr_t dma_addr;
>> >>>  	resource_size_t phys_base;
>> >>>  	u32 base, size, flags;
>> >>>  	u64 page_size =3D xe->info.vram_flags & XE_VRAM_FLAGS_NEED64K ? SZ=
_64K : SZ_4K;
>> >>> @@ -64,7 +65,8 @@ initial_plane_bo(struct xe_device *xe,
>> >>>  			return NULL;
>> >>>  		}
>> >>>=20=20
>> >>> -		phys_base =3D pte & ~(page_size - 1);
>> >>> +		dma_addr =3D pte & ~(page_size - 1);
>> >>> +		phys_base =3D dma_addr;
>> >>>=20=20
>> >>>  		flags |=3D XE_BO_FLAG_VRAM0;
>> >>>=20=20
>> >>> @@ -78,10 +80,6 @@ initial_plane_bo(struct xe_device *xe,
>> >>>  				&phys_base);
>> >>>  			return NULL;
>> >>>  		}
>> >>> -
>> >>> -		drm_dbg_kms(&xe->drm,
>> >>> -			    "Using phys_base=3D%pa, based on initial plane programming\n=
",
>> >>> -			    &phys_base);
>> >>>  	} else {
>> >>>  		struct ttm_resource_manager *stolen;
>> >>>  		u64 pte;
>> >>> @@ -99,11 +97,29 @@ initial_plane_bo(struct xe_device *xe,
>> >>>  			return NULL;
>> >>>  		}
>> >>>=20=20
>> >>> -		phys_base =3D base;
>> >>> +		dma_addr =3D pte & ~(page_size - 1);
>> >>> +		phys_base =3D dma_addr - xe_ttm_stolen_gpu_offset(xe);
>> >>> +
>> >>>  		flags |=3D XE_BO_FLAG_STOLEN;
>> >>>  	}
>> >>>=20=20
>> >>> -	bo =3D xe_bo_create_pin_map_at_novm(xe, tile0, size, phys_base, ph=
ys_base,
>> >>> +	drm_dbg_kms(&xe->drm,
>> >>> +		    "Initial plane dma_addr=3D%pa phys_base=3D%pa\n",
>> >>> +		    &dma_addr, &phys_base);
>> >>> +
>> >>> +	/*
>> >>> +	 * Pin to xe_ggtt_start() to avoid conflicting with
>> >>> +	 * the horrible ggtt->start and GUC_GGTT_TOP hacks.
>> >>> +	 *
>> >>> +	 * FIXME this is complete crap. To do this properly we
>> >>> +	 * need to prevent the original PTEs from being overwritten
>> >>> +	 * while bindind to the new address. Any overlap between
>> >>> +	 * the old and new ranges will corrupt the old PTEs that
>> >>> +	 * the display hardware is currently using for scanout.
>> >>> +	 */
>> >>> +	base =3D xe_ggtt_start(tile0->mem.ggtt);
>> >>
>> >> The comment is mostly accurate in describing your solution. You have =
all
>> >> the pieces to know which part of GGTT are allocatable. Only
>> >> xe_ggtt_size() bytes starting at xe_ggtt_start() are allocatable.
>> >> This is because xe also supports VF's, which only has a part of the G=
GTT
>> >> usable.
>> >=20
>> > We don't care about VFs here. But ggtt->start !=3D 0 also for the PF f=
or
>> > whatever silly reason.
>> >=20
>> >>
>> >> ggtt->start can be adjusted at runtime when the VF is migrated to a n=
ew
>> >> location. I'm open for better solutions that are still O(1).
>> >> See xe_ggtt_shift_nodes() for some details, or read through the SR-IOV
>> >> documentation of the xe module.
>> >>
>> >> The previous assumption used GGTT address =3D=3D physical address on =
all
>> >> platforms, which was accurate at the time it was written. Judging from
>> >> the comments it now breaks on MTL.
>> >=20
>> > It is also broken on older platforms due to that ggtt->start mess.
>> > Clearly none of this has ever worked correctly.
>> >=20
>> >>
>> >> Fortunately, you can derive the exact address of the current allocati=
on.
>> >> That makes it easy to handle this correctly. Can you extend
>> >> xe_ggtt_insert_node() with a start + end argument, or create
>> >> xe_ggtt_insert_node_at() that has those arguments?
>> >>
>> >> If you then reserve the current allocation in advance, the workaround
>> >> that required creating xe_ggtt_insert_bo_at() can then be removed.
>> >>
>> >> After the BO is mapped, it's safe to call xe_ggtt_node_remove() on the
>> >> current location with invalidate set to false. The contents will be
>> >> cleared by xe_ggtt_init() later on during the init sequence.
>> >=20
>> > If you really want to fix this properly then just get rid of those
>> > ggtt->start and GUC_GGTT_TOP hacks and allow the code to just insert
>> > the node at the same location where the GOP placed it. Then we wouldn't
>> > need any stupid hacks here.
>>=20
>> I'm aware that it may not seem entirely optimal to not allow <1%
>> of 4096 MiB GGTT to be used because it may be problematic in some cases,
>> causing hard to debug issues.
>>=20
>> Fortunately GGTT exhaustion is not really a problem on xe and it's safe =
to
>> just reserve the problematic regions. It's definitely a trade-off, but o=
ne
>> I feel has the right balance for the right reasons.
>
> I don't really care whether we allow the use of those parts of ggtt
> or not. But the way the exclusion is implemented is just bad. I think
> the correct thing here would be to initialize the drm_mm for the full
> ggtt range, and then permanently reserve the bits we don't want to
> use. This way the display code doesn't have to know these silly
> implementation details.
>
> It would also fix xe_ggtt_initial_clear() to actually clear the
> entire ggtt instead of leaving stale PTEs hanging around for the
> reserved ranges.
>
>>=20
>> Additionally, even if it may appear to work at first. It can prove
>> problematic in a variety of ways.
>>=20
>> Userspace can directly map the initial FB into its address space and
>> manipulate it directly. Can you say with certainty GuC will never
>> access it, even if there's a GPU hang?
>
> Userspace specifies everything in terms of ppgtt addresses. How would
> those get magically translated to ggtt addresses?
>
>>=20
>> Additionally, on suspend/resume the kernel will backup/restore between
>> normal memory and VRAM. Or perhaps in other paths as well that I haven't
>> even thought of.=20
>>=20
>> In the tradeoff where we no longer reserve start and GUC_GGTT_TOP,
>> you would have to perform a lot of testing for no benefit.
>>=20
>> It's a lot easier to reserve the accessible bits of the first mapping,
>> create a second mapping, point the frame pointer there and never think
>> about it again.
>
> If you want to reserve them go ahead, but do it in a way that doesn't
> leak the implementation details all over the place. Ie. I don't want
> the display code to know anything about this mess.

Okay, can we dial down the confrontation here a few notches, please?

I don't know all the technical details and rationale for the xe design
choices in this area. I'm not even sure I could give any new technical
input to the discussion. That said, I'm willing to give the design the
benefit of the doubt. The i915 and xe drivers have different tradeoffs,
leading to different implementations.

The problem at hand is to try to abstract the differences for display,
and create a reasonable interface between the i915/xe core drivers and
display, so that we can convert display into a dedicated kernel
module. Arguably this is technical debt with its roots not only in the
initial xe display integration, but also in the way display was deeply
intertwined in the i915 core implementation.

Please let's focus on constructive collaboration towards that goal.


BR,
Jani.


--=20
Jani Nikula, Intel
