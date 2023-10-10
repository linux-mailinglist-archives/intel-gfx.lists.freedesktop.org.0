Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 047DE7BFA14
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 13:43:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43FC710E341;
	Tue, 10 Oct 2023 11:43:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D799810E34C
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 11:43:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696938196; x=1728474196;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=U2oqcCWaWR3QQxd8I2URclpxGnVbhZRx7o1mezKDbl8=;
 b=esnnyPQLO3rIPT+MRcsrJ7haQrfa245bEcfD7FwlOAqmd1npnpWyxDJ9
 eZLV2lIl5+jnO2blTt6XKV1wXIzZguHNaautADf/bXAme3ml6Ge0xEk+x
 8qX0cQyrJ8/XzbX/5LEoLFSc5/N6BbZEPVI9nPk4JOlLxR2Xm10Egi01I
 ii7kPy75JYmrlBasiKydKA5n3KxN2dh2Tb19FlifxlTHFaN5Nz3OuzPMp
 UZhV2LyasiHYPofc6+xi8NEort6SCuzMn65tbeB4mhARvU926xXsXyFVB
 HOsxBUvbRgAcPpElgHkMInaefcktqkT6kQ+mY4s2vW9r/qsnvJP0NBI6L Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="470635474"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="470635474"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 04:43:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="869655398"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="869655398"
Received: from snutt-mobl1.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.252.57.138])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 04:43:15 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Oct 2023 14:41:14 +0300
Message-Id: <20231010114120.2504103-20-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231010114120.2504103-1-jouni.hogander@intel.com>
References: <20231010114120.2504103-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 19/25] drm/i915/display: Move
 force_reset_modeset_test parameter under display
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
 drivers/gpu/drm/i915/display/intel_display_params.c | 4 ++++
 drivers/gpu/drm/i915/display/intel_display_params.h | 1 +
 drivers/gpu/drm/i915/display/intel_display_reset.c  | 2 +-
 drivers/gpu/drm/i915/i915_params.c                  | 4 ----
 drivers/gpu/drm/i915/i915_params.h                  | 2 +-
 5 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
index 0f98f6e56e17..f9129ef42e1d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -85,6 +85,10 @@ intel_display_param_named_unsafe(load_detect_test, bool, 0400,
 	"Force-enable the VGA load detect code for testing (default:false). "
 	"For developers only.");
 
+intel_display_param_named_unsafe(force_reset_modeset_test, bool, 0400,
+	"Force a modeset during gpu reset for testing (default:false). "
+	"For developers only.");
+
 intel_display_param_named_unsafe(enable_fbc, int, 0400,
 	"Enable frame buffer compression for power savings "
 	"(default: -1 (use per-chip default))");
diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
index 56af1bf98718..93f59e5df609 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.h
+++ b/drivers/gpu/drm/i915/display/intel_display_params.h
@@ -38,6 +38,7 @@ struct drm_i915_private;
 	param(int, fastboot, -1, 0600)	\
 	param(int, enable_dpcd_backlight, -1, 0600) \
 	param(bool, load_detect_test, false, 0600) \
+	param(bool, force_reset_modeset_test, false, 0600) \
 	param(int, enable_fbc, -1, 0600)	\
 	param(int, enable_psr, -1, 0600) \
 	param(bool, psr_safest_params, false, 0400) \
diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
index 17178d5d7788..c2c347b22448 100644
--- a/drivers/gpu/drm/i915/display/intel_display_reset.c
+++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
@@ -29,7 +29,7 @@ void intel_display_reset_prepare(struct drm_i915_private *dev_priv)
 		return;
 
 	/* reset doesn't touch the display */
-	if (!dev_priv->params.force_reset_modeset_test &&
+	if (!dev_priv->display.params.force_reset_modeset_test &&
 	    !gpu_reset_clobbers_display(dev_priv))
 		return;
 
diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index cb56973a2394..497e39b1dcfb 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -86,10 +86,6 @@ i915_param_named_unsafe(force_probe, charp, 0400,
 	"Force probe options for specified supported devices. "
 	"See CONFIG_DRM_I915_FORCE_PROBE for details.");
 
-i915_param_named_unsafe(force_reset_modeset_test, bool, 0400,
-	"Force a modeset during gpu reset for testing (default:false). "
-	"For developers only.");
-
 i915_param_named(disable_display, bool, 0400,
 	"Disable display (default: false)");
 
diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
index cf5448bbc087..5fa77ecb8d31 100644
--- a/drivers/gpu/drm/i915/i915_params.h
+++ b/drivers/gpu/drm/i915/i915_params.h
@@ -63,7 +63,7 @@ struct drm_printer;
 	param(unsigned int, lmem_bar_size, 0, 0400) \
 	/* leave bools at the end to not create holes */ \
 	param(bool, enable_hangcheck, true, 0600) \
-	param(bool, force_reset_modeset_test, false, 0600) \
+	param(bool, force_reset_modeset_test, false, 0600)		\
 	param(bool, error_capture, true, IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR) ? 0600 : 0) \
 	param(bool, disable_display, false, 0400) \
 	param(bool, verbose_state_checks, true, 0) \
-- 
2.34.1

