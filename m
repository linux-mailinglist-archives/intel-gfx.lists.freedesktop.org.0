Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24F6A195554
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 11:32:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6068D6E9F6;
	Fri, 27 Mar 2020 10:32:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 538416E9F1
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Mar 2020 10:32:12 +0000 (UTC)
IronPort-SDR: XY2YxMwwi+TECTyDtOKYOdjq59DzsMdB1GSEtS4WzsOHoO8mB3zLaHIrvRLkaDJmciA/EaWiSR
 QtEj23IAkIHA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2020 03:32:12 -0700
IronPort-SDR: Eh4YFYqrONVkcTbhgDvoXZpKYBcrCl/D23GA367iuUxmT0sdnj0n2QuiywcAydHPN+Sb/8ohK/
 HE+jw4CHkqmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,312,1580803200"; d="scan'208";a="394336262"
Received: from kdhanoa-mobl.ger.corp.intel.com (HELO delly.ger.corp.intel.com)
 ([10.249.34.55])
 by orsmga004.jf.intel.com with ESMTP; 27 Mar 2020 03:32:11 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Mar 2020 12:32:09 +0200
Message-Id: <20200327103209.3099292-4-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200327103209.3099292-1-lionel.g.landwerlin@intel.com>
References: <20200327103209.3099292-1-lionel.g.landwerlin@intel.com>
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

Add 2 new properties to the i915-perf open ioctl to specify an arry of
GEM context handles as well as the length of the array.

Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 51 ++++++++++++++++++++++++++++++--
 include/uapi/drm/i915_drm.h      | 21 +++++++++++++
 2 files changed, 69 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 74f59c5f60e4..887bd0c4d8e6 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -3686,7 +3686,8 @@ static int read_properties_unlocked(struct i915_perf *perf,
 				    struct perf_open_properties *props)
 {
 	u64 __user *uprop = uprops;
-	u32 i;
+	u32 __user *uctx_handles = NULL;
+	u32 i, n_uctx_handles = 0;
 	int ret;
 
 	memset(props, 0, sizeof(struct perf_open_properties));
@@ -3735,7 +3736,7 @@ static int read_properties_unlocked(struct i915_perf *perf,
 
 		switch ((enum drm_i915_perf_property_id)id) {
 		case DRM_I915_PERF_PROP_CTX_HANDLE:
-			if (props->n_ctx_handles > 0) {
+			if (props->n_ctx_handles > 0 || n_uctx_handles > 0) {
 				DRM_DEBUG("Context handle specified multiple times\n");
 				return -EINVAL;
 			}
@@ -3826,6 +3827,32 @@ static int read_properties_unlocked(struct i915_perf *perf,
 			props->has_sseu = true;
 			break;
 		}
+		case DRM_I915_PERF_PROP_CTX_HANDLE_ARRAY: {
+			/* HSW can only filter in HW and only on a single
+			 * context.
+			 */
+			if (IS_HASWELL(perf->i915)) {
+				DRM_DEBUG("Multi context filter not supported on HSW\n");
+				return -ENODEV;
+			}
+			uctx_handles = u64_to_user_ptr(value);
+			break;
+		}
+		case DRM_I915_PERF_PROP_CTX_HANDLE_ARRAY_LENGTH:
+			if (IS_HASWELL(perf->i915)) {
+				DRM_DEBUG("Multi context filter not supported on HSW\n");
+				return -ENODEV;
+			}
+			if (value > I915_PERF_MAX_FILTER_CONTEXTS) {
+				DRM_DEBUG("Out of range context handle array length\n");
+				return -EINVAL;
+			}
+			if (props->n_ctx_handles > 0 || n_uctx_handles > 0) {
+				DRM_DEBUG("Context handle specified multiple times\n");
+				return -EINVAL;
+			}
+			n_uctx_handles = value;
+			break;
 		case DRM_I915_PERF_PROP_MAX:
 			MISSING_CASE(id);
 			return -EINVAL;
@@ -3834,6 +3861,20 @@ static int read_properties_unlocked(struct i915_perf *perf,
 		uprop += 2;
 	}
 
+	if (n_uctx_handles > 0 && props->n_ctx_handles > 0) {
+		DRM_DEBUG("Context handle specified multiple times\n");
+		return -EINVAL;
+	}
+
+	for (i = 0; i < n_uctx_handles; i++) {
+		ret = get_user(props->ctx_handles[i], uctx_handles);
+		if (ret)
+			return ret;
+
+		uctx_handles++;
+		props->n_ctx_handles++;
+	}
+
 	return 0;
 }
 
@@ -4603,8 +4644,12 @@ int i915_perf_ioctl_version(void)
 	 * 4: Add DRM_I915_PERF_PROP_ALLOWED_SSEU to limit what contexts can
 	 *    be run for the duration of the performance recording based on
 	 *    their SSEU configuration.
+	 *
+	 * 5: Add DRM_I915_PERF_PROP_CTX_HANDLE_ARRAY &
+	 *    DRM_I915_PERF_PROP_CTX_HANDLE_ARRAY_LENGTH to allow an
+	 *    application monitor/pin multiple contexts.
 	 */
-	return 4;
+	return 5;
 }
 
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index db649d03ab52..02edd2e3ae84 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -1980,6 +1980,27 @@ enum drm_i915_perf_property_id {
 	 */
 	DRM_I915_PERF_PROP_GLOBAL_SSEU,
 
+	/**
+	 * Specifies an array of u32 GEM context handles to filter reports
+	 * with.
+	 *
+	 * Using this parameter is incompatible with using
+	 * DRM_I915_PERF_PROP_CTX_HANDLE.
+	 *
+	 * This property is available in perf revision 5.
+	 */
+	DRM_I915_PERF_PROP_CTX_HANDLE_ARRAY,
+
+	/**
+	 * Specifies the length of the array specified with
+	 * DRM_I915_PERF_PROP_CTX_HANDLE_ARRAY.
+	 *
+	 * The length must be in the range [1, 4].
+	 *
+	 * This property is available in perf revision 5.
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
