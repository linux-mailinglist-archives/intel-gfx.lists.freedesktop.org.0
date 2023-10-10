Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C15237BFA0C
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 13:43:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4A0610E340;
	Tue, 10 Oct 2023 11:43:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA91F10E33D
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 11:43:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696938181; x=1728474181;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LBblXtp2E/6IRqOqc2SoeGJBBl5BETYaaPS0S2Otazo=;
 b=HRi4cGxjm/j5es2ZswpntPSyFsk3/70Xg998UfPXd40jxBpBiB7YCzl2
 AGNctyTcsIU44kbqNZCjFz4AsOFhFu4+bdNaeQw6n9I/+ZtRsujMr/YX7
 KHDbbHl1fdWM9AMv76FPxgE26Bi1Acum2tWR90VjOJqq7Tbvh4mig3mMX
 f3FRB7hVjIcE/zWqQ7GDSQAkn0xPGmR9qLU4XWYhEZdGbLnrVvQC/4kCs
 qQCOgc5XGF5kG6ijIueGzEBwBvmAbd4rkhQCD04QJ/sojThA6wRS7Mf6z
 SCiWXEBYPkyRMJIQcFqO6l5IAl1WlY1onevkyccJAijBg8zSDpQ6IbreN w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="470635449"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="470635449"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 04:43:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="869655347"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="869655347"
Received: from snutt-mobl1.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.252.57.138])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 04:43:00 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Oct 2023 14:41:05 +0300
Message-Id: <20231010114120.2504103-11-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231010114120.2504103-1-jouni.hogander@intel.com>
References: <20231010114120.2504103-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/25] drm/i915/display: Move enable_dpt module
 parameter under display
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

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
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
index 7a528e72c970..8f222b5bfd8d 100644
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
index 8721179b3f09..c67ed16670c3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.h
+++ b/drivers/gpu/drm/i915/display/intel_display_params.h
@@ -29,6 +29,7 @@ struct drm_i915_private;
 	param(int, panel_use_ssc, -1, 0600) \
 	param(int, vbt_sdvo_panel_type, -1, 0400) \
 	param(int, enable_dc, -1, 0400) \
+	param(bool, enable_dpt, true, 0400) \
 	param(int, enable_fbc, -1, 0600)	\
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
index e7678571b0d7..f44d07b6d6d7 100644
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
index 245a64332cc7..6fb5612bff2b 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2489,7 +2489,7 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
 		goto error;
 	}
 
-	if (!dev_priv->params.enable_dpt &&
+	if (!dev_priv->display.params.enable_dpt &&
 	    intel_fb_modifier_uses_dpt(dev_priv, fb->modifier)) {
 		drm_dbg_kms(&dev_priv->drm, "DPT disabled, skipping initial FB\n");
 		goto error;
diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index b35645e60024..90dbf5f75ca7 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -95,9 +95,6 @@ i915_param_named_unsafe(disable_power_well, int, 0400,
 
 i915_param_named_unsafe(enable_ips, int, 0400, "Enable IPS (default: true)");
 
-i915_param_named_unsafe(enable_dpt, bool, 0400,
-	"Enable display page table (DPT) (default: true)");
-
 i915_param_named(fastboot, int, 0400,
 	"Try to skip unnecessary mode sets at boot time "
 	"(0=disabled, 1=enabled) "
diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
index 2decb66f3e34..8f1dda28e1e1 100644
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

