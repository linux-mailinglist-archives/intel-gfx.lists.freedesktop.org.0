Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B0749F04DD
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 07:35:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44E4510EF17;
	Fri, 13 Dec 2024 06:35:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WNXfTxgm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E084F10EF13;
 Fri, 13 Dec 2024 06:35:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734071749; x=1765607749;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gbzQ5hErCOVsameKYcMzOSz5EX9oVn+uuIRLzHdhloI=;
 b=WNXfTxgmkX5ff/Blzl1+EitKCHK0bYE0m8wwreGWzk9I+xgeLX6ZtJ8C
 Rk1DsslMcEwkMLnM6gR5n/V1fAQbuzyL7fvlOnC0AMdyLD0jLlwswQV3D
 ZXY/xPblgcCnJ/oafeHStEJuXr/qtpbPqRwiSuOYAOQC7L042x7n9M/Tn
 vguZ2mJbpK7CE4me4IJLFPgLGX234XQpPSb+M0L5oEc6d+LMLzZGYQGiZ
 UaLAAbnqpAiOMYTWjrScEV39GWaow887O2qEZO5hUgyq5SRVeY8A56MyV
 fgXmdY7Kl9MCrR8V9XiXa0LbXLfOxKZTT+fEUlQjJuYEhuWUPXneDpE+q A==;
X-CSE-ConnectionGUID: uii0ptWVTi2PHqHzUV8pdg==
X-CSE-MsgGUID: iKQKYnL8SMGtwWQZJrpkOw==
X-IronPort-AV: E=McAfee;i="6700,10204,11284"; a="33846840"
X-IronPort-AV: E=Sophos;i="6.12,230,1728975600"; d="scan'208";a="33846840"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2024 22:35:48 -0800
X-CSE-ConnectionGUID: z6t05rEzQ+KPPT54VKJ41A==
X-CSE-MsgGUID: PVw2OICXRQOCrYy5x4+iDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="96307740"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.191])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2024 22:35:48 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 05/10] drm/i915/psr: Ensure SFF/CFF bits are not written at
 their sample point
Date: Fri, 13 Dec 2024 08:35:23 +0200
Message-Id: <20241213063528.2759659-6-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241213063528.2759659-1-jouni.hogander@intel.com>
References: <20241213063528.2759659-1-jouni.hogander@intel.com>
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

Bspec says this for SFF/CFF:

"Hardware samples this bit on the start of every V. Blank Guardband
region. For deterministic behavior, Software should ensure it is not
changing this bit around the sample point."

This can be achieved by using intel_vblank_evade.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index c074de6b6c12..8aa2574ba5c9 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -26,6 +26,7 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_damage_helper.h>
 #include <drm/drm_debugfs.h>
+#include <drm/drm_vblank.h>
 
 #include "i915_drv.h"
 #include "i915_reg.h"
@@ -44,6 +45,7 @@
 #include "intel_psr.h"
 #include "intel_psr_regs.h"
 #include "intel_snps_phy.h"
+#include "intel_vblank.h"
 #include "skl_universal_plane.h"
 
 /**
@@ -3114,16 +3116,31 @@ static void intel_psr_configure_full_frame_update(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
+	struct intel_crtc *crtc = intel_crtc_for_pipe(display, intel_dp->psr.pipe);
+	struct intel_crtc_state *crtc_state = to_intel_crtc_state(crtc->base.state);
+	struct intel_vblank_evade_ctx evade;
 
 	if (!intel_dp->psr.psr2_sel_fetch_enabled)
 		return;
 
+	intel_vblank_evade_init(crtc_state, crtc_state, &evade);
+
+	drm_crtc_vblank_get(&crtc->base);
+
+	local_irq_disable();
+
+	intel_vblank_evade(&evade);
+
+	drm_crtc_vblank_put(&crtc->base);
+
 	intel_de_write(display,
 		       PSR2_MAN_TRK_CTL(display, cpu_transcoder),
 		       man_trk_ctl_enable_bit_get(display) |
 		       man_trk_ctl_partial_frame_bit_get(display) |
 		       man_trk_ctl_single_full_frame_bit_get(display) |
 		       man_trk_ctl_continuos_full_frame(display));
+
+	local_irq_enable();
 }
 
 static void _psr_invalidate_handle(struct intel_dp *intel_dp)
-- 
2.34.1

