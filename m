Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07CDA7D4DDC
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 12:33:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAF9E10E331;
	Tue, 24 Oct 2023 10:33:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6DBC10E32F
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 10:33:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698143584; x=1729679584;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6lWg3/UwCvisXTVFryNaz6Vbo0jyn5QxZQEPRbdRnQY=;
 b=JKzlTvTSUmad/6mtUnAoCZOBtkefdZYi+HGBL5OGxfgI35+ISMfIj/gz
 ecmNSNIqRWkVrKljfnvJNf70EMOLdW238Wnl53vo+8f7+LhkyZspwrl9K
 RI/URznULi8Xxwq3XsmhK6q1xcbU0D44uA3vH8GJ0/4qXnpTQBdTqE1df
 qFGssfgFFPDN9A7Q79PT+pHFt0rvddfaJt3gEDkBNZ3zXzhXodjzrEGPY
 QK0UU7iZsMTc6icOZQQmur0ihnMNkO8DyKlQkq2umBg/zvkmYyRghBtoI
 rtcKJhk8S6/eL+JZ4UJKfkzC+MFpVBau7/wZxk1imttLkdozrr/eBd6kT A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="386839548"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="386839548"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 03:33:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="793439426"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="793439426"
Received: from cpantea-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.252.63.253])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 03:33:02 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Oct 2023 13:32:10 +0300
Message-Id: <20231024103222.302256-12-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231024103222.302256-1-jouni.hogander@intel.com>
References: <20231024103222.302256-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 11/23] drm/i915/display: Move enable_sagv
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

Move enable_sagv module parameter under display and change the parameter
permissions to non-writblase (0400)

v2: Change permissions to 0400

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_params.c | 3 +++
 drivers/gpu/drm/i915/display/intel_display_params.h | 1 +
 drivers/gpu/drm/i915/display/skl_watermark.c        | 5 +++--
 drivers/gpu/drm/i915/i915_params.c                  | 3 ---
 drivers/gpu/drm/i915/i915_params.h                  | 1 -
 5 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
index 9067ffd6d2a9..a98df2afc996 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -50,6 +50,9 @@ intel_display_param_named_unsafe(enable_dc, int, 0400,
 intel_display_param_named_unsafe(enable_dpt, bool, 0400,
 	"Enable display page table (DPT) (default: true)");
 
+intel_display_param_named_unsafe(enable_sagv, bool, 0400,
+	"Enable system agent voltage/frequency scaling (SAGV) (default: true)");
+
 intel_display_param_named_unsafe(enable_fbc, int, 0400,
 	"Enable frame buffer compression for power savings "
 	"(default: -1 (use per-chip default))");
diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
index e5f139239f23..0a7ac416403a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.h
+++ b/drivers/gpu/drm/i915/display/intel_display_params.h
@@ -30,6 +30,7 @@ struct drm_i915_private;
 	param(int, vbt_sdvo_panel_type, -1, 0400) \
 	param(int, enable_dc, -1, 0400) \
 	param(bool, enable_dpt, true, 0400) \
+	param(bool, enable_sagv, true, 0600) \
 	param(int, enable_fbc, -1, 0600) \
 	param(int, enable_psr, -1, 0600) \
 	param(bool, psr_safest_params, false, 0400) \
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 99b8ccdc3dfa..56588d6e24ae 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -412,7 +412,7 @@ static bool intel_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 
-	if (!i915->params.enable_sagv)
+	if (!i915->display.params.enable_sagv)
 		return false;
 
 	if (DISPLAY_VER(i915) >= 12)
@@ -3702,7 +3702,8 @@ static int intel_sagv_status_show(struct seq_file *m, void *unused)
 	};
 
 	seq_printf(m, "SAGV available: %s\n", str_yes_no(intel_has_sagv(i915)));
-	seq_printf(m, "SAGV modparam: %s\n", str_enabled_disabled(i915->params.enable_sagv));
+	seq_printf(m, "SAGV modparam: %s\n",
+		   str_enabled_disabled(i915->display.params.enable_sagv));
 	seq_printf(m, "SAGV status: %s\n", sagv_status[i915->display.sagv.status]);
 	seq_printf(m, "SAGV block time: %d usec\n", i915->display.sagv.block_time_us);
 
diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index 773a0a709fc6..51e706f6e57e 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -82,9 +82,6 @@ i915_param_named_unsafe(enable_hangcheck, bool, 0400,
 	"WARNING: Disabling this can cause system wide hangs. "
 	"(default: true)");
 
-i915_param_named_unsafe(enable_sagv, bool, 0600,
-	"Enable system agent voltage/frequency scaling (SAGV) (default: true)");
-
 i915_param_named_unsafe(force_probe, charp, 0400,
 	"Force probe options for specified supported devices. "
 	"See CONFIG_DRM_I915_FORCE_PROBE for details.");
diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
index b8728990cb8b..066f15783580 100644
--- a/drivers/gpu/drm/i915/i915_params.h
+++ b/drivers/gpu/drm/i915/i915_params.h
@@ -47,7 +47,6 @@ struct drm_printer;
  */
 #define I915_PARAMS_FOR_EACH(param) \
 	param(int, modeset, -1, 0400) \
-	param(bool, enable_sagv, true, 0600) \
 	param(int, disable_power_well, -1, 0400) \
 	param(int, enable_ips, 1, 0600) \
 	param(int, invert_brightness, 0, 0600) \
-- 
2.34.1

