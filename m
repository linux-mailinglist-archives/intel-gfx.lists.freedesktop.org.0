Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D51EB747282
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jul 2023 15:18:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF7D110E18B;
	Tue,  4 Jul 2023 13:18:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1964310E13E
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jul 2023 13:18:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688476686; x=1720012686;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Qxs0PcK5PdD3sQLQ779hvGRr/PuJpw15g10eSRfyyw0=;
 b=f+C+A+YXWhWaXPBqw+W3CZ63c0DEUWYLYw9seB+MHaHDHjsB30m4cA3W
 MgdKldE+AYZYSIvgK0QU0sCKW1LO3SKjpKCZlkcy/pq/Z5EPTeL4OOcto
 eWfUoOfFT2vS26qG2pXEUvRnBoccKBqeD+ls7PErxz0Ac/fKQxYxO2/ni
 LEpDEuZJsGOLBCbJs4DEKwqRUe5g9dbCD7LA1Ey/SPF2SSmqpvPzcEt9X
 Zt5hwGWFT/ahMqVYOHsmJ12eAPKmT2zr8EMqse2kDoApTVdc84KW1iKUW
 Vq7YHlEBQCxdymIktv41EaVSHmPS69MUcMZw52olsRZnU1IL9Q2opTco0 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="429157280"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="429157280"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2023 06:18:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="892865439"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="892865439"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga005.jf.intel.com with ESMTP; 04 Jul 2023 06:18:03 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Jul 2023 16:17:58 +0300
Message-Id: <20230704131758.14024-3-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20230704131758.14024-1-stanislav.lisovskiy@intel.com>
References: <20230704131758.14024-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Don't rely that 2 VDSC engines
 are always enough for pixel rate
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

We are currently having FIFO underruns happening for kms_dsc test case,
problem is that, we check if curreny cdclk is >= pixel rate only if
there is a single VDSC engine enabled(i.e dsc_split=false) however if
we happen to have 2 VDSC engines enabled, we just kinda rely that this
would be automatically enough.
However pixel rate can be even >= than VDSC clock(cdclk) * 2, so in that
case even with 2 VDSC engines enabled, we still need to tweak it up.
So lets compare pixel rate with cdclk * slice count(VDSC engine count) and
check if it still requires bumping up.
Previously we had to bump up CDCLK many times for similar reasons.

v2: - Use new intel_dsc_get_num_vdsc_instances to determine number of VDSC
      engines, instead of slice count(Ankit Nautiyal)
v3: - s/u8/int/ (Jani Nikula)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 4207863b7b2a..bfa1c5d589ba 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -37,6 +37,7 @@
 #include "intel_pci_config.h"
 #include "intel_pcode.h"
 #include "intel_psr.h"
+#include "intel_vdsc.h"
 #include "vlv_sideband.h"
 
 /**
@@ -2607,9 +2608,17 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
 	 * When we decide to use only one VDSC engine, since
 	 * each VDSC operates with 1 ppc throughput, pixel clock
 	 * cannot be higher than the VDSC clock (cdclk)
+	 * If there 2 VDSC engines, then pixel clock can't be higher than
+	 * VDSC clock(cdclk) * 2. However even that can still be not enough.
+	 * Slice count reflects amount of VDSC engines,
+	 * so lets use that to determine, if need still need to tweak CDCLK higher.
 	 */
-	if (crtc_state->dsc.compression_enable && !crtc_state->dsc.dsc_split)
-		min_cdclk = max(min_cdclk, (int)crtc_state->pixel_rate);
+	if (crtc_state->dsc.compression_enable) {
+		int num_vdsc_instances = intel_dsc_get_num_vdsc_instances(crtc_state);
+
+		min_cdclk = max_t(int, min_cdclk,
+			          crtc_state->pixel_rate / num_vdsc_instances);
+	}
 
 	/*
 	 * HACK. Currently for TGL/DG2 platforms we calculate
-- 
2.37.3

