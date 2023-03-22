Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C1EA6C3EE9
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Mar 2023 01:09:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21D5010E215;
	Wed, 22 Mar 2023 00:08:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E847710E195
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Mar 2023 00:08:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679443735; x=1710979735;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FoJksIlq1krCkJcCoMW2JtYe/HolqRK7vnjr3034iRE=;
 b=lmzcYnHH+IifQIEuE99rXrChAxU0BP914e2VMybs4sisXpZDTw/BoLZw
 UaD5+0yAGk5V/UXBqT03xOUwST2xb6yNsLmtpI/RZwtbf+3g8U3jYH+Lr
 4b7/3FINTtH8VELj1Gf03raDUwcm8agbuB32RpPdJeMnk6fh00Fy2nyUD
 03dPvBvLQO/jtxBTJcFHLAEcHthFVeu4TUiHfUmUqizLjWxunUx5Tq0NX
 4q+Y8X7nCoLaPpbHDOZwUilUfXAxXDe45b6LlxclCmC6RehCCGPOjuHKE
 pwMzJULBMdrjzFNWWU/A/bddjZvO4oo0geK/hgHx2qCmHqEP5q7pcfHHj w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="319476651"
X-IronPort-AV: E=Sophos;i="5.98,280,1673942400"; d="scan'208";a="319476651"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 17:08:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="825180328"
X-IronPort-AV: E=Sophos;i="5.98,280,1673942400"; d="scan'208";a="825180328"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 17:08:55 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Mar 2023 17:08:46 -0700
Message-Id: <20230322000854.3310481-4-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230322000854.3310481-1-umesh.nerlige.ramappa@intel.com>
References: <20230322000854.3310481-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v8 03/11] drm/i915/perf: Validate OA sseu config
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

