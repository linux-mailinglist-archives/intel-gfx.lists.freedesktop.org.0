Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FF877D6AB4
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 14:01:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6D2010E5A6;
	Wed, 25 Oct 2023 12:01:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A836010E5A6
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 12:01:34 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id E67CC60686;
 Wed, 25 Oct 2023 12:01:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7BD91C433C8;
 Wed, 25 Oct 2023 12:01:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1698235293;
 bh=YtzJYpZXasWGfc39eBsqGewWHXaQ/aVNTSrouYslgv8=;
 h=From:To:Cc:Subject:Date:From;
 b=H7xEd5Bebl5eg66fKNHu2aQGt1Y9ul7lnjDYgggGgqpQnR70Nl4kX+k4mVrmS1M6W
 Q+RvUa1FVMG/ETKehT7KKnu4kw9kNbvLj+4T/awxRlsU7RsOeDKhqkv763j/VsIxh8
 o/vWrl+s2uRDDZqEF92eF1PNCkNujnitLEGR2u5db2ifeukHFsqi7/YGIEa18BnHXX
 afLUNZEu2kDfaEvpS/gSkI3VreElHEhSKYguIbM9bduxq9acnNMq+mKs7Ovm90luDu
 SlOiz6dEHplKTGO+Ce2xva/nJtE+qIhfMdFRfox20z8JcycB4hqXzdQ5M74MWZfKd8
 zBQlwfCD+CySg==
From: Christian Brauner <brauner@kernel.org>
To: Jann Horn <jannh@google.com>,
 Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 25 Oct 2023 14:01:01 +0200
Message-Id: <20231025-formfrage-watscheln-84526cd3bd7d@brauner>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=8008; i=brauner@kernel.org;
 h=from:subject:message-id; bh=0pOz+8VwrNe+TYYyzonKzCMQWipojstavfaMnF4zibI=;
 b=owGbwMvMwCU28Zj0gdSKO4sYT6slMaRaMptpHT9fanAsPe5ZkVhQ9tcH/n9V997fb/xi1Z7t1//J
 XI6f3lHKwiDGxSArpsji0G4SLrecp2KzUaYGzBxWJpAhDFycAjCR+ccZGXa9SdFsvJG8UE02PUHvZN
 eyH/1LZsod/ljpf9T24/6jt/MY/jsbstZEvzigbv+kefbRHt/aSEkW20MhwieOTbvMVRV0ihcA
X-Developer-Key: i=brauner@kernel.org; a=openpgp;
 fpr=4880B8C9BD0E5106FC070F4F7B3C391EFEA93624
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] file,
 i915: fix file reference for mmap_singleton()
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
Cc: Christian Brauner <brauner@kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Today we got a report at [1] for rcu stalls on the i915 testsuite in [2]
due to the conversion of files to SLAB_TYPSSAFE_BY_RCU. Afaict,
get_file_rcu() goes into an infinite loop trying to carefully verify
that i915->gem.mmap_singleton hasn't changed - see the splat below.

So I stared at this code to figure out what it actually does. It seems
that the i915->gem.mmap_singleton pointer itself never had rcu semantics.

The i915->gem.mmap_singleton is replaced in
file->f_op->release::singleton_release():

        static int singleton_release(struct inode *inode, struct file *file)
        {
                struct drm_i915_private *i915 = file->private_data;

                cmpxchg(&i915->gem.mmap_singleton, file, NULL);
                drm_dev_put(&i915->drm);

                return 0;
        }

The cmpxchg() is ordered against a concurrent update of
i915->gem.mmap_singleton from mmap_singleton(). IOW, when
mmap_singleton() fails to get a reference on i915->gem.mmap_singleton
via mmap_singleton():

        rcu_read_lock();
        file = get_file_rcu(&i915->gem.mmap_singleton);
        rcu_read_unlock();

mmap_singleton() allocates a new file via anon_inode_getfile() and does

        smp_store_mb(i915->gem.mmap_singleton, file);

So, afaiu, then what happens in the case of this bug is that at some
point fput() is called and drops the file->f_count to zero but obviously
leaving the pointer in i915->gem.mmap_singleton in tact until
file->f_op->release::singleton_release() is called.

Now, there might be possibly larger delays until
file->f_op->release::singleton_release() is called and
i915->gem.mmap_singleton is set to NULL?

Say concurrently another task hits mmap_singleton() and does:

        rcu_read_lock();
        file = get_file_rcu(&i915->gem.mmap_singleton);
        rcu_read_unlock();

When get_file_rcu() fails to get a reference via atomic_inc_not_zero()
it will try the reload from i915->gem.mmap_singleton assuming it has
comparable semantics as __fget_files_rcu() that also reloads on
atomic_inc_not_zero() failure.

But since i915->gem.mmap_singleton doesn't have proper rcu semantics it
reloads the same pointer again, trying the same atomic_inc_not_zero()
again and doing so until file->f_op->release::singleton_release() of the
old file has been called.

So, in contrast to __fget_files_rcu() here we want to not retry when
atomic_inc_not_zero() has failed. We only want to retry in case we
managed to get a reference but the pointer did change on reload.

<3> [511.395679] rcu: INFO: rcu_preempt detected stalls on CPUs/tasks:
<3> [511.395716] rcu:   Tasks blocked on level-1 rcu_node (CPUs 0-9): P6238
<3> [511.395934] rcu:   (detected by 16, t=65002 jiffies, g=123977, q=439 ncpus=20)
<6> [511.395944] task:i915_selftest   state:R  running task     stack:10568 pid:6238  tgid:6238  ppid:1001   flags:0x00004002
<6> [511.395962] Call Trace:
<6> [511.395966]  <TASK>
<6> [511.395974]  ? __schedule+0x3a8/0xd70
<6> [511.395995]  ? asm_sysvec_apic_timer_interrupt+0x1a/0x20
<6> [511.396003]  ? lockdep_hardirqs_on+0xc3/0x140
<6> [511.396013]  ? asm_sysvec_apic_timer_interrupt+0x1a/0x20
<6> [511.396029]  ? get_file_rcu+0x10/0x30
<6> [511.396039]  ? get_file_rcu+0x10/0x30
<6> [511.396046]  ? i915_gem_object_mmap+0xbc/0x450 [i915]
<6> [511.396509]  ? i915_gem_mmap+0x272/0x480 [i915]
<6> [511.396903]  ? mmap_region+0x253/0xb60
<6> [511.396925]  ? do_mmap+0x334/0x5c0
<6> [511.396939]  ? vm_mmap_pgoff+0x9f/0x1c0
<6> [511.396949]  ? rcu_is_watching+0x11/0x50
<6> [511.396962]  ? igt_mmap_offset+0xfc/0x110 [i915]
<6> [511.397376]  ? __igt_mmap+0xb3/0x570 [i915]
<6> [511.397762]  ? igt_mmap+0x11e/0x150 [i915]
<6> [511.398139]  ? __trace_bprintk+0x76/0x90
<6> [511.398156]  ? __i915_subtests+0xbf/0x240 [i915]
<6> [511.398586]  ? __pfx___i915_live_setup+0x10/0x10 [i915]
<6> [511.399001]  ? __pfx___i915_live_teardown+0x10/0x10 [i915]
<6> [511.399433]  ? __run_selftests+0xbc/0x1a0 [i915]
<6> [511.399875]  ? i915_live_selftests+0x4b/0x90 [i915]
<6> [511.400308]  ? i915_pci_probe+0x106/0x200 [i915]
<6> [511.400692]  ? pci_device_probe+0x95/0x120
<6> [511.400704]  ? really_probe+0x164/0x3c0
<6> [511.400715]  ? __pfx___driver_attach+0x10/0x10
<6> [511.400722]  ? __driver_probe_device+0x73/0x160
<6> [511.400731]  ? driver_probe_device+0x19/0xa0
<6> [511.400741]  ? __driver_attach+0xb6/0x180
<6> [511.400749]  ? __pfx___driver_attach+0x10/0x10
<6> [511.400756]  ? bus_for_each_dev+0x77/0xd0
<6> [511.400770]  ? bus_add_driver+0x114/0x210
<6> [511.400781]  ? driver_register+0x5b/0x110
<6> [511.400791]  ? i915_init+0x23/0xc0 [i915]
<6> [511.401153]  ? __pfx_i915_init+0x10/0x10 [i915]
<6> [511.401503]  ? do_one_initcall+0x57/0x270
<6> [511.401515]  ? rcu_is_watching+0x11/0x50
<6> [511.401521]  ? kmalloc_trace+0xa3/0xb0
<6> [511.401532]  ? do_init_module+0x5f/0x210
<6> [511.401544]  ? load_module+0x1d00/0x1f60
<6> [511.401581]  ? init_module_from_file+0x86/0xd0
<6> [511.401590]  ? init_module_from_file+0x86/0xd0
<6> [511.401613]  ? idempotent_init_module+0x17c/0x230
<6> [511.401639]  ? __x64_sys_finit_module+0x56/0xb0
<6> [511.401650]  ? do_syscall_64+0x3c/0x90
<6> [511.401659]  ? entry_SYSCALL_64_after_hwframe+0x6e/0xd8
<6> [511.401684]  </TASK>

Link: [1]: https://lore.kernel.org/intel-gfx/SJ1PR11MB6129CB39EED831784C331BAFB9DEA@SJ1PR11MB6129.namprd11.prod.outlook.com
Link: [2]: https://intel-gfx-ci.01.org/tree/linux-next/next-20231013/bat-dg2-11/igt@i915_selftest@live@mman.html#dmesg-warnings10963
Signed-off-by: Christian Brauner <brauner@kernel.org>
---

Jann, Linus,

Since you've been quite involved, can you check that what I'm babbling
here makes sense? If this isn't the fix then I would have to drop the
SLAB_TYPESAFE_BY_RCU conversion patch for now since I'd like to send PRs
by the end of the week.

This is on top of
https://git.kernel.org/pub/scm/linux/kernel/git/vfs/vfs.git/log/?h=vfs.misc

Appreciate the help, thanks!
Christian

---
 drivers/gpu/drm/i915/gem/i915_gem_mman.c |  2 +-
 fs/file.c                                | 17 ++++++++++++++++-
 include/linux/fs.h                       |  1 +
 3 files changed, 18 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index 97bf10861cad..da97e61b18d4 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -916,7 +916,7 @@ static struct file *mmap_singleton(struct drm_i915_private *i915)
 	struct file *file;
 
 	rcu_read_lock();
-	file = get_file_rcu(&i915->gem.mmap_singleton);
+	file = get_file_rcu_once(&i915->gem.mmap_singleton);
 	rcu_read_unlock();
 	if (file)
 		return file;
diff --git a/fs/file.c b/fs/file.c
index 1a475d7d636e..2c64d6836f0c 100644
--- a/fs/file.c
+++ b/fs/file.c
@@ -867,7 +867,7 @@ static struct file *__get_file_rcu(struct file __rcu **f)
 		return NULL;
 
 	if (unlikely(!atomic_long_inc_not_zero(&file->f_count)))
-		return ERR_PTR(-EAGAIN);
+		return ERR_PTR(-EINVAL);
 
 	file_reloaded = rcu_dereference_raw(*f);
 
@@ -927,6 +927,21 @@ struct file *get_file_rcu(struct file __rcu **f)
 }
 EXPORT_SYMBOL_GPL(get_file_rcu);
 
+struct file *get_file_rcu_once(struct file __rcu **f)
+{
+	for (;;) {
+		struct file __rcu *file;
+
+		file = __get_file_rcu(f);
+		if (!IS_ERR(file))
+			return file;
+
+		if (PTR_ERR(file) == -EINVAL)
+			return NULL;
+	}
+}
+EXPORT_SYMBOL_GPL(get_file_rcu_once);
+
 static inline struct file *__fget_files_rcu(struct files_struct *files,
        unsigned int fd, fmode_t mask)
 {
diff --git a/include/linux/fs.h b/include/linux/fs.h
index cb8bfa1f8ecb..657bbd824490 100644
--- a/include/linux/fs.h
+++ b/include/linux/fs.h
@@ -1044,6 +1044,7 @@ static inline struct file *get_file(struct file *f)
 }
 
 struct file *get_file_rcu(struct file __rcu **f);
+struct file *get_file_rcu_once(struct file __rcu **f);
 
 #define file_count(x)	atomic_long_read(&(x)->f_count)
 
-- 
2.34.1

