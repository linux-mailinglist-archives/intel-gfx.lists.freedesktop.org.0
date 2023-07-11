Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2074274E2AF
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jul 2023 02:42:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A9CC10E16D;
	Tue, 11 Jul 2023 00:42:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8519910E16D
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jul 2023 00:42:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689036170; x=1720572170;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=g7GTk/g8Zsf0hEzuFRNj9pmRloB1heRtP+n8/wB5jk4=;
 b=KbsWZmqyE6PjG4nZrjG6YQd4WVf8+9Go5/qptknNmd4QmVp5lcJ1m6KS
 1x0BKDlB/o7CgRGX3ge15839xcSYmoYyyKyZaOv7smNeFg9myirZjpKOs
 5gr/sc1Q2pGLxFNnXPS8diGoN3nrvZMjcJ0TrVgP3EhHDeni8DdQM5SFP
 +VogpU8eIhbF3Z097u0WM7EIwZiX7JiWNFBMaIL7H124ABVWs0s8+7pNq
 DYhV51ZMVhBj+VgGwPU7cMiBjGpM11O5kKaVQLOs+SFdu1cyUY1tXzzwv
 p4/epoPnAlPwPESmUaa9pQfYhOIQzZELrmhk8zEQLy+vL1f8tZ9a+iOOR w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="367071753"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="367071753"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 17:42:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="1051568263"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="1051568263"
Received: from vsrini4-xps-8920.iind.intel.com ([10.223.163.30])
 by fmsmga005.fm.intel.com with ESMTP; 10 Jul 2023 17:42:26 -0700
From: Vidya Srinivas <vidya.srinivas@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Jul 2023 05:55:29 +0530
Message-Id: <20230711002529.9742-1-vidya.srinivas@intel.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Allow panel drrs modes to have
 differing sync polarities
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

v2: Add Jani Nikula's change for quirk for sync polarity

CC: Jani Nikula <jani.nikula@intel.com>
Credits-to: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  2 +-
 drivers/gpu/drm/i915/display/intel_panel.c   | 10 ++++++----
 2 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 43cba98f7753..088b45e032aa 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5234,7 +5234,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
 			      DRM_MODE_FLAG_INTERLACE);
 
-	if (!PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_MODE_SYNC_FLAGS)) {
+	if (!PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_MODE_SYNC_FLAGS) && !fastset) {
 		PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
 				      DRM_MODE_FLAG_PHSYNC);
 		PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 9232a305b1e6..b9eeaedabd22 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -112,10 +112,12 @@ intel_panel_fixed_mode(struct intel_connector *connector,
 static bool is_alt_drrs_mode(const struct drm_display_mode *mode,
 			     const struct drm_display_mode *preferred_mode)
 {
-	return drm_mode_match(mode, preferred_mode,
-			      DRM_MODE_MATCH_TIMINGS |
-			      DRM_MODE_MATCH_FLAGS |
-			      DRM_MODE_MATCH_3D_FLAGS) &&
+	u32 sync_flags = DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_NHSYNC |
+		DRM_MODE_FLAG_PVSYNC | DRM_MODE_FLAG_NVSYNC;
+
+	return (mode->flags & ~sync_flags) == (preferred_mode->flags & ~sync_flags) &&
+		mode->hdisplay == preferred_mode->hdisplay &&
+		mode->vdisplay == preferred_mode->vdisplay &&
 		mode->clock != preferred_mode->clock;
 }
 
-- 
2.33.0

