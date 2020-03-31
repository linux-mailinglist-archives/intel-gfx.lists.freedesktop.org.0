Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 685071995B1
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 13:48:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BA036E825;
	Tue, 31 Mar 2020 11:48:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B895B6E823
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Mar 2020 11:48:29 +0000 (UTC)
IronPort-SDR: ZH/FdatLen0vIrNqzd5hA4Nz08bUTwqCnGKzVA+AXJWUUCbL4kDN/LnzQ4S+SUvMB5gJ4WIfH+
 OcDiW+fwS41A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2020 04:48:29 -0700
IronPort-SDR: 0Tw4hX2IYHUlZ57SJCo58dVvvZeKd9c8spXFRJP7pL5glqDqNTMg8QCtMtEoU8sHh8+HEgcFm9
 cb4atSEc7sEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,327,1580803200"; d="scan'208";a="241890767"
Received: from dpohl-mobl.amr.corp.intel.com (HELO delly.ger.corp.intel.com)
 ([10.252.59.74])
 by fmsmga008.fm.intel.com with ESMTP; 31 Mar 2020 04:48:28 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 31 Mar 2020 14:48:21 +0300
Message-Id: <20200331114821.81957-3-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200331114821.81957-1-lionel.g.landwerlin@intel.com>
References: <20200331114821.81957-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 3/3] drm/i915/perf: enable filtering on
 multiple contexts
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
index 112bb5bd6665..a6d82329c178 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -3696,7 +3696,8 @@ static int read_properties_unlocked(struct i915_perf *perf,
 				    struct perf_open_properties *props)
 {
 	u64 __user *uprop = uprops;
-	u32 i;
+	u32 __user *uctx_handles = NULL;
+	u32 i, n_uctx_handles = 0;
 	int err;
 
 	memset(props, 0, sizeof(struct perf_open_properties));
@@ -3747,7 +3748,7 @@ static int read_properties_unlocked(struct i915_perf *perf,
 
 		switch ((enum drm_i915_perf_property_id)id) {
 		case DRM_I915_PERF_PROP_CTX_HANDLE:
-			if (props->n_ctx_handles > 0) {
+			if (props->n_ctx_handles > 0 || n_uctx_handles > 0) {
 				DRM_DEBUG("Context handle specified multiple times\n");
 				err = -EINVAL;
 				goto error;
@@ -3859,6 +3860,38 @@ static int read_properties_unlocked(struct i915_perf *perf,
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
@@ -3868,6 +3901,21 @@ static int read_properties_unlocked(struct i915_perf *perf,
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
@@ -4653,8 +4701,12 @@ int i915_perf_ioctl_version(void)
 	 *    interval for the hrtimer used to check for OA data.
 	 *
 	 * 6. Add edge trigger report generation support.
+	 *
+	 * 7: Add DRM_I915_PERF_PROP_CTX_HANDLE_ARRAY &
+	 *    DRM_I915_PERF_PROP_CTX_HANDLE_ARRAY_LENGTH to allow an
+	 *    application monitor/pin multiple contexts.
 	 */
-	return 6;
+	return 7;
 }
 
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 14b67cd6b54b..d2ec2eb98aed 100644
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
+	 * This property is available in perf revision 7.
+	 */
+	DRM_I915_PERF_PROP_CTX_HANDLE_ARRAY,
+
+	/**
+	 * Specifies the length of the array specified with
+	 * DRM_I915_PERF_PROP_CTX_HANDLE_ARRAY.
+	 *
+	 * The length must be in the range [1, 4].
+	 *
+	 * This property is available in perf revision 7.
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
