Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 617DE9E27C8
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2024 17:41:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE18010EAB0;
	Tue,  3 Dec 2024 16:41:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YJ20JaeS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D027210EAB0
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2024 16:41:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733244080; x=1764780080;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QdGkIHX7ScrVLt/m+DhriBGSk3lv//6SJG64ywhMJKc=;
 b=YJ20JaeSeaQa09hTSS6M/3WQwBAlmf+lBALNLgnbt0237yqJaBy2CgMa
 SnACm8bjMMHY3xdGq1x7O1FpJHuy1AH+cbAZ4sbQU0d44yfqx7xgRco4W
 n24DKoHTUCoJbmIn2gFGxGGJ0LX/a4HGyUo8zU947cfwAJrXOsTkQtfbC
 Sv8sjdAo0z3gMAyqSLpA/dblQe4GVn3lBAhKwtI5UTwAH86LSdNXcDU+m
 q4LPkwGOWPthSRhDYi6XN618nAhMPXEkoFvrsN+99nhGkaLBBQ2dw2RlC
 wTnPOjR/f8xA36kBnzDKaVzDuLRL9w55OVkT9A6pa93pqAExNTPlpZgar g==;
X-CSE-ConnectionGUID: vcnD9qZRTZCNVzgYCFkMTg==
X-CSE-MsgGUID: JXhkSVtRQ+WrbiQx7nnKHw==
X-IronPort-AV: E=McAfee;i="6700,10204,11275"; a="33347522"
X-IronPort-AV: E=Sophos;i="6.12,205,1728975600"; d="scan'208";a="33347522"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2024 08:41:20 -0800
X-CSE-ConnectionGUID: CujLD106T6OWq+6vm225vA==
X-CSE-MsgGUID: Soab5TIWQde88zvhwn9N8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,205,1728975600"; d="scan'208";a="93580485"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.135])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2024 08:41:18 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 4/6] drm/i915/lspcon: change signature of
 lspcon_wait_pcon_mode()
Date: Tue,  3 Dec 2024 18:40:54 +0200
Message-Id: <58877deecc2e7083d055303fa2907094eb1d09b3.1733243959.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1733243959.git.jani.nikula@intel.com>
References: <cover.1733243959.git.jani.nikula@intel.com>
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

Switch from struct intel_lspcon to struct intel_digital_port to unify.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 3 +--
 drivers/gpu/drm/i915/display/intel_lspcon.c | 4 +++-
 drivers/gpu/drm/i915/display/intel_lspcon.h | 4 +---
 3 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f0d590b5d9ab..537476e456d3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3498,7 +3498,6 @@ void intel_dp_set_power(struct intel_dp *intel_dp, u8 mode)
 		ret = drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER, mode);
 	} else {
 		struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
-		struct intel_lspcon *lspcon = dp_to_lspcon(intel_dp);
 
 		lspcon_resume(dig_port);
 
@@ -3517,7 +3516,7 @@ void intel_dp_set_power(struct intel_dp *intel_dp, u8 mode)
 		}
 
 		if (ret == 1 && intel_lspcon_active(dig_port))
-			lspcon_wait_pcon_mode(lspcon);
+			lspcon_wait_pcon_mode(dig_port);
 	}
 
 	if (ret != 1)
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index 2c731161a711..485dad6f3629 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -654,8 +654,10 @@ u32 lspcon_infoframes_enabled(struct intel_encoder *encoder,
 	return val;
 }
 
-void lspcon_wait_pcon_mode(struct intel_lspcon *lspcon)
+void lspcon_wait_pcon_mode(struct intel_digital_port *dig_port)
 {
+	struct intel_lspcon *lspcon = &dig_port->lspcon;
+
 	lspcon_wait_mode(lspcon, DRM_LSPCON_MODE_PCON);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.h b/drivers/gpu/drm/i915/display/intel_lspcon.h
index 18cc15e5221d..20581af1ddb2 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.h
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.h
@@ -8,18 +8,16 @@
 
 #include <linux/types.h>
 
-struct drm_connector;
 struct drm_connector_state;
 struct intel_crtc_state;
 struct intel_digital_port;
 struct intel_encoder;
-struct intel_lspcon;
 
 bool lspcon_init(struct intel_digital_port *dig_port);
 bool intel_lspcon_active(struct intel_digital_port *dig_port);
 bool lspcon_detect_hdr_capability(struct intel_digital_port *dig_port);
 void lspcon_resume(struct intel_digital_port *dig_port);
-void lspcon_wait_pcon_mode(struct intel_lspcon *lspcon);
+void lspcon_wait_pcon_mode(struct intel_digital_port *dig_port);
 void lspcon_write_infoframe(struct intel_encoder *encoder,
 			    const struct intel_crtc_state *crtc_state,
 			    unsigned int type,
-- 
2.39.5

