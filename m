Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 735FA5B762F
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Sep 2022 18:11:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7D8C10E72D;
	Tue, 13 Sep 2022 16:11:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7BDC10E42E
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Sep 2022 16:11:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663085473; x=1694621473;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Yaey0IE2oUXDl4I0l0MjD1vrj5/mjlpbVy+C7hQhou4=;
 b=H2N4NyrpNOaHzx+zUqsf+OnwVlawVE9sGTnqKP4gd1/I+5/xi+RQZoCt
 JoIhCMJxzTPGDEbT130Q1OIFCjWfB3pbb6AistRorh/IElE3Ghz6QklQc
 okZCoUYAm97XHQyAsPD+XHLHixd8P7SXCUzi6D/05Uy8AMDm/RlxoNjIk
 k9re0LWY6XRolv20LBEwQZPpIAGIMBEN/W5z2VuLVMdnQhiQSKVaeScSJ
 lNAzIIYzOntNZZj2qKQyyVdn2xTMtWpe4wvMKRtc5yzTSZFx4TkfUrp0j
 u4GPbgP163pchpJ0kewlaUITwLytW9q43jYWCGbNlSS13Iju3HJ/GgRUH g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10469"; a="299518473"
X-IronPort-AV: E=Sophos;i="5.93,313,1654585200"; d="scan'208";a="299518473"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 09:11:13 -0700
X-IronPort-AV: E=Sophos;i="5.93,313,1654585200"; d="scan'208";a="678631609"
Received: from jkrzyszt-mobl1.ger.corp.intel.com (HELO jkrzyszt-mobl1.lan)
 ([10.213.10.213])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 09:11:11 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Sep 2022 18:10:39 +0200
Message-Id: <20220913161039.155964-3-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220913161039.155964-1-janusz.krzysztofik@linux.intel.com>
References: <20220913161039.155964-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/gem: Really move
 i915_gem_context.link under ref protection
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
Cc: drm-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Chris Wilson <chris@chris-wilson.co.uk>

i915_perf assumes that it can use the i915_gem_context reference to
protect its i915->gem.contexts.list iteration. However, this requires
that we do not remove the context from the list until after we drop the
final reference and release the struct. If, as currently, we remove the
context from the list during context_close(), the link.next pointer may
be poisoned while we are holding the context reference and cause a GPF:

[ 4070.573157] i915 0000:00:02.0: [drm:i915_perf_open_ioctl [i915]] filtering on ctx_id=0x1fffff ctx_id_mask=0x1fffff
[ 4070.574881] general protection fault, probably for non-canonical address 0xdead000000000100: 0000 [#1] PREEMPT SMP
[ 4070.574897] CPU: 1 PID: 284392 Comm: amd_performance Tainted: G            E     5.17.9 #180
[ 4070.574903] Hardware name: Intel Corporation NUC7i5BNK/NUC7i5BNB, BIOS BNKBL357.86A.0052.2017.0918.1346 09/18/2017
[ 4070.574907] RIP: 0010:oa_configure_all_contexts.isra.0+0x222/0x350 [i915]
[ 4070.574982] Code: 08 e8 32 6e 10 e1 4d 8b 6d 50 b8 ff ff ff ff 49 83 ed 50 f0 41 0f c1 04 24 83 f8 01 0f 84 e3 00 00 00 85 c0 0f 8e fa 00 00 00 <49> 8b 45 50 48 8d 70 b0 49 8d 45 50 48 39 44 24 10 0f 85 34 fe ff
[ 4070.574990] RSP: 0018:ffffc90002077b78 EFLAGS: 00010202
[ 4070.574995] RAX: 0000000000000002 RBX: 0000000000000002 RCX: 0000000000000000
[ 4070.575000] RDX: 0000000000000001 RSI: ffffc90002077b20 RDI: ffff88810ddc7c68
[ 4070.575004] RBP: 0000000000000001 R08: ffff888103242648 R09: fffffffffffffffc
[ 4070.575008] R10: ffffffff82c50bc0 R11: 0000000000025c80 R12: ffff888101bf1860
[ 4070.575012] R13: dead0000000000b0 R14: ffffc90002077c04 R15: ffff88810be5cabc
[ 4070.575016] FS:  00007f1ed50c0780(0000) GS:ffff88885ec80000(0000) knlGS:0000000000000000
[ 4070.575021] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[ 4070.575025] CR2: 00007f1ed5590280 CR3: 000000010ef6f005 CR4: 00000000003706e0
[ 4070.575029] Call Trace:
[ 4070.575033]  <TASK>
[ 4070.575037]  lrc_configure_all_contexts+0x13e/0x150 [i915]
[ 4070.575103]  gen8_enable_metric_set+0x4d/0x90 [i915]
[ 4070.575164]  i915_perf_open_ioctl+0xbc0/0x1500 [i915]
[ 4070.575224]  ? asm_common_interrupt+0x1e/0x40
[ 4070.575232]  ? i915_oa_init_reg_state+0x110/0x110 [i915]
[ 4070.575290]  drm_ioctl_kernel+0x85/0x110
[ 4070.575296]  ? update_load_avg+0x5f/0x5e0
[ 4070.575302]  drm_ioctl+0x1d3/0x370
[ 4070.575307]  ? i915_oa_init_reg_state+0x110/0x110 [i915]
[ 4070.575382]  ? gen8_gt_irq_handler+0x46/0x130 [i915]
[ 4070.575445]  __x64_sys_ioctl+0x3c4/0x8d0
[ 4070.575451]  ? __do_softirq+0xaa/0x1d2
[ 4070.575456]  do_syscall_64+0x35/0x80
[ 4070.575461]  entry_SYSCALL_64_after_hwframe+0x44/0xae
[ 4070.575467] RIP: 0033:0x7f1ed5c10397
[ 4070.575471] Code: 3c 1c e8 1c ff ff ff 85 c0 79 87 49 c7 c4 ff ff ff ff 5b 5d 4c 89 e0 41 5c c3 66 0f 1f 84 00 00 00 00 00 b8 10 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d a9 da 0d 00 f7 d8 64 89 01 48
[ 4070.575478] RSP: 002b:00007ffd65c8d7a8 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
[ 4070.575484] RAX: ffffffffffffffda RBX: 0000000000000006 RCX: 00007f1ed5c10397
[ 4070.575488] RDX: 00007ffd65c8d7c0 RSI: 0000000040106476 RDI: 0000000000000006
[ 4070.575492] RBP: 00005620972f9c60 R08: 000000000000000a R09: 0000000000000005
[ 4070.575496] R10: 000000000000000d R11: 0000000000000246 R12: 000000000000000a
[ 4070.575500] R13: 000000000000000d R14: 0000000000000000 R15: 00007ffd65c8d7c0
[ 4070.575505]  </TASK>
[ 4070.575507] Modules linked in: nls_ascii(E) nls_cp437(E) vfat(E) fat(E) i915(E) x86_pkg_temp_thermal(E) intel_powerclamp(E) crct10dif_pclmul(E) crc32_pclmul(E) crc32c_intel(E) aesni_intel(E) crypto_simd(E) intel_gtt(E) cryptd(E) ttm(E) rapl(E) intel_cstate(E) drm_kms_helper(E) cfbfillrect(E) syscopyarea(E) cfbimgblt(E) intel_uncore(E) sysfillrect(E) mei_me(E) sysimgblt(E) i2c_i801(E) fb_sys_fops(E) mei(E) intel_pch_thermal(E) i2c_smbus(E) cfbcopyarea(E) video(E) button(E) efivarfs(E) autofs4(E)
[ 4070.575549] ---[ end trace 0000000000000000 ]---

Reported-by: Mark Janes <mark.janes@intel.com>
Closes: https://gitlab.freedesktop.org/drm/intel/issues/6222
References: a4e7ccdac38e ("drm/i915: Move context management under GEM")
Fixes: f8246cf4d9a9 ("drm/i915/gem: Drop free_work for GEM contexts")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: <stable@vger.kernel.org> # v5.12+
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 14 +++++++-------
 drivers/gpu/drm/i915/i915_perf.c            | 18 ++++++++++--------
 drivers/gpu/drm/i915/i915_sysfs.c           |  8 ++++----
 3 files changed, 21 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index dabdfe09f5e51..9d7142ab63c05 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -1133,7 +1133,6 @@ static struct i915_gem_engines *default_engines(struct i915_gem_context *ctx,
 			err = ERR_PTR(ret);
 			goto free_engines;
 		}
-
 	}
 
 	return e;
@@ -1265,10 +1264,15 @@ static void i915_gem_context_release_work(struct work_struct *work)
 	struct i915_gem_context *ctx = container_of(work, typeof(*ctx),
 						    release_work);
 	struct i915_address_space *vm;
+	unsigned long flags;
 
 	trace_i915_context_free(ctx);
 	GEM_BUG_ON(!i915_gem_context_is_closed(ctx));
 
+	spin_lock_irqsave(&ctx->i915->gem.contexts.lock, flags);
+	list_del(&ctx->link);
+	spin_unlock_irqrestore(&ctx->i915->gem.contexts.lock, flags);
+
 	if (ctx->syncobj)
 		drm_syncobj_put(ctx->syncobj);
 
@@ -1521,10 +1525,6 @@ static void context_close(struct i915_gem_context *ctx)
 
 	ctx->file_priv = ERR_PTR(-EBADF);
 
-	spin_lock(&ctx->i915->gem.contexts.lock);
-	list_del(&ctx->link);
-	spin_unlock(&ctx->i915->gem.contexts.lock);
-
 	client = ctx->client;
 	if (client) {
 		spin_lock(&client->ctx_lock);
@@ -1717,9 +1717,9 @@ static void gem_context_register(struct i915_gem_context *ctx,
 	list_add_tail_rcu(&ctx->client_link, &ctx->client->ctx_list);
 	spin_unlock(&ctx->client->ctx_lock);
 
-	spin_lock(&i915->gem.contexts.lock);
+	spin_lock_irq(&i915->gem.contexts.lock);
 	list_add_tail(&ctx->link, &i915->gem.contexts.list);
-	spin_unlock(&i915->gem.contexts.lock);
+	spin_unlock_irq(&i915->gem.contexts.lock);
 }
 
 int i915_gem_context_open(struct drm_i915_private *i915,
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index f3c23fe9ad9ce..83bb71466f8f0 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -2379,24 +2379,26 @@ oa_configure_all_contexts(struct i915_perf_stream *stream,
 	 * context. Contexts idle at the time of reconfiguration are not
 	 * trapped behind the barrier.
 	 */
-	spin_lock(&i915->gem.contexts.lock);
+	spin_lock_irq(&i915->gem.contexts.lock);
 	list_for_each_entry_safe(ctx, cn, &i915->gem.contexts.list, link) {
 		if (!kref_get_unless_zero(&ctx->ref))
 			continue;
 
-		spin_unlock(&i915->gem.contexts.lock);
+		spin_unlock_irq(&i915->gem.contexts.lock);
 
-		err = gen8_configure_context(ctx, regs, num_regs);
-		if (err) {
-			i915_gem_context_put(ctx);
-			return err;
+		if (!i915_gem_context_is_closed(ctx)) {
+			err = gen8_configure_context(ctx, regs, num_regs);
+			if (err) {
+				i915_gem_context_put(ctx);
+				return err;
+			}
 		}
 
-		spin_lock(&i915->gem.contexts.lock);
+		spin_lock_irq(&i915->gem.contexts.lock);
 		list_safe_reset_next(ctx, cn, link);
 		i915_gem_context_put(ctx);
 	}
-	spin_unlock(&i915->gem.contexts.lock);
+	spin_unlock_irq(&i915->gem.contexts.lock);
 
 	/*
 	 * After updating all other contexts, we need to modify ourselves.
diff --git a/drivers/gpu/drm/i915/i915_sysfs.c b/drivers/gpu/drm/i915/i915_sysfs.c
index 1e27502108313..40c7671fc0591 100644
--- a/drivers/gpu/drm/i915/i915_sysfs.c
+++ b/drivers/gpu/drm/i915/i915_sysfs.c
@@ -77,12 +77,12 @@ i915_l3_read(struct file *filp, struct kobject *kobj,
 	count = min_t(size_t, GEN7_L3LOG_SIZE - offset, count);
 	memset(buf, 0, count);
 
-	spin_lock(&i915->gem.contexts.lock);
+	spin_lock_irq(&i915->gem.contexts.lock);
 	if (i915->l3_parity.remap_info[slice])
 		memcpy(buf,
 		       i915->l3_parity.remap_info[slice] + offset / sizeof(u32),
 		       count);
-	spin_unlock(&i915->gem.contexts.lock);
+	spin_unlock_irq(&i915->gem.contexts.lock);
 
 	return count;
 }
@@ -110,7 +110,7 @@ i915_l3_write(struct file *filp, struct kobject *kobj,
 	if (!remap_info)
 		return -ENOMEM;
 
-	spin_lock(&i915->gem.contexts.lock);
+	spin_lock_irq(&i915->gem.contexts.lock);
 
 	if (i915->l3_parity.remap_info[slice]) {
 		freeme = remap_info;
@@ -126,7 +126,7 @@ i915_l3_write(struct file *filp, struct kobject *kobj,
 	list_for_each_entry(ctx, &i915->gem.contexts.list, link)
 		ctx->remap_slice |= BIT(slice);
 
-	spin_unlock(&i915->gem.contexts.lock);
+	spin_unlock_irq(&i915->gem.contexts.lock);
 	kfree(freeme);
 
 	/*
-- 
2.25.1

