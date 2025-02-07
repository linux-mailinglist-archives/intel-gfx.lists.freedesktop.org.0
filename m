Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C501BA2C0C2
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2025 11:41:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 691A110EAB2;
	Fri,  7 Feb 2025 10:41:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kYhxSPNL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C21B210EAB0;
 Fri,  7 Feb 2025 10:41:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738924897; x=1770460897;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tjDmmSKeIpybed6DhNXALqx3irxrvxz7I48P+eMzm0Y=;
 b=kYhxSPNL0MiDds+bdMU0UoMd38NAJRBDuGhYPQHTogdRPIn4kKDwoX2+
 UsOd7libo/emvZkqumCWkzaLRMkXQ5/KSCUZMh1UXgtuD8Xft9WFugz2Q
 E+pR5/buqmcluF4CFCp3Wag7glwxCi/tWOiGgme65cONTa/NPz0oXRH7y
 EAwYhpwdDOiIS6H/S82Wb6VCAramGxlBJHi5xbMcME1cJCoEiW0cYTvro
 9C2lhnJjC1J7jpnJnzYtUUaxljKxO+b6oSeWd2/CrH/DditC7MnkPhl0Z
 aYSfWiqUTkl8ijdd0t7vwW31MkooA/qkxudZvs2boyWtoWn2gNaLyqRMu w==;
X-CSE-ConnectionGUID: wV5cEXioThy+xv1qmPgZ8Q==
X-CSE-MsgGUID: xD4kzW3cQJaeMh8lQ1sjog==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="50200469"
X-IronPort-AV: E=Sophos;i="6.13,266,1732608000"; d="scan'208";a="50200469"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 02:41:36 -0800
X-CSE-ConnectionGUID: D4Hjua75TIW4fiHcSyEetA==
X-CSE-MsgGUID: PSRnrc4fRV+OjDdlYCh7HQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="111341643"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.122])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 02:41:34 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	suraj.kandpal@intel.com
Subject: [PATCH 3/3] drm/i915/hdcp: Convert platform checks to use
 display->platform
Date: Fri,  7 Feb 2025 12:41:12 +0200
Message-Id: <58bad1e888a57a014acbaae67ccddd4f895091a7.1738924826.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1738924826.git.jani.nikula@intel.com>
References: <cover.1738924826.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Prefer display->platform.<platform> over IS_<PLATFORM>(i915), and
reducate struct drm_i915_private usages while at it.

Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 22 ++++++++++------------
 1 file changed, 10 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 9880192adfe9..3d83db793baf 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -343,7 +343,7 @@ static bool hdcp_key_loadable(struct intel_display *display)
 	 * On HSW and BDW, Display HW loads the Key as soon as Display resumes.
 	 * On all BXT+, SW can load the keys only when the PW#1 is turned on.
 	 */
-	if (IS_HASWELL(i915) || IS_BROADWELL(i915))
+	if (display->platform.haswell || display->platform.broadwell)
 		id = HSW_DISP_PW_GLOBAL;
 	else
 		id = SKL_DISP_PW_1;
@@ -382,7 +382,7 @@ static int intel_hdcp_load_keys(struct intel_display *display)
 	 * On HSW and BDW HW loads the HDCP1.4 Key when Display comes
 	 * out of reset. So if Key is not already loaded, its an error state.
 	 */
-	if (IS_HASWELL(i915) || IS_BROADWELL(i915))
+	if (display->platform.haswell || display->platform.broadwell)
 		if (!(intel_de_read(display, HDCP_KEY_STATUS) & HDCP_KEY_LOAD_DONE))
 			return -ENXIO;
 
@@ -394,7 +394,7 @@ static int intel_hdcp_load_keys(struct intel_display *display)
 	 * process from other platforms. These platforms use the GT Driver
 	 * Mailbox interface.
 	 */
-	if (DISPLAY_VER(display) == 9 && !IS_BROXTON(i915)) {
+	if (DISPLAY_VER(display) == 9 && !display->platform.broxton) {
 		ret = snb_pcode_write(&i915->uncore, SKL_PCODE_LOAD_HDCP_KEYS, 1);
 		if (ret) {
 			drm_err(display->drm,
@@ -2339,18 +2339,16 @@ static int initialize_hdcp_port_data(struct intel_connector *connector,
 
 static bool is_hdcp2_supported(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
 	if (intel_hdcp_gsc_cs_required(display))
 		return true;
 
 	if (!IS_ENABLED(CONFIG_INTEL_MEI_HDCP))
 		return false;
 
-	return (DISPLAY_VER(display) >= 10 ||
-		IS_KABYLAKE(i915) ||
-		IS_COFFEELAKE(i915) ||
-		IS_COMETLAKE(i915));
+	return DISPLAY_VER(display) >= 10 ||
+		display->platform.kabylake ||
+		display->platform.coffeelake ||
+		display->platform.cometlake;
 }
 
 void intel_hdcp_component_init(struct intel_display *display)
@@ -2775,10 +2773,10 @@ void intel_hdcp_info(struct seq_file *m, struct intel_connector *connector)
 static int intel_hdcp_sink_capability_show(struct seq_file *m, void *data)
 {
 	struct intel_connector *connector = m->private;
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	int ret;
 
-	ret = drm_modeset_lock_single_interruptible(&i915->drm.mode_config.connection_mutex);
+	ret = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
 	if (ret)
 		return ret;
 
@@ -2793,7 +2791,7 @@ static int intel_hdcp_sink_capability_show(struct seq_file *m, void *data)
 	__intel_hdcp_info(m, connector, false);
 
 out:
-	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
+	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
 
 	return ret;
 }
-- 
2.39.5

