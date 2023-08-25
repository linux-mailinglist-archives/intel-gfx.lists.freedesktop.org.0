Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 58FB878AFF8
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Aug 2023 14:21:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C8EB10E2A8;
	Mon, 28 Aug 2023 12:21:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mslow1.mail.gandi.net (mslow1.mail.gandi.net [217.70.178.240])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13ED510E6B2
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Aug 2023 14:46:07 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (unknown [217.70.183.196])
 by mslow1.mail.gandi.net (Postfix) with ESMTP id 2E095C52CA
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Aug 2023 14:35:14 +0000 (UTC)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 95EECE000D;
 Fri, 25 Aug 2023 14:35:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=otheo.eu; s=gm1;
 t=1692974109;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=ozKGCWm29i0QwBG2Y1jpmqZ1QYR5gZtzcsRZfoQmPWw=;
 b=NJu71sgRq7M4xnH6Lp+LQPL2cHGQCDRtAKYcn36EQizaBxpkrUxYa9/5RRBxb/t1+vjJSx
 u15LV6UTwENLlGc3qfOPz+i0ObO2Y7ZPYIGCLjhALldcsox/KH/sAZRCUgfbC3vwkn3DWy
 s6Svz0S8F51TzxN3E4KF8fitTmuDHeOKmom7pFKBW1qtTZI5pqI8Lcltv/RAkDNXf7TA7V
 MQVaAcdiANcbRqv7UH4H+pjni5aO3wKFQChoZh4VE55xegXAfDmQU0ElbIizQoZfIZWF9h
 DF/omQ+foVYFZBfrAFXKfbvf3bwTZXqsARYmDERSQ6iYBghxgjN9Gy/WBhrwqg==
Date: Fri, 25 Aug 2023 16:33:43 +0200
From: Javier Pello <devel@otheo.eu>
To: intel-gfx@lists.freedesktop.org
Message-Id: <20230825163343.e2fc7eb70db106edc6df3c4c@otheo.eu>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-GND-Sasl: #01#@otheo.eu
X-Mailman-Approved-At: Mon, 28 Aug 2023 12:21:35 +0000
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Fix reservation address in
 ggtt_reserve_guc_top
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
 Chris Wilson <chris@chris-wilson.co.uk>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

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
Signed-off-by: Javier Pello <devel@otheo.eu>
Cc: intel-gfx@lists.freedesktop.org
Cc: stable@vger.kernel.org # v5.3+
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c | 21 +++++++++++++++------
 1 file changed, 15 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index e9328e1a..0157bebb 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -511,20 +511,29 @@ void intel_ggtt_unbind_vma(struct i915_address_space *vm,
 	vm->clear_range(vm, vma_res->start, vma_res->vma_size);
 }
 
+/* Reserve the top of the GuC address space for firmware images. Addresses
+ * beyond GUC_GGTT_TOP in the GuC address space are inaccessible by GuC,
+ * which makes for a suitable range to hold GuC/HuC firmware images if the
+ * size of the GGTT is 4G. However, on a 32-bit platform the size of the GGTT
+ * is limited to 2G, which is less than GUC_GGTT_TOP, but we reserve a chunk
+ * of the same size anyway, which is far more than needed, to keep the logic
+ * in uc_fw_ggtt_offset() simple. */
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
-- 
2.41.0

