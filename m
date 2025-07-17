Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13ECDB092EC
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jul 2025 19:14:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9729B10E873;
	Thu, 17 Jul 2025 17:14:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="POiH4MOv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49B6210E880;
 Thu, 17 Jul 2025 17:14:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752772447; x=1784308447;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MNZYpIZF6dqLJI19Zjjn/QpB8Vqgng6B2Il0eIFwoPY=;
 b=POiH4MOvYLPHnpCD+qMHrKG/IYuJnXKajyuS9CH5mcR530os26A7Cg04
 72WMhBE6Tty/mCmEwMGNMogqPkICxsLtKO28NIl92S5Sj36WTQsuupYaH
 9ff5H8rWaphUiXsNaRRr39iJmcxc8YAXqZPuowYIFGNX3GxCXW42nrjiQ
 5Ib+kmpgEsIsJFBz7imdgt3DXIyhgYUC/3nXARsL8EplvcmrgBtyrmU5+
 f1takytzDtZ8z+NoTr9wWrnYPJwh2MTJqqReUTueeGUn0B4/PZ4ax4QEY
 n4h5HvL3sK1zcAUVAB9/evJZdOT/VxKK5pdOeEPMdXajLao0+oJr82Fbt A==;
X-CSE-ConnectionGUID: ozPiGwiATL6vGE86hAlQXA==
X-CSE-MsgGUID: 6RYLZrUGQXaMwANrNWqXrQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11495"; a="58729024"
X-IronPort-AV: E=Sophos;i="6.16,319,1744095600"; d="scan'208";a="58729024"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 10:14:07 -0700
X-CSE-ConnectionGUID: jrUUWGqwRs+IxM2X138Hqg==
X-CSE-MsgGUID: GvOOkGgyTaapr4kq+402RA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,319,1744095600"; d="scan'208";a="163488781"
Received: from agladkov-desk.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.179])
 by orviesa005.jf.intel.com with SMTP; 17 Jul 2025 10:14:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 17 Jul 2025 20:14:03 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v3 3/6] drm/i915: Move the intel_dpt_offset() check into
 intel_plane_pin_fb()
Date: Thu, 17 Jul 2025 20:13:49 +0300
Message-ID: <20250717171353.23090-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250717171353.23090-1-ville.syrjala@linux.intel.com>
References: <20250717171353.23090-1-ville.syrjala@linux.intel.com>
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

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb_pin.c        | 7 +++++++
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 6 ------
 2 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
index 340c765d29fe..b0557976836d 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
@@ -261,6 +261,7 @@ intel_plane_fb_vtd_guard(const struct intel_plane_state *plane_state)
 int intel_plane_pin_fb(struct intel_plane_state *plane_state,
 		       const struct intel_plane_state *old_plane_state)
 {
+	struct intel_display *display = to_intel_display(plane_state);
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 	const struct intel_framebuffer *fb =
 		to_intel_framebuffer(plane_state->hw.fb);
@@ -299,6 +300,12 @@ int intel_plane_pin_fb(struct intel_plane_state *plane_state,
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
index a61dc9dea3fb..39c107b10a48 100644
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
2.49.0

