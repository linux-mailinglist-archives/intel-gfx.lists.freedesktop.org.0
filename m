Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A75C7EC0FB
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Nov 2023 11:54:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3548210E549;
	Wed, 15 Nov 2023 10:54:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FEE210E549
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Nov 2023 10:54:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700045679; x=1731581679;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:to:cc;
 bh=ZMCsqqCrzaHwSmxTAElmqFjM8Y7OOuhnwqUbSqZflwM=;
 b=M6d6g37+NBxMZF56pS89OQtGLE3tHrqIR6xCgQUPHviVwJ99JjQcfL51
 GKnknlQcF1dgABjif12yYf3FNhzaiZ0TWFvk+GRT3ZIJi5wQ7wNz24Fko
 NlM6oBwY5ivMhMABH4uadxGVcyG83sf+ivMk0YPwmDXo6nLDw8aRGBH20
 a/kPE9L6e+7G5kGw3TNjY942+8cBP3Hx3YcIt1P8Cq7H57wLq/iZNE0wq
 mhBD4NHKJun3SD70jNgwx4VEmMlM6wUg9uJw6MIeop6P+CEmuxu7esQ8S
 yvAAfQDWGylYDTiW4JDMkNtBLiTZdoQnY8GmeDdNCeYx80IkdkkOtTsCq Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="393713008"
X-IronPort-AV: E=Sophos;i="6.03,304,1694761200"; d="scan'208";a="393713008"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 02:54:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="768554246"
X-IronPort-AV: E=Sophos;i="6.03,304,1694761200"; d="scan'208";a="768554246"
Received: from lab-ah.igk.intel.com ([10.102.138.202])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 02:54:36 -0800
From: Andrzej Hajda <andrzej.hajda@intel.com>
Date: Wed, 15 Nov 2023 11:54:03 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231115-dont_clean_gt_on_error_path-v2-1-54250125470a@intel.com>
X-B4-Tracking: v=1; b=H4sIAEqjVGUC/42OQQ6DIBBFr9KwLq1gE2tXvUdjyAiDkiiQgZo2x
 rsXPUGXb/He/ytLSA4Te5xWRri45IIvIM8npkfwA3JnCjNZyVoIceMm+Kz0hODVkFXwCokCqQh
 55K3QptW1BqiAlUIktO5z1F9d4R4S8p7A63FvvmPKhDBfDc08u7gro0s50Pf4s4hd/G96EVzwu
 rHSwl021sin8xmniw4z67Zt+wFMZipk6QAAAA==
To: intel-gfx@lists.freedesktop.org
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3121;
 i=andrzej.hajda@intel.com; h=from:subject:message-id;
 bh=ZMCsqqCrzaHwSmxTAElmqFjM8Y7OOuhnwqUbSqZflwM=;
 b=owEB7QES/pANAwAKASNispPeEP3XAcsmYgBlVKNraD6SIRdJbTHWqOvjLwjNnyXWUUD4MasW71H5
 Lk78/q6JAbMEAAEKAB0WIQT8qEQxNN2/XeF/A00jYrKT3hD91wUCZVSjawAKCRAjYrKT3hD910ciDA
 CCibgSqphMbUuOolpeGjqLa6+yhKOkGJZw1AsFBfqUO7kP8gFliEItm/vL5ITraSDUwHwhd0q6WAiA
 lIrG5xjAsEpG56fF2pfMftZqmIJDkVEW+t5I7hwOZT+Lzo2yxln1qG4aWDOqgELI45nXtn8Bcv9Ek9
 UQ37eUSoNNbDaf8FOhSvzHfKSkcFwVrpto1D8Pv2ijBO8NJ/2agQy3nYpOGcSKURdgnW9pKxaagEhB
 ysykWxcQfYUydXnztPrXBCIe1FFhDGUr4i0pK5NGqMLZWdhgogFWleETbT0FsbKvtycfJNu/gpihtR
 D0QD58RPrTtArZJL3pW7DylmmBT6Ybc5B97zWNx5yOVtRntDhLbe1CNdXquGLCa8maruduBQJMo/Hb
 6Sp44n8T8s0xeOjFwwFyYz14GjL7yWMGuQ0fY2ZddZl4ixQqfH7DVKiZ+rIiGXhDgEwfROVN/t3fe9
 5Dnb2EmSGkZ2Ui5JbYXtpt1sO37lZOD0cby+g8q5b/poE=
X-Developer-Key: i=andrzej.hajda@intel.com; a=openpgp;
 fpr=FCA8443134DDBF5DE17F034D2362B293DE10FDD7
Subject: [Intel-gfx] [PATCH v2] drm/i915: do not clean GT table on error path
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>,
 Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The only task of intel_gt_release_all is to zero gt table. Calling
it on error path prevents intel_gt_driver_late_release_all (called from
i915_driver_late_release) to cleanup GTs, causing leakage.
After i915_driver_late_release GT array is not used anymore so
it does not need cleaning at all.

Sample leak report:

BUG i915_request (...): Objects remaining in i915_request on __kmem_cache_shutdown()
...
Object 0xffff888113420040 @offset=64
Allocated in __i915_request_create+0x75/0x610 [i915] age=18339 cpu=1 pid=1454
 kmem_cache_alloc+0x25b/0x270
 __i915_request_create+0x75/0x610 [i915]
 i915_request_create+0x109/0x290 [i915]
 __engines_record_defaults+0xca/0x440 [i915]
 intel_gt_init+0x275/0x430 [i915]
 i915_gem_init+0x135/0x2c0 [i915]
 i915_driver_probe+0x8d1/0xdc0 [i915]

v2: removed whole intel_gt_release_all

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8489
Fixes: bec68cc9ea42d8 ("drm/i915: Prepare for multiple GTs")
Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
- Link to v1: https://lore.kernel.org/r/20231114-dont_clean_gt_on_error_path-v1-1-37f2fa827fd2@intel.com
---
 drivers/gpu/drm/i915/gt/intel_gt.c | 11 -----------
 drivers/gpu/drm/i915/i915_driver.c |  4 +---
 2 files changed, 1 insertion(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index ed32bf5b15464e..ba1186fc524f84 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -982,8 +982,6 @@ int intel_gt_probe_all(struct drm_i915_private *i915)
 
 err:
 	i915_probe_error(i915, "Failed to initialize %s! (%d)\n", gtdef->name, ret);
-	intel_gt_release_all(i915);
-
 	return ret;
 }
 
@@ -1002,15 +1000,6 @@ int intel_gt_tiles_init(struct drm_i915_private *i915)
 	return 0;
 }
 
-void intel_gt_release_all(struct drm_i915_private *i915)
-{
-	struct intel_gt *gt;
-	unsigned int id;
-
-	for_each_gt(gt, i915, id)
-		i915->gt[id] = NULL;
-}
-
 void intel_gt_info_print(const struct intel_gt_info *info,
 			 struct drm_printer *p)
 {
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 01fd25b622d16c..2a1faf4039659c 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -776,7 +776,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	ret = i915_driver_mmio_probe(i915);
 	if (ret < 0)
-		goto out_tiles_cleanup;
+		goto out_runtime_pm_put;
 
 	ret = i915_driver_hw_probe(i915);
 	if (ret < 0)
@@ -836,8 +836,6 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	i915_ggtt_driver_late_release(i915);
 out_cleanup_mmio:
 	i915_driver_mmio_release(i915);
-out_tiles_cleanup:
-	intel_gt_release_all(i915);
 out_runtime_pm_put:
 	enable_rpm_wakeref_asserts(&i915->runtime_pm);
 	i915_driver_late_release(i915);

---
base-commit: 1489bab52c281a869295414031a56506a375b036
change-id: 20231114-dont_clean_gt_on_error_path-91cd9c3caa0a

Best regards,
-- 
Andrzej Hajda <andrzej.hajda@intel.com>

