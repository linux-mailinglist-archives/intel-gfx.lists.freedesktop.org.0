Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1FCF3D306E
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jul 2021 01:37:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EB176F5DF;
	Thu, 22 Jul 2021 23:36:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B70796F5A9;
 Thu, 22 Jul 2021 23:36:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10053"; a="272883243"
X-IronPort-AV: E=Sophos;i="5.84,262,1620716400"; d="scan'208";a="272883243"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2021 16:36:39 -0700
X-IronPort-AV: E=Sophos;i="5.84,262,1620716400"; d="scan'208";a="470860952"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2021 16:36:39 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Thu, 22 Jul 2021 16:54:14 -0700
Message-Id: <20210722235426.31831-22-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210722235426.31831-1-matthew.brost@intel.com>
References: <20210722235426.31831-1-matthew.brost@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 21/33] drm/i915/guc: Connect reset modparam
 updates to GuC policy flags
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

From: John Harrison <John.C.Harrison@Intel.com>

Changing the reset module parameter has no effect on a running GuC.
The corresponding entry in the ADS must be updated and then the GuC
informed via a Host2GuC message.

The new debugfs interface to module parameters allows this to happen.
However, connecting the parameter data address back to anything useful
is messy. One option would be to pass a new private data structure
address through instead of just the parameter pointer. However, that
means having a new (and different) data structure for each parameter
and a new (and different) write function for each parameter. This
method keeps everything generic by instead using a string lookup on
the directory entry name.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Signed-off-by: Matthew Brost <matthew.brost@intel.com>
Reviewed-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c |  2 +-
 drivers/gpu/drm/i915/i915_debugfs_params.c | 32 ++++++++++++++++++++++
 2 files changed, 33 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index e43d5e891105..b0116cce42dd 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -99,7 +99,7 @@ static int guc_action_policies_update(struct intel_guc *guc, u32 policy_offset)
 		policy_offset
 	};
 
-	return intel_guc_send(guc, action, ARRAY_SIZE(action));
+	return intel_guc_send_busy_loop(guc, action, ARRAY_SIZE(action), 0, true);
 }
 
 int intel_guc_global_policies_update(struct intel_guc *guc)
diff --git a/drivers/gpu/drm/i915/i915_debugfs_params.c b/drivers/gpu/drm/i915/i915_debugfs_params.c
index 4e2b077692cb..ce0d97686919 100644
--- a/drivers/gpu/drm/i915/i915_debugfs_params.c
+++ b/drivers/gpu/drm/i915/i915_debugfs_params.c
@@ -6,9 +6,21 @@
 #include <linux/kernel.h>
 
 #include "i915_debugfs_params.h"
+#include "gt/intel_gt.h"
+#include "gt/uc/intel_guc.h"
 #include "i915_drv.h"
 #include "i915_params.h"
 
+#define MATCH_DEBUGFS_NODE_NAME(_file, _name) \
+	(strcmp((_file)->f_path.dentry->d_name.name, (_name)) == 0)
+
+#define GET_I915(i915, name, ptr)	\
+	do {	\
+		struct i915_params *params;	\
+		params = container_of(((void *) (ptr)), typeof(*params), name);	\
+		(i915) = container_of(params, typeof(*(i915)), params);	\
+	} while (0)
+
 /* int param */
 static int i915_param_int_show(struct seq_file *m, void *data)
 {
@@ -24,6 +36,16 @@ static int i915_param_int_open(struct inode *inode, struct file *file)
 	return single_open(file, i915_param_int_show, inode->i_private);
 }
 
+static int notify_guc(struct drm_i915_private *i915)
+{
+	int ret = 0;
+
+	if (intel_uc_uses_guc_submission(&i915->gt.uc))
+		ret = intel_guc_global_policies_update(&i915->gt.uc.guc);
+
+	return ret;
+}
+
 static ssize_t i915_param_int_write(struct file *file,
 				    const char __user *ubuf, size_t len,
 				    loff_t *offp)
@@ -81,8 +103,10 @@ static ssize_t i915_param_uint_write(struct file *file,
 				     const char __user *ubuf, size_t len,
 				     loff_t *offp)
 {
+	struct drm_i915_private *i915;
 	struct seq_file *m = file->private_data;
 	unsigned int *value = m->private;
+	unsigned int old = *value;
 	int ret;
 
 	ret = kstrtouint_from_user(ubuf, len, 0, value);
@@ -95,6 +119,14 @@ static ssize_t i915_param_uint_write(struct file *file,
 			*value = b;
 	}
 
+	if (!ret && MATCH_DEBUGFS_NODE_NAME(file, "reset")) {
+		GET_I915(i915, reset, value);
+
+		ret = notify_guc(i915);
+		if (ret)
+			*value = old;
+	}
+
 	return ret ?: len;
 }
 
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
