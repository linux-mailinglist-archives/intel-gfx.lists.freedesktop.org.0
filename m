Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E55C7BFA0B
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 13:43:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA4CF10E347;
	Tue, 10 Oct 2023 11:43:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2EC910E344
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 11:43:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696938183; x=1728474183;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pU/XOZ4glCp3zPDs39z6CbUSBpC7wR7kjIJstDSs0Oo=;
 b=UVh+2TpUAskzfWrLeqrEV2TAEY35PTa/xo46VdJV7kSs4B7PRsbQjV40
 s+b9u5cwWyOtD9i7M7c9d4hdhCiBfRPCAdEdS47/57kekjApOPv46h6uj
 r+aZyGkcGiXwVZdr3r+i7epC9cw7e6XrSp8XGvkVMFj8axToGas8fDu6d
 oYgmvpzSPCwqXHc7TVClDklL3BoYdkmGm9BswivbC2HHVHs2fcXZIBPdt
 cRt+eFAJC7QTa5T9pURx7+ckCvziIoM8HomWiJdodDY1co3cb8fLVmxux
 Jz4lP/ig3V76xaunmIlV51NnziIhcAQdCDUQjhYHZCX52+WVHm7TECNx6 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="470635451"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="470635451"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 04:43:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="869655353"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="869655353"
Received: from snutt-mobl1.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.252.57.138])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 04:43:02 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Oct 2023 14:41:06 +0300
Message-Id: <20231010114120.2504103-12-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231010114120.2504103-1-jouni.hogander@intel.com>
References: <20231010114120.2504103-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/25] drm/i915/display: Move enable_sagv module
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
index 90dbf5f75ca7..c117a3c1c590 100644
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
index 8f1dda28e1e1..e90e34cc8b2a 100644
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

