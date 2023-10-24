Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 055F27D5010
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 14:42:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F4C010E382;
	Tue, 24 Oct 2023 12:42:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB80810E381
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 12:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698151342; x=1729687342;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=n1p6PcKHh2nlxR+kbICAaiJcE9703Gp9Nu3/W995pRk=;
 b=TwDe5FWCykHgUX88BwIK5E0vuPfWGuzVY+oxOsDfWm3BfdM7ycSBxL10
 7MqbZyJ5B9heHkN6rFy3FMo3I7ftteZTk50vL8lOhh/HOXt4qSoDFRt6P
 oX84McAhavI+YP/8s3QxZUd30GdSMqa7MHYO8nP7cup7dlwKtytH3TvlV
 xT4Fa4i4wd0ylRR1ZHRIy04B+yYwhL8YNoMTwBIEebchkSwCHn5zKbv3S
 gKQFtiMFz2Z8MPUgfZZiny8vAYjnMXDQ84RFrEsLRaDXOl35B+VLNlwmt
 +rs8tZcoCevzbCt0DNBGnGL2vUkuPAvS/ccTyr/BgcttaU0TtKe441L8G A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="386856742"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="386856742"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 05:42:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="758464505"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="758464505"
Received: from cpantea-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.252.63.253])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 05:42:20 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Oct 2023 15:41:09 +0300
Message-Id: <20231024124109.384973-24-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231024124109.384973-1-jouni.hogander@intel.com>
References: <20231024124109.384973-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 23/23] drm/i915/display: Move enable_dp_mst
 under display
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
 drivers/gpu/drm/i915/display/intel_dp.c             | 6 +++---
 drivers/gpu/drm/i915/i915_params.c                  | 3 ---
 drivers/gpu/drm/i915/i915_params.h                  | 1 -
 5 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
index f82f5bed69bc..11e03cfb774d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -93,6 +93,9 @@ intel_display_param_named(verbose_state_checks, bool, 0400,
 intel_display_param_named_unsafe(nuclear_pageflip, bool, 0400,
 	"Force enable atomic functionality on platforms that don't have full support yet.");
 
+intel_display_param_named_unsafe(enable_dp_mst, bool, 0400,
+	"Enable multi-stream transport (MST) for new DisplayPort sinks. (default: true)");
+
 intel_display_param_named_unsafe(enable_fbc, int, 0400,
 	"Enable frame buffer compression for power savings "
 	"(default: -1 (use per-chip default))");
diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
index 40aed14d18be..6206cc51df04 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.h
+++ b/drivers/gpu/drm/i915/display/intel_display_params.h
@@ -41,6 +41,7 @@ struct drm_i915_private;
 	param(bool, disable_display, false, 0400) \
 	param(bool, verbose_state_checks, true, 0400) \
 	param(bool, nuclear_pageflip, false, 0400) \
+	param(bool, enable_dp_mst, true, 0600) \
 	param(int, enable_fbc, -1, 0600) \
 	param(int, enable_psr, -1, 0600) \
 	param(bool, psr_safest_params, false, 0400) \
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1891c0cc187d..e920524bec51 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3771,7 +3771,7 @@ intel_dp_can_mst(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 
-	return i915->params.enable_dp_mst &&
+	return i915->display.params.enable_dp_mst &&
 		intel_dp_mst_source_support(intel_dp) &&
 		drm_dp_read_mst_cap(&intel_dp->aux, intel_dp->dpcd);
 }
@@ -3789,13 +3789,13 @@ intel_dp_configure_mst(struct intel_dp *intel_dp)
 		    encoder->base.base.id, encoder->base.name,
 		    str_yes_no(intel_dp_mst_source_support(intel_dp)),
 		    str_yes_no(sink_can_mst),
-		    str_yes_no(i915->params.enable_dp_mst));
+		    str_yes_no(i915->display.params.enable_dp_mst));
 
 	if (!intel_dp_mst_source_support(intel_dp))
 		return;
 
 	intel_dp->is_mst = sink_can_mst &&
-		i915->params.enable_dp_mst;
+		i915->display.params.enable_dp_mst;
 
 	drm_dp_mst_topology_mgr_set_mst(&intel_dp->mst_mgr,
 					intel_dp->is_mst);
diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index 18424873442d..de43048543e8 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -114,9 +114,6 @@ i915_param_named_unsafe(dmc_firmware_path, charp, 0400,
 i915_param_named_unsafe(gsc_firmware_path, charp, 0400,
 	"GSC firmware path to use instead of the default one");
 
-i915_param_named_unsafe(enable_dp_mst, bool, 0400,
-	"Enable multi-stream transport (MST) for new DisplayPort sinks. (default: true)");
-
 #if IS_ENABLED(CONFIG_DRM_I915_DEBUG)
 i915_param_named_unsafe(inject_probe_failure, uint, 0400,
 	"Force an error after a number of failure check points (0:disabled (default), N:force failure at the Nth failure check point)");
diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
index c7fff571db2c..1315d7fac850 100644
--- a/drivers/gpu/drm/i915/i915_params.h
+++ b/drivers/gpu/drm/i915/i915_params.h
@@ -64,7 +64,6 @@ struct drm_printer;
 	/* leave bools at the end to not create holes */ \
 	param(bool, enable_hangcheck, true, 0600) \
 	param(bool, error_capture, true, IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR) ? 0600 : 0) \
-	param(bool, enable_dp_mst, true, 0600) \
 	param(bool, enable_gvt, false, IS_ENABLED(CONFIG_DRM_I915_GVT) ? 0400 : 0)
 
 #define MEMBER(T, member, ...) T member;
-- 
2.34.1

