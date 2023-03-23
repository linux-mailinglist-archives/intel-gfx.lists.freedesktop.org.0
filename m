Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAE816C7375
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 23:59:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A10A510E4D0;
	Thu, 23 Mar 2023 22:59:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B50E510E13F
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Mar 2023 22:59:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679612342; x=1711148342;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=FoJksIlq1krCkJcCoMW2JtYe/HolqRK7vnjr3034iRE=;
 b=SR/65qpjpXmrKG+IViRmgUpEDrGZz1AWgtVqqrgweKj/vV48C7l/Hb7D
 iHzO8bZ+mLcGAeUsSHwcAnfOp+ZrjTj6KOKhlNSFAcACsuvdOSQRwamLq
 EPATnEvHPp4ZQ8CZoQg2Ts+MTRqdHz+GRnIeGWYh8x+4chlRMDWTkT2jA
 s465X8jYIQOE7Y0vJiJlohCb/gZqHR8Dtg/F7mraHZKxu9i2F2HaE0A3e
 H0wqKdyT4ebzmEMcol7/o5z9Xhgz/113bNPkqGfbzzTVn0Np1c73+HN6U
 nRjMuCpPSqH3LpLPwEfFZS9U3a4TOOqYR7o5Z3Bn5QwIYDok1jDurpdWt Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10658"; a="320033250"
X-IronPort-AV: E=Sophos;i="5.98,286,1673942400"; d="scan'208";a="320033250"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 15:59:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10658"; a="771639216"
X-IronPort-AV: E=Sophos;i="5.98,286,1673942400"; d="scan'208";a="771639216"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 15:59:02 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Mar 2023 15:58:53 -0700
Message-Id: <20230323225901.3743681-4-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230323225901.3743681-1-umesh.nerlige.ramappa@intel.com>
References: <20230323225901.3743681-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/11] drm/i915/perf: Validate OA sseu config
 outside switch
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

Once OA supports media engine class:instance, the engine can only be
validated outside the switch since class and instance parameters are
separate entities. Since OA sseu config depends on engine
class:instance, validate OA sseu config outside the switch.

v2: (Ashutosh)
- Clarify commit message
- Use drm_dbg instead of DRM_DEBUG
- Reorder stack variables

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 23 +++++++++++++----------
 1 file changed, 13 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 283a4a3c6862..ebd76b5c9712 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -3940,7 +3940,9 @@ static int read_properties_unlocked(struct i915_perf *perf,
 				    u32 n_props,
 				    struct perf_open_properties *props)
 {
+	struct drm_i915_gem_context_param_sseu user_sseu;
 	u64 __user *uprop = uprops;
+	bool config_sseu = false;
 	u32 i;
 	int ret;
 
@@ -4069,8 +4071,6 @@ static int read_properties_unlocked(struct i915_perf *perf,
 			props->hold_preemption = !!value;
 			break;
 		case DRM_I915_PERF_PROP_GLOBAL_SSEU: {
-			struct drm_i915_gem_context_param_sseu user_sseu;
-
 			if (GRAPHICS_VER_FULL(perf->i915) >= IP_VER(12, 50)) {
 				drm_dbg(&perf->i915->drm,
 					"SSEU config not supported on gfx %x\n",
@@ -4085,14 +4085,7 @@ static int read_properties_unlocked(struct i915_perf *perf,
 					"Unable to copy global sseu parameter\n");
 				return -EFAULT;
 			}
-
-			ret = get_sseu_config(&props->sseu, props->engine, &user_sseu);
-			if (ret) {
-				drm_dbg(&perf->i915->drm,
-					"Invalid SSEU configuration\n");
-				return ret;
-			}
-			props->has_sseu = true;
+			config_sseu = true;
 			break;
 		}
 		case DRM_I915_PERF_PROP_POLL_OA_PERIOD:
@@ -4112,6 +4105,16 @@ static int read_properties_unlocked(struct i915_perf *perf,
 		uprop += 2;
 	}
 
+	if (config_sseu) {
+		ret = get_sseu_config(&props->sseu, props->engine, &user_sseu);
+		if (ret) {
+			drm_dbg(&perf->i915->drm,
+				"Invalid SSEU configuration\n");
+			return ret;
+		}
+		props->has_sseu = true;
+	}
+
 	return 0;
 }
 
-- 
2.36.1

