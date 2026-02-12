Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eMpXFea9jWnL6QAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Feb 2026 12:47:50 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C8C12D261
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Feb 2026 12:47:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B900F10E24C;
	Thu, 12 Feb 2026 11:47:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f+sz5N02";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C4BF10E24C;
 Thu, 12 Feb 2026 11:47:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770896866; x=1802432866;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=6SVRaUMGv6t03OYjxw3Ml/GB2LC7QX8cU5GcreY0M1w=;
 b=f+sz5N02izJyZyvyWWdXHKBUgdLcJroCfmnUpzQUpHAHi/8Mc3ez8mbM
 kb9fskXZUxDPiEIh66eSKgOFRa9fgN+mSUtVpNygSWwQY+5aqA26XsJH2
 7cf6qtUQ79RthsU+JPG8cTWQER96Gbhr9+M9Iqf5hXApwRLs/xHvmY7FN
 LipwcVaqzFJhjfZlqFCZVeCZ/Db/0mVbwptr/e8XyYT1eLs9/LdrmY3JQ
 8eywA3jW9/M8EtPR8zg3brVmAlEl4VD9NKTfMvcFuobsjHDJIOLjlM6C3
 JZZiD9v6FR3uABXY4+V51NjQuTD04SqWDwBX4s7OTr0WdZlFQP/N9DvXI g==;
X-CSE-ConnectionGUID: 7GoHESDTTvmn2cHefyhP3A==
X-CSE-MsgGUID: 2S6GU5T8TnSkvySTrj8NfQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11698"; a="71781252"
X-IronPort-AV: E=Sophos;i="6.21,286,1763452800"; d="scan'208";a="71781252"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2026 03:47:46 -0800
X-CSE-ConnectionGUID: 6nf6NSBOTSGU0yCkaOQkEQ==
X-CSE-MsgGUID: tS2lotzoS0i7W+jxP9VJFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,286,1763452800"; d="scan'208";a="212605500"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.141])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2026 03:47:44 -0800
Date: Thu, 12 Feb 2026 13:47:41 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Khaled Almahallawy <khaled.almahallawy@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Uma Shankar <uma.shankar@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: Re: [RFC PATCH] drm/i915/display: Prevent NV12 Y-plane allocation
 from stealing userspace planes
Message-ID: <aY293Q8lcThgXIds@intel.com>
References: <20260212004852.1920270-1-khaled.almahallawy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260212004852.1920270-1-khaled.almahallawy@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.25 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.56)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 76C8C12D261
X-Rspamd-Action: no action

On Wed, Feb 11, 2026 at 04:48:52PM -0800, Khaled Almahallawy wrote:
> The driver automatically allocates a Y-plane (4A/5A) when userspace
> configures an NV12 surface. The allocation loop doesn't check if a
> candidate plane is already configured by userspace in the same atomic
> commit, causing conflict as observed in this i915_display_info:
> 
>   [PLANE:124:plane 4A]: type=OVL
>       uapi: [FB:566] AB24 little-endian (0x34324241),0x0,1920x1280, visible=visible
>       planar: Linked to [PLANE:34:plane 1A] as a Y plane
>       hw: [FB:564] NV12 little-endian (0x3231564e),0x0,1920x1080, visible=yes
> 
> Plane 4A's uapi state shows userspace's AB24 framebuffer, but the hw
> state shows it was reprogrammed with the NV12 Y-plane.
> 
> Example triggered by experiment with IGT test to commit NV12 + multiple
> AB24 planes:
> 
>   === Testing with NV12 primary + 3 ABGR8888 overlays ===
>     Plane 0 (Primary): NV12 1920x1080 at (0, 0)
>     Plane 1 (Overlay 0): ABGR8888 1920x1280 (fullscreen) at (0, 0)
>     Plane 2 (Overlay 1): ABGR8888 1920x1280 (fullscreen) at (0, 0)
>     Plane 3 (Overlay 2): ABGR8888 1920x1280 (fullscreen) at (0, 0)
>     TEST_ONLY passed, committing...
>     Atomic commit SUCCEEDED
> 
> The bug triggers a kernel WARNING in unlink_nv12_plane():
>   WARNING: drivers/gpu/drm/i915/display/intel_plane.c:1521
>   drm_WARN_ON(plane_state->uapi.visible)
>

I think the actual bug is that we unlink the nv12 planes after
plane_atomic_check(). unlink_nv12_plane() will then clobber
some things in the crtc state that was set up by 
plane_atomic_check().

So we perhaps want something like this:

diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index 3dc2ed52147f..98d0255b8b18 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -441,6 +441,8 @@ void intel_plane_set_invisible(struct intel_crtc_state *crtc_state,
 {
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 
+	unlink_nv12_plane(crtc_state, plane_state);
+
 	crtc_state->active_planes &= ~BIT(plane->id);
 	crtc_state->scaled_planes &= ~BIT(plane->id);
 	crtc_state->nv12_planes &= ~BIT(plane->id);
@@ -1513,6 +1515,9 @@ static void unlink_nv12_plane(struct intel_crtc_state *crtc_state,
 	struct intel_display *display = to_intel_display(plane_state);
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 
+	if (!plane_state->planar_linked_plane)
+		return;
+
 	plane_state->planar_linked_plane = NULL;
 
 	if (!plane_state->is_y_plane)
@@ -1550,8 +1555,7 @@ static int icl_check_nv12_planes(struct intel_atomic_state *state,
 		if (plane->pipe != crtc->pipe)
 			continue;
 
-		if (plane_state->planar_linked_plane)
-			unlink_nv12_plane(crtc_state, plane_state);
+		unlink_nv12_plane(crtc_state, plane_state);
 	}
 
 	if (!crtc_state->nv12_planes)

With that we could perhaps even drop the second unlink_nv12_plane()
call, but haven't really thought through the details...

> Fix by checking uapi.fb before allocating a Y-plane. If set, userspace
> configured this plane, so skip to the next candidate. This enables
> graceful fallback (4A busy -> try 5A) rather than the current
> behavior that steals planes from userspace.

I do have a patch in some branch that changes the Y plane
selection to use 'enabled_planes' instead of 'active_planes'
which is equivalent to this. It is perhaps the slightly more
logical approach but it could result some specific usage
scenarios losing NV12 scanout capability. IIRC I also had
some unsolved issue with that approach, which is why I never
even sent out the patch.

> IGT test and kernel fix generated with assistance from Claude Sonnet 4.5
> through an iterative process. The following is a summary of the prompts
> used:
> 
> IGT test generation prompt:
> Need an IGT test to:
> 1. Reproduce the NV12 + multiple AB24 plane allocation conflict
> 2. Work across different GPU vendors (not Intel-specific)
> 3. Discover hardware limits through iteration (not hardcoded)
> 4. Test atomic commit behavior with mixed formats
> 5. Validate driver properly rejects invalid configurations
> 6. Help debug plane allocation issues (interactive inspection)
> 
> Kernel fix debug process:
> 1. Explained NV12 UV->Y plane linking mechanism (link_nv12_planes)
> 2. Traced Y-plane selection algorithm and hardware constraints
> 3. Analyzed i915_display_info output showing uapi vs hw state mismatch
> 4. Triggered kernel WARNING in unlink_nv12_plane() confirming the bug
> 5. Traced kernel logs through atomic commit sequence
> 6. Identified root cause: Y-plane allocation checks uapi.crtc, but that's
>    set later during plane validation. uapi.fb is set earlier during state
>    setup, making it the correct indicator of userspace configuration
> 7. Evaluated uapi.fb vs uapi.visible for detection timing
> 8. Initially suggested rejecting commit with -EINVAL, but decided graceful
>    fallback with continue is better - allows trying alternate Y-planes
>    (4A busy -> 5A) instead of failing entire atomic commit
> 9. Validated fix prevents plane stealing while allowing alternate Y-plane
> 
> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_plane.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
> index 3dc2ed52147f..57d1a9cd226e 100644
> --- a/drivers/gpu/drm/i915/display/intel_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_plane.c
> @@ -1578,6 +1578,10 @@ static int icl_check_nv12_planes(struct intel_atomic_state *state,
>  			if (IS_ERR(y_plane_state))
>  				return PTR_ERR(y_plane_state);
>  
> +			/* Reject if this Y-plane is being configured by userspace */
> +			if (y_plane_state->uapi.fb)
> +				continue;
> +
>  			break;
>  		}
>  
> -- 
> 2.43.0

-- 
Ville Syrjälä
Intel
