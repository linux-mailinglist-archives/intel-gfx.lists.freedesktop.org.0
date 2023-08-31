Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2330178F155
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Aug 2023 18:33:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0652F10E0BD;
	Thu, 31 Aug 2023 16:33:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5367710E0BD
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Aug 2023 16:33:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693499586; x=1725035586;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jXcSx5ZfMT/znTBNt3YVkhSNexgCXiPyA1OwA9Aqnkc=;
 b=L2nZQ/l8tRfUwZJVvj1/IhrPvkK4xvptS3BLcnRD7aeF1AJyY8POSUET
 mrDIqkxujwU3jVKfJNnYb3IESzg2ln6vritv0bKGP8dO5pt1fhFIF64gj
 lH/jmsy3cLvKxytQTdlCwnE5Iyot0fi4hVoXSHlIPtYQUZrcry3kQ3roY
 Md+JV36VmjVNcpVX7a8thAetN1ttdfiJNQZocmEL4oKhacw1GMufEK52X
 +QtOKq69V9q45gYPH/so333/E3k9054taHFouI8YyXx4tMo7YXdimk3oK
 NFq7FX83QGySXV4vz1m47V1B64cdOOTNhqR8UXbunsCY2g3CAzrQU0zHS w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="355495011"
X-IronPort-AV: E=Sophos;i="6.02,217,1688454000"; d="scan'208";a="355495011"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2023 09:26:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="742780172"
X-IronPort-AV: E=Sophos;i="6.02,217,1688454000"; d="scan'208";a="742780172"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga007.fm.intel.com with SMTP; 31 Aug 2023 09:26:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 31 Aug 2023 19:26:43 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 31 Aug 2023 19:26:43 +0300
Message-ID: <20230831162643.20354-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Use vblank worker to unpin old legacy
 cursor fb safely
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

The cursor hardware only does sync updates, and thus the hardware
will be scanning out from the old fb until the next start of vblank.
So in order to make the legacy cursor fastpath actually safe we
should not unpin the old fb until we're sure the hardware has
ceased accessing it. The simplest approach is to just use a vblank
work here to do the delayed unpin.

Not 100% sure it's a good idea to put this onto the same high
priority vblank worker as eg. our timing critical gamma updates.
But let's keep it simple for now, and it we later discover that
this is causing problems we can think about adding a lower
priority worker for such things.

Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c   | 25 +++++++++++++++++--
 .../drm/i915/display/intel_display_types.h    |  3 +++
 2 files changed, 26 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index b342fad180ca..2bd1a79c6955 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -603,6 +603,16 @@ static bool intel_cursor_format_mod_supported(struct drm_plane *_plane,
 	return format == DRM_FORMAT_ARGB8888;
 }
 
+static void intel_cursor_unpin_work(struct kthread_work *base)
+{
+	struct drm_vblank_work *work = to_drm_vblank_work(base);
+	struct intel_plane_state *plane_state =
+		container_of(work, typeof(*plane_state), unpin_work);
+
+	intel_plane_unpin_fb(plane_state);
+	intel_plane_destroy_state(plane_state->uapi.plane, &plane_state->uapi);
+}
+
 static int
 intel_legacy_cursor_update(struct drm_plane *_plane,
 			   struct drm_crtc *_crtc,
@@ -730,14 +740,25 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 
 	local_irq_enable();
 
-	intel_plane_unpin_fb(old_plane_state);
+	if (old_plane_state->hw.fb != new_plane_state->hw.fb) {
+		drm_vblank_work_init(&old_plane_state->unpin_work, &crtc->base,
+				     intel_cursor_unpin_work);
+
+		drm_vblank_work_schedule(&old_plane_state->unpin_work,
+					 drm_crtc_accurate_vblank_count(&crtc->base) + 1,
+					 false);
+
+		old_plane_state = NULL;
+	} else {
+		intel_plane_unpin_fb(old_plane_state);
+	}
 
 out_free:
 	if (new_crtc_state)
 		intel_crtc_destroy_state(&crtc->base, &new_crtc_state->uapi);
 	if (ret)
 		intel_plane_destroy_state(&plane->base, &new_plane_state->uapi);
-	else
+	else if (old_plane_state)
 		intel_plane_destroy_state(&plane->base, &old_plane_state->uapi);
 	return ret;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index c62f4ec315e8..07394a33e747 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -702,6 +702,9 @@ struct intel_plane_state {
 
 	struct intel_fb_view view;
 
+	/* for legacy cursor fb unpin */
+	struct drm_vblank_work unpin_work;
+
 	/* Plane pxp decryption state */
 	bool decrypt;
 
-- 
2.41.0

