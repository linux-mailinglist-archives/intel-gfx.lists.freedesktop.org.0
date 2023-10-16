Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 946997CA671
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Oct 2023 13:17:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB2A310E1C8;
	Mon, 16 Oct 2023 11:17:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D029210E1BB
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Oct 2023 11:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697455053; x=1728991053;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=w1E7xcgpG8yWEOuJ4r3spAVmjTfQSF03FKcJHu2LWuA=;
 b=mzB4FltBpMQl35IvxVNMMSXgYM0WPTmpbLyHuvAz0wBJq04ji2Pfpqpj
 I1cxnoUK3n7o/8D8UiZoymhw5/yvpHnNcV6U8yIiP0Q0SeJ+WeGjTxv+d
 8m+lfmEvOxD/Hk6l3Jygs7wTG75avM9W22Ta6nh8VQnyJYsUrF8qAgRPw
 zVuS8RDwQvRJtXmigqKyOt0niMkfWSxp8YhdpNjm5WT60ks1PKzmPrfO+
 BGShLZZd2WKPos82UuJEULrqOoJNRds/vPtubKrvRwFPMEcrJgtar+lSH
 uDDaLsrCs2CTIxTTEHq9uOtZciq/Mol/jc4hug+4w6bLs9/IfzJ2MQBNM w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="385341369"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="385341369"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 04:17:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="821532631"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="821532631"
Received: from dleve-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.252.41.143])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 04:17:32 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Oct 2023 14:16:47 +0300
Message-Id: <20231016111658.3432581-14-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231016111658.3432581-1-jouni.hogander@intel.com>
References: <20231016111658.3432581-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 13/24] drm/i915/display: Move enable_ips
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
 drivers/gpu/drm/i915/display/hsw_ips.c              | 4 ++--
 drivers/gpu/drm/i915/display/intel_display_params.c | 2 ++
 drivers/gpu/drm/i915/display/intel_display_params.h | 1 +
 drivers/gpu/drm/i915/i915_params.c                  | 2 --
 drivers/gpu/drm/i915/i915_params.h                  | 1 -
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/hsw_ips.c b/drivers/gpu/drm/i915/display/hsw_ips.c
index 7dc38ac02092..611a7d6ef80c 100644
--- a/drivers/gpu/drm/i915/display/hsw_ips.c
+++ b/drivers/gpu/drm/i915/display/hsw_ips.c
@@ -193,7 +193,7 @@ bool hsw_crtc_state_ips_capable(const struct intel_crtc_state *crtc_state)
 	if (!hsw_crtc_supports_ips(crtc))
 		return false;
 
-	if (!i915->params.enable_ips)
+	if (!i915->display.params.enable_ips)
 		return false;
 
 	if (crtc_state->pipe_bpp > 24)
@@ -329,7 +329,7 @@ static int hsw_ips_debugfs_status_show(struct seq_file *m, void *unused)
 	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
 
 	seq_printf(m, "Enabled by kernel parameter: %s\n",
-		   str_yes_no(i915->params.enable_ips));
+		   str_yes_no(i915->display.params.enable_ips));
 
 	if (DISPLAY_VER(i915) >= 8) {
 		seq_puts(m, "Currently: unknown\n");
diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
index 86b46cff1718..c2399e11203c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -57,6 +57,8 @@ intel_display_param_named_unsafe(disable_power_well, int, 0400,
 	"Disable display power wells when possible "
 	"(-1=auto [default], 0=power wells always on, 1=power wells disabled when possible)");
 
+i915_param_named_unsafe(enable_ips, int, 0400, "Enable IPS (default: true)");
+
 intel_display_param_named_unsafe(enable_fbc, int, 0400,
 	"Enable frame buffer compression for power savings "
 	"(default: -1 (use per-chip default))");
diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
index 998f99a2857c..11c21a3a3124 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.h
+++ b/drivers/gpu/drm/i915/display/intel_display_params.h
@@ -32,6 +32,7 @@ struct drm_i915_private;
 	param(bool, enable_dpt, true, 0400) \
 	param(bool, enable_sagv, true, 0600) \
 	param(int, disable_power_well, -1, 0400) \
+	param(int, enable_ips, 1, 0600) \
 	param(int, enable_fbc, -1, 0600)	\
 	param(int, enable_psr, -1, 0600) \
 	param(bool, psr_safest_params, false, 0400) \
diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index eab02f71a4e5..54dcce97da2a 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -86,8 +86,6 @@ i915_param_named_unsafe(force_probe, charp, 0400,
 	"Force probe options for specified supported devices. "
 	"See CONFIG_DRM_I915_FORCE_PROBE for details.");
 
-i915_param_named_unsafe(enable_ips, int, 0400, "Enable IPS (default: true)");
-
 i915_param_named_unsafe(load_detect_test, bool, 0400,
 	"Force-enable the VGA load detect code for testing (default:false). "
 	"For developers only.");
diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
index 060464df03c2..18bb8a93e0e8 100644
--- a/drivers/gpu/drm/i915/i915_params.h
+++ b/drivers/gpu/drm/i915/i915_params.h
@@ -47,7 +47,6 @@ struct drm_printer;
  */
 #define I915_PARAMS_FOR_EACH(param) \
 	param(int, modeset, -1, 0400) \
-	param(int, enable_ips, 1, 0600) \
 	param(int, invert_brightness, 0, 0600) \
 	param(int, enable_guc, -1, 0400) \
 	param(int, guc_log_level, -1, 0400) \
-- 
2.34.1

