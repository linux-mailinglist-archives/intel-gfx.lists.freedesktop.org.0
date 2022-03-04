Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB8B14CD1CF
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Mar 2022 10:59:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07E7110E4DB;
	Fri,  4 Mar 2022 09:59:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28D5110E47E
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Mar 2022 09:59:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646387992; x=1677923992;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0t2pTuPaJtOr+WhxAkKkiU3oUvi2WYU/VWJ+7BpeVMA=;
 b=inT/PdcZX9MX7S/SZ+jEw2QT7ijpJyEKDVse2jF7LktBI3FLl6qqGSQh
 xnSh/uGaM1CndE0XIkVOTLaxDmkQbFWb1oRmCEuwBbeKHe9jX7WXuyONl
 ihwtIzROqDohkz0jOm8ofYiiuVR6J4Uo7pc6k/tfNGjSDh5n1Ctiej8hz
 JPTIjJF4CABY1kqdpNRBhDRuGNDFeZ8pA8V4CapMkuYbpZ4z43OFGJg02
 Ou/HKa1iGp1bUPszlSItqBGbH8Qg5r5w0wCA+6DJZuNLnXM4E1wkP+4i6
 ZW128RnuEk/vJa4VLvWY04X5jvV+A5uhBHyCM+xtKSu1uzaTUs+7cXcEM Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10275"; a="317170037"
X-IronPort-AV: E=Sophos;i="5.90,154,1643702400"; d="scan'208";a="317170037"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 01:59:52 -0800
X-IronPort-AV: E=Sophos;i="5.90,154,1643702400"; d="scan'208";a="710284655"
Received: from vkats-mobl1.ccr.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.28.8])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 01:59:50 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Mar 2022 09:59:34 +0000
Message-Id: <20220304095934.925036-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220304095934.925036-1-matthew.auld@intel.com>
References: <20220304095934.925036-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 2/2] drm/i915: limit the async bind to
 bind_async_flags
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If the vm doesn't request async binding, like for example with the dpt,
then we should be able to skip the async path and avoid calling
i915_vm_lock_objects() altogether. Currently if we have a moving fence
set for the BO(even though it might have signalled), we still take the
async patch regardless of the bind_async setting, and then later still
end up just doing i915_gem_object_wait_moving_fence() anyway.

Alternatively we would need to add dummy scratch object which can be
locked, just for the dpt.

Suggested-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/i915_vma.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 94fcdb7bd21d..4d4d3659c938 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -1360,8 +1360,7 @@ int i915_vma_pin_ww(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
 	if (flags & PIN_GLOBAL)
 		wakeref = intel_runtime_pm_get(&vma->vm->i915->runtime_pm);
 
-	moving = vma->obj ? i915_gem_object_get_moving_fence(vma->obj) : NULL;
-	if (flags & vma->vm->bind_async_flags || moving) {
+	if (flags & vma->vm->bind_async_flags) {
 		/* lock VM */
 		err = i915_vm_lock_objects(vma->vm, ww);
 		if (err)
@@ -1375,6 +1374,7 @@ int i915_vma_pin_ww(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
 
 		work->vm = i915_vm_get(vma->vm);
 
+		moving = vma->obj ? i915_gem_object_get_moving_fence(vma->obj) : NULL;
 		dma_fence_work_chain(&work->base, moving);
 
 		/* Allocate enough page directories to used PTE */
-- 
2.34.1

