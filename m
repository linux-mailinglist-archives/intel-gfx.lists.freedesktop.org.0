Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD946473039
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Dec 2021 16:14:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A241110E721;
	Mon, 13 Dec 2021 15:14:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3190810E721
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Dec 2021 15:14:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10196"; a="218767039"
X-IronPort-AV: E=Sophos;i="5.88,202,1635231600"; d="scan'208";a="218767039"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 07:14:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,202,1635231600"; d="scan'208";a="544807800"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 13 Dec 2021 07:14:36 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 13 Dec 2021 17:14:35 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Dec 2021 17:14:35 +0200
Message-Id: <20211213151435.9700-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211213134450.3082-5-ville.syrjala@linux.intel.com>
References: <20211213134450.3082-5-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 4/4] drm/i915/fbc: Register per-crtc debugfs
 files
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Expose FBC debugfs files for each crtc. These may or may not point
to the same FBC instance depending on the platform.

We leave the old global debugfs files in place until
igt catches up to the new per-crtc approach.

v2: Take a trip via intel_crtc_debugfs_add() (Jani)

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  |  7 +++--
 drivers/gpu/drm/i915/display/intel_fbc.c      | 31 ++++++++++++-------
 drivers/gpu/drm/i915/display/intel_fbc.h      |  1 +
 3 files changed, 25 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 572445299b04..f4de004d470f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -2402,6 +2402,9 @@ void intel_connector_debugfs_add(struct intel_connector *intel_connector)
  */
 void intel_crtc_debugfs_add(struct drm_crtc *crtc)
 {
-	if (crtc->debugfs_entry)
-		crtc_updates_add(crtc);
+	if (!crtc->debugfs_entry)
+		return;
+
+	crtc_updates_add(crtc);
+	intel_fbc_crtc_debugfs_add(to_intel_crtc(crtc));
 }
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 53c93387710c..987ea4c4b5d0 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1798,25 +1798,32 @@ DEFINE_SIMPLE_ATTRIBUTE(intel_fbc_debugfs_false_color_fops,
 			intel_fbc_debugfs_false_color_set,
 			"%llu\n");
 
-static void intel_fbc_debugfs_add(struct intel_fbc *fbc)
+static void intel_fbc_debugfs_add(struct intel_fbc *fbc,
+				  struct dentry *parent)
 {
-	struct drm_i915_private *i915 = fbc->i915;
-	struct drm_minor *minor = i915->drm.primary;
-
-	debugfs_create_file("i915_fbc_status", 0444,
-			    minor->debugfs_root, fbc,
-			    &intel_fbc_debugfs_status_fops);
+	debugfs_create_file("i915_fbc_status", 0444, parent,
+			    fbc, &intel_fbc_debugfs_status_fops);
 
 	if (fbc->funcs->set_false_color)
-		debugfs_create_file("i915_fbc_false_color", 0644,
-				    minor->debugfs_root, fbc,
-				    &intel_fbc_debugfs_false_color_fops);
+		debugfs_create_file("i915_fbc_false_color", 0644, parent,
+				    fbc, &intel_fbc_debugfs_false_color_fops);
 }
 
+void intel_fbc_crtc_debugfs_add(struct intel_crtc *crtc)
+{
+	struct intel_plane *plane = to_intel_plane(crtc->base.primary);
+
+	if (plane->fbc)
+		intel_fbc_debugfs_add(plane->fbc, crtc->base.debugfs_entry);
+}
+
+/* FIXME: remove this once igt is on board with per-crtc stuff */
 void intel_fbc_debugfs_register(struct drm_i915_private *i915)
 {
-	struct intel_fbc *fbc = i915->fbc[INTEL_FBC_A];
+	struct drm_minor *minor = i915->drm.primary;
+	struct intel_fbc *fbc;
 
+	fbc = i915->fbc[INTEL_FBC_A];
 	if (fbc)
-		intel_fbc_debugfs_add(fbc);
+		intel_fbc_debugfs_add(fbc, minor->debugfs_root);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.h b/drivers/gpu/drm/i915/display/intel_fbc.h
index 7b7631aec527..8c5a7339a27f 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.h
+++ b/drivers/gpu/drm/i915/display/intel_fbc.h
@@ -42,6 +42,7 @@ void intel_fbc_flush(struct drm_i915_private *dev_priv,
 void intel_fbc_add_plane(struct intel_fbc *fbc, struct intel_plane *plane);
 void intel_fbc_handle_fifo_underrun_irq(struct drm_i915_private *i915);
 void intel_fbc_reset_underrun(struct drm_i915_private *i915);
+void intel_fbc_crtc_debugfs_add(struct intel_crtc *crtc);
 void intel_fbc_debugfs_register(struct drm_i915_private *i915);
 
 #endif /* __INTEL_FBC_H__ */
-- 
2.32.0

