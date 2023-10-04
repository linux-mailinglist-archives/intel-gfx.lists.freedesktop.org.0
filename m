Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FE687B890D
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Oct 2023 20:22:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B67E10E3B1;
	Wed,  4 Oct 2023 18:22:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56A0D10E3B1
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 18:22:16 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 5979F61626;
 Wed,  4 Oct 2023 18:22:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8B9F9C433C8;
 Wed,  4 Oct 2023 18:22:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1696443735;
 bh=NPsQPQPR21b20IDKoRJleKF9vdJywS4fJq8fCdUS1og=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=QJLuSZHnNk+BXkLHpaP/NzwGc+JSEv+94yNBCZwYSunM2kBtq+klfJd9+Z4vYjtNC
 GPwjDiIE8yxtcXDtyczDIV2pSEI9NW8rryU3DALueG6OyOcCUMRh7VvFMG9KD4FagI
 NIEmAMEXUDjcSWubONctJeEZHW536jcTZdZm1fpQ=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: stable@vger.kernel.org
Date: Wed,  4 Oct 2023 19:57:04 +0200
Message-ID: <20231004175228.923291189@linuxfoundation.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231004175217.404851126@linuxfoundation.org>
References: <20231004175217.404851126@linuxfoundation.org>
User-Agent: quilt/0.67
X-stable: review
X-Patchwork-Hint: ignore
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6.1 251/259] drm/i915/gt: Fix reservation
 address in ggtt_reserve_guc_top
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
Cc: Fernando Pacheco <fernando.pacheco@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 intel-gfx@lists.freedesktop.org, patches@lists.linux.dev,
 Chris Wilson <chris@chris-wilson.co.uk>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Javier Pello <devel@otheo.eu>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

6.1-stable review patch.  If anyone has any objections, please let me know.

------------------

From: Javier Pello <devel@otheo.eu>

commit b7599d241778d0b10cdf7a5c755aa7db9b83250c upstream.

There is an assertion in ggtt_reserve_guc_top that the global GTT
is of size at least GUC_GGTT_TOP, which is not the case on a 32-bit
platform; see commit 562d55d991b39ce376c492df2f7890fd6a541ffc
("drm/i915/bdw: Only use 2g GGTT for 32b platforms"). If GEM_BUG_ON
is enabled, this triggers a BUG(); if GEM_BUG_ON is disabled, the
subsequent reservation fails and the driver fails to initialise
the device:

i915 0000:00:02.0: [drm:i915_init_ggtt [i915]] Failed to reserve top of GGTT for GuC
i915 0000:00:02.0: Device initialization failed (-28)
i915 0000:00:02.0: Please file a bug on drm/i915; see https://gitlab.freedesktop.org/drm/intel/-/wikis/How-to-file-i915-bugs for details.
i915: probe of 0000:00:02.0 failed with error -28

Make the reservation at the top of the available space, whatever
that is, instead of assuming that the top will be GUC_GGTT_TOP.

Fixes: 911800765ef6 ("drm/i915/uc: Reserve upper range of GGTT")
Link: https://gitlab.freedesktop.org/drm/intel/-/issues/9080
Signed-off-by: Javier Pello <devel@otheo.eu>
Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Fernando Pacheco <fernando.pacheco@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Cc: stable@vger.kernel.org # v5.3+
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20230902171039.2229126186d697dbcf62d6d8@otheo.eu
(cherry picked from commit 0f3fa942d91165c2702577e9274d2ee1c7212afc)
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c |   23 +++++++++++++++++------
 1 file changed, 17 insertions(+), 6 deletions(-)

--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -500,20 +500,31 @@ void intel_ggtt_unbind_vma(struct i915_a
 	vm->clear_range(vm, vma_res->start, vma_res->vma_size);
 }
 
+/*
+ * Reserve the top of the GuC address space for firmware images. Addresses
+ * beyond GUC_GGTT_TOP in the GuC address space are inaccessible by GuC,
+ * which makes for a suitable range to hold GuC/HuC firmware images if the
+ * size of the GGTT is 4G. However, on a 32-bit platform the size of the GGTT
+ * is limited to 2G, which is less than GUC_GGTT_TOP, but we reserve a chunk
+ * of the same size anyway, which is far more than needed, to keep the logic
+ * in uc_fw_ggtt_offset() simple.
+ */
+#define GUC_TOP_RESERVE_SIZE (SZ_4G - GUC_GGTT_TOP)
+
 static int ggtt_reserve_guc_top(struct i915_ggtt *ggtt)
 {
-	u64 size;
+	u64 offset;
 	int ret;
 
 	if (!intel_uc_uses_guc(&ggtt->vm.gt->uc))
 		return 0;
 
-	GEM_BUG_ON(ggtt->vm.total <= GUC_GGTT_TOP);
-	size = ggtt->vm.total - GUC_GGTT_TOP;
+	GEM_BUG_ON(ggtt->vm.total <= GUC_TOP_RESERVE_SIZE);
+	offset = ggtt->vm.total - GUC_TOP_RESERVE_SIZE;
 
-	ret = i915_gem_gtt_reserve(&ggtt->vm, NULL, &ggtt->uc_fw, size,
-				   GUC_GGTT_TOP, I915_COLOR_UNEVICTABLE,
-				   PIN_NOEVICT);
+	ret = i915_gem_gtt_reserve(&ggtt->vm, NULL, &ggtt->uc_fw,
+				   GUC_TOP_RESERVE_SIZE, offset,
+				   I915_COLOR_UNEVICTABLE, PIN_NOEVICT);
 	if (ret)
 		drm_dbg(&ggtt->vm.i915->drm,
 			"Failed to reserve top of GGTT for GuC\n");


