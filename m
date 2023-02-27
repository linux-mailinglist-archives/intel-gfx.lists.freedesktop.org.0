Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9447E6A407B
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Feb 2023 12:20:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E64A510E3B6;
	Mon, 27 Feb 2023 11:20:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40A0510E3B5
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Feb 2023 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677496833; x=1709032833;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3/+qdpXaeL8KIybe76b/4YdQ2uAy6F56o48ujfawwHU=;
 b=NO2SyfWny9pbhpbRtC4nUo5mF1kRS/RfdIJAxksF2sbySgxtIWqUCBMs
 SgfCw0bn6W02ws7Szuj/PTfA86TXcSo9cwP9QQJmX9n+RCp3OkXNQt6iI
 TfsffyiHzNZVO5QPuNQJqYflgmCuGaPxik0tTWuTks5DilEUBBjdkxMAV
 GA9Kxv8tIs+ybNzEDp8UySqE8nX5wQoEqLve/ZNMQ9U9b8dVE+iHf7XqJ
 JeSGXR2otLV6H6KFTau/7j0DHLslcjjBRuJGlwsk8iWIEiNI8gd8TRxpO
 JxUhFKjhyseZ3TEZiH0FecxbPC/gLkdTjRjhkgz3YmO682X2O+7Wd1lHA A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10633"; a="396389100"
X-IronPort-AV: E=Sophos;i="5.97,331,1669104000"; d="scan'208";a="396389100"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 03:20:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10633"; a="797595805"
X-IronPort-AV: E=Sophos;i="5.97,331,1669104000"; d="scan'208";a="797595805"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga004.jf.intel.com with ESMTP; 27 Feb 2023 03:20:31 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Feb 2023 13:20:30 +0200
Message-Id: <20230227112030.5229-1-stanislav.lisovskiy@intel.com>
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

HSDES: 1406899791
BSPEC: 49259

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 28 +++++++++++++++++++--
 1 file changed, 26 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index a860cbc5dbea..d0e2e37cd758 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -45,6 +45,26 @@
 #include "intel_hotplug.h"
 #include "skl_scaler.h"
 
+static int intel_dp_mst_check_constraints(struct drm_i915_private *i915, int bpp,
+					  const struct drm_display_mode *adjusted_mode,
+					  struct intel_crtc_state *crtc_state)
+{
+	if (intel_dp_is_uhbr(crtc_state)) {
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
@@ -87,6 +107,10 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 
 		drm_dbg_kms(&i915->drm, "Trying bpp %d\n", bpp);
 
+		ret = intel_dp_mst_check_constraints(i915, bpp, adjusted_mode, crtc_state);
+		if (ret)
+			continue;
+
 		slots = drm_dp_atomic_find_time_slots(state, &intel_dp->mst_mgr,
 						      connector->port,
 						      crtc_state->pbn);
@@ -104,8 +128,8 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
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

