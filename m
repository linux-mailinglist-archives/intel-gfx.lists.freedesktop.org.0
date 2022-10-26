Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C073F60E56B
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 18:23:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB10610E2C2;
	Wed, 26 Oct 2022 16:23:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A39E010E2C2
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 16:23:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666801425; x=1698337425;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WOAIWVEG+0DPLD/6KWPJFgAXECZco5qGFn3Na7+zly8=;
 b=WwSEcs2qoMCZLn0UTmZWCff4VqDexTXp6cJWRQCRZUWSa4/Nnvn9dcOL
 vf4vuek1VoMl+ls29yzAlvQ8qkL21IUytdbjji+wpPjoz1i3thx05dhvh
 /I6WGclnLBm3RgxghUTUmDNnITdcXtsi4xLlhvZQqX3JtQOKxC4JB9yQ/
 ZaK8Lb+aanUpUXzIQ7aMGqvweCyY7Bz1L0pyx3Ao4yqk8wPJvJYp3QuJI
 Owpz/deTn2zs5+AEoMDLr+eGT0C2mRQx9jVbkbmP7d+M0BIr3fv12Yvbg
 I6grqGtZn99e3MS1gwN/4x7qn5NB6PSfy9Ttu5XKgjSszpWDMsWRg72NR A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="370062351"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="370062351"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 09:23:45 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="583221443"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="583221443"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 09:23:42 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Oct 2022 18:23:32 +0200
Message-Id: <20221026162332.879648-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: add over-fetch padding to
 store_dw batchbuffer
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
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Chris Wilson <chris.p.wilson@intel.com>, Matthew Auld <matthew.auld@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Due to batch buffer over-fetch mechanism up to 4KB beyond the last
command in the buffer can be read by engine executing the buffer.
On the other side if memory is accessed during TLB invalidation proper
TLB invalidation is not guaranteed. Both conditions can occur when two
buffers are bound to adjacent PTEs and during execution of the 1st buffer
(overfetch tries to access PTE of the 2nd buffer) 2nd buffer is removed
(memory is unmapped and TLB is invalidated during memory access, not fully).
As a result engine tries to access unmapped memory and causes DMAR faults
and catastrophic errors.
The simplest solution of this issue is to allocate buffers big enough, to
avoid over-fetch crossing buffer boundary.

BSpec: 45718, 44393

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5278
Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
index 3c55e77b0f1b00..42966e3855a5a5 100644
--- a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
+++ b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
@@ -44,13 +44,14 @@ igt_emit_store_dw(struct i915_vma *vma,
 		  unsigned long count,
 		  u32 val)
 {
+#define BB_OVERFETCH_SIZE (PAGE_SIZE)
 	struct drm_i915_gem_object *obj;
 	const int ver = GRAPHICS_VER(vma->vm->i915);
 	unsigned long n, size;
 	u32 *cmd;
 	int err;
 
-	size = (4 * count + 1) * sizeof(u32);
+	size = (4 * count + 1) * sizeof(u32) + BB_OVERFETCH_SIZE;
 	size = round_up(size, PAGE_SIZE);
 	obj = i915_gem_object_create_internal(vma->vm->i915, size);
 	if (IS_ERR(obj))
-- 
2.34.1

