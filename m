Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B0A577CA672
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Oct 2023 13:17:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7C3A10E1C9;
	Mon, 16 Oct 2023 11:17:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDDE410E1C6
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Oct 2023 11:17:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697455050; x=1728991050;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vX/tRHuMWx3bUjcFrkkcAI84QNrY2yQ3tpXPtBY5q80=;
 b=VYZqOaZY+M8ENlNgB+49q1+ndfcV6sVmUMAk7OfiIFwPzXoofpMNZLW+
 FdrDci8KVrg6I1GwfX+V5m2yBt7/Jh/++WRZGSCd3W8w0W7u+kBHO2s0r
 to67FSzhWCMEveEDdZNg4F4HaKYpCu+ALOxn01MrPKNFmqu5ClMZIL5SJ
 +5ZScqazChLJDs4ln0KIiCWzOziv3wPockG9YHcUc2K7n6Y4lo+pD4oHC
 Tc7lmHy/x4e5QOyGPGJc4mpjDMW8hC9idQkU4eBjZ04N8d4fQmD4gDtGg
 3zJkU1ev27wRJAMuUehx4vrIkQ8ZKvV6zmqBQBFJb53+i9FzyFVzjSaMl g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="385341367"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="385341367"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 04:17:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="821532612"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="821532612"
Received: from dleve-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.252.41.143])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 04:17:29 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Oct 2023 14:16:45 +0300
Message-Id: <20231016111658.3432581-12-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231016111658.3432581-1-jouni.hogander@intel.com>
References: <20231016111658.3432581-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 11/24] drm/i915/display: Move enable_sagv
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_params.c | 3 +++
 drivers/gpu/drm/i915/display/intel_display_params.h | 1 +
 drivers/gpu/drm/i915/display/skl_watermark.c        | 5 +++--
 drivers/gpu/drm/i915/i915_params.c                  | 3 ---
 drivers/gpu/drm/i915/i915_params.h                  | 1 -
 5 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
index 8f222b5bfd8d..efc311837ff1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -50,6 +50,9 @@ intel_display_param_named_unsafe(enable_dc, int, 0400,
 intel_display_param_named_unsafe(enable_dpt, bool, 0400,
 	"Enable display page table (DPT) (default: true)");
 
+intel_display_param_named_unsafe(enable_sagv, bool, 0600,
+	"Enable system agent voltage/frequency scaling (SAGV) (default: true)");
+
 intel_display_param_named_unsafe(enable_fbc, int, 0400,
 	"Enable frame buffer compression for power savings "
 	"(default: -1 (use per-chip default))");
diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
index c67ed16670c3..06e920c9aa36 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.h
+++ b/drivers/gpu/drm/i915/display/intel_display_params.h
@@ -30,6 +30,7 @@ struct drm_i915_private;
 	param(int, vbt_sdvo_panel_type, -1, 0400) \
 	param(int, enable_dc, -1, 0400) \
 	param(bool, enable_dpt, true, 0400) \
+	param(bool, enable_sagv, true, 0600) \
 	param(int, enable_fbc, -1, 0600)	\
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

