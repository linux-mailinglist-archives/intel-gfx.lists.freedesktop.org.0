Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1148C1D8534
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 20:17:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78DF56E46C;
	Mon, 18 May 2020 18:17:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 661A9896C4
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 May 2020 18:17:51 +0000 (UTC)
IronPort-SDR: V4hY0+QRdMNQhta42Ou91IgwadYLg0PNHZOOubjDynlHEOO+CN7WCUSclSAqZDoLJXVMV6g3Ir
 tErKwGseszBg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 11:17:51 -0700
IronPort-SDR: hlx2+AR8mR+0LcrjCjSKRfChQMoElfi0vUe3QG6ieTzbKWRKKoUKRHXIxVb2ttj9Xekt6Ck6dw
 NQSq2obDfnEw==
X-IronPort-AV: E=Sophos;i="5.73,407,1583222400"; d="scan'208";a="439318291"
Received: from jkrzyszt-desk.ger.corp.intel.com (HELO
 jkrzyszt-desk.igk.intel.com) ([172.22.244.18])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 11:17:50 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 May 2020 20:17:19 +0200
Message-Id: <20200518181720.14625-4-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200518181720.14625-1-janusz.krzysztofik@linux.intel.com>
References: <20200518181720.14625-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH 3/4] drm/i915: Move GGTT cleanup from
 driver_release to _remove
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

GGTT including its scratch page is not cleaned up until driver release.
Since DMA mappings still exist before scratch page cleanup, unmapping
them on last device close after the driver has been already removed may
be judged by intel-iommu code as a bug and result in kernel panic.

Since we abort requests and block user access to hardware on device
removal, there seems not much sense in still keeping GGTT.  Clean it up
on driver remove.  However, skip GGTT address space cleanup as its
mutext may still be needed if there are objects to be freed.  That
cleanup is always called on address space release after all.

[   81.290284] ------------[ cut here ]------------
[   81.291602] kernel BUG at drivers/iommu/intel-iommu.c:3591!
[   81.293558] invalid opcode: 0000 [#1] PREEMPT SMP
[   81.294695] CPU: 0 PID: 207 Comm: core_hotunplug Tainted: G     U            5.4.17 #2
[   81.296579] Hardware name: Bochs Bochs, BIOS Bochs 01/01/2007
[   81.297959] RIP: 0010:intel_unmap+0x200/0x230
[   81.299015] Code: 00 e8 e4 45 c5 ff 85 c0 74 09 80 3d 2b 84 c0 00 00 74 19 65 ff 0d 78 9a b2 7e 0f 85 fa fe ff ff e8 95 57 b1 ff e9 f0 fe ff ff <0f> 0b e8 19 4c c5 ff 85 c0 75 de 48 c7 c2 48 d2 e1 81 be 57 00 00
[   81.303425] RSP: 0018:ffffc9000013fda0 EFLAGS: 00010246
[   81.304683] RAX: 0000000000000000 RBX: ffff8882228dd0b0 RCX: 0000000000000000
[   81.306384] RDX: 0000000000001000 RSI: 00000000af801000 RDI: ffff8882228dd0b0
[   81.308086] RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000000000
[   81.309788] R10: 0000000000000000 R11: 0000000000000000 R12: 00000000af801000
[   81.311489] R13: ffff888223a00000 R14: 0000000000001000 R15: ffff888223a0a2e8
[   81.313191] FS:  00007f5408e3c940(0000) GS:ffff888228600000(0000) knlGS:0000000000000000
[   81.315116] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   81.316495] CR2: 0000000001fc0048 CR3: 000000022464a000 CR4: 00000000000006b0
[   81.318196] Call Trace:
[   81.318967]  cleanup_scratch_page+0x44/0x80 [i915]
[   81.320281]  i915_ggtt_driver_release+0x15b/0x220 [i915]
[   81.321717]  i915_driver_release+0x33/0x90 [i915]
[   81.322856]  drm_release+0xbc/0xd0
[   81.323691]  __fput+0xcd/0x260
[   81.324447]  task_work_run+0x90/0xc0
[   81.325323]  do_syscall_64+0x3da/0x560
[   81.326240]  entry_SYSCALL_64_after_hwframe+0x49/0xbe
[   81.327457] RIP: 0033:0x7f54096ecba3
[   81.328332] Code: 00 00 f7 d8 64 89 02 48 c7 c0 ff ff ff ff eb bb 0f 1f 80 00 00 00 00 64 8b 04 25 18 00 00 00 85 c0 75 14 b8 03 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 45 c3 0f 1f 40 00 48 83 ec 18 89 7c 24 0c e8
[   81.332741] RSP: 002b:00007ffcc5165698 EFLAGS: 00000246 ORIG_RAX: 0000000000000003
[   81.334546] RAX: 0000000000000000 RBX: 0000000000000000 RCX: 00007f54096ecba3
[   81.336247] RDX: 00000000005cc5d0 RSI: 0000000000000005 RDI: 0000000000000004
[   81.337949] RBP: 0000000000000003 R08: 00000000005b8014 R09: 0000000000000004
[   81.339650] R10: 00000000005cc650 R11: 0000000000000246 R12: 00000000004022f0
[   81.341352] R13: 00007ffcc5165850 R14: 0000000000000000 R15: 0000000000000000
[   81.343059] Modules linked in: i915 mfd_core intel_gtt prime_numbers
[   81.345015] ---[ end trace 010aae55e56f8998 ]---

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>

drm/i915: Defer GGTT vm address space fini to vm release

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c | 13 +++++++++----
 drivers/gpu/drm/i915/gt/intel_gtt.h  |  1 +
 drivers/gpu/drm/i915/i915_drv.c      |  2 ++
 3 files changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 66165b10256e..ff2b4f74149a 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -701,7 +701,6 @@ static void ggtt_cleanup_hw(struct i915_ggtt *ggtt)
 	ggtt->vm.cleanup(&ggtt->vm);
 
 	mutex_unlock(&ggtt->vm.mutex);
-	i915_address_space_fini(&ggtt->vm);
 
 	arch_phys_wc_del(ggtt->mtrr);
 
@@ -709,6 +708,15 @@ static void ggtt_cleanup_hw(struct i915_ggtt *ggtt)
 		io_mapping_fini(&ggtt->iomap);
 }
 
+void i915_ggtt_driver_remove(struct drm_i915_private *i915)
+{
+	struct i915_ggtt *ggtt = &i915->ggtt;
+
+	fini_aliasing_ppgtt(ggtt);
+
+	ggtt_cleanup_hw(ggtt);
+}
+
 /**
  * i915_ggtt_driver_release - Clean up GGTT hardware initialization
  * @i915: i915 device
@@ -718,10 +726,7 @@ void i915_ggtt_driver_release(struct drm_i915_private *i915)
 	struct i915_ggtt *ggtt = &i915->ggtt;
 	struct pagevec *pvec;
 
-	fini_aliasing_ppgtt(ggtt);
-
 	intel_ggtt_fini_fences(ggtt);
-	ggtt_cleanup_hw(ggtt);
 
 	pvec = &i915->mm.wc_stash.pvec;
 	if (pvec->nr) {
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index d93ebdf3fa0e..f140ce5c171a 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -501,6 +501,7 @@ int i915_ggtt_enable_hw(struct drm_i915_private *i915);
 void i915_ggtt_enable_guc(struct i915_ggtt *ggtt);
 void i915_ggtt_disable_guc(struct i915_ggtt *ggtt);
 int i915_init_ggtt(struct drm_i915_private *i915);
+void i915_ggtt_driver_remove(struct drm_i915_private *i915);
 void i915_ggtt_driver_release(struct drm_i915_private *i915);
 
 static inline bool i915_ggtt_has_aperture(const struct i915_ggtt *ggtt)
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 34ee12f3f02d..e4d9f0f6f183 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -752,6 +752,7 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 err_mem_regions:
 	intel_memory_regions_driver_release(dev_priv);
 err_ggtt:
+	i915_ggtt_driver_remove(dev_priv);
 	i915_ggtt_driver_release(dev_priv);
 err_perf:
 	i915_perf_fini(dev_priv);
@@ -768,6 +769,7 @@ static void i915_driver_hw_remove(struct drm_i915_private *dev_priv)
 
 	i915_perf_fini(dev_priv);
 
+	i915_ggtt_driver_remove(dev_priv);
 	if (pdev->msi_enabled)
 		pci_disable_msi(pdev);
 
-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
