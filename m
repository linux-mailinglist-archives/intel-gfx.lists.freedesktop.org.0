Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A83186CA62A
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Mar 2023 15:39:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F09F10E5D7;
	Mon, 27 Mar 2023 13:39:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23ED310E5D5
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Mar 2023 13:39:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679924389; x=1711460389;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=V1PCY9rhjB8p5TF0mw3pQbP2j36qdJ45+bfiXL6Za3o=;
 b=Im1OrLzsjGu9AJyszbAyaJ5iVHN5ZW/lkP9k8JbGSI8UjwZdSerLw8pq
 Nad5XHOOzgerCKF1fThl2onPl1A3yEVLyPFR9Vpzqk4CEE6UqZfYcrW1/
 opjh+4z8FMtmMjWmXdv0s2Ezs/CPZGb1tzJ6//O9CqiHKPqe5VpqjcAeB
 XL3aQXMAua3yL8V7Ln40Ro4oFyDLpm70p2zbTomm8XCYmgDOanNxTm5+Z
 hWbp0vjkzEVzXOMzX4+FhPZ98HKs2plmrbnOqCPyXvF5lP8rvC2kwU78U
 fvUvc0kdzc1XFNj4s23VNNR499iwxxfxPfeHiRkS+tavIvxOoVvuzQndi g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="337765891"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="337765891"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 06:39:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="676971893"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="676971893"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga007.jf.intel.com with SMTP; 27 Mar 2023 06:39:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 27 Mar 2023 16:39:46 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Mar 2023 16:39:42 +0300
Message-Id: <20230327133942.22063-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230327133942.22063-1-ville.syrjala@linux.intel.com>
References: <20230327133942.22063-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/ips: Add i915_ips_false_color
 debugfs file
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

Similar to FBC let's expose an debugfs file to control
IPS false color. Enabling this provides an immediate visual
feedback on whether IPS is working or not.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/hsw_ips.c        | 58 ++++++++++++++++++-
 .../gpu/drm/i915/display/intel_display_core.h |  4 ++
 drivers/gpu/drm/i915/i915_reg.h               |  3 +-
 3 files changed, 62 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/hsw_ips.c b/drivers/gpu/drm/i915/display/hsw_ips.c
index 47209c858c32..8eca0de065b6 100644
--- a/drivers/gpu/drm/i915/display/hsw_ips.c
+++ b/drivers/gpu/drm/i915/display/hsw_ips.c
@@ -14,6 +14,7 @@ static void hsw_ips_enable(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	u32 val;
 
 	if (!crtc_state->ips_enabled)
 		return;
@@ -26,10 +27,15 @@ static void hsw_ips_enable(const struct intel_crtc_state *crtc_state)
 	drm_WARN_ON(&i915->drm,
 		    !(crtc_state->active_planes & ~BIT(PLANE_CURSOR)));
 
+	val = IPS_ENABLE;
+
+	if (i915->display.ips.false_color)
+		val |= IPS_FALSE_COLOR;
+
 	if (IS_BROADWELL(i915)) {
 		drm_WARN_ON(&i915->drm,
 			    snb_pcode_write(&i915->uncore, DISPLAY_IPS_CONTROL,
-					    IPS_ENABLE | IPS_PCODE_CONTROL));
+					    val | IPS_PCODE_CONTROL));
 		/*
 		 * Quoting Art Runyan: "its not safe to expect any particular
 		 * value in IPS_CTL bit 31 after enabling IPS through the
@@ -37,7 +43,7 @@ static void hsw_ips_enable(const struct intel_crtc_state *crtc_state)
 		 * so we need to just enable it and continue on.
 		 */
 	} else {
-		intel_de_write(i915, IPS_CTL, IPS_ENABLE);
+		intel_de_write(i915, IPS_CTL, val);
 		/*
 		 * The bit only becomes 1 in the next vblank, so this wait here
 		 * is essentially intel_wait_for_vblank. If we don't have this
@@ -268,6 +274,51 @@ void hsw_ips_get_config(struct intel_crtc_state *crtc_state)
 	}
 }
 
+static int hsw_ips_debugfs_false_color_get(void *data, u64 *val)
+{
+	struct intel_crtc *crtc = data;
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+
+	*val = i915->display.ips.false_color;
+
+	return 0;
+}
+
+static int hsw_ips_debugfs_false_color_set(void *data, u64 val)
+{
+	struct intel_crtc *crtc = data;
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_crtc_state *crtc_state;
+	int ret;
+
+	ret = drm_modeset_lock(&crtc->base.mutex, NULL);
+	if (ret)
+		return ret;
+
+	i915->display.ips.false_color = val;
+
+	crtc_state = to_intel_crtc_state(crtc->base.state);
+
+	if (!crtc_state->hw.active)
+		goto unlock;
+
+	if (crtc_state->uapi.commit &&
+	    !try_wait_for_completion(&crtc_state->uapi.commit->hw_done))
+		goto unlock;
+
+	hsw_ips_enable(crtc_state);
+
+ unlock:
+	drm_modeset_unlock(&crtc->base.mutex);
+
+	return ret;
+}
+
+DEFINE_DEBUGFS_ATTRIBUTE(hsw_ips_debugfs_false_color_fops,
+			 hsw_ips_debugfs_false_color_get,
+			 hsw_ips_debugfs_false_color_set,
+			 "%llu\n");
+
 static int hsw_ips_debugfs_status_show(struct seq_file *m, void *unused)
 {
 	struct intel_crtc *crtc = m->private;
@@ -300,6 +351,9 @@ void hsw_ips_crtc_debugfs_add(struct intel_crtc *crtc)
 	if (!hsw_crtc_supports_ips(crtc))
 		return;
 
+	debugfs_create_file("i915_ips_false_color", 0644, crtc->base.debugfs_entry,
+			    crtc, &hsw_ips_debugfs_false_color_fops);
+
 	debugfs_create_file("i915_ips_status", 0444, crtc->base.debugfs_entry,
 			    crtc, &hsw_ips_debugfs_status_fops);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 0b5509f268a7..e36f88a39b86 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -418,6 +418,10 @@ struct intel_display {
 		u32 state;
 	} hti;
 
+	struct {
+		bool false_color;
+	} ips;
+
 	struct {
 		struct i915_power_domains domains;
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index f79e8a544f51..9362c42788ef 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1397,7 +1397,8 @@
 #define IVB_FBC_RT_BASE_UPPER		_MMIO(0x7024)
 
 #define IPS_CTL		_MMIO(0x43408)
-#define   IPS_ENABLE	(1 << 31)
+#define   IPS_ENABLE		REG_BIT(31)
+#define   IPS_FALSE_COLOR	REG_BIT(4)
 
 #define MSG_FBC_REND_STATE(fbc_id)	_MMIO_PIPE((fbc_id), 0x50380, 0x50384)
 #define   FBC_REND_NUKE			REG_BIT(2)
-- 
2.39.2

