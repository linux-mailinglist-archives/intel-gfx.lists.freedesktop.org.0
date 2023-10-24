Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E102A7D5011
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 14:42:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5558810E385;
	Tue, 24 Oct 2023 12:42:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1007510E380
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 12:42:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698151341; x=1729687341;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DKMO6RwwsCpejMe4GyrBJt8jIQfq7YFcaCZ4k79N2m4=;
 b=A3IbIE+a9anFA+Fh1M8kfoiPmqlg+KQUJ5YJAiMvnNPrQ4hDoACnNfB3
 TLvdMIpKhmW2ri8ZZCTlzYmwS5Lpn/OKvNjxA5mMWJtNSef9orAgpYieQ
 U8+qly6omC8qSyr+sTDDXHMyjMNqGDbgtE/lt3VYgyg2tD4qm98OReZpa
 AoXbwfJVKKHN1mSd1gRe3f5+8lsPgHOgyfS6kT3xSLQ7yH2/cfUIjV4Qo
 v/mu+m7U3uT6odvoYz5wIWoIrjj+dkHaqIEriSZoHcN/mzMUu1w4PwDX2
 DVjhxvqm2Tiq//1mpHckAjgmTVKnyng5W7rQQqOTtudwtIJo43NHoYeBG Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="386856737"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="386856737"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 05:42:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="758464502"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="758464502"
Received: from cpantea-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.252.63.253])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 05:42:19 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Oct 2023 15:41:08 +0300
Message-Id: <20231024124109.384973-23-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231024124109.384973-1-jouni.hogander@intel.com>
References: <20231024124109.384973-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 22/23] drm/i915/display: Move
 nuclear_pageflip under display
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
 drivers/gpu/drm/i915/display/intel_display_device.c | 2 +-
 drivers/gpu/drm/i915/display/intel_display_params.c | 3 +++
 drivers/gpu/drm/i915/display/intel_display_params.h | 1 +
 drivers/gpu/drm/i915/i915_params.c                  | 3 ---
 drivers/gpu/drm/i915/i915_params.h                  | 1 -
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 50841818fb59..0b522c6a8d6f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1113,7 +1113,7 @@ void intel_display_device_info_runtime_init(struct drm_i915_private *i915)
 	}
 
 	/* Disable nuclear pageflip by default on pre-g4x */
-	if (!i915->params.nuclear_pageflip &&
+	if (!i915->display.params.nuclear_pageflip &&
 	    DISPLAY_VER(i915) < 5 && !IS_G4X(i915))
 		i915->drm.driver_features &= ~DRIVER_ATOMIC;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
index cae1449e9b06..f82f5bed69bc 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -90,6 +90,9 @@ intel_display_param_named(disable_display, bool, 0400,
 intel_display_param_named(verbose_state_checks, bool, 0400,
 	"Enable verbose logs (ie. WARN_ON()) in case of unexpected hw state conditions.");
 
+intel_display_param_named_unsafe(nuclear_pageflip, bool, 0400,
+	"Force enable atomic functionality on platforms that don't have full support yet.");
+
 intel_display_param_named_unsafe(enable_fbc, int, 0400,
 	"Enable frame buffer compression for power savings "
 	"(default: -1 (use per-chip default))");
diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
index 46ec097d43be..40aed14d18be 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.h
+++ b/drivers/gpu/drm/i915/display/intel_display_params.h
@@ -40,6 +40,7 @@ struct drm_i915_private;
 	param(bool, force_reset_modeset_test, false, 0600) \
 	param(bool, disable_display, false, 0400) \
 	param(bool, verbose_state_checks, true, 0400) \
+	param(bool, nuclear_pageflip, false, 0400) \
 	param(int, enable_fbc, -1, 0600) \
 	param(int, enable_psr, -1, 0600) \
 	param(bool, psr_safest_params, false, 0400) \
diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index 72614c139222..18424873442d 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -93,9 +93,6 @@ i915_param_named(mmio_debug, int, 0400,
 	"Enable the MMIO debug code for the first N failures (default: off). "
 	"This may negatively affect performance.");
 
-i915_param_named_unsafe(nuclear_pageflip, bool, 0400,
-	"Force enable atomic functionality on platforms that don't have full support yet.");
-
 i915_param_named_unsafe(enable_guc, int, 0400,
 	"Enable GuC load for GuC submission and/or HuC load. "
 	"Required functionality can be selected using bitmask values. "
diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
index 4b543beb17ca..c7fff571db2c 100644
--- a/drivers/gpu/drm/i915/i915_params.h
+++ b/drivers/gpu/drm/i915/i915_params.h
@@ -64,7 +64,6 @@ struct drm_printer;
 	/* leave bools at the end to not create holes */ \
 	param(bool, enable_hangcheck, true, 0600) \
 	param(bool, error_capture, true, IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR) ? 0600 : 0) \
-	param(bool, nuclear_pageflip, false, 0400) \
 	param(bool, enable_dp_mst, true, 0600) \
 	param(bool, enable_gvt, false, IS_ENABLED(CONFIG_DRM_I915_GVT) ? 0400 : 0)
 
-- 
2.34.1

