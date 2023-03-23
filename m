Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEE7D6C7377
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 23:59:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 931D910EB82;
	Thu, 23 Mar 2023 22:59:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5087710E4A2
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Mar 2023 22:59:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679612343; x=1711148343;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=uCc7fUShkojDvM8G9lWxN/pp9SGIESdwlgmFase3CL4=;
 b=hRYx2XIcazy4zZRUp2sZkmW/x4Hnf08qF7nMH8J7JR0zVEi7N139+w+u
 Tki+JyYeKgI1A2dtFVExLtAghiRH8Pr1+SKmmtDUut2h+OrLXKmw98wdv
 Wh2ucLzrkqtEpp+PBfNlbJQTxZJ2kBzwpAmRFpuciShOirDzEwYKBC6Yl
 Uv+waosHMbLftyB0kSFHE/pEKo6oBzfqMmN9JSYj/v59SJ1OwWy4jfPnP
 kOGnbch09C2gJ1KEswaVvXkvGDbNQRjxrhDQStlMUWj/Tmshf+vh4xDCy
 FtsJWap1oaYLPx5Uk5oii8r8zJdJ4l9Spiedw1Ul3nu7BMaw6B4wFt3bR Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10658"; a="320033256"
X-IronPort-AV: E=Sophos;i="5.98,286,1673942400"; d="scan'208";a="320033256"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 15:59:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10658"; a="771639221"
X-IronPort-AV: E=Sophos;i="5.98,286,1673942400"; d="scan'208";a="771639221"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 15:59:02 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Mar 2023 15:58:58 -0700
Message-Id: <20230323225901.3743681-9-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230323225901.3743681-1-umesh.nerlige.ramappa@intel.com>
References: <20230323225901.3743681-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/11] drm/i915/perf: Add engine class instance
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

v4: Ensure engine class:instance is passed together (Ashutosh)
v5: Remove unnecessary quote (Ashutosh)

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 71 ++++++++++++++++++++------------
 include/uapi/drm/i915_drm.h      | 19 +++++++++
 2 files changed, 63 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 8c4bcdce8019..081d1dd743e0 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -4012,48 +4012,32 @@ static int read_properties_unlocked(struct i915_perf *perf,
 {
 	struct drm_i915_gem_context_param_sseu user_sseu;
 	u64 __user *uprop = uprops;
+	bool config_instance = false;
+	bool config_class = false;
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
@@ -4174,7 +4158,15 @@ static int read_properties_unlocked(struct i915_perf *perf,
 			}
 			props->poll_oa_period = value;
 			break;
-		case DRM_I915_PERF_PROP_MAX:
+		case DRM_I915_PERF_PROP_OA_ENGINE_CLASS:
+			class = (u8)value;
+			config_class = true;
+			break;
+		case DRM_I915_PERF_PROP_OA_ENGINE_INSTANCE:
+			instance = (u8)value;
+			config_instance = true;
+			break;
+		default:
 			MISSING_CASE(id);
 			return -EINVAL;
 		}
@@ -4182,6 +4174,28 @@ static int read_properties_unlocked(struct i915_perf *perf,
 		uprop += 2;
 	}
 
+	if ((config_class && !config_instance) ||
+	    (config_instance && !config_class)) {
+		drm_dbg(&perf->i915->drm,
+			"OA engine-class and engine-instance parameters must be passed together\n");
+		return -EINVAL;
+	}
+
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
@@ -5158,8 +5172,11 @@ int i915_perf_ioctl_version(void)
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
index 5e458d6f2895..384e74cac539 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -2758,6 +2758,25 @@ enum drm_i915_perf_property_id {
 	 */
 	DRM_I915_PERF_PROP_POLL_OA_PERIOD,
 
+	/**
+	 * Multiple engines may be mapped to the same OA unit. The OA unit is
+	 * identified by class:instance of any engine mapped to it.
+	 *
+	 * This parameter specifies the engine class and must be passed along
+	 * with DRM_I915_PERF_PROP_OA_ENGINE_INSTANCE.
+	 *
+	 * This property is available in perf revision 6.
+	 */
+	DRM_I915_PERF_PROP_OA_ENGINE_CLASS,
+
+	/**
+	 * This parameter specifies the engine instance and must be passed along
+	 * with DRM_I915_PERF_PROP_OA_ENGINE_CLASS.
+	 *
+	 * This property is available in perf revision 6.
+	 */
+	DRM_I915_PERF_PROP_OA_ENGINE_INSTANCE,
+
 	DRM_I915_PERF_PROP_MAX /* non-ABI */
 };
 
-- 
2.36.1

