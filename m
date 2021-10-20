Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8C4D4353AF
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Oct 2021 21:18:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D41B6E158;
	Wed, 20 Oct 2021 19:18:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AAAC66E158;
 Wed, 20 Oct 2021 19:18:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A40B9A7DFB;
 Wed, 20 Oct 2021 19:18:38 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 20 Oct 2021 19:18:38 -0000
Message-ID: <163475751863.27361.6922825967596906354@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211020190735.14500-1-matthew.brost@intel.com>
In-Reply-To: <20211020190735.14500-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/guc=3A_Fix_recursive_lock_in_GuC_submission?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/guc: Fix recursive lock in GuC submission
URL   : https://patchwork.freedesktop.org/series/96076/
State : failure

== Summary ==

CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/i915/gt/uc/intel_guc_submission.o
In file included from ./arch/x86/include/asm/bug.h:84,
                 from ./include/linux/bug.h:5,
                 from ./include/linux/thread_info.h:13,
                 from ./arch/x86/include/asm/preempt.h:7,
                 from ./include/linux/preempt.h:78,
                 from ./include/linux/spinlock.h:55,
                 from ./include/linux/kref.h:16,
                 from ./drivers/gpu/drm/i915/gem/i915_gem_context_types.h:13,
                 from ./drivers/gpu/drm/i915/gem/i915_gem_context.h:10,
                 from drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:8:
drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c: In function ‘guc_lrc_desc_unpin’:
drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2376:25: error: ‘struct intel_context’ has no member named ‘submission_state’
  lockdep_assert_held(&ce->submission_state.lock);
                         ^~
./include/asm-generic/bug.h:130:25: note: in definition of macro ‘WARN’
  int __ret_warn_on = !!(condition);    \
                         ^~~~~~~~~
./include/linux/lockdep.h:310:7: note: in expansion of macro ‘WARN_ON’
  do { WARN_ON(debug_locks && !(cond)); } while (0)
       ^~~~~~~
./include/linux/lockdep.h:316:2: note: in expansion of macro ‘lockdep_assert’
  lockdep_assert(lockdep_is_held(l) != LOCK_STATE_NOT_HELD)
  ^~~~~~~~~~~~~~
./include/linux/lockdep.h:316:17: note: in expansion of macro ‘lockdep_is_held’
  lockdep_assert(lockdep_is_held(l) != LOCK_STATE_NOT_HELD)
                 ^~~~~~~~~~~~~~~
drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2376:2: note: in expansion of macro ‘lockdep_assert_held’
  lockdep_assert_held(&ce->submission_state.lock);
  ^~~~~~~~~~~~~~~~~~~
scripts/Makefile.build:277: recipe for target 'drivers/gpu/drm/i915/gt/uc/intel_guc_submission.o' failed
make[4]: *** [drivers/gpu/drm/i915/gt/uc/intel_guc_submission.o] Error 1
scripts/Makefile.build:540: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:540: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:540: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1868: recipe for target 'drivers' failed
make: *** [drivers] Error 2


