Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 359B77588BF
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jul 2023 00:53:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0073810E3DB;
	Tue, 18 Jul 2023 22:53:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99CE610E3DB
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jul 2023 22:53:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689720783; x=1721256783;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5P7XMGZuIUy64clFPdCVpDqC90apgKwgNWXho8jASWY=;
 b=f+YsdIM6CdfTO3SaLcMVxECfAyvxoXeMmt4X3JrsrpXXBswoq5MLeQVb
 0pSk4Fgu62zVyeOYK4sLLSYke2rklGp/QUCr0NqaPYyQuHv0U3mJTU50Y
 aP2sCJdaDWIHoKnnlSOdp8YHBmaYJdNkaeMGi/VsCNb9li672UP3mjVUK
 rzGACcYVwCtI6uEjpEFP6yGWumm4emNb+u81uYFJ5KN5bIAxLMiPYZHIQ
 ZXJrVl2b+EeKWUBaJR6vZ0c6nPP5AEDVXv0evibYO0+Fg46qnJEbpwcTr
 KRTq+dbdX8XiSd5Cs5KyGmm4F7mDrefY3ejpzyVPlZKaHUVa4VOcVeLUU w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10775"; a="452705854"
X-IronPort-AV: E=Sophos;i="6.01,215,1684825200"; d="scan'208";a="452705854"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2023 15:52:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10775"; a="847852003"
X-IronPort-AV: E=Sophos;i="6.01,215,1684825200"; d="scan'208";a="847852003"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2023 15:52:50 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Jul 2023 15:51:18 -0700
Message-Id: <20230718225118.2562132-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/dpt: Use shmem for dpt objects
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
Cc: Chris Wilson <chris.p.wilson@intel.com>, stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Dpt objects that are created from internal get evicted when there is
memory pressure and do not get restored when pinned during scanout. The
pinned page table entries look corrupted and programming the display
engine with the incorrect pte's result in DE throwing pipe faults.

Create DPT objects from shmem and mark the object as dirty when pinning so
that the object is restored when shrinker evicts an unpinned buffer object.

v2: Unconditionally mark the dpt objects dirty during pinning(Chris).

Fixes: 0dc987b699ce ("drm/i915/display: Add smem fallback allocation for dpt")
Cc: <stable@vger.kernel.org> # v6.0+
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Suggested-by: Chris Wilson <chris.p.wilson@intel.com>
Signed-off-by: Fei Yang <fei.yang@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpt.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
index 7c5fddb203ba..fbfd8f959f17 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt.c
+++ b/drivers/gpu/drm/i915/display/intel_dpt.c
@@ -166,6 +166,8 @@ struct i915_vma *intel_dpt_pin(struct i915_address_space *vm)
 		i915_vma_get(vma);
 	}
 
+	dpt->obj->mm.dirty = true;
+
 	atomic_dec(&i915->gpu_error.pending_fb_pin);
 	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
 
@@ -261,7 +263,7 @@ intel_dpt_create(struct intel_framebuffer *fb)
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

