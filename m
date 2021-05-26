Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9EA3910A3
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 08:25:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20D566EC08;
	Wed, 26 May 2021 06:24:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 710D06EBA6;
 Wed, 26 May 2021 06:24:51 +0000 (UTC)
IronPort-SDR: /NAKMvGYL9sAsskPUJWeZP2DDkQ5Xx526yzr2C2M8hYElFthJtq4qbO53MhICnwut+VsJiEy8W
 JP9H63djDh3A==
X-IronPort-AV: E=McAfee;i="6200,9189,9995"; a="182033729"
X-IronPort-AV: E=Sophos;i="5.82,330,1613462400"; d="scan'208";a="182033729"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2021 23:24:48 -0700
IronPort-SDR: DkghBF0JxOVAsKR/qGYA/Jt2aMgo/5su0Uvwc7FQy6WDWyU4BkwyzrYjhlqzM3F4MjLH+7zFHe
 l5DbcinaOy4Q==
X-IronPort-AV: E=Sophos;i="5.82,330,1613462400"; d="scan'208";a="633376788"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2021 23:24:47 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Tue, 25 May 2021 23:42:21 -0700
Message-Id: <20210526064237.77853-3-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210526064237.77853-1-matthew.brost@intel.com>
References: <20210526064237.77853-1-matthew.brost@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/18] drm/i915/guc: use probe_error log for CT
 enablement failure
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

From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

We have a couple of failure injection points in the CT enablement path,
so we need to use i915_probe_error() to select the appropriate log level.
A new macro (CT_PROBE_ERROR) has been added to the set of CT logging
macros to be used in this scenario and upcoming ones.

While adding the new macros, fix the underlying logging mechanics used
by the existing ones (DRM_DEV_* -> drm_*) and move the inlines to
before they're used inside the macros.

Signed-off-by: Matthew Brost <matthew.brost@intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Reviewed-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 48 ++++++++++++-----------
 1 file changed, 25 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
index fa9e048cc65f..72b48ac9271a 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
@@ -7,14 +7,36 @@
 #include "intel_guc_ct.h"
 #include "gt/intel_gt.h"
 
+static inline struct intel_guc *ct_to_guc(struct intel_guc_ct *ct)
+{
+	return container_of(ct, struct intel_guc, ct);
+}
+
+static inline struct intel_gt *ct_to_gt(struct intel_guc_ct *ct)
+{
+	return guc_to_gt(ct_to_guc(ct));
+}
+
+static inline struct drm_i915_private *ct_to_i915(struct intel_guc_ct *ct)
+{
+	return ct_to_gt(ct)->i915;
+}
+
+static inline struct drm_device *ct_to_drm(struct intel_guc_ct *ct)
+{
+	return &ct_to_i915(ct)->drm;
+}
+
 #define CT_ERROR(_ct, _fmt, ...) \
-	DRM_DEV_ERROR(ct_to_dev(_ct), "CT: " _fmt, ##__VA_ARGS__)
+	drm_err(ct_to_drm(_ct), "CT: " _fmt, ##__VA_ARGS__)
 #ifdef CONFIG_DRM_I915_DEBUG_GUC
 #define CT_DEBUG(_ct, _fmt, ...) \
-	DRM_DEV_DEBUG_DRIVER(ct_to_dev(_ct), "CT: " _fmt, ##__VA_ARGS__)
+	drm_dbg(ct_to_drm(_ct), "CT: " _fmt, ##__VA_ARGS__)
 #else
 #define CT_DEBUG(...)	do { } while (0)
 #endif
+#define CT_PROBE_ERROR(_ct, _fmt, ...) \
+	i915_probe_error(ct_to_i915(ct), "CT: " _fmt, ##__VA_ARGS__)
 
 struct ct_request {
 	struct list_head link;
@@ -47,26 +69,6 @@ void intel_guc_ct_init_early(struct intel_guc_ct *ct)
 	INIT_WORK(&ct->requests.worker, ct_incoming_request_worker_func);
 }
 
-static inline struct intel_guc *ct_to_guc(struct intel_guc_ct *ct)
-{
-	return container_of(ct, struct intel_guc, ct);
-}
-
-static inline struct intel_gt *ct_to_gt(struct intel_guc_ct *ct)
-{
-	return guc_to_gt(ct_to_guc(ct));
-}
-
-static inline struct drm_i915_private *ct_to_i915(struct intel_guc_ct *ct)
-{
-	return ct_to_gt(ct)->i915;
-}
-
-static inline struct device *ct_to_dev(struct intel_guc_ct *ct)
-{
-	return ct_to_i915(ct)->drm.dev;
-}
-
 static inline const char *guc_ct_buffer_type_to_str(u32 type)
 {
 	switch (type) {
@@ -264,7 +266,7 @@ int intel_guc_ct_enable(struct intel_guc_ct *ct)
 err_deregister:
 	ct_deregister_buffer(ct, INTEL_GUC_CT_BUFFER_TYPE_RECV);
 err_out:
-	CT_ERROR(ct, "Failed to open open CT channel (err=%d)\n", err);
+	CT_PROBE_ERROR(ct, "Failed to open channel (err=%d)\n", err);
 	return err;
 }
 
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
