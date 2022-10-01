Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3E695F1E92
	for <lists+intel-gfx@lfdr.de>; Sat,  1 Oct 2022 20:25:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B10AC10E581;
	Sat,  1 Oct 2022 18:25:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6941C10E4CE
 for <intel-gfx@lists.freedesktop.org>; Sat,  1 Oct 2022 18:25:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664648717; x=1696184717;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oGb4SgVwAiBlPQwb81aZB7SuRREo/1if2wBDzldHkUo=;
 b=RQwthLdRrPP6mL9JEy8f/Gi4KARP/0NgRaxDGpdwHDQbHeGV5vyk6NPt
 /QQwaPYopbRZduGQIa7n97q+TLiTeGFOd9+z2ybeB+X/u54prxqmDpXMO
 aQQyKMGBhM5rCyTwhjSgu78VE2DHOpVM04uH8dvqtmyTRFGhiEb9frz0X
 ehJfuRynREGfNkp2suT2wE97oBQFEfj2bSc+/W/4gEb4W7ppeDKeTmGaZ
 aiynuncsc71/wToHzqfJVqjdF9DbumwkhK0C3PLX3hb/NU0Bd+/qC7+cI
 KFeL3VHGXpno6FEjyS2GXJTVSd3OOHJ0y9wMmh5ZgcDVoVSvcISs6Kr+O Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10487"; a="303893495"
X-IronPort-AV: E=Sophos;i="5.93,361,1654585200"; d="scan'208";a="303893495"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2022 11:25:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10487"; a="685655047"
X-IronPort-AV: E=Sophos;i="5.93,361,1654585200"; d="scan'208";a="685655047"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga008.fm.intel.com with SMTP; 01 Oct 2022 11:25:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 01 Oct 2022 21:25:14 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  1 Oct 2022 21:25:04 +0300
Message-Id: <20221001182505.3675-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221001182505.3675-1-ville.syrjala@linux.intel.com>
References: <20221001182505.3675-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/4] drm/i915: Make DRRS debugfs
 per-crtc/connector
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

Since I already broke anything that relied on the old contents
of the DRRS debugfs files might as well finish the breakage
and convert the files to be per-crtc/connector so we don't need
to have annoying code in igt to parse these.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  |   4 +-
 drivers/gpu/drm/i915/display/intel_drrs.c     | 136 +++++++++---------
 drivers/gpu/drm/i915/display/intel_drrs.h     |   3 +-
 3 files changed, 70 insertions(+), 73 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index df5a217d46ce..372a5b427e4f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1629,7 +1629,6 @@ void intel_display_debugfs_register(struct drm_i915_private *i915)
 				 minor->debugfs_root, minor);
 
 	intel_dmc_debugfs_register(i915);
-	intel_drrs_debugfs_register(i915);
 	intel_fbc_debugfs_register(i915);
 	intel_hpd_debugfs_register(i915);
 	skl_watermark_ipc_debugfs_register(i915);
@@ -1945,6 +1944,8 @@ void intel_connector_debugfs_add(struct intel_connector *intel_connector)
 	if (!root)
 		return;
 
+	intel_drrs_connector_debugfs_add(intel_connector);
+
 	if (connector->connector_type == DRM_MODE_CONNECTOR_eDP) {
 		debugfs_create_file("i915_panel_timings", S_IRUGO, root,
 				    connector, &i915_panel_fops);
@@ -1997,6 +1998,7 @@ void intel_crtc_debugfs_add(struct drm_crtc *crtc)
 		return;
 
 	crtc_updates_add(crtc);
+	intel_drrs_crtc_debugfs_add(to_intel_crtc(crtc));
 	intel_fbc_crtc_debugfs_add(to_intel_crtc(crtc));
 
 	debugfs_create_file("i915_current_bpc", 0444, crtc->debugfs_entry, crtc,
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 3639d8aa71c9..a5d6682475d1 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -300,46 +300,26 @@ void intel_crtc_drrs_init(struct intel_crtc *crtc)
 
 static int intel_drrs_debugfs_status_show(struct seq_file *m, void *unused)
 {
-	struct drm_i915_private *i915 = m->private;
-	struct drm_connector_list_iter conn_iter;
-	struct intel_connector *connector;
-	struct intel_crtc *crtc;
+	struct intel_crtc *crtc = m->private;
+	const struct intel_crtc_state *crtc_state =
+		to_intel_crtc_state(crtc->base.state);
 
-	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
-	for_each_intel_connector_iter(connector, &conn_iter) {
-		seq_printf(m, "[CONNECTOR:%d:%s] DRRS type: %s\n",
-			   connector->base.base.id, connector->base.name,
-			   intel_drrs_type_str(intel_panel_drrs_type(connector)));
-	}
-	drm_connector_list_iter_end(&conn_iter);
+	mutex_lock(&crtc->drrs.mutex);
 
-	seq_puts(m, "\n");
+	seq_printf(m, "DRRS enabled: %s\n",
+		   str_yes_no(crtc_state->has_drrs));
 
-	for_each_intel_crtc(&i915->drm, crtc) {
-		const struct intel_crtc_state *crtc_state =
-			to_intel_crtc_state(crtc->base.state);
+	seq_printf(m, "DRRS active: %s\n",
+		   str_yes_no(intel_drrs_is_active(crtc)));
 
-		seq_printf(m, "[CRTC:%d:%s]:\n",
-			   crtc->base.base.id, crtc->base.name);
+	seq_printf(m, "DRRS refresh rate: %s\n",
+		   crtc->drrs.refresh_rate == DRRS_REFRESH_RATE_LOW ?
+		   "low" : "high");
 
-		mutex_lock(&crtc->drrs.mutex);
+	seq_printf(m, "DRRS busy frontbuffer bits: 0x%x\n",
+		   crtc->drrs.busy_frontbuffer_bits);
 
-		/* DRRS Supported */
-		seq_printf(m, "\tDRRS enabled: %s\n",
-			   str_yes_no(crtc_state->has_drrs));
-
-		seq_printf(m, "\tDRRS active: %s\n",
-			   str_yes_no(intel_drrs_is_active(crtc)));
-
-		seq_printf(m, "\tDRRS refresh rate: %s\n",
-			   crtc->drrs.refresh_rate == DRRS_REFRESH_RATE_LOW ?
-			   "low" : "high");
-
-		seq_printf(m, "\tDRRS busy frontbuffer bits: 0x%X\n",
-			   crtc->drrs.busy_frontbuffer_bits);
-
-		mutex_unlock(&crtc->drrs.mutex);
-	}
+	mutex_unlock(&crtc->drrs.mutex);
 
 	return 0;
 }
@@ -348,58 +328,72 @@ DEFINE_SHOW_ATTRIBUTE(intel_drrs_debugfs_status);
 
 static int intel_drrs_debugfs_ctl_set(void *data, u64 val)
 {
-	struct drm_i915_private *i915 = data;
-	struct intel_crtc *crtc;
+	struct intel_crtc *crtc = data;
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_crtc_state *crtc_state;
+	struct drm_crtc_commit *commit;
+	int ret;
 
-	for_each_intel_crtc(&i915->drm, crtc) {
-		struct intel_crtc_state *crtc_state;
-		struct drm_crtc_commit *commit;
-		int ret;
+	ret = drm_modeset_lock_single_interruptible(&crtc->base.mutex);
+	if (ret)
+		return ret;
 
-		ret = drm_modeset_lock_single_interruptible(&crtc->base.mutex);
+	crtc_state = to_intel_crtc_state(crtc->base.state);
+
+	if (!crtc_state->hw.active ||
+	    !crtc_state->has_drrs)
+		goto out;
+
+	commit = crtc_state->uapi.commit;
+	if (commit) {
+		ret = wait_for_completion_interruptible(&commit->hw_done);
 		if (ret)
-			return ret;
-
-		crtc_state = to_intel_crtc_state(crtc->base.state);
-
-		if (!crtc_state->hw.active ||
-		    !crtc_state->has_drrs)
 			goto out;
+	}
 
-		commit = crtc_state->uapi.commit;
-		if (commit) {
-			ret = wait_for_completion_interruptible(&commit->hw_done);
-			if (ret)
-				goto out;
-		}
+	drm_dbg(&i915->drm,
+		"Manually %sactivating DRRS\n", val ? "" : "de");
 
-		drm_dbg(&i915->drm,
-			"Manually %sactivating DRRS\n", val ? "" : "de");
-
-		if (val)
-			intel_drrs_activate(crtc_state);
-		else
-			intel_drrs_deactivate(crtc_state);
+	if (val)
+		intel_drrs_activate(crtc_state);
+	else
+		intel_drrs_deactivate(crtc_state);
 
 out:
-		drm_modeset_unlock(&crtc->base.mutex);
-		if (ret)
-			return ret;
-	}
+	drm_modeset_unlock(&crtc->base.mutex);
 
-	return 0;
+	return ret;
 }
 
 DEFINE_SIMPLE_ATTRIBUTE(intel_drrs_debugfs_ctl_fops,
 			NULL, intel_drrs_debugfs_ctl_set, "%llu\n");
 
-void intel_drrs_debugfs_register(struct drm_i915_private *i915)
+void intel_drrs_crtc_debugfs_add(struct intel_crtc *crtc)
 {
-	struct drm_minor *minor = i915->drm.primary;
+	debugfs_create_file("i915_drrs_status", 0444, crtc->base.debugfs_entry,
+			    crtc, &intel_drrs_debugfs_status_fops);
 
-	debugfs_create_file("i915_drrs_status", 0444, minor->debugfs_root,
-			    i915, &intel_drrs_debugfs_status_fops);
+	debugfs_create_file("i915_drrs_ctl", 0644, crtc->base.debugfs_entry,
+			    crtc, &intel_drrs_debugfs_ctl_fops);
+}
+
+static int intel_drrs_debugfs_type_show(struct seq_file *m, void *unused)
+{
+	struct intel_connector *connector = m->private;
+
+	seq_printf(m, "DRRS type: %s\n",
+		   intel_drrs_type_str(intel_panel_drrs_type(connector)));
+
+	return 0;
+}
+
+DEFINE_SHOW_ATTRIBUTE(intel_drrs_debugfs_type);
+
+void intel_drrs_connector_debugfs_add(struct intel_connector *connector)
+{
+	if (intel_panel_drrs_type(connector) == DRRS_TYPE_NONE)
+		return;
 
-	debugfs_create_file("i915_drrs_ctl", 0644, minor->debugfs_root,
-			    i915, &intel_drrs_debugfs_ctl_fops);
+	debugfs_create_file("i915_drrs_type", 0444, connector->base.debugfs_entry,
+			    connector, &intel_drrs_debugfs_type_fops);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.h b/drivers/gpu/drm/i915/display/intel_drrs.h
index 052055988341..041248bf5d67 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.h
+++ b/drivers/gpu/drm/i915/display/intel_drrs.h
@@ -24,6 +24,7 @@ void intel_drrs_invalidate(struct drm_i915_private *dev_priv,
 void intel_drrs_flush(struct drm_i915_private *dev_priv,
 		      unsigned int frontbuffer_bits);
 void intel_crtc_drrs_init(struct intel_crtc *crtc);
-void intel_drrs_debugfs_register(struct drm_i915_private *i915);
+void intel_drrs_crtc_debugfs_add(struct intel_crtc *crtc);
+void intel_drrs_connector_debugfs_add(struct intel_connector *connector);
 
 #endif /* __INTEL_DRRS_H__ */
-- 
2.35.1

