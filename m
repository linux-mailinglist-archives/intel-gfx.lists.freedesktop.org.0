Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB429D3331
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 06:37:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0274410E2C9;
	Wed, 20 Nov 2024 05:37:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BgYvdGeV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3E7D10E393;
 Wed, 20 Nov 2024 05:37:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732081057; x=1763617057;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GoAw6LqPg7thB1qSKmtkz2lbQFhLe+T8gvJlKf/wQTA=;
 b=BgYvdGeV477/AzZfbPQAlygZIEj1qo2ymhxxqG8kAwyP43OYokoV4XQd
 ycIXK11eWYusix7tvzaXSZtSYFISP9L2lZj6fDst139JcLjNJucExLqYp
 GVwOnVXRQzDzQd2QNjdcn6dDCxnc+OJ5wQzDAN5N02r2VAfc2suRILrfq
 ho1GBCuKoj5bZnJ5Tg+OTAfZBPVKf0AnJ9ySnj1RKTtku2ESRhc8JUjZB
 vf5wD3kxbEW2Am8jZomNWru1KI1R6483yVzMTwQ/S1txrnNmZ2+Yct59/
 Ic3Lshn3+VEmDWDkW+R4SPSpyKAdZbEQIxb4yJxb0VscrahcoZ3CxSCa4 g==;
X-CSE-ConnectionGUID: E50+egHSQS+1O2INNGHXNA==
X-CSE-MsgGUID: 4ZRxj9+oSiGlak5hLMurKQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="32179447"
X-IronPort-AV: E=Sophos;i="6.12,168,1728975600"; d="scan'208";a="32179447"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2024 21:37:36 -0800
X-CSE-ConnectionGUID: kGdoojkASVagiqS/Xwc1mQ==
X-CSE-MsgGUID: sYCnCUmMS2yrYlaOSbQCSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,168,1728975600"; d="scan'208";a="120748980"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa001.fm.intel.com with ESMTP; 19 Nov 2024 21:37:35 -0800
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH v5 4/6] drm/i915/display: Call panel_fitting from pipe_config
Date: Wed, 20 Nov 2024 11:08:36 +0530
Message-Id: <20241120053838.3794419-5-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241120053838.3794419-1-nemesa.garg@intel.com>
References: <20241120053838.3794419-1-nemesa.garg@intel.com>
MIME-Version: 1.0
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

In panel fitter/pipe scaler scenario the pch_pfit configuration
currently takes place before accounting for pipe_src width for
joiner. This causes issue when pch_pfit and joiner get enabled
together. Call panel_fitting from pipe_config once pipe src is
computed.

-v5: Add GMCH check [Ville]

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 22 ++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 6ad47cf0d419..c58897cddde1 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -104,6 +104,7 @@
 #include "intel_pch_display.h"
 #include "intel_pch_refclk.h"
 #include "intel_pcode.h"
+#include "intel_pfit.h"
 #include "intel_pipe_crc.h"
 #include "intel_plane_initial.h"
 #include "intel_pmdemand.h"
@@ -2563,6 +2564,25 @@ static int intel_crtc_compute_pipe_src(struct intel_crtc_state *crtc_state)
 	return 0;
 }
 
+static void intel_crtc_compute_pfit(struct intel_atomic_state *state,
+				    struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_connector *connector;
+	struct drm_connector_state *connector_state;
+	int i;
+
+	for_each_new_connector_in_state(&state->base, connector,
+					connector_state, i) {
+		if (connector_state->crtc != &crtc->base)
+			continue;
+
+		if (!HAS_GMCH(display))
+			intel_pch_panel_fitting(crtc_state, connector_state);
+	}
+}
+
 static int intel_crtc_compute_pipe_mode(struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -2645,6 +2665,8 @@ static int intel_crtc_compute_config(struct intel_atomic_state *state,
 	if (ret)
 		return ret;
 
+	intel_crtc_compute_pfit(state, crtc_state);
+
 	intel_crtc_compute_pixel_rate(crtc_state);
 
 	if (crtc_state->has_pch_encoder)
-- 
2.25.1

