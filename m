Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD98979C2F
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Sep 2024 09:43:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82E0710E154;
	Mon, 16 Sep 2024 07:43:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GH50Ov82";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 294F410E115
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Sep 2024 07:43:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726472617; x=1758008617;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dXJeObhfS61AA8RCY8km6U+uQyhsxYlDQ33N3mJG5NE=;
 b=GH50Ov82vsMf2TmqFBHH94Fa0/gGyXUarMLJJDqXRBwjqOx3f/wMMpn8
 /GMayLPLiqoc4EC/7apFN067UdXNetfsK/sHSSuUTYZhjJgZXGJ03Fyv1
 3PQf0M8wVb3zYoEEY8kEKubzRly4977h1fZAejhCWV0dr+mnApaMnWbnz
 JXsA5YWkihAl2mQmlt2jEfmNicH/tKoBAmb+0Vo+PlPqU5W/W+tBWBLNG
 xpX33B0fGWVPBnc9epaPdGdi+qyUmrKHHU61ZML57QxM3+EKZJBQYxJHg
 4IQ0EwR5ioIB2c1SGFLkNJ0NIv/Be7fjxHBipK+VK4XVYvnUdq71UsswP w==;
X-CSE-ConnectionGUID: S8hJRV/ZS+mTdyifCvwBXw==
X-CSE-MsgGUID: IzpWI65STieAyGTUk1Nqjw==
X-IronPort-AV: E=McAfee;i="6700,10204,11196"; a="25224132"
X-IronPort-AV: E=Sophos;i="6.10,232,1719903600"; d="scan'208";a="25224132"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 00:43:36 -0700
X-CSE-ConnectionGUID: y85IuZVqTVO0ItS4NeR+VA==
X-CSE-MsgGUID: usns2WvVSS6iWaoNh1R7SA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,232,1719903600"; d="scan'208";a="99646575"
Received: from dneilan-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.28])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 00:43:35 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 1/2] drm/i915/display: Add block_dc6_needed variable into
 intel_crtc
Date: Mon, 16 Sep 2024 10:43:19 +0300
Message-Id: <20240916074320.2108380-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240916074320.2108380-1-jouni.hogander@intel.com>
References: <20240916074320.2108380-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

We need to block DC6 entry in case of Panel Replay as enabling VBI doesn't
prevent DC6 in case of Panel Replay. This causes problems if user-space is
polling for vblank events. For this purpose add new block_dc6_needed
variable into intel_crtc. Check if eDP Panel Replay is possible and set the
variable accordingly.

v2: set/clear block_dc6_needed in intel_crtc_vblank_on/off

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c          | 12 ++++++++++++
 drivers/gpu/drm/i915/display/intel_display_types.h |  7 +++++++
 drivers/gpu/drm/i915/display/intel_psr.c           |  1 +
 3 files changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index aed3853952be8..e00f2b0a54be6 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -24,6 +24,7 @@
 #include "intel_display_irq.h"
 #include "intel_display_trace.h"
 #include "intel_display_types.h"
+#include "intel_dp.h"
 #include "intel_drrs.h"
 #include "intel_dsi.h"
 #include "intel_fifo_underrun.h"
@@ -123,6 +124,15 @@ u32 intel_crtc_max_vblank_count(const struct intel_crtc_state *crtc_state)
 void intel_crtc_vblank_on(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct intel_encoder *encoder;
+
+	for_each_encoder_on_crtc(crtc->base.dev, &crtc->base, encoder) {
+		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+
+		if (intel_dp_is_edp(intel_dp) &&
+		    CAN_PANEL_REPLAY(intel_dp))
+			crtc->block_dc6_needed = true;
+	}
 
 	assert_vblank_disabled(&crtc->base);
 	drm_crtc_set_max_vblank_count(&crtc->base,
@@ -150,6 +160,8 @@ void intel_crtc_vblank_off(const struct intel_crtc_state *crtc_state)
 
 	drm_crtc_vblank_off(&crtc->base);
 	assert_vblank_disabled(&crtc->base);
+
+	crtc->block_dc6_needed = false;
 }
 
 struct intel_crtc_state *intel_crtc_state_alloc(struct intel_crtc *crtc)
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 000ab373c8879..df0c3eb750809 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1413,6 +1413,13 @@ struct intel_crtc {
 #ifdef CONFIG_DEBUG_FS
 	struct intel_pipe_crc pipe_crc;
 #endif
+
+	/*
+	 * We need to block DC6 entry in case of Panel Replay as enabling VBI doesn't
+	 * prevent DC6 in case of Panel Replay. This causes problems if user-space is
+	 * polling for vblank events.
+	 */
+	u8 block_dc6_needed;
 };
 
 struct intel_plane {
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 1a4ef231a53ca..71ef64a51bacc 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -35,6 +35,7 @@
 #include "intel_cursor_regs.h"
 #include "intel_ddi.h"
 #include "intel_de.h"
+#include "intel_display_irq.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
 #include "intel_dp_aux.h"
-- 
2.34.1

