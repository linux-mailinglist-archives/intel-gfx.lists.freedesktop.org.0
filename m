Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F8FF9E27C7
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2024 17:41:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 960CE10EAAC;
	Tue,  3 Dec 2024 16:41:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cTX4dVpP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4976E10EAAC
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2024 16:41:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733244075; x=1764780075;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=k5FcykjYBMbc9fc7Ch5yej62BVhQ3BXaxCKUi48LjD4=;
 b=cTX4dVpPAMknj1n3tMAmaHE0rRUDQxfeiCv0mIv23wvb3BheLB0cFjIh
 QKQdxjqFF46dHUvdh1LB9wJ0DU+uaIgERwSeq8N1d0qCQqNBn1/Q9ZRGI
 MC2ICkuDwj2+glLcbrxp61Wp1OqET0fW551phe6QTOLOExkIZjQ+EiOk4
 hsLOF8Tx3PQlLMxgcVLVLB5pVmfjOgKfv23XxPYqiVrDLwSPX6fizEneG
 6+qA/axkkycgcahsuFdy97/qR24fy6Wgje6fd2l3ZYyMoedAG+QKzzM0q
 IYnajg3NCoO/a5seMEBzawPAYlaIrfBM44Dw9zWSzHRX3QQwPXMP6kvi2 g==;
X-CSE-ConnectionGUID: LL48e2eRTBOkp6OGyy570A==
X-CSE-MsgGUID: Qm7QB3oQS2SDkNCIZ7XrFQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11275"; a="33347518"
X-IronPort-AV: E=Sophos;i="6.12,205,1728975600"; d="scan'208";a="33347518"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2024 08:41:15 -0800
X-CSE-ConnectionGUID: BZ0pHfZ3TuSMq2+Cq0Vdrw==
X-CSE-MsgGUID: OPSuwhXjReeeTyn8NKCnbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,205,1728975600"; d="scan'208";a="93580458"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.135])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2024 08:41:14 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 3/6] drm/i915/lspcon: change signature of
 lspcon_detect_hdr_capability()
Date: Tue,  3 Dec 2024 18:40:53 +0200
Message-Id: <99b391117301f2eb5a08a346817b394cbf30ddbd.1733243959.git.jani.nikula@intel.com>
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
index 775d1c10d671..f0d590b5d9ab 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5831,7 +5831,6 @@ intel_dp_connector_register(struct drm_connector *connector)
 	struct drm_i915_private *i915 = to_i915(connector->dev);
 	struct intel_dp *intel_dp = intel_attached_dp(to_intel_connector(connector));
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
-	struct intel_lspcon *lspcon = &dig_port->lspcon;
 	int ret;
 
 	ret = intel_connector_register(connector);
@@ -5854,8 +5853,7 @@ intel_dp_connector_register(struct drm_connector *connector)
 	 * efficiently and streamlined.
 	 */
 	if (lspcon_init(dig_port)) {
-		lspcon_detect_hdr_capability(lspcon);
-		if (lspcon->hdr_supported)
+		if (lspcon_detect_hdr_capability(dig_port))
 			drm_connector_attach_hdr_output_metadata_property(connector);
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index f898b8fabdd6..2c731161a711 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -120,8 +120,9 @@ static u32 get_hdr_status_reg(struct intel_lspcon *lspcon)
 		return DPCD_PARADE_LSPCON_HDR_STATUS;
 }
 
-void lspcon_detect_hdr_capability(struct intel_lspcon *lspcon)
+bool lspcon_detect_hdr_capability(struct intel_digital_port *dig_port)
 {
+	struct intel_lspcon *lspcon = &dig_port->lspcon;
 	struct intel_dp *intel_dp = lspcon_to_intel_dp(lspcon);
 	struct intel_display *display = to_intel_display(intel_dp);
 	u8 hdr_caps;
@@ -137,6 +138,8 @@ void lspcon_detect_hdr_capability(struct intel_lspcon *lspcon)
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

