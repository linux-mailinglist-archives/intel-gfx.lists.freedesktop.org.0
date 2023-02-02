Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D78B68796A
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Feb 2023 10:47:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8170C10E4C3;
	Thu,  2 Feb 2023 09:47:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8516F10E4C3
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Feb 2023 09:47:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675331256; x=1706867256;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hsVcCCjIno48vW04vJ38b6g3kH6dgtr5g5XhP/sJaoA=;
 b=R52R3EIUTIcglq4co3BiRNmh5wYwncEd22B6uFjNHFo9lIP1MP6/dRa7
 DcIaP0WPT5xRJ6TikBOJow/E9MYqY4cAApcTiWCgIlN6SnF7O+SpWc815
 ZbBsJLZ/EA0mr5sApVFdDOQRcIRXOgBWPo+StmZPVD6u+OTsYgdcCybeG
 BJsizRGdk5ds8Yb3tQzM+lp/SA0HtaSChk1kBwjK9mMpKRUC9Hv39rHPY
 ZOLOumUcwvoMZF7nN6WkkBIL9fDjj1HtZfJbs5Bim51C0Bljgy7kHyUPZ
 xD1vFePKidi2NXnKuhFEZuKwmwKI/YE/qjBCckH2oDx9w11ANJbveGUQD g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="316403290"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="316403290"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 01:47:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="807910288"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="807910288"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmsmga001.fm.intel.com with ESMTP; 02 Feb 2023 01:47:29 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Feb 2023 11:47:25 +0200
Message-Id: <20230202094726.6435-2-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20230202094726.6435-1-stanislav.lisovskiy@intel.com>
References: <20230202094726.6435-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Add generic constraint checker
 when determining DP MST DSC bpp
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

There are might be multiple contraints which we need to check while determining
if we can use desired compressed bpp, so might be good idea to add a special
helper, so that we don't overcomplicate the main bpp calculation function.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 8b0e4defa3f1..e3e7c305fece 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -45,6 +45,13 @@
 #include "intel_hotplug.h"
 #include "skl_scaler.h"
 
+static int intel_dp_mst_check_constraints(struct drm_i915_private *i915, int bpp,
+					  const struct drm_display_mode *adjusted_mode,
+					  struct intel_crtc_state *crtc_state)
+{
+	return 0;
+}
+
 static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 						struct intel_crtc_state *crtc_state,
 						int max_bpp,
@@ -87,6 +94,10 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 
 		drm_dbg_kms(&i915->drm, "Trying bpp %d\n", bpp);
 
+		ret = intel_dp_mst_check_constraints(i915, bpp, adjusted_mode, crtc_state);
+		if (ret)
+			continue;
+
 		slots = drm_dp_atomic_find_time_slots(state, &intel_dp->mst_mgr,
 						      connector->port,
 						      crtc_state->pbn);
@@ -104,8 +115,8 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
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

