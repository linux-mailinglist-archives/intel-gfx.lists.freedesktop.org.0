Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 691E25F3E28
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 10:21:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3755310E18C;
	Tue,  4 Oct 2022 08:21:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FB5F10E18C
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 08:21:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664871677; x=1696407677;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KjnBBrNPuL7Fifo9DThJVdB2A3ImTPxsutYKPk/+DLg=;
 b=GMUnpBK4sKFE1IJrsAaPcsLX6PAezk79gipGgYA0qKdyykA57TaHjReO
 KWSLf1A1Jillu+InqAUniLCljsPbDrsslj0qCqwnDz1ov511oMxG1f8nq
 o9eJlir9USLxp/I9TB23Pcy8bBXIcVUIsXJkqm9elS4YXjJz1OUsziZzU
 NF+a9dwHqyG9VYDskIqKdoxM+7GLLxc3kdShfGsxqBb+7ZGHhn9qL8PLL
 Ukfa4zeQt+HCwLRkQN027flpTcwpThf/he1VLLhzuISXce+3vumX8wxcw
 4gFAFCncofUJgdnoUK4YiNpm7APaGKNKWUpQlrjC0odMWMqL77lsfSUPD w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="282567933"
X-IronPort-AV: E=Sophos;i="5.93,367,1654585200"; d="scan'208";a="282567933"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 01:21:16 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="692399882"
X-IronPort-AV: E=Sophos;i="5.93,367,1654585200"; d="scan'208";a="692399882"
Received: from nvishwa1-desk.sc.intel.com ([172.25.29.76])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 04 Oct 2022 01:21:16 -0700
From: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Oct 2022 01:20:47 -0700
Message-Id: <20221004082047.23902-1-niranjana.vishwanathapura@intel.com>
X-Mailer: git-send-email 2.21.0.rc0.32.g243a4c7e27
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC] drm/i915/selftests: Fix overwriting ggtt
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

Looks like vma and gtt mock selftests overwrite the ggtt
initialized by mock_gem_device() by calling intel_gt_assign_ggtt()
and mock_init_ggtt() functions.
The side effect seems to be mock_destroy_device() tries to
release the ggtt already released by mock_fini_ggtt() instead of
releasing the ggtt created by mock_gem_device() function.

I ran into this issue with vm_bind patch series.
https://patchwork.freedesktop.org/series/105879/#rev5

I am fixing the vm_bind patch series by remvoing the vm->root_obj
initialization for ggtt (it is required only for ppgtt upon user
request).

But we need to address the underlying problem.
But with this patch, I am seeing some of the vma and gtt mock
selftests run into other crashes. So, this patch is not complete
and I am missing the big picture here. Hence this RFC.

Signed-off-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
---
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c | 16 ++--------------
 drivers/gpu/drm/i915/selftests/i915_vma.c     | 16 ++--------------
 2 files changed, 4 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
index ea2cf1080979..9b0dae1d1a68 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
@@ -1919,30 +1919,18 @@ int i915_gem_gtt_mock_selftests(void)
 		SUBTEST(igt_gtt_insert),
 	};
 	struct drm_i915_private *i915;
-	struct intel_gt *gt;
 	int err;
 
 	i915 = mock_gem_device();
 	if (!i915)
 		return -ENOMEM;
 
-	/* allocate the ggtt */
-	err = intel_gt_assign_ggtt(to_gt(i915));
-	if (err)
-		goto out_put;
-
-	gt = to_gt(i915);
-
-	mock_init_ggtt(gt);
-
-	err = i915_subtests(tests, gt->ggtt);
+	err = i915_subtests(tests, to_gt(i915)->ggtt);
 
 	mock_device_flush(i915);
 	i915_gem_drain_freed_objects(i915);
-	mock_fini_ggtt(gt->ggtt);
-
-out_put:
 	mock_destroy_device(i915);
+
 	return err;
 }
 
diff --git a/drivers/gpu/drm/i915/selftests/i915_vma.c b/drivers/gpu/drm/i915/selftests/i915_vma.c
index 71b52d5efef4..dbe78ed408e5 100644
--- a/drivers/gpu/drm/i915/selftests/i915_vma.c
+++ b/drivers/gpu/drm/i915/selftests/i915_vma.c
@@ -923,30 +923,18 @@ int i915_vma_mock_selftests(void)
 		SUBTEST(igt_vma_partial),
 	};
 	struct drm_i915_private *i915;
-	struct intel_gt *gt;
 	int err;
 
 	i915 = mock_gem_device();
 	if (!i915)
 		return -ENOMEM;
 
-	/* allocate the ggtt */
-	err = intel_gt_assign_ggtt(to_gt(i915));
-	if (err)
-		goto out_put;
-
-	gt = to_gt(i915);
-
-	mock_init_ggtt(gt);
-
-	err = i915_subtests(tests, gt->ggtt);
+	err = i915_subtests(tests, to_gt(i915)->ggtt);
 
 	mock_device_flush(i915);
 	i915_gem_drain_freed_objects(i915);
-	mock_fini_ggtt(gt->ggtt);
-
-out_put:
 	mock_destroy_device(i915);
+
 	return err;
 }
 
-- 
2.21.0.rc0.32.g243a4c7e27

