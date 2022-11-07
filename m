Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D7DA161F461
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 14:31:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2B5E10E30E;
	Mon,  7 Nov 2022 13:30:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9EE310E30E
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Nov 2022 13:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667827853; x=1699363853;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vhVmvZQlfyrHOht8urgeQHEEWUYM4omokiwXlQCvLMU=;
 b=OH0d92e6JetFyFsh/FyAwWHSy5hPUgrfRqDaHth/pjh2u3VPNGVUEK02
 UiChosZpvscbKB3fPdTIccLAia+xaIsfic+/gqMqyI5HZspu6rb+nQK4e
 iQqULo2jcgV/+LvpHlcxDg6cAVclRuWNzTLGY/B5Yiq2KE73uN9tWRqqz
 VBwJszXAhUhXnSPSKXRCLZ30wkUH89RfVuh4uJJcDnaAuPndASP37cLbf
 iCTZMRKgSNF9AzxIA4ASIqNeX3fVYwHHjaLF3Hpq2nwWIVliP486zSDCj
 Rzm2O6ia5fE0iXOPej1NYkdqG/sjt7fSGXetfG4ucnuwkI/FO1xwIwUPH g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10523"; a="297900004"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="297900004"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 05:30:52 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10523"; a="704874339"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="704874339"
Received: from pmesquit-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.15.49])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 05:30:50 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Nov 2022 13:30:27 +0000
Message-Id: <20221107133027.38740-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/ttm: never purge busy objects
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
Cc: stable@vger.kernel.org, Andrzej Hajda <andrzej.hajda@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In i915_gem_madvise_ioctl() we immediately purge the object is not
currently used, like when the mm.pages are NULL.  With shmem the pages
might still be hanging around or are perhaps swapped out. Similarly with
ttm we might still have the pages hanging around on the ttm resource,
like with lmem or shmem, but here we need to be extra careful since
async unbinds are possible as well as in-progress kernel moves. In
i915_ttm_purge() we expect the pipeline-gutting to nuke the ttm resource
for us, however if it's busy the memory is only moved to a ghost object,
which then leads to broken behaviour when for example clearing the
i915_tt->filp, since the actual ttm_tt is still alive and populated,
even though it's been moved to the ghost object.  When we later destroy
the ghost object we hit the following, since the filp is now NULL:

[  +0.006982] #PF: supervisor read access in kernel mode
[  +0.005149] #PF: error_code(0x0000) - not-present page
[  +0.005147] PGD 11631d067 P4D 11631d067 PUD 115972067 PMD 0
[  +0.005676] Oops: 0000 [#1] PREEMPT SMP NOPTI
[  +0.012962] Workqueue: events ttm_device_delayed_workqueue [ttm]
[  +0.006022] RIP: 0010:i915_ttm_tt_unpopulate+0x3a/0x70 [i915]
[  +0.005879] Code: 89 fb 48 85 f6 74 11 8b 55 4c 48 8b 7d 30 45 31 c0 31 c9 e8 18 6a e5 e0 80 7d 60 00 74 20 48 8b 45 68
8b 55 08 4c 89 e7 5b 5d <48> 8b 40 20 83 e2 01 41 5c 89 d1 48 8b 70
 30 e9 42 b2 ff ff 4c 89
[  +0.018782] RSP: 0000:ffffc9000bf6fd70 EFLAGS: 00010202
[  +0.005244] RAX: 0000000000000000 RBX: ffff8883e12ae380 RCX: 0000000000000000
[  +0.007150] RDX: 000000008000000e RSI: ffffffff823559b4 RDI: ffff8883e12ae3c0
[  +0.007142] RBP: ffff888103b65d48 R08: 0000000000000001 R09: 0000000000000001
[  +0.007144] R10: 0000000000000001 R11: ffff88829c2c8040 R12: ffff8883e12ae3c0
[  +0.007148] R13: 0000000000000001 R14: ffff888115184140 R15: ffff888115184248
[  +0.007154] FS:  0000000000000000(0000) GS:ffff88844db00000(0000) knlGS:0000000000000000
[  +0.008108] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  +0.005763] CR2: 0000000000000020 CR3: 000000013fdb4004 CR4: 00000000003706e0
[  +0.007152] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[  +0.007145] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[  +0.007154] Call Trace:
[  +0.002459]  <TASK>
[  +0.002126]  ttm_tt_unpopulate.part.0+0x17/0x70 [ttm]
[  +0.005068]  ttm_bo_tt_destroy+0x1c/0x50 [ttm]
[  +0.004464]  ttm_bo_cleanup_memtype_use+0x25/0x40 [ttm]
[  +0.005244]  ttm_bo_cleanup_refs+0x90/0x2c0 [ttm]
[  +0.004721]  ttm_bo_delayed_delete+0x235/0x250 [ttm]
[  +0.004981]  ttm_device_delayed_workqueue+0x13/0x40 [ttm]
[  +0.005422]  process_one_work+0x248/0x560
[  +0.004028]  worker_thread+0x4b/0x390
[  +0.003682]  ? process_one_work+0x560/0x560
[  +0.004199]  kthread+0xeb/0x120
[  +0.003163]  ? kthread_complete_and_exit+0x20/0x20
[  +0.004815]  ret_from_fork+0x1f/0x30

Fixes: 213d50927763 ("drm/i915/ttm: Introduce a TTM i915 gem object backend")
Reported-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>
Cc: <stable@vger.kernel.org> # v5.15+
---
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index 25129af70f70..fb452a388b5e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -599,10 +599,18 @@ i915_ttm_resource_get_st(struct drm_i915_gem_object *obj,
 static int i915_ttm_truncate(struct drm_i915_gem_object *obj)
 {
 	struct ttm_buffer_object *bo = i915_gem_to_ttm(obj);
+	struct ttm_operation_ctx ctx = {
+		.interruptible = true,
+		.no_wait_gpu = false,
+	};
 	int err;
 
 	WARN_ON_ONCE(obj->mm.madv == I915_MADV_WILLNEED);
 
+	err = ttm_bo_wait_ctx(bo, &ctx);
+	if (err)
+		return err;
+
 	err = i915_ttm_move_notify(bo);
 	if (err)
 		return err;
-- 
2.38.1

