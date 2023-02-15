Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13BB06972E7
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Feb 2023 01:54:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84E0910EA12;
	Wed, 15 Feb 2023 00:54:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E48F10E9FC
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Feb 2023 00:54:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676422461; x=1707958461;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JIwMD8+e8q5V7VTaEh9J4UfbMk9Nq43pH3+Vjxp8vSg=;
 b=ks1/MpGxfY02fZZI0o2mI7/JJOKavv1ZK+PhqmyKlJQukrhaRyhIEeqA
 wx6a5BtgKWwP/wjKA+5t1pDNYvOKu0U4P6fOKOxkJw7BlZAAqX8FlagNk
 21+FQK3CAYXs/We3u63qAOEJS6ei3XU67Fq0a7cV7Vt3WZcEr9KiqmhPQ
 qzzxy1d/seEgStrKh7x8RihEJWMdgTByP3y8184+83xo1gc7jsu9hE5Lr
 RvLwkGHLkFxg9YoccnadRqaEJnenTNHKanrk+p2gkG7JhBp7eOyUWZK+a
 V2AyoFgSYjEwg4hFAbK3cUGT2qaqFMjTCrBlbhU004vy7RXF6LnIpgmjW g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="417536046"
X-IronPort-AV: E=Sophos;i="5.97,298,1669104000"; d="scan'208";a="417536046"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 16:54:20 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="914951636"
X-IronPort-AV: E=Sophos;i="5.97,298,1669104000"; d="scan'208";a="914951636"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 16:54:20 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Feb 2023 16:54:18 -0800
Message-Id: <20230215005419.2100887-9-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230215005419.2100887-1-umesh.nerlige.ramappa@intel.com>
References: <20230215005419.2100887-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 8/9] drm/i915/perf: Add engine class instance
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
Cc: Lionel G Landwerlin <lionel.g.landwerlin@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Current implementation of perf defaults to render to and configures the
default OAG unit. Since there are more OA units on newer hardware, allow
user to pass engine class and instance to program specific OA units.

UMD specific changes for GPUvis support:
https://patchwork.freedesktop.org/patch/522827/?series=114023
https://patchwork.freedesktop.org/patch/522822/?series=114023
https://patchwork.freedesktop.org/patch/522826/?series=114023
https://patchwork.freedesktop.org/patch/522828/?series=114023
https://patchwork.freedesktop.org/patch/522816/?series=114023
https://patchwork.freedesktop.org/patch/522825/?series=114023

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 49 +++++++++++++++++++-------------
 include/uapi/drm/i915_drm.h      | 20 +++++++++++++
 2 files changed, 49 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 2e1b305032c0..8f7306eaf43c 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -4038,40 +4038,29 @@ static int read_properties_unlocked(struct i915_perf *perf,
 	u64 __user *uprop = uprops;
 	u32 i;
 	int ret;
+	u8 class, instance;
 	bool config_sseu = false;
 	struct drm_i915_gem_context_param_sseu user_sseu;
 
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
+			"Invalid no. of i915 perf properties given\n");
 		return -EINVAL;
 	}
 
+	/* Defaults when class:instance is not passed */
+	class = I915_ENGINE_CLASS_RENDER;
+	instance = 0;
+
 	for (i = 0; i < n_props; i++) {
 		u64 oa_period, oa_freq_hz;
 		u64 id, value;
@@ -4192,7 +4181,13 @@ static int read_properties_unlocked(struct i915_perf *perf,
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
@@ -4200,6 +4195,17 @@ static int read_properties_unlocked(struct i915_perf *perf,
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
+	if (!engine_supports_oa(props->engine))
+		return -EINVAL;
+
 	if (config_sseu) {
 		ret = get_sseu_config(&props->sseu, props->engine, &user_sseu);
 		if (ret) {
@@ -5210,8 +5216,11 @@ int i915_perf_ioctl_version(void)
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
index 8df261c5ab9b..b6922b52d85c 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -2758,6 +2758,26 @@ enum drm_i915_perf_property_id {
 	 */
 	DRM_I915_PERF_PROP_POLL_OA_PERIOD,
 
+	/**
+	 * In platforms with multiple OA buffers, the engine class instance must
+	 * be passed to open a stream to a OA unit corresponding to the engine.
+	 * Multiple engines may be mapped to the same OA unit.
+	 *
+	 * In addition to the class:instance, if a gem context is also passed, then
+	 * 1) the report headers of OA reports from other engines are squashed.
+	 * 2) OAR is enabled for the class:instance
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

