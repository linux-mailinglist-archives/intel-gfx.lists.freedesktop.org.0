Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AC6E19F74D
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Apr 2020 15:55:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7EAC6E3D0;
	Mon,  6 Apr 2020 13:55:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA6126E3CB
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Apr 2020 13:55:25 +0000 (UTC)
IronPort-SDR: Or+5nekbf+QAh+8Znkbxig+sew9wrYiNyVwZyc8Hjwx0EBe6L5fG8UKt3SRmHemmLPkRpGa6s1
 buGEU8En7k3Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2020 06:55:25 -0700
IronPort-SDR: FeRV4qvbozCh/vhjx0kN9JSh5478bLH1RPzo14yl+0lLSTNS7yQshgWnudxflXBjf05Fj618KD
 ypdZhqSFSSww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,351,1580803200"; d="scan'208";a="450838992"
Received: from unknown (HELO delly.ger.corp.intel.com) ([10.252.48.224])
 by fmsmga005.fm.intel.com with ESMTP; 06 Apr 2020 06:55:24 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Apr 2020 16:55:14 +0300
Message-Id: <20200406135514.569205-3-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200406135514.569205-1-lionel.g.landwerlin@intel.com>
References: <20200406135514.569205-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/perf: enable filtering on multiple
 contexts
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add 2 new properties to the i915-perf open ioctl to specify an array
of GEM context handles as well as the length of the array.

This can be used by drivers using multiple GEM contexts to implement a
single GL context.

Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 58 ++++++++++++++++++++++++++++++--
 include/uapi/drm/i915_drm.h      | 21 ++++++++++++
 2 files changed, 76 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 008d2e55f923..48f77a7253bc 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -3656,7 +3656,8 @@ static int read_properties_unlocked(struct i915_perf *perf,
 				    struct perf_open_properties *props)
 {
 	u64 __user *uprop = uprops;
-	u32 i;
+	u32 __user *uctx_handles = NULL;
+	u32 i, n_uctx_handles = 0;
 	int err;
 
 	memset(props, 0, sizeof(struct perf_open_properties));
@@ -3707,7 +3708,7 @@ static int read_properties_unlocked(struct i915_perf *perf,
 
 		switch ((enum drm_i915_perf_property_id)id) {
 		case DRM_I915_PERF_PROP_CTX_HANDLE:
-			if (props->n_ctx_handles > 0) {
+			if (props->n_ctx_handles > 0 || n_uctx_handles > 0) {
 				DRM_DEBUG("Context handle specified multiple times\n");
 				err = -EINVAL;
 				goto error;
@@ -3819,6 +3820,38 @@ static int read_properties_unlocked(struct i915_perf *perf,
 			}
 			props->poll_oa_period = value;
 			break;
+		case DRM_I915_PERF_PROP_CTX_HANDLE_ARRAY:
+			/* HSW can only filter in HW and only on a single
+			 * context.
+			 */
+			if (IS_HASWELL(perf->i915)) {
+				DRM_DEBUG("Multi context filter not supported on HSW\n");
+				err = -ENODEV;
+				goto error;
+			}
+			uctx_handles = u64_to_user_ptr(value);
+			break;
+		case DRM_I915_PERF_PROP_CTX_HANDLE_ARRAY_LENGTH:
+			if (IS_HASWELL(perf->i915)) {
+				DRM_DEBUG("Multi context filter not supported on HSW\n");
+				err = -ENODEV;
+				goto error;
+			}
+			if (props->n_ctx_handles > 0 || n_uctx_handles > 0) {
+				DRM_DEBUG("Context handle specified multiple times\n");
+				err = -EINVAL;
+				goto error;
+			}
+			props->ctx_handles =
+				kmalloc_array(value,
+					      sizeof(*props->ctx_handles),
+					      GFP_KERNEL);
+			if (!props->ctx_handles) {
+				err = -ENOMEM;
+				goto error;
+			}
+			n_uctx_handles = value;
+			break;
 		case DRM_I915_PERF_PROP_MAX:
 			MISSING_CASE(id);
 			err = -EINVAL;
@@ -3828,6 +3861,21 @@ static int read_properties_unlocked(struct i915_perf *perf,
 		uprop += 2;
 	}
 
+	if (n_uctx_handles > 0 && props->n_ctx_handles > 0) {
+		DRM_DEBUG("Context handle specified multiple times\n");
+		err = -EINVAL;
+		goto error;
+	}
+
+	for (i = 0; i < n_uctx_handles; i++) {
+		err = get_user(props->ctx_handles[i], uctx_handles);
+		if (err)
+			goto error;
+
+		uctx_handles++;
+		props->n_ctx_handles++;
+	}
+
 	return 0;
 
 error:
@@ -4611,8 +4659,12 @@ int i915_perf_ioctl_version(void)
 	 *
 	 * 5: Add DRM_I915_PERF_PROP_POLL_OA_PERIOD parameter that controls the
 	 *    interval for the hrtimer used to check for OA data.
+	 *
+	 * 6: Add DRM_I915_PERF_PROP_CTX_HANDLE_ARRAY &
+	 *    DRM_I915_PERF_PROP_CTX_HANDLE_ARRAY_LENGTH to allow an
+	 *    application monitor/pin multiple contexts.
 	 */
-	return 5;
+	return 6;
 }
 
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 14b67cd6b54b..f80e7932d728 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -1993,6 +1993,27 @@ enum drm_i915_perf_property_id {
 	 */
 	DRM_I915_PERF_PROP_POLL_OA_PERIOD,
 
+	/**
+	 * Specifies an array of u32 GEM context handles to filter reports
+	 * with.
+	 *
+	 * Using this parameter is incompatible with using
+	 * DRM_I915_PERF_PROP_CTX_HANDLE.
+	 *
+	 * This property is available in perf revision 6.
+	 */
+	DRM_I915_PERF_PROP_CTX_HANDLE_ARRAY,
+
+	/**
+	 * Specifies the length of the array specified with
+	 * DRM_I915_PERF_PROP_CTX_HANDLE_ARRAY.
+	 *
+	 * The length must be in the range [1, 4].
+	 *
+	 * This property is available in perf revision 6.
+	 */
+	DRM_I915_PERF_PROP_CTX_HANDLE_ARRAY_LENGTH,
+
 	DRM_I915_PERF_PROP_MAX /* non-ABI */
 };
 
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
