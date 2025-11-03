Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05DBFC2E16B
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 22:09:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF93D10E225;
	Mon,  3 Nov 2025 21:09:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 10055242dc62 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFB7B10E225;
 Mon,  3 Nov 2025 21:09:13 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm/i915/pmu=3A_Use_raw?=
 =?utf-8?q?=5Fspin=5Flock_where_ever_needed_in_i915_pmu?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ravi Kumar Vodapalli" <ravi.kumar.vodapalli@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 03 Nov 2025 21:09:13 -0000
Message-ID: <176220415384.11360.10694531903671497052@10055242dc62>
X-Patchwork-Hint: ignore
References: <20251103185141.854074-1-ravi.kumar.vodapalli@intel.com>
In-Reply-To: <20251103185141.854074-1-ravi.kumar.vodapalli@intel.com>
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

Series: drm/i915/pmu: Use raw_spin_lock where ever needed in i915 pmu
URL   : https://patchwork.freedesktop.org/series/156951/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/i915_pmu.o
In file included from ./include/linux/sched.h:37,
                 from ./include/linux/ratelimit.h:6,
                 from ./include/linux/dev_printk.h:16,
                 from ./include/linux/device.h:15,
                 from ./include/linux/pm_runtime.h:11,
                 from drivers/gpu/drm/i915/i915_pmu.c:7:
drivers/gpu/drm/i915/i915_pmu.c: In function ‘get_rc6’:
drivers/gpu/drm/i915/i915_pmu.c:235:31: error: passing argument 1 of ‘_raw_spin_lock_irqsave’ from incompatible pointer type [-Werror=incompatible-pointer-types]
  235 |         raw_spin_lock_irqsave(&pmu->lock, flags);
      |                               ^~~~~~~~~~
      |                               |
      |                               spinlock_t * {aka struct spinlock *}
./include/linux/spinlock.h:244:48: note: in definition of macro ‘raw_spin_lock_irqsave’
  244 |                 flags = _raw_spin_lock_irqsave(lock);   \
      |                                                ^~~~
In file included from ./include/linux/spinlock.h:312:
./include/linux/spinlock_api_smp.h:32:65: note: expected ‘raw_spinlock_t *’ {aka ‘struct raw_spinlock *’} but argument is of type ‘spinlock_t *’ {aka ‘struct spinlock *’}
   32 | unsigned long __lockfunc _raw_spin_lock_irqsave(raw_spinlock_t *lock)
      |                                                 ~~~~~~~~~~~~~~~~^~~~
drivers/gpu/drm/i915/i915_pmu.c:256:36: error: passing argument 1 of ‘_raw_spin_unlock_irqrestore’ from incompatible pointer type [-Werror=incompatible-pointer-types]
  256 |         raw_spin_unlock_irqrestore(&pmu->lock, flags);
      |                                    ^~~~~~~~~~
      |                                    |
      |                                    spinlock_t * {aka struct spinlock *}
./include/linux/spinlock.h:282:45: note: in definition of macro ‘raw_spin_unlock_irqrestore’
  282 |                 _raw_spin_unlock_irqrestore(lock, flags);       \
      |                                             ^~~~
./include/linux/spinlock_api_smp.h:43:45: note: expected ‘raw_spinlock_t *’ {aka ‘struct raw_spinlock *’} but argument is of type ‘spinlock_t *’ {aka ‘struct spinlock *’}
   43 | _raw_spin_unlock_irqrestore(raw_spinlock_t *lock, unsigned long flags)
      |                             ~~~~~~~~~~~~~~~~^~~~
drivers/gpu/drm/i915/i915_pmu.c: In function ‘i915_pmu_gt_parked’:
drivers/gpu/drm/i915/i915_pmu.c:307:27: error: passing argument 1 of ‘_raw_spin_lock_irq’ from incompatible pointer type [-Werror=incompatible-pointer-types]
  307 |         raw_spin_lock_irq(&pmu->lock);
      |                           ^~~~~~~~~~
      |                           |
      |                           spinlock_t * {aka struct spinlock *}
./include/linux/spinlock.h:274:60: note: in definition of macro ‘raw_spin_lock_irq’
  274 | #define raw_spin_lock_irq(lock)         _raw_spin_lock_irq(lock)
      |                                                            ^~~~
./include/linux/spinlock_api_smp.h:29:52: note: expected ‘raw_spinlock_t *’ {aka ‘struct raw_spinlock *’} but argument is of type ‘spinlock_t *’ {aka ‘struct spinlock *’}
   29 | void __lockfunc _raw_spin_lock_irq(raw_spinlock_t *lock)
      |                                    ~~~~~~~~~~~~~~~~^~~~
drivers/gpu/drm/i915/i915_pmu.c:319:29: error: passing argument 1 of ‘_raw_spin_unlock_irq’ from incompatible pointer type [-Werror=incompatible-pointer-types]
  319 |         raw_spin_unlock_irq(&pmu->lock);
      |                             ^~~~~~~~~~
      |                             |
      |                             spinlock_t * {aka struct spinlock *}
./include/linux/spinlock.h:277:62: note: in definition of macro ‘raw_spin_unlock_irq’
  277 | #define raw_spin_unlock_irq(lock)       _raw_spin_unlock_irq(lock)
      |                                                              ^~~~
./include/linux/spinlock_api_smp.h:41:54: note: expected ‘raw_spinlock_t *’ {aka ‘struct raw_spinlock *’} but argument is of type ‘spinlock_t *’ {aka ‘struct spinlock *’}
   41 | void __lockfunc _raw_spin_unlock_irq(raw_spinlock_t *lock)      __releases(lock);
      |                                      ~~~~~~~~~~~~~~~~^~~~
drivers/gpu/drm/i915/i915_pmu.c: In function ‘i915_pmu_gt_unparked’:
drivers/gpu/drm/i915/i915_pmu.c:329:27: error: passing argument 1 of ‘_raw_spin_lock_irq’ from incompatible pointer type [-Werror=incompatible-pointer-types]
  329 |         raw_spin_lock_irq(&pmu->lock);
      |                           ^~~~~~~~~~
      |                           |
      |                           spinlock_t * {aka struct spinlock *}
./include/linux/spinlock.h:274:60: note: in definition of macro ‘raw_spin_lock_irq’
  274 | #define raw_spin_lock_irq(lock)         _raw_spin_lock_irq(lock)
      |                                                            ^~~~
./include/linux/spinlock_api_smp.h:29:52: note: expected ‘raw_spinlock_t *’ {aka ‘struct raw_spinlock *’} but argument is of type ‘spinlock_t *’ {aka ‘struct spinlock *’}
   29 | void __lockfunc _raw_spin_lock_irq(raw_spinlock_t *lock)
      |                                    ~~~~~~~~~~~~~~~~^~~~
drivers/gpu/drm/i915/i915_pmu.c:339:29: error: passing argument 1 of ‘_raw_spin_unlock_irq’ from incompatible pointer type [-Werror=incompatible-pointer-types]
  339 |         raw_spin_unlock_irq(&pmu->lock);
      |                             ^~~~~~~~~~
      |                             |
      |                             spinlock_t * {aka struct spinlock *}
./include/linux/spinlock.h:277:62: note: in definition of macro ‘raw_spin_unlock_irq’
  277 | #define raw_spin_unlock_irq(lock)       _raw_spin_unlock_irq(lock)
      |                                                              ^~~~
./include/linux/spinlock_api_smp.h:41:54: note: expected ‘raw_spinlock_t *’ {aka ‘struct raw_spinlock *’} but argument is of type ‘spinlock_t *’ {aka ‘struct spinlock *’}
   41 | void __lockfunc _raw_spin_unlock_irq(raw_spinlock_t *lock)      __releases(lock);
      |                                      ~~~~~~~~~~~~~~~~^~~~
drivers/gpu/drm/i915/i915_pmu.c: In function ‘i915_pmu_enable’:
drivers/gpu/drm/i915/i915_pmu.c:745:31: error: passing argument 1 of ‘_raw_spin_lock_irqsave’ from incompatible pointer type [-Werror=incompatible-pointer-types]
  745 |         raw_spin_lock_irqsave(&pmu->lock, flags);
      |                               ^~~~~~~~~~
      |                               |
      |                               spinlock_t * {aka struct spinlock *}
./include/linux/spinlock.h:244:48: note: in definition of macro ‘raw_spin_lock_irqsave’
  244 |                 flags = _raw_spin_lock_irqsave(lock);   \
      |                                                ^~~~
./include/linux/spinlock_api_smp.h:32:65: note: expected ‘raw_spinlock_t *’ {aka ‘struct raw_spinlock *’} but argument is of type ‘spinlock_t *’ {aka ‘struct spinlock *’}
   32 | unsigned long __lockfunc _raw_spin_lock_irqsave(raw_spinlock_t *lock)
      |                                                 ~~~~~~~~~~~~~~~~^~~~
drivers/gpu/drm/i915/i915_pmu.c:787:36: error: passing argument 1 of ‘_raw_spin_unlock_irqrestore’ from incompatible pointer type [-Werror=incompatible-pointer-types]
  787 |         raw_spin_unlock_irqrestore(&pmu->lock, flags);
      |                                    ^~~~~~~~~~
      |                                    |
      |                                    spinlock_t * {aka struct spinlock *}
./include/linux/spinlock.h:282:45: note: in definition of macro ‘raw_spin_unlock_irqrestore’
  282 |                 _raw_spin_unlock_irqrestore(lock, flags);       \
      |                                             ^~~~
./include/linux/spinlock_api_smp.h:43:45: note: expected ‘raw_spinlock_t *’ {aka ‘struct raw_spinlock *’} but argument is of type ‘spinlock_t *’ {aka ‘struct spinlock *’}
   43 | _raw_spin_unlock_irqrestore(raw_spinlock_t *lock, unsigned long flags)
      |                             ~~~~~~~~~~~~~~~~^~~~
drivers/gpu/drm/i915/i915_pmu.c: In function ‘i915_pmu_disable’:
drivers/gpu/drm/i915/i915_pmu.c:808:31: error: passing argument 1 of ‘_raw_spin_lock_irqsave’ from incompatible pointer type [-Werror=incompatible-pointer-types]
  808 |         raw_spin_lock_irqsave(&pmu->lock, flags);
      |                               ^~~~~~~~~~
      |                               |
      |                               spinlock_t * {aka struct spinlock *}
./include/linux/spinlock.h:244:48: note: in definition of macro ‘raw_spin_lock_irqsave’
  244 |                 flags = _raw_spin_lock_irqsave(lock);   \
      |                                                ^~~~
./include/linux/spinlock_api_smp.h:32:65: note: expected ‘raw_spinlock_t *’ {aka ‘struct raw_spinlock *’} but argument is of type ‘spinlock_t *’ {aka ‘struct spinlock *’}
   32 | unsigned long __lockfunc _raw_spin_lock_irqsave(raw_spinlock_t *lock)
      |                                                 ~~~~~~~~~~~~~~~~^~~~
drivers/gpu/drm/i915/i915_pmu.c:841:36: error: passing argument 1 of ‘_raw_spin_unlock_irqrestore’ from incompatible pointer type [-Werror=incompatible-pointer-types]
  841 |         raw_spin_unlock_irqrestore(&pmu->lock, flags);
      |                                    ^~~~~~~~~~
      |                                    |
      |                                    spinlock_t * {aka struct spinlock *}
./include/linux/spinlock.h:282:45: note: in definition of macro ‘raw_spin_unlock_irqrestore’
  282 |                 _raw_spin_unlock_irqrestore(lock, flags);       \
      |                                             ^~~~
./include/linux/spinlock_api_smp.h:43:45: note: expected ‘raw_spinlock_t *’ {aka ‘struct raw_spinlock *’} but argument is of type ‘spinlock_t *’ {aka ‘struct spinlock *’}
   43 | _raw_spin_unlock_irqrestore(raw_spinlock_t *lock, unsigned long flags)
      |                             ~~~~~~~~~~~~~~~~^~~~
drivers/gpu/drm/i915/i915_pmu.c: In function ‘i915_pmu_register’:
drivers/gpu/drm/i915/i915_pmu.c:1159:28: error: passing argument 1 of ‘__raw_spin_lock_init’ from incompatible pointer type [-Werror=incompatible-pointer-types]
 1159 |         raw_spin_lock_init(&pmu->lock);
./include/linux/spinlock.h:108:31: note: in definition of macro ‘raw_spin_lock_init’
  108 |         __raw_spin_lock_init((lock), #lock, &__key, LD_WAIT_SPIN);      \
      |                               ^~~~
./include/linux/spinlock.h:101:52: note: expected ‘raw_spinlock_t *’ {aka ‘struct raw_spinlock *’} but argument is of type ‘spinlock_t *’ {aka ‘struct spinlock *’}
  101 |   extern void __raw_spin_lock_init(raw_spinlock_t *lock, const char *name,
      |                                    ~~~~~~~~~~~~~~~~^~~~
cc1: all warnings being treated as errors
make[6]: *** [scripts/Makefile.build:287: drivers/gpu/drm/i915/i915_pmu.o] Error 1
make[5]: *** [scripts/Makefile.build:556: drivers/gpu/drm/i915] Error 2
make[4]: *** [scripts/Makefile.build:556: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:556: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:556: drivers] Error 2
make[1]: *** [/home/kbuild/kernel/Makefile:2010: .] Error 2
make: *** [Makefile:248: __sub-make] Error 2
Build failed, no error log produced


