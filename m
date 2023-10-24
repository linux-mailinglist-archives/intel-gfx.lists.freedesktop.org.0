Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1695C7D4DDA
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 12:33:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B52210E330;
	Tue, 24 Oct 2023 10:33:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F364E10E32D
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 10:33:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698143583; x=1729679583;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OEMy4oc4F2mEVeQYJ1Po2t0WWHLUio59r/KCHwQSQvE=;
 b=aa/IU3D3THSnJYgEx+X2f9ixyPfFyAu5jkTZ9kdN3J+wbddzvZVUbp3r
 nYtlS7ByMISJ7//DGvx0gnXlc7RdMaIW9icJ+BzJs66kCA8x304k87xWM
 MC/iU8tR57enTo6THHZGyupJJxe4gN9QS3Q3j5erF9cACRQoWpTcfIENT
 19fH3Qe/mezYACKfhQh4UlxuPUpz+mU6W9rJLRrTU7VtmwbT2iCxr1ylG
 lILNm7kHB5BI4b/bu498x7F76Yh6USgJK1HgAA1Q+11WOTsLX+UpeepxR
 yJhlnyu4yYigr0HZCaiVSxwxo3pCUVbEmpnz2eq9a+bwAPx125gnJzhKT A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="386839541"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="386839541"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 03:33:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="793439423"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="793439423"
Received: from cpantea-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.252.63.253])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 03:33:00 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Oct 2023 13:32:09 +0300
Message-Id: <20231024103222.302256-11-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231024103222.302256-1-jouni.hogander@intel.com>
References: <20231024103222.302256-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 10/23] drm/i915/display: Move enable_dpt
 module parameter under display
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
Cc: Luca Coelho <luciano.coelho@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_params.c | 3 +++
 drivers/gpu/drm/i915/display/intel_display_params.h | 1 +
 drivers/gpu/drm/i915/display/intel_dpt.c            | 6 ++++--
 drivers/gpu/drm/i915/display/intel_fb.c             | 2 +-
 drivers/gpu/drm/i915/display/skl_universal_plane.c  | 2 +-
 drivers/gpu/drm/i915/i915_params.c                  | 3 ---
 drivers/gpu/drm/i915/i915_params.h                  | 1 -
 7 files changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
index 60fa0bbce77d..9067ffd6d2a9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -47,6 +47,9 @@ intel_display_param_named_unsafe(enable_dc, int, 0400,
 	"(-1=auto [default]; 0=disable; 1=up to DC5; 2=up to DC6; "
 	"3=up to DC5 with DC3CO; 4=up to DC6 with DC3CO)");
 
+intel_display_param_named_unsafe(enable_dpt, bool, 0400,
+	"Enable display page table (DPT) (default: true)");
+
 intel_display_param_named_unsafe(enable_fbc, int, 0400,
 	"Enable frame buffer compression for power savings "
 	"(default: -1 (use per-chip default))");
diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
index 2cca06ad7d71..e5f139239f23 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.h
+++ b/drivers/gpu/drm/i915/display/intel_display_params.h
@@ -29,6 +29,7 @@ struct drm_i915_private;
 	param(int, panel_use_ssc, -1, 0600) \
 	param(int, vbt_sdvo_panel_type, -1, 0400) \
 	param(int, enable_dc, -1, 0400) \
+	param(bool, enable_dpt, true, 0400) \
 	param(int, enable_fbc, -1, 0600) \
 	param(int, enable_psr, -1, 0600) \
 	param(bool, psr_safest_params, false, 0400) \
diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
index 48582b31b7f7..2b067cb952f0 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt.c
+++ b/drivers/gpu/drm/i915/display/intel_dpt.c
@@ -332,11 +332,13 @@ void intel_dpt_configure(struct intel_crtc *crtc)
 
 			intel_de_rmw(i915, PLANE_CHICKEN(pipe, plane_id),
 				     PLANE_CHICKEN_DISABLE_DPT,
-				     i915->params.enable_dpt ? 0 : PLANE_CHICKEN_DISABLE_DPT);
+				     i915->display.params.enable_dpt ? 0 :
+				     PLANE_CHICKEN_DISABLE_DPT);
 		}
 	} else if (DISPLAY_VER(i915) == 13) {
 		intel_de_rmw(i915, CHICKEN_MISC_2,
 			     CHICKEN_MISC_DISABLE_DPT,
-			     i915->params.enable_dpt ? 0 : CHICKEN_MISC_DISABLE_DPT);
+			     i915->display.params.enable_dpt ? 0 :
+			     CHICKEN_MISC_DISABLE_DPT);
 	}
 }
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 93b2260d7005..c1777ea35761 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -764,7 +764,7 @@ bool intel_fb_modifier_uses_dpt(struct drm_i915_private *i915, u64 modifier)
 
 bool intel_fb_uses_dpt(const struct drm_framebuffer *fb)
 {
-	return fb && to_i915(fb->dev)->params.enable_dpt &&
+	return fb && to_i915(fb->dev)->display.params.enable_dpt &&
 		intel_fb_modifier_uses_dpt(to_i915(fb->dev), fb->modifier);
 }
 
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 49e9d40d5e67..68035675ae3c 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2488,7 +2488,7 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
 		goto error;
 	}
 
-	if (!dev_priv->params.enable_dpt &&
+	if (!dev_priv->display.params.enable_dpt &&
 	    intel_fb_modifier_uses_dpt(dev_priv, fb->modifier)) {
 		drm_dbg_kms(&dev_priv->drm, "DPT disabled, skipping initial FB\n");
 		goto error;
diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index 3d370e43df3c..773a0a709fc6 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -95,9 +95,6 @@ i915_param_named_unsafe(disable_power_well, int, 0400,
 
 i915_param_named_unsafe(enable_ips, int, 0400, "Enable IPS (default: true)");
 
-i915_param_named_unsafe(enable_dpt, bool, 0400,
-	"Enable display page table (DPT) (default: true)");
-
 i915_param_named_unsafe(load_detect_test, bool, 0400,
 	"Force-enable the VGA load detect code for testing (default:false). "
 	"For developers only.");
diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
index c3487b9d6937..b8728990cb8b 100644
--- a/drivers/gpu/drm/i915/i915_params.h
+++ b/drivers/gpu/drm/i915/i915_params.h
@@ -47,7 +47,6 @@ struct drm_printer;
  */
 #define I915_PARAMS_FOR_EACH(param) \
 	param(int, modeset, -1, 0400) \
-	param(bool, enable_dpt, true, 0400) \
 	param(bool, enable_sagv, true, 0600) \
 	param(int, disable_power_well, -1, 0400) \
 	param(int, enable_ips, 1, 0600) \
-- 
2.34.1

