Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B4405353B7
	for <lists+intel-gfx@lfdr.de>; Thu, 26 May 2022 21:01:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9E2689ABE;
	Thu, 26 May 2022 19:01:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 716FD89ABE
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 May 2022 19:01:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653591676; x=1685127676;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EhZHalqyBiOGSGG+j5KD2zJX7rQT0HdG3R8QLTiX6Qs=;
 b=aNXk38BlvefSR2legX1x15UqbI6ylj7kNAbx/etuU6ZCv/wlZFvIpk6i
 QdMjOPfzu2UWDG4ds7yQmbZe3idbUC31fR9Z5o17dwufMB9hloPFtBy1s
 cbG/J5AidLTqoDae1JdsoBPt/5YU5RhgSMshp2ePBHeCjInB2sVjg51SC
 eQ3O8D3eosPlpAVg2PhBHqefPl/IQ9ddHLr4Rtq8kSSLtjrYSp38yUFv7
 q1XjN8+sE4LbuJAz6cY0fl5RF+9aTX+UGGELlR/vIEnHhjA22yfunEefS
 rwZ5CNQtoFKZqzRKBlwfCNVZW9wA79YwyimRrBpNwl2wgLisP8YvGrO/X A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10359"; a="273978987"
X-IronPort-AV: E=Sophos;i="5.91,252,1647327600"; d="scan'208";a="273978987"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2022 12:00:49 -0700
X-IronPort-AV: E=Sophos;i="5.91,252,1647327600"; d="scan'208";a="574034403"
Received: from orsosgc001.jf.intel.com ([10.165.21.154])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2022 12:00:49 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 May 2022 12:00:43 -0700
Message-Id: <2a69623d431e84b6b60518e5b667051efaf9bd5b.1653591227.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1653591227.git.ashutosh.dixit@intel.com>
References: <cover.1653591227.git.ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/gt: Create gt/gtN/.defaults for
 per gt sysfs defaults
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

Create a gt/gtN/.defaults directory (similar to
engine/<engine-name>/.defaults) to expose default parameter values for each
gt in sysfs. This allows userspace to restore default parameter values
after they have changed. The empty 'struct gt_defaults' will be populated
by subsequent patches.

v2: Changed 'struct intel_rps_defaults rps_defaults' to
    'struct gt_defaults defaults' (Andi)

Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_sysfs.c | 5 +++++
 drivers/gpu/drm/i915/gt/intel_gt_types.h | 7 +++++++
 2 files changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs.c b/drivers/gpu/drm/i915/gt/intel_gt_sysfs.c
index 9e4ebf53379b..6447c0376dbd 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs.c
@@ -101,6 +101,10 @@ void intel_gt_sysfs_register(struct intel_gt *gt)
 				 gt->i915->sysfs_gt, "gt%d", gt->info.id))
 		goto exit_fail;
 
+	gt->sysfs_defaults = kobject_create_and_add(".defaults", &gt->sysfs_gt);
+	if (!gt->sysfs_defaults)
+		goto exit_fail;
+
 	intel_gt_sysfs_pm_init(gt, &gt->sysfs_gt);
 
 	return;
@@ -113,5 +117,6 @@ void intel_gt_sysfs_register(struct intel_gt *gt)
 
 void intel_gt_sysfs_unregister(struct intel_gt *gt)
 {
+	kobject_put(gt->sysfs_defaults);
 	kobject_put(&gt->sysfs_gt);
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index 993f003dad1d..9842bf0bc4cb 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -68,6 +68,9 @@ enum intel_submission_method {
 	INTEL_SUBMISSION_GUC,
 };
 
+struct gt_defaults {
+};
+
 struct intel_gt {
 	struct drm_i915_private *i915;
 	struct intel_uncore *uncore;
@@ -228,6 +231,10 @@ struct intel_gt {
 
 	/* gt/gtN sysfs */
 	struct kobject sysfs_gt;
+
+	/* sysfs defaults per gt */
+	struct gt_defaults defaults;
+	struct kobject *sysfs_defaults;
 };
 
 enum intel_gt_scratch_field {
-- 
2.34.1

