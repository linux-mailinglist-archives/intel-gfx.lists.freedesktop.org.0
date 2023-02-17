Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC5069A33C
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Feb 2023 01:59:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86B6C10E3C9;
	Fri, 17 Feb 2023 00:59:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5107010E1AA
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Feb 2023 00:58:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676595536; x=1708131536;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QeXmhPNYOYsCHaiLgt2gi+e8xKzoRtED2nR/EZrvk4A=;
 b=hIy5qB5bAC3WFjzPxrld6buVOF9vU95ws56gtWhImNt8GUrnQ6fTskYq
 8bL0am/5kLSwKTUKNIXD7tBk/Dl1mBsaShGXKe0UcfVVgpZp3Ojog3dqO
 ROH2NujyW77zlbflAtRbHsHInEyANIsse3LV6wxFVPcLnDc4ihKLrBQJn
 gzULqLiXFMQYjNVM2I0xKQ5vgo483Wf1hLtIN5AdygopHgc+E7XqZ/YfM
 WaxTkTpyPyYC+ev+guDkuREcV65DY6nCDVbTDkQxnEqKku2VnSGQZ0niN
 d0QDgVKUjPvLXaUJ+Adce+LEcB3uut+3NdGvJJjNHGuT6g6IjQ6JUd8jc g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="311512388"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="311512388"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 16:58:55 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="844390223"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="844390223"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 16:58:54 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Feb 2023 16:58:49 -0800
Message-Id: <20230217005850.2511422-9-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230217005850.2511422-1-umesh.nerlige.ramappa@intel.com>
References: <20230217005850.2511422-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 8/9] drm/i915/perf: Add engine class instance
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

Current implementation of perf defaults to render and configures the
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
index d3a1892c93be..f028df812067 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -4035,40 +4035,29 @@ static int read_properties_unlocked(struct i915_perf *perf,
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
@@ -4189,7 +4178,13 @@ static int read_properties_unlocked(struct i915_perf *perf,
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
@@ -4197,6 +4192,17 @@ static int read_properties_unlocked(struct i915_perf *perf,
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
@@ -5208,8 +5214,11 @@ int i915_perf_ioctl_version(void)
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

