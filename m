Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF5B6C7F1E
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Mar 2023 14:51:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDE4210E533;
	Fri, 24 Mar 2023 13:51:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47BB910E12C
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Mar 2023 13:51:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679665889; x=1711201889;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=p0mw+9UVtYKKvewpPiJFOK3seHQl9IsJqaPTo1y/6so=;
 b=ME0km+1oMxvNXnM9hwm0hnNM0DLJl0BLtkPcjmVqPCUL2+cgPbuhPXl9
 K+eAhN1qmw+cuWgY1gkvUEdHweeRLdfraSo3nMQHjOhXe/SltTt/FZiO3
 2doNn5nlSYeLLEzIvXrl4psG5Hqt4okKmsiOuFvLgpYMEjHhYYMpdSS9m
 5Y5ytiC9ONNUXtDUR7N5bUxr7mZAxVCa5Tv3I89BRUeD2gCgEiN67zxdm
 wDnRuu/dSoPDASebKYXylKAzikcKs/gEOlrDHZtoC3/96MK+e0HarLPfJ
 zGRy29YqIOvcU4p05ZDuMC6eM6zIL0KYfF2jA2Lf1zy5BuEfDQHOGxBzK Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10659"; a="323655260"
X-IronPort-AV: E=Sophos;i="5.98,288,1673942400"; d="scan'208";a="323655260"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2023 06:51:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10659"; a="751910461"
X-IronPort-AV: E=Sophos;i="5.98,288,1673942400"; d="scan'208";a="751910461"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmsmga004.fm.intel.com with ESMTP; 24 Mar 2023 06:51:26 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Mar 2023 15:51:25 +0200
Message-Id: <20230324135125.6720-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Implement UHBR bandwidth check
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

According to spec, we should check if output_bpp * pixel_rate is less
than DDI clock * 72, if UHBR is used.

v2: - s/pipe_config/crtc_state/ (Jani Nikula)
    - Merged previous patch into that one, to remove empty function(Jani Nikula)

v3: - Make that constraint check to be DSC-related only
    - Limit this to only DISPLAY_VER <= 13

HSDES: 1406899791
BSPEC: 49259

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 29 +++++++++++++++++++--
 1 file changed, 27 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index a860cbc5dbea..4c0edb760b8e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -45,6 +45,27 @@
 #include "intel_hotplug.h"
 #include "skl_scaler.h"
 
+static int intel_dp_mst_check_constraints(struct drm_i915_private *i915, int bpp,
+					  const struct drm_display_mode *adjusted_mode,
+					  struct intel_crtc_state *crtc_state,
+					  bool dsc)
+{
+	if (intel_dp_is_uhbr(crtc_state) && DISPLAY_VER(i915) <= 13 && dsc) {
+		int output_bpp = bpp;
+		/* DisplayPort 2 128b/132b, bits per lane is always 32 */
+		int symbol_clock = crtc_state->port_clock / 32;
+
+		if (output_bpp * adjusted_mode->crtc_clock >=
+		    symbol_clock * 72) {
+			drm_dbg_kms(&i915->drm, "UHBR check failed(required bw %d available %d)\n",
+				    output_bpp * adjusted_mode->crtc_clock, symbol_clock * 72);
+			return -EINVAL;
+		}
+	}
+
+	return 0;
+}
+
 static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 						struct intel_crtc_state *crtc_state,
 						int max_bpp,
@@ -87,6 +108,10 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 
 		drm_dbg_kms(&i915->drm, "Trying bpp %d\n", bpp);
 
+		ret = intel_dp_mst_check_constraints(i915, bpp, adjusted_mode, crtc_state, dsc);
+		if (ret)
+			continue;
+
 		slots = drm_dp_atomic_find_time_slots(state, &intel_dp->mst_mgr,
 						      connector->port,
 						      crtc_state->pbn);
@@ -104,8 +129,8 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 		}
 	}
 
-	/* Despite slots are non-zero, we still failed the atomic check */
-	if (ret && slots >= 0)
+	/* We failed to find a proper bpp/timeslots, return error */
+	if (ret)
 		slots = ret;
 
 	if (slots < 0) {
-- 
2.37.3

