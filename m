Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F46BA793BE
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Apr 2025 19:22:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDED210E873;
	Wed,  2 Apr 2025 17:22:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D9qRcB5U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAA1910E875;
 Wed,  2 Apr 2025 17:22:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743614573; x=1775150573;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GVPUndsBr2P3AJzYUAPkmVvSR6RDyld3076th5+bZr8=;
 b=D9qRcB5UWpRvEPHd0nrZMrJvv0vsElKyM34gCI567354bHrSSZ77SQYJ
 xRCell6WcSNpdiGnzblA98eCVHMWOtMO3/Veuhqm02849KD0O3KgusTuI
 7G2X+/29UNkVs2bsIYRElCjrWANNAMNyqPNGGVlZy65oWsUo+OStrPOFP
 JpBeBnSIoJ2a/ICOsT1XBanCawIQEkbKl87ju/bLqzumSRI4mJur3BD3d
 Q/PC+wJyOZQvMVFRaI1xdrGJYpB5vO7hHDB1n0zOnv+5ZkkOQkecgiR2z
 hlabSbdIlhAN3HsDR/GZDgYc9c6wXXO8bXIL2LBRrlQMmXGBb2pYVW2sa w==;
X-CSE-ConnectionGUID: jf7AvxS6SFW+S9lem+aKlA==
X-CSE-MsgGUID: KMjeA7XoQs2jRkkjkQUHbQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11392"; a="44891150"
X-IronPort-AV: E=Sophos;i="6.15,182,1739865600"; d="scan'208";a="44891150"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2025 10:22:53 -0700
X-CSE-ConnectionGUID: UdBaSFa7Q9+mTntp1CC+Og==
X-CSE-MsgGUID: 64rp7GEqR4Cj3Z0wguGhMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,182,1739865600"; d="scan'208";a="131964906"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 02 Apr 2025 10:22:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 02 Apr 2025 20:22:49 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 3/6] drm/i915: Move the intel_dpt_offset() check into
 intel_plane_pin_fb()
Date: Wed,  2 Apr 2025 20:22:37 +0300
Message-ID: <20250402172240.9275-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250402172240.9275-1-ville.syrjala@linux.intel.com>
References: <20250402172240.9275-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Now that we handle all the other vma offset stuff in
intel_plane_pin_fb() it seems more proper to do the
dpt_vma offset check there as well.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb_pin.c        | 7 +++++++
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 6 ------
 2 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
index f2d8675dd98a..a5b9d87b2255 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
@@ -259,6 +259,7 @@ intel_plane_fb_vtd_guard(const struct intel_plane_state *plane_state)
 int intel_plane_pin_fb(struct intel_plane_state *plane_state,
 		       const struct intel_plane_state *old_plane_state)
 {
+	struct intel_display *display = to_intel_display(plane_state);
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 	const struct intel_framebuffer *fb =
 		to_intel_framebuffer(plane_state->hw.fb);
@@ -297,6 +298,12 @@ int intel_plane_pin_fb(struct intel_plane_state *plane_state,
 		plane_state->dpt_vma = vma;
 
 		WARN_ON(plane_state->ggtt_vma == plane_state->dpt_vma);
+
+		/*
+		 * The DPT object contains only one vma, so
+		 * the VMA's offset within the DPT is always 0.
+		 */
+		drm_WARN_ON(display->drm, intel_dpt_offset(plane_state->dpt_vma));
 	}
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index b82a9e07350b..808580826b0e 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1271,12 +1271,6 @@ static u32 skl_surf_address(const struct intel_plane_state *plane_state,
 	u32 offset = plane_state->view.color_plane[color_plane].offset;
 
 	if (intel_fb_uses_dpt(fb)) {
-		/*
-		 * The DPT object contains only one vma, so the VMA's offset
-		 * within the DPT is always 0.
-		 */
-		drm_WARN_ON(display->drm, plane_state->dpt_vma &&
-			    intel_dpt_offset(plane_state->dpt_vma));
 		drm_WARN_ON(display->drm, offset & 0x1fffff);
 		return offset >> 9;
 	} else {
-- 
2.45.3

