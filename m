Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 503124D9C32
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 14:28:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10A5910E4BA;
	Tue, 15 Mar 2022 13:28:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4803810E4A6
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 13:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647350902; x=1678886902;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Zu+TSZ0CYgm4NTGapGV991c8t5gZVtsnwKdBMNW8Qj4=;
 b=BFzaK4zQNtGthdfNzbYNPByc/1xl/jk/JHMCIknFGNFKn1SuUDKpjmYb
 TPOsVLMVubM5HODMTMeEtKB3hBhMo0Y/to0NtElOPBJ4+zCYHDtSne2Sm
 ZImyTJzjWqgEejuZCkqXq+rjGnYIX8vAiJ3K4vkLHNFPOzRhTTFMSIDfY
 PqO8KdbT14d/FR25M47u5EGsHI81m2VatOEEM0Akb5PPE7v92aabklsvo
 xnYvw3vD/OM01U6y91Jk1N1hjPv/DZg0pgdz6FD/ZlVhfmtbNSk3XkGwi
 IWqWyGfLjsTayeAycC1rgfCvVipla1Ro6KPqSYbf0zhKdrEQUuCGs4yNv Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="342725539"
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="342725539"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 06:28:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="634585284"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by FMSMGA003.fm.intel.com with SMTP; 15 Mar 2022 06:28:19 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 15 Mar 2022 15:28:19 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Mar 2022 15:27:52 +0200
Message-Id: <20220315132752.11849-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220315132752.11849-1-ville.syrjala@linux.intel.com>
References: <20220315132752.11849-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 9/9] drm/i915: s/enable/active/ for DRRS
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

Rename the DRRS functiosn to say "(de)activate" rather than
"enable/disable". This let's us differentiate between the
logically enabled vs. actually currently active cases.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  4 ++--
 .../drm/i915/display/intel_display_debugfs.c  | 15 ++++++++-----
 drivers/gpu/drm/i915/display/intel_drrs.c     | 22 ++++++++++---------
 drivers/gpu/drm/i915/display/intel_drrs.h     |  6 ++---
 4 files changed, 27 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 86fc8ddd0b8f..90d54281535d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1246,7 +1246,7 @@ static void intel_post_plane_update(struct intel_atomic_state *state,
 	    !needs_cursorclk_wa(new_crtc_state))
 		icl_wa_cursorclkgating(dev_priv, pipe, false);
 
-	intel_drrs_enable(new_crtc_state);
+	intel_drrs_activate(new_crtc_state);
 }
 
 static void intel_crtc_enable_flip_done(struct intel_atomic_state *state,
@@ -1324,7 +1324,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	enum pipe pipe = crtc->pipe;
 
-	intel_drrs_disable(old_crtc_state);
+	intel_drrs_deactivate(old_crtc_state);
 
 	intel_psr_pre_plane_update(state, crtc);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index e0a126e7ebb8..18b98788b23e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1159,6 +1159,9 @@ static int i915_drrs_status(struct seq_file *m, void *unused)
 	seq_puts(m, "\n");
 
 	for_each_intel_crtc(&dev_priv->drm, crtc) {
+		const struct intel_crtc_state *crtc_state =
+			to_intel_crtc_state(crtc->base.state);
+
 		seq_printf(m, "[CRTC:%d:%s]:\n",
 			   crtc->base.base.id, crtc->base.name);
 
@@ -1166,7 +1169,10 @@ static int i915_drrs_status(struct seq_file *m, void *unused)
 
 		/* DRRS Supported */
 		seq_printf(m, "\tDRRS Enabled: %s\n",
-			   str_yes_no(intel_drrs_is_enabled(crtc)));
+			   str_yes_no(crtc_state->has_drrs));
+
+		seq_printf(m, "\tDRRS Active: %s\n",
+			   str_yes_no(intel_drrs_is_active(crtc)));
 
 		seq_printf(m, "\tBusy_frontbuffer_bits: 0x%X\n",
 			   crtc->drrs.busy_frontbuffer_bits);
@@ -1864,13 +1870,12 @@ static int i915_drrs_ctl_set(void *data, u64 val)
 		}
 
 		drm_dbg(&dev_priv->drm,
-			"Manually %sabling DRRS. %llu\n",
-			val ? "en" : "dis", val);
+			"Manually %sactivating DRRS\n", val ? "" : "de");
 
 		if (val)
-			intel_drrs_enable(crtc_state);
+			intel_drrs_activate(crtc_state);
 		else
-			intel_drrs_disable(crtc_state);
+			intel_drrs_deactivate(crtc_state);
 
 out:
 		drm_modeset_unlock(&crtc->base.mutex);
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 9a341ab1a848..7703d5a801f9 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -147,7 +147,7 @@ intel_drrs_set_refresh_rate_m_n(struct intel_crtc *crtc,
 				       &crtc->drrs.m2_n2 : &crtc->drrs.m_n);
 }
 
-bool intel_drrs_is_enabled(struct intel_crtc *crtc)
+bool intel_drrs_is_active(struct intel_crtc *crtc)
 {
 	return crtc->drrs.cpu_transcoder != INVALID_TRANSCODER;
 }
@@ -189,12 +189,12 @@ static unsigned int intel_drrs_frontbuffer_bits(const struct intel_crtc_state *c
 }
 
 /**
- * intel_drrs_enable - init drrs struct if supported
- * @crtc_state: A pointer to the active crtc state.
+ * intel_drrs_activate - activate DRRS
+ * @crtc_state: the crtc state
  *
- * Initializes frontbuffer_bits and drrs.dp
+ * Activates DRRS on the crtc.
  */
-void intel_drrs_enable(const struct intel_crtc_state *crtc_state)
+void intel_drrs_activate(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
@@ -221,10 +221,12 @@ void intel_drrs_enable(const struct intel_crtc_state *crtc_state)
 }
 
 /**
- * intel_drrs_disable - Disable DRRS
- * @old_crtc_state: Pointer to old crtc_state.
+ * intel_drrs_deactivate - deactivate DRRS
+ * @crtc_state: the old crtc state
+ *
+ * Deactivates DRRS on the crtc.
  */
-void intel_drrs_disable(const struct intel_crtc_state *old_crtc_state)
+void intel_drrs_deactivate(const struct intel_crtc_state *old_crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
 
@@ -239,7 +241,7 @@ void intel_drrs_disable(const struct intel_crtc_state *old_crtc_state)
 
 	mutex_lock(&crtc->drrs.mutex);
 
-	if (intel_drrs_is_enabled(crtc))
+	if (intel_drrs_is_active(crtc))
 		intel_drrs_set_state(crtc, DRRS_REFRESH_RATE_HIGH);
 
 	crtc->drrs.cpu_transcoder = INVALID_TRANSCODER;
@@ -257,7 +259,7 @@ static void intel_drrs_downclock_work(struct work_struct *work)
 
 	mutex_lock(&crtc->drrs.mutex);
 
-	if (intel_drrs_is_enabled(crtc) && !crtc->drrs.busy_frontbuffer_bits)
+	if (intel_drrs_is_active(crtc) && !crtc->drrs.busy_frontbuffer_bits)
 		intel_drrs_set_state(crtc, DRRS_REFRESH_RATE_LOW);
 
 	mutex_unlock(&crtc->drrs.mutex);
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.h b/drivers/gpu/drm/i915/display/intel_drrs.h
index 6e84b8e800a6..e2f78cc10061 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.h
+++ b/drivers/gpu/drm/i915/display/intel_drrs.h
@@ -16,9 +16,9 @@ struct intel_crtc_state;
 struct intel_connector;
 
 const char *intel_drrs_type_str(enum drrs_type drrs_type);
-bool intel_drrs_is_enabled(struct intel_crtc *crtc);
-void intel_drrs_enable(const struct intel_crtc_state *crtc_state);
-void intel_drrs_disable(const struct intel_crtc_state *crtc_state);
+bool intel_drrs_is_active(struct intel_crtc *crtc);
+void intel_drrs_activate(const struct intel_crtc_state *crtc_state);
+void intel_drrs_deactivate(const struct intel_crtc_state *crtc_state);
 void intel_drrs_invalidate(struct drm_i915_private *dev_priv,
 			   unsigned int frontbuffer_bits);
 void intel_drrs_flush(struct drm_i915_private *dev_priv,
-- 
2.34.1

