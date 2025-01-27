Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F4FDA1DB33
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2025 18:22:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F21610E591;
	Mon, 27 Jan 2025 17:22:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MovlBPEE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9ACB10E592
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2025 17:22:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737998533; x=1769534533;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=NUlsH0NPB6EEl9MMXW2IW8udJHPwea4PIYp4IIjZcCs=;
 b=MovlBPEEosRwobtfk5dqyDt6CKgCVlckchh0gjEKzOWxUE2JG7wBnwQw
 qUVSYFhBUsZrXoW8ukVqVlJjUs8zqzWqGWMgAEbvRb8AuOpuO+3i5qAXJ
 qmQWi0QGyCLQRnXylzcHF7WP7gC2reI3IRa70XBbxCt9gApkEbtYVLK88
 z5g+Vpw367mM/XVcPhmCSW+bZedwN1VOAGyZv1WQSXWJmB/TMbdYfepm9
 aY60UrPU4cqPAdWxvDaqnh6hf0EhFuMHI49JD959iFZ3n+OxaS4BmhTmH
 pci5mJOynP4FlQPfmGAAMA2cCfSeMlhGOnmPI6uLoAZH7CHRGSri3MLF/ A==;
X-CSE-ConnectionGUID: zmUWRCpDSKiFXLts+jGJrA==
X-CSE-MsgGUID: WWtOTRk3Qp6ixm8e3TKHDA==
X-IronPort-AV: E=McAfee;i="6700,10204,11328"; a="38501389"
X-IronPort-AV: E=Sophos;i="6.13,239,1732608000"; d="scan'208";a="38501389"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 09:22:13 -0800
X-CSE-ConnectionGUID: 3SzV4ZFqRzWdtvFjgEbnWg==
X-CSE-MsgGUID: FCUIxxaFQdmHL5MStNyo2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,239,1732608000"; d="scan'208";a="108610213"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 27 Jan 2025 09:22:12 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 27 Jan 2025 19:22:10 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 05/11] drm/i915: Extract unlink_nv12_plane()
Date: Mon, 27 Jan 2025 19:21:50 +0200
Message-ID: <20250127172156.21928-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250127172156.21928-1-ville.syrjala@linux.intel.com>
References: <20250127172156.21928-1-ville.syrjala@linux.intel.com>
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

Pull the details of the nv12 plane unlinking to a small
funciton to make the higher level code less messy.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 32 +++++++++++++-------
 1 file changed, 21 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 875597007461..bc62298b1b49 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4402,6 +4402,24 @@ static bool check_single_encoder_cloning(struct intel_atomic_state *state,
 	return true;
 }
 
+static void unlink_nv12_plane(struct intel_crtc_state *crtc_state,
+			      struct intel_plane_state *plane_state)
+{
+	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
+
+	plane_state->planar_linked_plane = NULL;
+
+	if (plane_state->is_y_plane && !plane_state->uapi.visible) {
+		crtc_state->enabled_planes &= ~BIT(plane->id);
+		crtc_state->active_planes &= ~BIT(plane->id);
+		crtc_state->update_planes |= BIT(plane->id);
+		crtc_state->data_rate[plane->id] = 0;
+		crtc_state->rel_data_rate[plane->id] = 0;
+	}
+
+	plane_state->is_y_plane = false;
+}
+
 static int icl_check_nv12_planes(struct intel_atomic_state *state,
 				 struct intel_crtc *crtc)
 {
@@ -4420,19 +4438,11 @@ static int icl_check_nv12_planes(struct intel_atomic_state *state,
 	 * in the crtc_state->active_planes mask.
 	 */
 	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
-		if (plane->pipe != crtc->pipe || !plane_state->planar_linked_plane)
+		if (plane->pipe != crtc->pipe)
 			continue;
 
-		plane_state->planar_linked_plane = NULL;
-		if (plane_state->is_y_plane && !plane_state->uapi.visible) {
-			crtc_state->enabled_planes &= ~BIT(plane->id);
-			crtc_state->active_planes &= ~BIT(plane->id);
-			crtc_state->update_planes |= BIT(plane->id);
-			crtc_state->data_rate[plane->id] = 0;
-			crtc_state->rel_data_rate[plane->id] = 0;
-		}
-
-		plane_state->is_y_plane = false;
+		if (plane_state->planar_linked_plane)
+			unlink_nv12_plane(crtc_state, plane_state);
 	}
 
 	if (!crtc_state->nv12_planes)
-- 
2.45.3

