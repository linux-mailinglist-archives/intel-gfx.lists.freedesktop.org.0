Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67AF666674A
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jan 2023 00:56:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 343EE10E840;
	Wed, 11 Jan 2023 23:56:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 406E810E170
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Jan 2023 23:56:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673481376; x=1705017376;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=x4CXsg5e5UhdGUDOBoMuneXk/sbxN8JXuIaU+8esK4k=;
 b=aAzZ4zO0qpm0wWQIYiFIy/Xa4glcnXeXhh/6yKwSoZlnvBQOn1SYYedS
 kL1GaC6aWG02THHFjilC8RdJu9tsYkU3aUSQDdeX2i0iReRfozblQLNQN
 /oGTPe4tmf0ABN6Y9zsL16+PkgVGjr+IGwSlkt2dPRpLPA/D9HoE/j6Xt
 T0Msh2A4/4KepDhliA/eXEKfqsbnhGRwbHhl4RqqRncbV+/TqnFlpO/cv
 +gh1z4BEtL/Ch6yzxbONWDw74QtAhBZ3tVRMwqGAPbXMS3RChs8MssF1o
 jG8TzzdX5sBYTjrQu0iO/u2zZLtWl62Jb0fNrgDo2fuQphu2xXdkizi/V g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="307090901"
X-IronPort-AV: E=Sophos;i="5.96,318,1665471600"; d="scan'208";a="307090901"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 15:56:14 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="831486382"
X-IronPort-AV: E=Sophos;i="5.96,318,1665471600"; d="scan'208";a="831486382"
Received: from invictus.jf.intel.com ([10.165.21.134])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 15:56:14 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Jan 2023 15:55:28 -0800
Message-Id: <20230111235531.3353815-7-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230111235531.3353815-1-radhakrishna.sripada@intel.com>
References: <20230111235531.3353815-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH dii-client 6/9] drm/i915/debugfs: Multiplex
 upper layer interfaces to act on all gt's
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

From: Andi Shyti <andi.shyti@linux.intel.com>

Commit 82a149a62b6b5 ('drm/i915/gt: move remaining debugfs
interfaces into gt') moves gt related debugfs files in the gtX/
directories to act on specific gt's individually.

The original files are kept intact in the same location in order
to not break userspace users. But they were performing only on
the root tile (tile 0).

Add a multiplexing functionality to the higher directories files
so that they can perform the operations on all the tiles in a
with a single write.

In the read case they provide an or'ed value amongst the tiles.

Cc: Maciej Patelczyk <maciej.patelczyk@intel.com>
Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/i915_debugfs.c | 38 ++++++++++++++++++++++++++---
 1 file changed, 34 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index a356ca490159..d64e9e3a439d 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -575,14 +575,36 @@ static int i915_wa_registers(struct seq_file *m, void *unused)
 static int i915_wedged_get(void *data, u64 *val)
 {
 	struct drm_i915_private *i915 = data;
+	struct intel_gt *gt;
+	unsigned int i;
 
-	return intel_gt_debugfs_reset_show(to_gt(i915), val);
+	*val = 0;
+
+	for_each_gt(gt, i915, i) {
+		int ret;
+		u64 v;
+
+		ret = intel_gt_debugfs_reset_show(gt, &v);
+		if (ret)
+			return ret;
+
+		/* at least one tile should be wedged */
+		*val |= !!v;
+		if (*val)
+			break;
+	}
+
+	return 0;
 }
 
 static int i915_wedged_set(void *data, u64 val)
 {
 	struct drm_i915_private *i915 = data;
-	intel_gt_debugfs_reset_store(to_gt(i915), val);
+	struct intel_gt *gt;
+	unsigned int i;
+
+	for_each_gt(gt, i915, i)
+		intel_gt_debugfs_reset_store(gt, val);
 
 	return 0;
 }
@@ -732,7 +754,11 @@ static int i915_sseu_status(struct seq_file *m, void *unused)
 static int i915_forcewake_open(struct inode *inode, struct file *file)
 {
 	struct drm_i915_private *i915 = inode->i_private;
-	intel_gt_pm_debugfs_forcewake_user_open(to_gt(i915));
+	struct intel_gt *gt;
+	unsigned int i;
+
+	for_each_gt(gt, i915, i)
+		intel_gt_pm_debugfs_forcewake_user_open(gt);
 
 	return 0;
 }
@@ -740,7 +766,11 @@ static int i915_forcewake_open(struct inode *inode, struct file *file)
 static int i915_forcewake_release(struct inode *inode, struct file *file)
 {
 	struct drm_i915_private *i915 = inode->i_private;
-	intel_gt_pm_debugfs_forcewake_user_release(to_gt(i915));
+	struct intel_gt *gt;
+	unsigned int i;
+
+	for_each_gt(gt, i915, i)
+		intel_gt_pm_debugfs_forcewake_user_release(gt);
 
 	return 0;
 }
-- 
2.34.1

