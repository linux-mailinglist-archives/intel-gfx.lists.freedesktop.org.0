Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA89B75733D
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jul 2023 07:35:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04F1810E09B;
	Tue, 18 Jul 2023 05:34:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78EA610E09B
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jul 2023 05:34:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689658497; x=1721194497;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gULBFRruBpl50CacTU6NFBB1kvmGMW1yDQox9k91ubk=;
 b=ipPFW7D8z+i1whdhBQ4AuB0jtaMwC8YFbeuBU5Ai7jf4tmXnXlHkR9KP
 BP/paakzejwbfd8WLPvzF4tgUg9nHMxZ7pmlqkHlmKMWElZGrIJ0S3dNZ
 5owfpTaqjC18Unbbf8Sfq2nLS1fK17/qdAu0sac0JePYkbrXv1UwPhRR5
 Avwoh6MX0KHk35m51ZowxnCVzq2YPaNcFU53LohQ8CX3ZwWBm/34IN5Ai
 IpiRw6KtlTgTrB6lulWvnAV0S8XbeFL5cdsx0Ye5B6NuGjCBrALYHKaEx
 0RiQvRiLR/CfOUUtBfniwTqyeAaZ+QW4GKLBZ+K7OMykaH4PKbjGXtsuI Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="366152401"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="366152401"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2023 22:34:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="788917555"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="788917555"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2023 22:34:56 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Jul 2023 22:33:24 -0700
Message-Id: <20230718053324.2473817-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dpt: Use shmem for dpt objects
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Dpt objects that are created from internal get evicted when there is
memory pressure and do not get restored when pinned during scanout. The
pinned page table entries look corrupted and programming the display
engine with the incorrect pte's result in DE throwing pipe faults.

Create DPT objects from shmem and mark the object as dirty when pinning so
that the object is restored when shrinker evicts an unpinned buffer object.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Suggested-by: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Fei Yang <fei.yang@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpt.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
index 7c5fddb203ba..a57d18550a46 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt.c
+++ b/drivers/gpu/drm/i915/display/intel_dpt.c
@@ -166,6 +166,9 @@ struct i915_vma *intel_dpt_pin(struct i915_address_space *vm)
 		i915_vma_get(vma);
 	}
 
+	if (i915_gem_object_is_shmem(dpt->obj))
+		dpt->obj->cache_dirty = true;
+
 	atomic_dec(&i915->gpu_error.pending_fb_pin);
 	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
 
@@ -261,7 +264,7 @@ intel_dpt_create(struct intel_framebuffer *fb)
 		dpt_obj = i915_gem_object_create_stolen(i915, size);
 	if (IS_ERR(dpt_obj) && !HAS_LMEM(i915)) {
 		drm_dbg_kms(&i915->drm, "Allocating dpt from smem\n");
-		dpt_obj = i915_gem_object_create_internal(i915, size);
+		dpt_obj = i915_gem_object_create_shmem(i915, size);
 	}
 	if (IS_ERR(dpt_obj))
 		return ERR_CAST(dpt_obj);
-- 
2.34.1

