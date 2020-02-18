Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 43FC1162417
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 11:00:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7877F6E9D1;
	Tue, 18 Feb 2020 10:00:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92C0A6E9CF;
 Tue, 18 Feb 2020 10:00:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Feb 2020 02:00:14 -0800
X-IronPort-AV: E=Sophos;i="5.70,456,1574150400"; d="scan'208";a="228689274"
Received: from jkrzyszt-desk.igk.intel.com (HELO
 jkrzyszt-desk.ger.corp.intel.com) ([172.22.244.17])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Feb 2020 02:00:13 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, igt-dev@lists.freedesktop.org
Date: Tue, 18 Feb 2020 10:59:58 +0100
Message-ID: <1753709.95SIyVXY9N@jkrzyszt-desk.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <158029707943.11197.9136435232625163761@skylake-alporthouse-com>
References: <20200122162651.1111-1-janusz.krzysztofik@linux.intel.com>
 <157981094566.1145.1616379306006410708@emeril.freedesktop.org>
 <158029707943.11197.9136435232625163761@skylake-alporthouse-com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?W2lndC1kZXZdIOKckyBGaS5DSS5JR1Q6IHN1Y2Nl?=
 =?utf-8?q?ss_for_tests/gem=5Fuserptr=5Fblits=3A_Enhance_invalid_mapping_e?=
 =?utf-8?q?xercise?=
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Chris,

Let me share some of my observations on the userptr(mmap_offset) case.

On Wednesday, January 29, 2020 12:24:39 PM CET Chris Wilson wrote:
> Quoting Patchwork (2020-01-23 20:22:25)
> > == Series Details ==
> > 
> > Series: tests/gem_userptr_blits: Enhance invalid mapping exercise
> > URL   : https://patchwork.freedesktop.org/series/72411/
> > State : success
> > 
> > == Summary ==
> > 
> > CI Bug Log - changes from CI_DRM_7794_full -> IGTPW_3969_full
> > ====================================================
> > 
> > Summary
> > -------
> > 
> >   **SUCCESS**
> > 
> >   No regressions found.
> > 
> >   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_3969/index.html
> > 
> > New tests
> > ---------
> > 
> >   New tests have been introduced between CI_DRM_7794_full and IGTPW_3969_full:
> > 
> > ### New IGT tests (3) ###
> > 
> >   * igt@gem_userptr_blits@invalid-uc-mapping:
> >     - Statuses : 7 pass(s)
> >     - Exec time: [0.01, 0.02] s
> > 
> >   * igt@gem_userptr_blits@invalid-wb-mapping:
> >     - Statuses : 7 pass(s)
> >     - Exec time: [0.01, 0.02] s
> > 
> >   * igt@gem_userptr_blits@invalid-wc-mapping:
> >     - Statuses : 7 pass(s)
> >     - Exec time: [0.01, 0.02] s
> 
> Ok, we need a bit more work to trigger the lockdep loop. We need a
> cancel_userptr of the same object that is faulted via mmap-offset.
> 
> We're basically looking for the equivalent of this
> 
> <4> [175.968441] ======================================================
> <4> [175.968444] WARNING: possible circular locking dependency detected
> <4> [175.968447] 5.5.0-CI-CI_DRM_7828+ #1 Tainted: G     U
> <4> [175.968449] ------------------------------------------------------
> <4> [175.968452] gem_userptr_bli/1564 is trying to acquire lock:
> <4> [175.968455] ffff888208f49580 (&vm->mutex){+.+.}, at: i915_vma_unbind+0xae/0x110 [i915]
> <4> [175.968527]
> but task is already holding lock:
> <4> [175.968529] ffffffff82664d40 (mmu_notifier_invalidate_range_start){+.+.}, at: unmap_vmas+0x0/0x150
> <4> [175.968535]
> which lock already depends on the new lock.
> <4> [175.968538]
> the existing dependency chain (in reverse order) is:
> <4> [175.968541]
> -> #2 (mmu_notifier_invalidate_range_start){+.+.}:
> <4> [175.968546]        page_mkclean_one+0xda/0x210
> <4> [175.968548]        rmap_walk_file+0xff/0x260
> <4> [175.968551]        page_mkclean+0x9f/0xb0
> <4> [175.968555]        clear_page_dirty_for_io+0xa2/0x2f0
> <4> [175.968559]        mpage_submit_page+0x1a/0x70
> <4> [175.968561]        mpage_process_page_bufs+0xe7/0x110
> <4> [175.968564]        mpage_prepare_extent_to_map+0x1d2/0x2b0
> <4> [175.968568]        ext4_writepages+0x5ba/0x12b0
> <4> [175.968571]        do_writepages+0x46/0xe0
> <4> [175.968573]        __filemap_fdatawrite_range+0xc6/0x100
> <4> [175.968576]        file_write_and_wait_range+0x3c/0x90
> <4> [175.968579]        ext4_sync_file+0x1a4/0x540
> <4> [175.968582]        do_fsync+0x33/0x60
> <4> [175.968584]        __x64_sys_fsync+0xb/0x10
> <4> [175.968587]        do_syscall_64+0x4f/0x220
> <4> [175.968591]        entry_SYSCALL_64_after_hwframe+0x49/0xbe
> <4> [175.968594]
> -> #1 (&mapping->i_mmap_rwsem){++++}:
> <4> [175.968599]        down_write+0x33/0x70
> <4> [175.968601]        unmap_mapping_pages+0x48/0x130
> <4> [175.968671]        i915_vma_revoke_mmap.part.37+0x66/0x190 [i915]
> <4> [175.968715]        fence_update+0xfd/0x2d0 [i915]
> <4> [175.968759]        __i915_vma_unbind+0x1eb/0x530 [i915]
> <4> [175.968803]        i915_vma_release+0x101/0x220 [i915]
> <4> [175.968843]        __i915_gem_free_objects+0x113/0x530 [i915]
> <4> [175.968886]        i915_gem_create_ioctl+0x12/0x40 [i915]
> <4> [175.968890]        drm_ioctl_kernel+0xad/0xf0
> <4> [175.968893]        drm_ioctl+0x2e1/0x390
> <4> [175.968896]        do_vfs_ioctl+0x9c/0x730
> <4> [175.968899]        ksys_ioctl+0x35/0x60
> <4> [175.968901]        __x64_sys_ioctl+0x11/0x20
> <4> [175.968904]        do_syscall_64+0x4f/0x220
> <4> [175.968906]        entry_SYSCALL_64_after_hwframe+0x49/0xbe
> <4> [175.968909]
> -> #0 (&vm->mutex){+.+.}:
> <4> [175.968914]        __lock_acquire+0x1328/0x15d0
> <4> [175.968916]        lock_acquire+0xa7/0x1c0
> <4> [175.968919]        __mutex_lock+0x9a/0x9c0
> <4> [175.968962]        i915_vma_unbind+0xae/0x110 [i915]
> <4> [175.969004]        i915_gem_object_unbind+0x1dc/0x400 [i915]
> <4> [175.969045]        userptr_mn_invalidate_range_start+0xdd/0x190 [i915]

AFAICU, for that to happen, not only the userptr MMU notifier would have to be 
registered, but at least one userptr object would have to be added to the 
notifier's list of active objects.

For a userptr object to be ever added to the notifier's list of active 
objects,  it would have to be created without I915_USERPTR_UNSYNCHRONIZED flag 
set.  As "invalid-*-mapping" (or dynamic "invalid-mmap-offset" since 
addressing your comments in v3 of my patch) subtests create userptr objects 
with that flag set, we need "-sync" flavors of those subtests in order to have 
a chance for the lockdep loop to be exercised.  If that observation is not 
questionable to you, I'm going to address it in my next version of the patch.

Now, the only way to activate the MMU notifier for a userptr object is when 
__i915_gem_userptr_set_active() is called from i915_gem_userptr_get_pages(). 
That can happen when either all required pages have already been pinned before 
and are returned by __get_user_pages_fast(), or, if some pages are not yet 
pinned, when __i915_gem_userptr_get_pages_schedule() likely succeeds (returns 
-EAGAIN).  In the latter case, __i915_gem_userptr_get_pages_worker() work is 
scheduled.

In case of a userptr object backed by our mmap-offset mapping, 
get_user_pages_remote() called from __i915_gem_userptr_get_pages_worker() 
fails immediately with -EFAULT on (vm_flags & (VM_IO | VM_PFNMAP)) in 
mm/gup.c:check_vma_flags().  As a result, the MMU notifier is immediately 
deactivated for the object.  Then indeed, a time window with the MMU notifier 
being active for the object exists.  However, I still can't find out how 
userspace could trigger the lockdep loop *within* that time window in a 
reproducible manner.  Could you think of a way to do it?

On the other hand, if we could postpone activation of the userptr MMU notifier 
for an object, or otherwise prevent the notifier from doing its job until at 
least one page is successfully acquired, then a userptr object backed with 
mmap-offset mapping would never be able to trigger that lockdep loop, I 
believe.  If you find my conclusions not missing the point, I'm going to 
propose a patch (i915, not IGT).

Thanks,
Janusz


> <4> [175.969049]        __mmu_notifier_invalidate_range_start+0x148/0x250
> <4> [175.969052]        unmap_vmas+0x13e/0x150
> <4> [175.969055]        unmap_region+0xa3/0x100
> <4> [175.969057]        __do_munmap+0x26d/0x490
> <4> [175.969060]        __vm_munmap+0x66/0xc0
> <4> [175.969063]        __x64_sys_munmap+0x12/0x20
> <4> [175.969066]        do_syscall_64+0x4f/0x220
> <4> [175.969068]        entry_SYSCALL_64_after_hwframe+0x49/0xbe
> <4> [175.969071]
> 
> cycle but with obj->mm.lock.
> -Chris
> 




_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
