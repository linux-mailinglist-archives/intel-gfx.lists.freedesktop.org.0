Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBD997D75D0
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 22:36:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46F5C10E711;
	Wed, 25 Oct 2023 20:36:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C9E610E0FF
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 20:36:45 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 7D8C8630FC;
 Wed, 25 Oct 2023 20:36:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 764B0C433C7;
 Wed, 25 Oct 2023 20:36:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1698266204;
 bh=o3n71gEhvI1eOOpB+xxajaLVY4YmxuFTEDm3gt7iLFQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CS1fe5fQY5IOChvBfUDGoNjj0lunHEK5h09nRlsU3gmLhEAE6Jx9Lt8KuWxkzHOLN
 yQa315xoHOLulZjfCxqUaVk3komUhQXxKHVzvrWT0dCiRaFD8SszxOhmMebO9GH8Rk
 MKsfP3PORmQ0gq+oNsUzrNLEnjzuuGuwNvr+eV/i2h6RiEBA7AQlTfjJ5DYj/KwD33
 qrRjfaQ5DqkBKsOYKSD11RwKXcYcSbsAX6Go8u5fpZxMEQv9N6y9GY74fpyFVx1maO
 3KdFZZiigRoj0l/raSLOEuNUGT5GpVyqJ8E06tlFL/je0FKhPv9nxw8Kvt9Mn1xX32
 pu9m54CeYHEMw==
Date: Wed, 25 Oct 2023 22:36:39 +0200
From: Christian Brauner <brauner@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20231025-isolieren-flaschen-db0224eff8f0@brauner>
References: <20231025-formfrage-watscheln-84526cd3bd7d@brauner>
 <CAHk-=wiPAM0MzHvtbD_=rO81DWO0ZPHE=Bp+TWqke_ZhEDOoZQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="qygvhbxftbswzcnw"
Content-Disposition: inline
In-Reply-To: <CAHk-=wiPAM0MzHvtbD_=rO81DWO0ZPHE=Bp+TWqke_ZhEDOoZQ@mail.gmail.com>
Subject: Re: [Intel-gfx] [PATCH] file,
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
Cc: Jann Horn <jannh@google.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--qygvhbxftbswzcnw
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Wed, Oct 25, 2023 at 08:52:57AM -1000, Linus Torvalds wrote:
> On Wed, 25 Oct 2023 at 02:01, Christian Brauner <brauner@kernel.org> wrote:
> >
> >         rcu_read_lock();
> > -       file = get_file_rcu(&i915->gem.mmap_singleton);
> > +       file = get_file_rcu_once(&i915->gem.mmap_singleton);
> >         rcu_read_unlock();
> >         if (file)
> >                 return file;
> 
> Honestly, the get_file_rcu_once() function seems a bit pointless.
> 
> The above doesn't want a loop at all. Yet your "once" still does loop,
> because "even get_file_rcu_once() is trying to deal with the whole
> "the pointer itself changed".
> 
> And the i915 code is actually designed to just depend on the atomicity
> of the mmap_singleton access itself, in how it uses
> 
>         cmpxchg(&i915->gem.mmap_singleton, file, NULL);
> ...
>         file = READ_ONCE(i915->gem.mmap_singleton);
> 
> and literally says "I'll remove my singleton as it is released". The
> important part there is that the 'map_singleton' pointer itself isn't
> actually reference-counted - it's the reverse, where
> reference-counting *other* instances will then auto-clear it.
> 
> And that's what then makes that get_file_rcu() model not work with it,
> because get_file_rcu() kind of assumes that the argument it gets is
> *part* of the reference counting, not a cached *result* of the
> reference counting that gets cleared as a result of the ref going down
> to zero.
> 
> I may explain my objections badly, but hopefully you get what I mean.

No, I get it. I was on the fence how to deal with this because I
honestly find this model here extremely weird and very unintuitive to
begin with with the pointer being NULLed during release and replaced
that way.

> 
> And I think that also means that using that new get_file_rcu_once()
> may be hiding the actual problem, but it's still conceptually wrong,
> because it still has that conceptual model of "the pointer I'm getting
> is part of the reference counting", when it really isn't.
> 
> So I think we'd actually be better off with something that is more
> clearly different from get_file_rcu() in naming, so make that
> conceptual difference clearer. Make it be something like
> "get_active_file(struct file **)", and make the implementation be just
> exactly what your current __get_file_rcu() is with no loops at all.
> 
> Then thew i915 code ends up being
> 
>         rcu_read_lock();
>         file = get_active_file(&i915->gem.mmap_singleton);
>         rcu_read_unlock();
> 
>         if (!IS_ERR_OR_NULL(file))
>                 return file;
> 
>        .. create new mmap_singleton ..
> 
> and that's it.
> 
> If you don't want to expose __get_file_rcu() as-is, you could maybe just do
> 
>   struct file *get_active_file(struct file **fp)
>   {
>         struct file *file;
>         rcu_read_lock();
>         file = __get_file_rcu(fp);
>         rcu_read_unlock();
>         return file;
>   }
> 
> and then the i916 code would just drop the RCU locking that it has no
> business even knowing about.

Yeah, fair idea. I just want this fixed so we don't have to drop. Pushed
to vfs.misc with your suggested changes for get_file_active() with rcu
hidden in that function. Double-check and yell if something looks wrong:

> The old i915 code is already racy, in that it's called a "singleton",
> but if you have multiple concurrent callers to mmap_singleton(), they
> all might see a NULL file at first, and then they all create
> *separate* new "singleton" files, and they *all* do that
> 
>         smp_store_mb(i915->gem.mmap_singleton, file);
> 
> and one random case of them happens to win the race and set *its* file
> as "THE singleton" file.

Yeah, I think that's all really weird but whatever.

> Am I missing something?

No, I don't think so. I thought you might have a good opinion here.

I did think that the loop didn't really matter for this case but since
it seemingly does paper over the weird semantics here let's drop it.
Anyway, pushed to:

https://git.kernel.org/pub/scm/linux/kernel/git/vfs/vfs.git/commit/?h=vfs.misc

and appended here. Please yell, if something's still off.

--qygvhbxftbswzcnw
Content-Type: text/x-diff; charset=utf-8
Content-Disposition: attachment;
	filename="0001-file-i915-fix-file-reference-for-mmap_singleton.patch"

From 61d4fb0b349ec1b33119913c3b0bd109de30142c Mon Sep 17 00:00:00 2001
From: Christian Brauner <brauner@kernel.org>
Date: Wed, 25 Oct 2023 12:14:37 +0200
Subject: [PATCH] file, i915: fix file reference for mmap_singleton()

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
mmap_singleton() fails to get a reference on i915->gem.mmap_singleton:

While mmap_singleton() does

        rcu_read_lock();
        file = get_file_rcu(&i915->gem.mmap_singleton);
        rcu_read_unlock();

it allocates a new file via anon_inode_getfile() and does

        smp_store_mb(i915->gem.mmap_singleton, file);

So, then what happens in the case of this bug is that at some point
fput() is called and drops the file->f_count to zero leaving the pointer
in i915->gem.mmap_singleton in tact.

Now, there might be delays until
file->f_op->release::singleton_release() is called and
i915->gem.mmap_singleton is set to NULL.

Say concurrently another task hits mmap_singleton() and does:

        rcu_read_lock();
        file = get_file_rcu(&i915->gem.mmap_singleton);
        rcu_read_unlock();

When get_file_rcu() fails to get a reference via atomic_inc_not_zero()
it will try the reload from i915->gem.mmap_singleton expecting it to be
NULL, assuming it has comparable semantics as we expect in
__fget_files_rcu().

But it hasn't so it reloads the same pointer again, trying the same
atomic_inc_not_zero() again and doing so until
file->f_op->release::singleton_release() of the old file has been
called.

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
Cc: Jann Horn <jannh@google.com>,
Cc: Linus Torvalds <torvalds@linux-foundation.org>
Link: https://lore.kernel.org/r/20231025-formfrage-watscheln-84526cd3bd7d@brauner
Signed-off-by: Christian Brauner <brauner@kernel.org>
---
 drivers/gpu/drm/i915/gem/i915_gem_mman.c |  4 +---
 fs/file.c                                | 25 ++++++++++++++++++++++++
 include/linux/fs.h                       |  1 +
 3 files changed, 27 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index 97bf10861cad..72b353737334 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -915,9 +915,7 @@ static struct file *mmap_singleton(struct drm_i915_private *i915)
 {
 	struct file *file;
 
-	rcu_read_lock();
-	file = get_file_rcu(&i915->gem.mmap_singleton);
-	rcu_read_unlock();
+	file = get_file_active(&i915->gem.mmap_singleton);
 	if (file)
 		return file;
 
diff --git a/fs/file.c b/fs/file.c
index 1a475d7d636e..5fb0b146e79e 100644
--- a/fs/file.c
+++ b/fs/file.c
@@ -927,6 +927,31 @@ struct file *get_file_rcu(struct file __rcu **f)
 }
 EXPORT_SYMBOL_GPL(get_file_rcu);
 
+/**
+ * get_file_active - try go get a reference to a file
+ * @f: the file to get a reference on
+ *
+ * In contast to get_file_rcu() the pointer itself isn't part of the
+ * reference counting.
+ *
+ * This function should rarely have to be used and only by users who
+ * understand the implications of SLAB_TYPESAFE_BY_RCU. Try to avoid it.
+ *
+ * Return: Returns @f with the reference count increased or NULL.
+ */
+struct file *get_file_active(struct file **f)
+{
+	struct file __rcu *file;
+
+	rcu_read_lock();
+	file = __get_file_rcu(f);
+	rcu_read_unlock();
+	if (IS_ERR(file))
+		file = NULL;
+	return file;
+}
+EXPORT_SYMBOL_GPL(get_file_active);
+
 static inline struct file *__fget_files_rcu(struct files_struct *files,
        unsigned int fd, fmode_t mask)
 {
diff --git a/include/linux/fs.h b/include/linux/fs.h
index cb8bfa1f8ecb..b35815277cc6 100644
--- a/include/linux/fs.h
+++ b/include/linux/fs.h
@@ -1044,6 +1044,7 @@ static inline struct file *get_file(struct file *f)
 }
 
 struct file *get_file_rcu(struct file __rcu **f);
+struct file *get_file_active(struct file **f);
 
 #define file_count(x)	atomic_long_read(&(x)->f_count)
 
-- 
2.34.1


--qygvhbxftbswzcnw--
