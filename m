Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE3F5A2739E
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2025 14:59:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D0E110E650;
	Tue,  4 Feb 2025 13:59:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Abr6JI6l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F15810E650;
 Tue,  4 Feb 2025 13:59:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738677547; x=1770213547;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RhR4eLR6ENm2msITQcO/p+BHDKhhUhwtKJ46MTMWaQQ=;
 b=Abr6JI6lwnE5WFE1zWDknA5UXGpiEMW6C0RmZoJGRzCLpGIkC+rtpC5t
 WV3Qt2ThGMhpLU4RRRhMqiwsguPnC2slLFOLhRYgQVippDWbzIiJOQp0L
 pcyI8HVB+bZAd+f+uz1ckxCECR4FHNU8Y50kT5IWzM+o3/tnMzz4xStsU
 wXKk5HAQNOaW/tDL1HyU1h9PAdO4gzBWVjJ2W0Xwti7Fbk4XJJisepwtS
 AiHedIzB0qa5k+x7uVJhHdpdQVD3iD7nmaoD+O9vRRGChmVTgU30OE/CA
 +XWu0UjZfBSUjaBXSAbOecGuE1Ev2UneQrjf4utwFoo1sjhLOUPWPKGCt A==;
X-CSE-ConnectionGUID: fKcAz6AeTCOb7Hnwv1j+QQ==
X-CSE-MsgGUID: /4RQrzsdQLO9zbzuT+XtTg==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39359046"
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="39359046"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 05:59:07 -0800
X-CSE-ConnectionGUID: t7dG8/zOQuGQ164f6MLvgA==
X-CSE-MsgGUID: 0M3t330IQ0meupNTh3SYDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="110484275"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.139])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 05:59:05 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 4/6] drm/i915/lspcon: change signature of
 lspcon_wait_pcon_mode()
Date: Tue,  4 Feb 2025 15:58:41 +0200
Message-Id: <84a00791d3d7ee4e34c1224ef7471918546635aa.1738677489.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1738677489.git.jani.nikula@intel.com>
References: <cover.1738677489.git.jani.nikula@intel.com>
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
index 2db7741c25bd..14d81538c912 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3501,7 +3501,6 @@ void intel_dp_set_power(struct intel_dp *intel_dp, u8 mode)
 		ret = drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER, mode);
 	} else {
 		struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
-		struct intel_lspcon *lspcon = dp_to_lspcon(intel_dp);
 
 		lspcon_resume(dig_port);
 
@@ -3520,7 +3519,7 @@ void intel_dp_set_power(struct intel_dp *intel_dp, u8 mode)
 		}
 
 		if (ret == 1 && intel_lspcon_active(dig_port))
-			lspcon_wait_pcon_mode(lspcon);
+			lspcon_wait_pcon_mode(dig_port);
 	}
 
 	if (ret != 1)
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index 2dd2b700b0f3..45b63fea3642 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -656,8 +656,10 @@ u32 lspcon_infoframes_enabled(struct intel_encoder *encoder,
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

