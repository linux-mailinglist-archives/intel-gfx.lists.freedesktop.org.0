Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 94342707D61
	for <lists+intel-gfx@lfdr.de>; Thu, 18 May 2023 11:56:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD11710E4ED;
	Thu, 18 May 2023 09:56:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A349F10E4F7
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 May 2023 09:56:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684403792; x=1715939792;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aUrhgW2mXQ1AzmAPFKFDnDuTNomifQXE5hAtAcz0CbA=;
 b=Kf1JLZ90u6a3Jk4v2SXQxq1FXglk/S9nfAQbleUypLPCGY5FNXlGZpS3
 qdROY4Us2tQoterliIVdwucOJ8UCbPiJ32U+ipPRqDBXU7KOt6HAwdOrz
 21HlsqQW34r3hBv120bXcGGN+tYZDJ9t4UBHZA033Zb76dYkYOQgonFNi
 zdMCRWchNSOHyTsPoQ79I5OqcwfYzPdLNQ97mUOyPcPSFYeeJe2dJcqwY
 mo8vq3EcSyonDADndMJt5H+T1vrQ1lbUxOPmt2jdx+EIiXkae8lKPHZ7o
 kcN0zSsWLC1BgfcNu55wRcWu7MlEt4MbCcuhNd8jpCVzXj0Ydl4h8/XOf g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="438366666"
X-IronPort-AV: E=Sophos;i="5.99,285,1677571200"; d="scan'208";a="438366666"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2023 02:56:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="791897347"
X-IronPort-AV: E=Sophos;i="5.99,285,1677571200"; d="scan'208";a="791897347"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by FMSMGA003.fm.intel.com with ESMTP; 18 May 2023 02:56:15 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 18 May 2023 15:19:13 +0530
Message-Id: <20230518094916.1142812-3-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230518094916.1142812-1-arun.r.murthy@intel.com>
References: <20230518094916.1142812-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/6] drm/i915/display: global histogram
 restrictions
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

For global histogram the panel should be edp and should have pwm based
backlight controller. Flags are updated accordingly.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_modeset_setup.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index cd21b0ddbabb..975d6bdb59f3 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -17,12 +17,14 @@
 #include "intel_crtc_state_dump.h"
 #include "intel_ddi.h"
 #include "intel_de.h"
+#include "intel_dp.h"
 #include "intel_display.h"
 #include "intel_display_power.h"
 #include "intel_display_types.h"
 #include "intel_modeset_setup.h"
 #include "intel_pch_display.h"
 #include "intel_pm.h"
+#include "intel_global_hist.h"
 
 static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
 					struct drm_modeset_acquire_ctx *ctx)
@@ -309,6 +311,7 @@ static void intel_sanitize_encoder(struct intel_encoder *encoder)
 	struct intel_crtc *crtc = to_intel_crtc(encoder->base.crtc);
 	struct intel_crtc_state *crtc_state = crtc ?
 		to_intel_crtc_state(crtc->base.state) : NULL;
+	struct intel_panel *panel;
 
 	/*
 	 * We need to check both for a crtc link (meaning that the encoder is
@@ -376,6 +379,15 @@ static void intel_sanitize_encoder(struct intel_encoder *encoder)
 
 	if (HAS_DDI(i915))
 		intel_ddi_sanitize_encoder_pll_mapping(encoder);
+
+	/* validate the global hist struct elements */
+	if (intel_dp_is_port_edp(i915, encoder->port)) {
+		crtc->global_hist->has_edp = true;
+		panel = &connector->panel;
+		if (panel->backlight.present == true)
+			crtc->global_hist->has_pwm = true;
+	}
+
 }
 
 /* FIXME read out full plane state for all planes */
-- 
2.25.1

