Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B10566BCB5
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Jan 2023 12:19:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A0FA10E3CD;
	Mon, 16 Jan 2023 11:19:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 690D410E3CD
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Jan 2023 11:19:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673867982; x=1705403982;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hsVcCCjIno48vW04vJ38b6g3kH6dgtr5g5XhP/sJaoA=;
 b=DM0hIZsP/mF5pT+OxixGrQaY+Pl9QFJ7fxEgnznnYNpynFAH676wTCvm
 qjnPkOxCL8+eusUDYbyjlSrLgZGnX48XXZXieNYXZxGKYI+I3NVKUwkBP
 IdXTLq0KQLLEYyOtOVFFnZ9C8iAkG5YyVIieKJhp52t684YXB6pN4gElW
 vRfV346OCWFx8HyjNxL7zkaN06ypylpupO2WLstmsRB/7AZ+3Qa9Qkdjw
 t1L7yYAir7hGp/314yzDhKqobuvfKar8GybiQe/2KJ49jDx33KnNzzCUy
 Znk67lumzUAEFGPU+QyBsu75MA2siqYYoEq1jfa0FEsgcbLqSeQN4Wk4f g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10591"; a="386785793"
X-IronPort-AV: E=Sophos;i="5.97,220,1669104000"; d="scan'208";a="386785793"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2023 03:19:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10591"; a="689459336"
X-IronPort-AV: E=Sophos;i="5.97,220,1669104000"; d="scan'208";a="689459336"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga008.jf.intel.com with ESMTP; 16 Jan 2023 03:19:40 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Jan 2023 13:19:36 +0200
Message-Id: <20230116111937.875-2-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20230116111937.875-1-stanislav.lisovskiy@intel.com>
References: <20230116111937.875-1-stanislav.lisovskiy@intel.com>
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

