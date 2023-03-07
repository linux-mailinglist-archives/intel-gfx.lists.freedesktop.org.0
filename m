Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C7D36AF680
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Mar 2023 21:16:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4265C10E54D;
	Tue,  7 Mar 2023 20:16:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CB7410E548
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Mar 2023 20:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678220179; x=1709756179;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nxiYyCv06wcHlfHA59wspEQXV4MZ6n+rK81Rew7uq0U=;
 b=YLMUYdqDaBAWbOoWM/LPsvfuJnHbk44aRjUl59DgpaMtOrVND5XuWmDj
 CjWd4xJJBzcJS8dQFiRPDPbR03QkwxbyjAGBgoL+4LjYhPbjqQ3yZf0gr
 KL7SB+hnthHlxbxIb+Mlj5l+dg4A3wyEZQnoovRvGg8AbAFtqH4YiotMp
 /6ZdwyHrf280SzSpqh1RJSY8RkhFlRZRDC8E7t+fGJQfQlQTHWIdY+m5c
 l1pyohGOHoSGERMctkOkIvJ2qnhqEBqeyvASQinRSsfldiUhb2cEq+aT9
 5yznPs0t3A+4eI876udDZN/fJDhXwcB7iBhUTozlxMlV7oMWxolbsuKl0 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="338283955"
X-IronPort-AV: E=Sophos;i="5.98,241,1673942400"; d="scan'208";a="338283955"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 12:16:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="679085954"
X-IronPort-AV: E=Sophos;i="5.98,241,1673942400"; d="scan'208";a="679085954"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 12:16:18 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Mar 2023 12:16:10 -0800
Message-Id: <20230307201611.773103-9-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230307201611.773103-1-umesh.nerlige.ramappa@intel.com>
References: <20230307201611.773103-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 8/9] drm/i915/perf: Add engine class instance
 parameters to perf
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

One or more engines map to a specific OA unit. All reports from these
engines are captured in the OA buffer managed by this OA unit.

Current i915 OA implementation supports only the OAG unit. OAG primarily
caters to render engine, so i915 OA uses render as the default engine
in the OA implementation. Since there are more OA units on newer
hardware that map to other engines, allow user to pass engine class and
instance to select and program specific OA units.

UMD specific changes for GPUvis support:
https://patchwork.freedesktop.org/patch/522827/?series=114023
https://patchwork.freedesktop.org/patch/522822/?series=114023
https://patchwork.freedesktop.org/patch/522826/?series=114023
https://patchwork.freedesktop.org/patch/522828/?series=114023
https://patchwork.freedesktop.org/patch/522816/?series=114023
https://patchwork.freedesktop.org/patch/522825/?series=114023

v2: (Ashutosh)
- Clarify commit message
- Add drm_dbg
- Clarify uapi description

v3: (Ashutosh)
- Remove irrelevant info from the uapi comment

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 60 ++++++++++++++++++--------------
 include/uapi/drm/i915_drm.h      | 17 +++++++++
 2 files changed, 50 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 9e6da8859284..1b7059e9b10d 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -4013,47 +4013,29 @@ static int read_properties_unlocked(struct i915_perf *perf,
 	struct drm_i915_gem_context_param_sseu user_sseu;
 	u64 __user *uprop = uprops;
 	bool config_sseu = false;
+	u8 class, instance;
 	u32 i;
 	int ret;
 
 	memset(props, 0, sizeof(struct perf_open_properties));
 	props->poll_oa_period = DEFAULT_POLL_PERIOD_NS;
 
-	if (!n_props) {
-		drm_dbg(&perf->i915->drm,
-			"No i915 perf properties given\n");
-		return -EINVAL;
-	}
-
-	/* At the moment we only support using i915-perf on the RCS. */
-	props->engine = intel_engine_lookup_user(perf->i915,
-						 I915_ENGINE_CLASS_RENDER,
-						 0);
-	if (!props->engine) {
-		drm_dbg(&perf->i915->drm,
-			"No RENDER-capable engines\n");
-		return -EINVAL;
-	}
-
-	if (!engine_supports_oa(props->engine)) {
-		drm_dbg(&perf->i915->drm,
-			"Engine not supported by OA %d:%d\n",
-			I915_ENGINE_CLASS_RENDER, 0);
-		return -EINVAL;
-	}
-
 	/* Considering that ID = 0 is reserved and assuming that we don't
 	 * (currently) expect any configurations to ever specify duplicate
 	 * values for a particular property ID then the last _PROP_MAX value is
 	 * one greater than the maximum number of properties we expect to get
 	 * from userspace.
 	 */
-	if (n_props >= DRM_I915_PERF_PROP_MAX) {
+	if (!n_props || n_props >= DRM_I915_PERF_PROP_MAX) {
 		drm_dbg(&perf->i915->drm,
-			"More i915 perf properties specified than exist\n");
+			"Invalid number of i915 perf properties given\n");
 		return -EINVAL;
 	}
 
+	/* Defaults when class:instance is not passed */
+	class = I915_ENGINE_CLASS_RENDER;
+	instance = 0;
+
 	for (i = 0; i < n_props; i++) {
 		u64 oa_period, oa_freq_hz;
 		u64 id, value;
@@ -4174,7 +4156,13 @@ static int read_properties_unlocked(struct i915_perf *perf,
 			}
 			props->poll_oa_period = value;
 			break;
-		case DRM_I915_PERF_PROP_MAX:
+		case DRM_I915_PERF_PROP_OA_ENGINE_CLASS:
+			class = (u8)value;
+			break;
+		case DRM_I915_PERF_PROP_OA_ENGINE_INSTANCE:
+			instance = (u8)value;
+			break;
+		default:
 			MISSING_CASE(id);
 			return -EINVAL;
 		}
@@ -4182,6 +4170,21 @@ static int read_properties_unlocked(struct i915_perf *perf,
 		uprop += 2;
 	}
 
+	props->engine = intel_engine_lookup_user(perf->i915, class, instance);
+	if (!props->engine) {
+		drm_dbg(&perf->i915->drm,
+			"OA engine class and instance invalid %d:%d\n",
+			class, instance);
+		return -EINVAL;
+	}
+
+	if (!engine_supports_oa(props->engine)) {
+		drm_dbg(&perf->i915->drm,
+			"Engine not supported by OA %d:%d\n",
+			class, instance);
+		return -EINVAL;
+	}
+
 	if (config_sseu) {
 		ret = get_sseu_config(&props->sseu, props->engine, &user_sseu);
 		if (ret) {
@@ -5158,8 +5161,11 @@ int i915_perf_ioctl_version(void)
 	 *
 	 * 5: Add DRM_I915_PERF_PROP_POLL_OA_PERIOD parameter that controls the
 	 *    interval for the hrtimer used to check for OA data.
+	 *
+	 * 6: Add DRM_I915_PERF_PROP_OA_ENGINE_CLASS and
+	 *    DRM_I915_PERF_PROP_OA_ENGINE_INSTANCE
 	 */
-	return 5;
+	return 6;
 }
 
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 8df261c5ab9b..250ad04ea00a 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -2758,6 +2758,23 @@ enum drm_i915_perf_property_id {
 	 */
 	DRM_I915_PERF_PROP_POLL_OA_PERIOD,
 
+	/**
+	 * Multiple engines may be mapped to the same OA unit. The OA unit is
+	 * identified by class:instance of any engine mapped to it".
+	 *
+	 * This parameter specifies the engine class.
+	 *
+	 * This property is available in perf revision 6.
+	 */
+	DRM_I915_PERF_PROP_OA_ENGINE_CLASS,
+
+	/**
+	 * This parameter specifies the engine instance.
+	 *
+	 * This property is available in perf revision 6.
+	 */
+	DRM_I915_PERF_PROP_OA_ENGINE_INSTANCE,
+
 	DRM_I915_PERF_PROP_MAX /* non-ABI */
 };
 
-- 
2.36.1

