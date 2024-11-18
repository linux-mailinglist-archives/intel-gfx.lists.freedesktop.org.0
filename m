Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D70FA9D139D
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2024 15:50:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E486E10E4F7;
	Mon, 18 Nov 2024 14:50:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lLo6uQXf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C658410E4FA;
 Mon, 18 Nov 2024 14:50:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731941401; x=1763477401;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=A77POj+zEExHQnS+hc+KpkEYA8a8wG5IbABZJazdF3I=;
 b=lLo6uQXfr4OH3cWASgdUKzEgA3njyn2spH4hWJGjIzpqj9SxIeeOEalL
 dF0CXCGmQOqwjpJEcb0U2TJxuyFK6pbChWJmxKY/1/mM9jxMsR2AZdnbs
 xDn2plRAs2SKVFw8ApZ9VnWw4iScKeJL65tpIB5902h4G6u+U9ISvtss1
 b/0ttzpEKhgiZaSScuXSHma+xIFVcSAPuT8nsCrbzystoSEeqBJzcVgvS
 0Kxp9FZXlnKf85Jm5VMgS7/Jp4d5V0fIUy6AfocPB9KocPK4Fla9ACXuH
 ACsJa7MxoUEtKbhnfOQI6PCZPTMc8kkVyY/q1viYW+onC1UEEvI4BzKV+ Q==;
X-CSE-ConnectionGUID: pD2eRwGDQaGl6XhOudrClw==
X-CSE-MsgGUID: UTUWfCShTwm4nU1gmBl1yw==
X-IronPort-AV: E=McAfee;i="6700,10204,11260"; a="31307162"
X-IronPort-AV: E=Sophos;i="6.12,164,1728975600"; d="scan'208";a="31307162"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 06:50:00 -0800
X-CSE-ConnectionGUID: IlAKt84tRFaHgXCAPmzT8g==
X-CSE-MsgGUID: 6Ujw/cPvTNe9UlXTyDGsug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="94289254"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.148])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 06:49:59 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 10/11] drm/i915/ddi: refactor
 intel_ddi_connector_get_hw_state()
Date: Mon, 18 Nov 2024 16:49:05 +0200
Message-Id: <760bf418e5b4cd3fbbc50ad937c9e6b18dccfeb9.1731941270.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1731941270.git.jani.nikula@intel.com>
References: <cover.1731941270.git.jani.nikula@intel.com>
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

Refactor the switch-case into an if-ladder similar to
intel_ddi_read_func_ctl() for clarity.

This highlights how TRANS_DDI_MODE_SELECT_FDI_OR_128B132B works on
different platforms.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 44 +++++++++---------------
 1 file changed, 16 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 607c983f07ef..33628cbc0f72 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -723,7 +723,7 @@ bool intel_ddi_connector_get_hw_state(struct intel_connector *intel_connector)
 	enum transcoder cpu_transcoder;
 	intel_wakeref_t wakeref;
 	enum pipe pipe = 0;
-	u32 tmp;
+	u32 ddi_mode;
 	bool ret;
 
 	wakeref = intel_display_power_get_if_enabled(dev_priv,
@@ -741,38 +741,26 @@ bool intel_ddi_connector_get_hw_state(struct intel_connector *intel_connector)
 	else
 		cpu_transcoder = (enum transcoder) pipe;
 
-	tmp = intel_de_read(dev_priv,
-			    TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder));
+	ddi_mode = intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder)) &
+		TRANS_DDI_MODE_SELECT_MASK;
 
-	switch (tmp & TRANS_DDI_MODE_SELECT_MASK) {
-	case TRANS_DDI_MODE_SELECT_HDMI:
-	case TRANS_DDI_MODE_SELECT_DVI:
+	if (ddi_mode == TRANS_DDI_MODE_SELECT_HDMI ||
+	    ddi_mode == TRANS_DDI_MODE_SELECT_DVI) {
 		ret = type == DRM_MODE_CONNECTOR_HDMIA;
-		break;
-
-	case TRANS_DDI_MODE_SELECT_DP_SST:
+	} else if (ddi_mode == TRANS_DDI_MODE_SELECT_FDI_OR_128B132B && !HAS_DP20(display)) {
+		ret = type == DRM_MODE_CONNECTOR_VGA;
+	} else if (ddi_mode == TRANS_DDI_MODE_SELECT_DP_SST) {
 		ret = type == DRM_MODE_CONNECTOR_eDP ||
-		      type == DRM_MODE_CONNECTOR_DisplayPort;
-		break;
-
-	case TRANS_DDI_MODE_SELECT_DP_MST:
-		/* if the transcoder is in MST state then
-		 * connector isn't connected */
+			type == DRM_MODE_CONNECTOR_DisplayPort;
+	} else if (ddi_mode == TRANS_DDI_MODE_SELECT_DP_MST ||
+		   (ddi_mode == TRANS_DDI_MODE_SELECT_FDI_OR_128B132B && HAS_DP20(display))) {
+		/*
+		 * If the transcoder is in MST state then connector isn't
+		 * connected.
+		 */
 		ret = false;
-		break;
-
-	case TRANS_DDI_MODE_SELECT_FDI_OR_128B132B:
-		if (HAS_DP20(display))
-			/* 128b/132b */
-			ret = false;
-		else
-			/* FDI */
-			ret = type == DRM_MODE_CONNECTOR_VGA;
-		break;
-
-	default:
+	} else {
 		ret = false;
-		break;
 	}
 
 out:
-- 
2.39.5

