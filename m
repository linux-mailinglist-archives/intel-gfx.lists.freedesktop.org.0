Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B083C9E5158
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2024 10:30:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBDF510E151;
	Thu,  5 Dec 2024 09:30:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HAESpsnk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13AB910E14B;
 Thu,  5 Dec 2024 09:30:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733391048; x=1764927048;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=J0l3ePPcuoVTputNw+Z6U+R7yBnQHpsmtu9RqT/hv9w=;
 b=HAESpsnk7KTqSSOs+sHrotxDbPwT6HREiP4Yw+Wpe8139ZFq5lWa7tOF
 Pg+nyluCdR0Mg+JbxZDLlzpmCvSovfutW9Cw0Fl68/yH26AbrgTPbxso0
 Y8Jq98kHtfret/cT3bxu/d/9rRS08RuWKxnSx2lVvYXSb2sYLbUCxQZh5
 2yxCVRIkNWnPk1AQpwCFa7hZMw5kRGtg2oHRn76rRpE6YhqeYVPhY4Me+
 Bwzgs9OAxJ5CPTF9JAtJMJj71FLs2AXptm3RcinstCJreIuDDvVe0rq1x
 SRw4xv6gvjQu4DYhGWh51aLxuUk6Q9RxonNEmsvmZit5iuU20NLphVvBW Q==;
X-CSE-ConnectionGUID: J//5dxxCRkyFjF2j+fekpw==
X-CSE-MsgGUID: bqDevt2wRSm8+BMifOvoAg==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="33432692"
X-IronPort-AV: E=Sophos;i="6.12,209,1728975600"; d="scan'208";a="33432692"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2024 01:30:47 -0800
X-CSE-ConnectionGUID: BBODizYHTNq8KEpieEihvg==
X-CSE-MsgGUID: 1/mu1r5SS9y05tEkUkMVwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,209,1728975600"; d="scan'208";a="93906131"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.27])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2024 01:30:46 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH] drm/i915/display: clean up DP Adaptive Sync SDP state
 mismatch logging
Date: Thu,  5 Dec 2024 11:30:42 +0200
Message-Id: <20241205093042.3028608-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Pass the drm_printer from intel_pipe_config_compare(), and use it for
logging, along with pipe_config_mismatch(), to simplify and unify.

While at it, differentiate the VSC and AS SDP log texts from each other.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 29 +++++++-------------
 1 file changed, 10 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 28c1b372cc95..1159f8c3d206 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5216,7 +5216,7 @@ pipe_config_dp_vsc_sdp_mismatch(struct drm_printer *p, bool fastset,
 				const struct drm_dp_vsc_sdp *a,
 				const struct drm_dp_vsc_sdp *b)
 {
-	pipe_config_mismatch(p, fastset, crtc, name, "dp sdp");
+	pipe_config_mismatch(p, fastset, crtc, name, "dp vsc sdp");
 
 	drm_printf(p, "expected:\n");
 	drm_dp_vsc_sdp_log(p, a);
@@ -5225,27 +5225,18 @@ pipe_config_dp_vsc_sdp_mismatch(struct drm_printer *p, bool fastset,
 }
 
 static void
-pipe_config_dp_as_sdp_mismatch(struct drm_i915_private *i915,
-			       bool fastset, const char *name,
+pipe_config_dp_as_sdp_mismatch(struct drm_printer *p, bool fastset,
+			       const struct intel_crtc *crtc,
+			       const char *name,
 			       const struct drm_dp_as_sdp *a,
 			       const struct drm_dp_as_sdp *b)
 {
-	struct drm_printer p;
+	pipe_config_mismatch(p, fastset, crtc, name, "dp as sdp");
 
-	if (fastset) {
-		p = drm_dbg_printer(&i915->drm, DRM_UT_KMS, NULL);
-
-		drm_printf(&p, "fastset requirement not met in %s dp sdp\n", name);
-	} else {
-		p = drm_err_printer(&i915->drm, NULL);
-
-		drm_printf(&p, "mismatch in %s dp sdp\n", name);
-	}
-
-	drm_printf(&p, "expected:\n");
-	drm_dp_as_sdp_log(&p, a);
-	drm_printf(&p, "found:\n");
-	drm_dp_as_sdp_log(&p, b);
+	drm_printf(p, "expected:\n");
+	drm_dp_as_sdp_log(p, a);
+	drm_printf(p, "found:\n");
+	drm_dp_as_sdp_log(p, b);
 }
 
 /* Returns the length up to and including the last differing byte */
@@ -5507,7 +5498,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 #define PIPE_CONF_CHECK_DP_AS_SDP(name) do { \
 	if (!intel_compare_dp_as_sdp(&current_config->infoframes.name, \
 				      &pipe_config->infoframes.name)) { \
-		pipe_config_dp_as_sdp_mismatch(dev_priv, fastset, __stringify(name), \
+		pipe_config_dp_as_sdp_mismatch(&p, fastset, crtc, __stringify(name), \
 						&current_config->infoframes.name, \
 						&pipe_config->infoframes.name); \
 		ret = false; \
-- 
2.39.5

