Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3B4E99291D
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2024 12:23:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C581310E36C;
	Mon,  7 Oct 2024 10:23:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E4CC10E1F6;
 Mon,  7 Oct 2024 10:23:49 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: [PATCH v2.1 03/12] drm/i915/display: Use async flip when available
 for initial plane config
Date: Mon,  7 Oct 2024 12:23:55 +0200
Message-ID: <20241007102355.134080-1-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241003154421.33805-4-maarten.lankhorst@linux.intel.com>
References: <20241003154421.33805-4-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
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

I'm planning to reorder readout in the Xe sequence in such a way that
interrupts will not be available, so just use an async flip.

Since the new FB points to the same pages, it will not tear. It also
has the benefit of perhaps being slightly faster.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
Fix compiler fails..
Change intel_de_wait_custom to normal variant.

I still believe we should be fine with async flips. The buffer will not
be a standard RGBX8888 on the first plane. If we violate a constraint, it
will be from alignment, and for that it would be interesting to find any
border cases we missed.

 drivers/gpu/drm/i915/display/skl_universal_plane.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index fdb141cfa4274..c7ba8fcff20c9 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2800,7 +2800,7 @@ bool skl_fixup_initial_plane_config(struct intel_crtc *crtc,
 		to_intel_plane_state(plane->base.state);
 	enum plane_id plane_id = plane->id;
 	enum pipe pipe = crtc->pipe;
-	u32 base;
+	u32 base, plane_ctl;
 
 	if (!plane_state->uapi.visible)
 		return false;
@@ -2814,7 +2814,16 @@ bool skl_fixup_initial_plane_config(struct intel_crtc *crtc,
 	if (plane_config->base == base)
 		return false;
 
+	/* Perform an async flip to the new surface. */
+	plane_ctl = intel_de_read(i915, PLANE_CTL(pipe, plane_id));
+	plane_ctl |= PLANE_CTL_ASYNC_FLIP;
+
+	intel_de_write(i915, PLANE_CTL(pipe, plane_id), plane_ctl);
 	intel_de_write(i915, PLANE_SURF(pipe, plane_id), base);
 
-	return true;
+	if (intel_de_wait(i915, PLANE_SURFLIVE(pipe, plane_id), ~0U, base, 40) < 0)
+		drm_warn(&i915->drm, "async flip timed out\n");
+
+	/* No need to vblank wait either */
+	return false;
 }
-- 
2.45.2

