Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10C58A2739B
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2025 14:59:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A37FF10E658;
	Tue,  4 Feb 2025 13:59:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MHrQjYAY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0AAC10E65E;
 Tue,  4 Feb 2025 13:59:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738677543; x=1770213543;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1IbbmRf5UHb+sNGCaX+HHsSqDQyknZghImlZqaj8gdA=;
 b=MHrQjYAYMsL+Upd3Y5pjwdz0uhrM9Vj2JIlUZ65eCzhRt1UGagmJJDrY
 uDI6vMEY8711QoVPcVS8dWj2xFcHwyzhcrqQ3lzu/2SXL0nFNBkpcmr7v
 kT8djGkGmXc8sGw7B+l6KriWSaV8KK1DmIRlhz08caUWHaMzJT8d9lUmj
 1waDaRfE8oNLC8BFXHoC0rA4zvV7Mz+9Zo43HfpJx28dAnwbzAfKXn7Q3
 TNZL2iHpq/Lnrf8jK3AX46jT/M4APAxsuyGqeWbV913jnNWYk9yAB/ZHp
 y9oMPRByMgF8zPAmXHl76VimwZ48ids9lyq/v5mw602nyEtgchGKgul6u A==;
X-CSE-ConnectionGUID: p69eVLuOTKGkM00e1LbA9Q==
X-CSE-MsgGUID: yMkvr5/XQwWJ4Cx3OzNpnQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39359038"
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="39359038"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 05:59:03 -0800
X-CSE-ConnectionGUID: /T8f/7E3SL6ry/44PDS+JQ==
X-CSE-MsgGUID: Xu4Gqw+uSIexdcmjEk1NSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="110484261"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.139])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 05:59:01 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 3/6] drm/i915/lspcon: change signature of
 lspcon_detect_hdr_capability()
Date: Tue,  4 Feb 2025 15:58:40 +0200
Message-Id: <6f249f5c537a16a6762faddffd6a95cbf61cf077.1738677489.git.jani.nikula@intel.com>
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

Switch from struct intel_lspcon to struct intel_digital_port to unify,
and return the value so the caller doesn't have to look at
lspcon->hdr_detected directly.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 4 +---
 drivers/gpu/drm/i915/display/intel_lspcon.c | 5 ++++-
 drivers/gpu/drm/i915/display/intel_lspcon.h | 2 +-
 3 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index ef182ef574f7..2db7741c25bd 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5844,7 +5844,6 @@ intel_dp_connector_register(struct drm_connector *connector)
 	struct intel_display *display = to_intel_display(connector->dev);
 	struct intel_dp *intel_dp = intel_attached_dp(to_intel_connector(connector));
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
-	struct intel_lspcon *lspcon = &dig_port->lspcon;
 	int ret;
 
 	ret = intel_connector_register(connector);
@@ -5867,8 +5866,7 @@ intel_dp_connector_register(struct drm_connector *connector)
 	 * efficiently and streamlined.
 	 */
 	if (lspcon_init(dig_port)) {
-		lspcon_detect_hdr_capability(lspcon);
-		if (lspcon->hdr_supported)
+		if (lspcon_detect_hdr_capability(dig_port))
 			drm_connector_attach_hdr_output_metadata_property(connector);
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index e54aad8a5f7f..2dd2b700b0f3 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -121,8 +121,9 @@ static u32 get_hdr_status_reg(struct intel_lspcon *lspcon)
 		return DPCD_PARADE_LSPCON_HDR_STATUS;
 }
 
-void lspcon_detect_hdr_capability(struct intel_lspcon *lspcon)
+bool lspcon_detect_hdr_capability(struct intel_digital_port *dig_port)
 {
+	struct intel_lspcon *lspcon = &dig_port->lspcon;
 	struct intel_dp *intel_dp = lspcon_to_intel_dp(lspcon);
 	struct intel_display *display = to_intel_display(intel_dp);
 	u8 hdr_caps;
@@ -138,6 +139,8 @@ void lspcon_detect_hdr_capability(struct intel_lspcon *lspcon)
 		drm_dbg_kms(display->drm, "LSPCON capable of HDR\n");
 		lspcon->hdr_supported = true;
 	}
+
+	return lspcon->hdr_supported;
 }
 
 static enum drm_lspcon_mode lspcon_get_current_mode(struct intel_lspcon *lspcon)
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.h b/drivers/gpu/drm/i915/display/intel_lspcon.h
index 4c8ba3ddbac4..18cc15e5221d 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.h
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.h
@@ -17,7 +17,7 @@ struct intel_lspcon;
 
 bool lspcon_init(struct intel_digital_port *dig_port);
 bool intel_lspcon_active(struct intel_digital_port *dig_port);
-void lspcon_detect_hdr_capability(struct intel_lspcon *lspcon);
+bool lspcon_detect_hdr_capability(struct intel_digital_port *dig_port);
 void lspcon_resume(struct intel_digital_port *dig_port);
 void lspcon_wait_pcon_mode(struct intel_lspcon *lspcon);
 void lspcon_write_infoframe(struct intel_encoder *encoder,
-- 
2.39.5

