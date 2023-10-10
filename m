Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 998C17BFA12
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 13:43:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CBA210E34A;
	Tue, 10 Oct 2023 11:43:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9A8B10E33B
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 11:43:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696938191; x=1728474191;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vImk5ZI/XxezTDX9cKep0bMUIid7qlIwg4e9cqWhPZQ=;
 b=irqCbx1iMLsXX/zG7IVWRuVgVPPmrh1nww2ObZan3Ddtok3/S+hcmxWO
 mcIdC6zCuJTc6h3rE2kmMLhL9lT7La5WLoMFtTPebth4h6AK+BoX5d+zD
 UqZ4CB8yLMVISLHgRdJ5nmYnxu2B2heyQxvoCvYYVQYyeDYYsykpGWTVP
 xAwLKFr4lBfh6b+XuuU/VTZsA4luq8FuVY+0W10XhWuGL3YsfdCBd6Er8
 hRxj2WFX0S6ia92yH1+VZ8Vu205TVoulnqAp3FkJS7fqW4R3Pt4fKmlSX
 h3evtbcwuqcilpDy8GnA09XzA8dhyiR/b2aRLZFcuEJGB0Zk3etwfa81s Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="470635465"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="470635465"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 04:43:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="869655376"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="869655376"
Received: from snutt-mobl1.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.252.57.138])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 04:43:10 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Oct 2023 14:41:11 +0300
Message-Id: <20231010114120.2504103-17-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231010114120.2504103-1-jouni.hogander@intel.com>
References: <20231010114120.2504103-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 16/25] drm/i915/display: Move fastboot module
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
 drivers/gpu/drm/i915/display/intel_display.c        | 4 ++--
 drivers/gpu/drm/i915/display/intel_display_params.c | 5 +++++
 drivers/gpu/drm/i915/display/intel_display_params.h | 1 +
 drivers/gpu/drm/i915/i915_params.c                  | 5 -----
 drivers/gpu/drm/i915/i915_params.h                  | 1 -
 5 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e309fda108ef..c59eae45512c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4988,8 +4988,8 @@ pipe_config_mismatch(bool fastset, const struct intel_crtc *crtc,
 
 static bool fastboot_enabled(struct drm_i915_private *dev_priv)
 {
-	if (dev_priv->params.fastboot != -1)
-		return dev_priv->params.fastboot;
+	if (dev_priv->display.params.fastboot != -1)
+		return dev_priv->display.params.fastboot;
 
 	/* Enable fastboot by default on Skylake and newer */
 	if (DISPLAY_VER(dev_priv) >= 9)
diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
index a16adfa36b64..de0edc245ca1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -72,6 +72,11 @@ intel_display_param_named_unsafe(edp_vswing, int, 0400,
 	"(0=use value from vbt [default], 1=low power swing(200mV),"
 	"2=default swing(400mV))");
 
+intel_display_param_named(fastboot, int, 0400,
+	"Try to skip unnecessary mode sets at boot time "
+	"(0=disabled, 1=enabled) "
+	"Default: -1 (use per-chip default)");
+
 intel_display_param_named_unsafe(enable_fbc, int, 0400,
 	"Enable frame buffer compression for power savings "
 	"(default: -1 (use per-chip default))");
diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
index 9e749ea97707..05b5d621c492 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.h
+++ b/drivers/gpu/drm/i915/display/intel_display_params.h
@@ -35,6 +35,7 @@ struct drm_i915_private;
 	param(int, enable_ips, 1, 0600) \
 	param(int, invert_brightness, 0, 0600) \
 	param(int, edp_vswing, 0, 0400) \
+	param(int, fastboot, -1, 0600)	\
 	param(int, enable_fbc, -1, 0600)	\
 	param(int, enable_psr, -1, 0600) \
 	param(bool, psr_safest_params, false, 0400) \
diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index 29e454fa3c79..6b9df9f9d842 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -86,11 +86,6 @@ i915_param_named_unsafe(force_probe, charp, 0400,
 	"Force probe options for specified supported devices. "
 	"See CONFIG_DRM_I915_FORCE_PROBE for details.");
 
-i915_param_named(fastboot, int, 0400,
-	"Try to skip unnecessary mode sets at boot time "
-	"(0=disabled, 1=enabled) "
-	"Default: -1 (use per-chip default)");
-
 i915_param_named_unsafe(load_detect_test, bool, 0400,
 	"Force-enable the VGA load detect code for testing (default:false). "
 	"For developers only.");
diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
index be23484dab6a..c33edaee5032 100644
--- a/drivers/gpu/drm/i915/i915_params.h
+++ b/drivers/gpu/drm/i915/i915_params.h
@@ -57,7 +57,6 @@ struct drm_printer;
 	param(int, mmio_debug, -IS_ENABLED(CONFIG_DRM_I915_DEBUG_MMIO), 0600) \
 	param(unsigned int, reset, 3, 0600) \
 	param(unsigned int, inject_probe_failure, 0, 0) \
-	param(int, fastboot, -1, 0600) \
 	param(int, enable_dpcd_backlight, -1, 0600) \
 	param(char *, force_probe, CONFIG_DRM_I915_FORCE_PROBE, 0400) \
 	param(unsigned int, request_timeout_ms, CONFIG_DRM_I915_REQUEST_TIMEOUT, CONFIG_DRM_I915_REQUEST_TIMEOUT ? 0600 : 0) \
-- 
2.34.1

