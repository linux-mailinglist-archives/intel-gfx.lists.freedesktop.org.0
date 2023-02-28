Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4A5E6A511F
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Feb 2023 03:23:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D94510E4A1;
	Tue, 28 Feb 2023 02:23:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B93FF10E495
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Feb 2023 02:23:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677551016; x=1709087016;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VGsCpGHGvmyr4QzgZ8yMUYWGWZFA67hNwLBMn7igPaU=;
 b=HHNuj/ILQezXWjc313++fNC7Q+Db+54xjrYfIJJrFJdP4OxguPms7lU/
 1DoD9xVk/+5hSTBBNjdMiXJrmdIWghVufXIYQSv2xwQFer+HXTe1SAUnJ
 oUN+rMSQwNdx/PKAwo/cPb/j42EukWcj4vMwzdOBLQ7KcPMG0fL1sy7I3
 KJaEoRkiDJKwfSzFj180VeK+EvwOfCsAcT7Vk+CaZdUIWqjOsPEHKWNQg
 7lsaA6YsjHmMkZ4BRXcibC/SWn2ODwrmcdzBWC3Ath59xl2ZfbECxUILZ
 y9f6c9cRFVfJG+lbcCUHbX5BibldV67m6vCsN44pIf+3GvFJw/gCiKEGL w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="331504079"
X-IronPort-AV: E=Sophos;i="5.98,220,1673942400"; d="scan'208";a="331504079"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 18:23:36 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="676129240"
X-IronPort-AV: E=Sophos;i="5.98,220,1673942400"; d="scan'208";a="676129240"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 18:23:36 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Feb 2023 18:23:28 -0800
Message-Id: <20230228022329.3615793-9-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230228022329.3615793-1-umesh.nerlige.ramappa@intel.com>
References: <20230228022329.3615793-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 8/9] drm/i915/perf: Add engine class instance
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

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 60 ++++++++++++++++++--------------
 include/uapi/drm/i915_drm.h      | 22 ++++++++++++
 2 files changed, 55 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index a8eb37be2aa2..9d3db1edab64 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -4014,47 +4014,29 @@ static int read_properties_unlocked(struct i915_perf *perf,
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
@@ -4175,7 +4157,13 @@ static int read_properties_unlocked(struct i915_perf *perf,
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
@@ -4183,6 +4171,21 @@ static int read_properties_unlocked(struct i915_perf *perf,
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
@@ -5159,8 +5162,11 @@ int i915_perf_ioctl_version(void)
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
index 8df261c5ab9b..8ce20004a9dd 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -2758,6 +2758,28 @@ enum drm_i915_perf_property_id {
 	 */
 	DRM_I915_PERF_PROP_POLL_OA_PERIOD,
 
+	/**
+	 * In platforms with multiple OA buffers, the engine class instance must
+	 * be passed to open a stream to a OA unit corresponding to the engine.
+	 * Multiple engines may be mapped to the same OA unit.
+	 *
+	 * In addition to the class:instance, if a gem context is also passed, then
+	 * 1) the report headers of OA reports from any contexts that do not
+	 *    match this specific engine context are squashed.
+	 * 2) if the engine supports MI_REPORT_PERF_COUNT, this specific engine
+	 *    context is configured for this command.
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

