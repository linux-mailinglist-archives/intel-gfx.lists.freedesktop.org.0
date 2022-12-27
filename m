Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A65E0656D20
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Dec 2022 17:56:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C225D10E0AA;
	Tue, 27 Dec 2022 16:55:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7191F10E04D;
 Tue, 27 Dec 2022 16:55:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6ED3EA00E6;
 Tue, 27 Dec 2022 16:55:36 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Deepak R Varma" <drv@mailo.com>
Date: Tue, 27 Dec 2022 16:55:36 -0000
Message-ID: <167216013644.15128.8715937661427588896@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <Y6d0EDmyqJILVoRw@qemulion>
In-Reply-To: <Y6d0EDmyqJILVoRw@qemulion>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915=3A_convert_i915=5Factive=2Ecount_from_atomic=5Ft_to_ref?=
 =?utf-8?q?count=5Ft?=
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: convert i915_active.count from atomic_t to refcount_t
URL   : https://patchwork.freedesktop.org/series/112247/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  CC [M]  drivers/gpu/drm/i915/i915_active.o
drivers/gpu/drm/i915/i915_active.c: In function ‘debug_active_activate’:
drivers/gpu/drm/i915/i915_active.c:95:19: error: passing argument 1 of ‘atomic_read’ from incompatible pointer type [-Werror=incompatible-pointer-types]
   95 |  if (!atomic_read(&ref->count)) /* before the first inc */
      |                   ^~~~~~~~~~~
      |                   |
      |                   refcount_t * {aka struct refcount_struct *}
In file included from ./include/linux/atomic.h:82,
                 from ./include/linux/cpumask.h:13,
                 from ./arch/x86/include/asm/cpumask.h:5,
                 from ./arch/x86/include/asm/msr.h:11,
                 from ./arch/x86/include/asm/processor.h:22,
                 from ./arch/x86/include/asm/cpufeature.h:5,
                 from ./arch/x86/include/asm/thread_info.h:53,
                 from ./include/linux/thread_info.h:60,
                 from ./arch/x86/include/asm/preempt.h:7,
                 from ./include/linux/preempt.h:78,
                 from ./include/linux/spinlock.h:56,
                 from ./include/linux/debugobjects.h:6,
                 from drivers/gpu/drm/i915/i915_active.c:7:
./include/linux/atomic/atomic-instrumented.h:25:29: note: expected ‘const atomic_t *’ {aka ‘const struct <anonymous> *’} but argument is of type ‘refcount_t *’ {aka ‘struct refcount_struct *’}
   25 | atomic_read(const atomic_t *v)
      |             ~~~~~~~~~~~~~~~~^
drivers/gpu/drm/i915/i915_active.c: In function ‘debug_active_deactivate’:
drivers/gpu/drm/i915/i915_active.c:102:19: error: passing argument 1 of ‘atomic_read’ from incompatible pointer type [-Werror=incompatible-pointer-types]
  102 |  if (!atomic_read(&ref->count)) /* after the last dec */
      |                   ^~~~~~~~~~~
      |                   |
      |                   refcount_t * {aka struct refcount_struct *}
In file included from ./include/linux/atomic.h:82,
                 from ./include/linux/cpumask.h:13,
                 from ./arch/x86/include/asm/cpumask.h:5,
                 from ./arch/x86/include/asm/msr.h:11,
                 from ./arch/x86/include/asm/processor.h:22,
                 from ./arch/x86/include/asm/cpufeature.h:5,
                 from ./arch/x86/include/asm/thread_info.h:53,
                 from ./include/linux/thread_info.h:60,
                 from ./arch/x86/include/asm/preempt.h:7,
                 from ./include/linux/preempt.h:78,
                 from ./include/linux/spinlock.h:56,
                 from ./include/linux/debugobjects.h:6,
                 from drivers/gpu/drm/i915/i915_active.c:7:
./include/linux/atomic/atomic-instrumented.h:25:29: note: expected ‘const atomic_t *’ {aka ‘const struct <anonymous> *’} but argument is of type ‘refcount_t *’ {aka ‘struct refcount_struct *’}
   25 | atomic_read(const atomic_t *v)
      |             ~~~~~~~~~~~~~~~~^
In file included from drivers/gpu/drm/i915/i915_active.c:1152:
drivers/gpu/drm/i915/selftests/i915_active.c: In function ‘__live_active_setup’:
drivers/gpu/drm/i915/selftests/i915_active.c:128:18: error: passing argument 1 of ‘atomic_read’ from incompatible pointer type [-Werror=incompatible-pointer-types]
  128 |  if (atomic_read(&active->base.count) != count) {
      |                  ^~~~~~~~~~~~~~~~~~~
      |                  |
      |                  refcount_t * {aka struct refcount_struct *}
In file included from ./include/linux/atomic.h:82,
                 from ./include/linux/cpumask.h:13,
                 from ./arch/x86/include/asm/cpumask.h:5,
                 from ./arch/x86/include/asm/msr.h:11,
                 from ./arch/x86/include/asm/processor.h:22,
                 from ./arch/x86/include/asm/cpufeature.h:5,
                 from ./arch/x86/include/asm/thread_info.h:53,
                 from ./include/linux/thread_info.h:60,
                 from ./arch/x86/include/asm/preempt.h:7,
                 from ./include/linux/preempt.h:78,
                 from ./include/linux/spinlock.h:56,
                 from ./include/linux/debugobjects.h:6,
                 from drivers/gpu/drm/i915/i915_active.c:7:
./include/linux/atomic/atomic-instrumented.h:25:29: note: expected ‘const atomic_t *’ {aka ‘const struct <anonymous> *’} but argument is of type ‘refcount_t *’ {aka ‘struct refcount_struct *’}
   25 | atomic_read(const atomic_t *v)
      |             ~~~~~~~~~~~~~~~~^
In file included from ./include/linux/kernel.h:29,
                 from ./arch/x86/include/asm/percpu.h:27,
                 from ./arch/x86/include/asm/preempt.h:6,
                 from ./include/linux/preempt.h:78,
                 from ./include/linux/spinlock.h:56,
                 from ./include/linux/debugobjects.h:6,
                 from drivers/gpu/drm/i915/i915_active.c:7:
drivers/gpu/drm/i915/selftests/i915_active.c:130:22: error: passing argument 1 of ‘atomic_read’ from incompatible pointer type [-Werror=incompatible-pointer-types]
  130 |          atomic_read(&active->base.count), count);
      |                      ^~~~~~~~~~~~~~~~~~~
      |                      |
      |                      refcount_t * {aka struct refcount_struct *}
./include/linux/printk.h:429:19: note: in definition of macro ‘printk_index_wrap’
  429 |   _p_func(_fmt, ##__VA_ARGS__);    \
      |                   ^~~~~~~~~~~
./include/linux/printk.h:500:2: note: in expansion of macro ‘printk’
  500 |  printk(KERN_ERR pr_fmt(fmt), ##__VA_ARGS__)
      |  ^~~~~~
drivers/gpu/drm/i915/selftests/i915_active.c:129:3: note: in expansion of macro ‘pr_err’
  129 |   pr_err("i915_active not tracking all requests, found %d, expected %d\n",
      |   ^~~~~~
In file included from ./include/linux/atomic.h:82,
                 from ./include/linux/cpumask.h:13,
                 from ./arch/x86/include/asm/cpumask.h:5,
                 from ./arch/x86/include/asm/msr.h:11,
                 from ./arch/x86/include/asm/processor.h:22,
                 from ./arch/x86/include/asm/cpufeature.h:5,
                 from ./arch/x86/include/asm/thread_info.h:53,
                 from ./include/linux/thread_info.h:60,
                 from ./arch/x86/include/asm/preempt.h:7,
                 from ./include/linux/preempt.h:78,
                 from ./include/linux/spinlock.h:56,
                 from ./include/linux/debugobjects.h:6,
                 from drivers/gpu/drm/i915/i915_active.c:7:
./include/linux/atomic/atomic-instrumented.h:25:29: note: expected ‘const atomic_t *’ {aka ‘const struct <anonymous> *’} but argument is of type ‘refcount_t *’ {aka ‘struct refcount_struct *’}
   25 | atomic_read(const atomic_t *v)
      |             ~~~~~~~~~~~~~~~~^
In file included from drivers/gpu/drm/i915/i915_active.c:1152:
drivers/gpu/drm/i915/selftests/i915_active.c: In function ‘i915_active_print’:
drivers/gpu/drm/i915/selftests/i915_active.c:282:45: error: passing argument 1 of ‘atomic_read’ from incompatible pointer type [-Werror=incompatible-pointer-types]
  282 |  drm_printf(m, "\tcount: %d\n", atomic_read(&ref->count));
      |                                             ^~~~~~~~~~~
      |                                             |
      |                                             refcount_t * {aka struct refcount_struct *}
In file included from ./include/linux/atomic.h:82,
                 from ./include/linux/cpumask.h:13,
                 from ./arch/x86/include/asm/cpumask.h:5,
                 from ./arch/x86/include/asm/msr.h:11,
                 from ./arch/x86/include/asm/processor.h:22,
                 from ./arch/x86/include/asm/cpufeature.h:5,
                 from ./arch/x86/include/asm/thread_info.h:53,
                 from ./include/linux/thread_info.h:60,
                 from ./arch/x86/include/asm/preempt.h:7,
                 from ./include/linux/preempt.h:78,
                 from ./include/linux/spinlock.h:56,
                 from ./include/linux/debugobjects.h:6,
                 from drivers/gpu/drm/i915/i915_active.c:7:
./include/linux/atomic/atomic-instrumented.h:25:29: note: expected ‘const atomic_t *’ {aka ‘const struct <anonymous> *’} but argument is of type ‘refcount_t *’ {aka ‘struct refcount_struct *’}
   25 | atomic_read(const atomic_t *v)
      |             ~~~~~~~~~~~~~~~~^
In file included from drivers/gpu/drm/i915/i915_active.c:1152:
drivers/gpu/drm/i915/selftests/i915_active.c: In function ‘active_flush’:
drivers/gpu/drm/i915/selftests/i915_active.c:327:13: error: passing argument 1 of ‘atomic_dec’ from incompatible pointer type [-Werror=incompatible-pointer-types]
  327 |  atomic_dec(&ref->count);
      |             ^~~~~~~~~~~
      |             |
      |             refcount_t * {aka struct refcount_struct *}
In file included from ./include/linux/atomic.h:82,
                 from ./include/linux/cpumask.h:13,
                 from ./arch/x86/include/asm/cpumask.h:5,
                 from ./arch/x86/include/asm/msr.h:11,
                 from ./arch/x86/include/asm/processor.h:22,
                 from ./arch/x86/include/asm/cpufeature.h:5,
                 from ./arch/x86/include/asm/thread_info.h:53,
                 from ./include/linux/thread_info.h:60,
                 from ./arch/x86/include/asm/preempt.h:7,
                 from ./include/linux/preempt.h:78,
                 from ./include/linux/spinlock.h:56,
                 from ./include/linux/debugobjects.h:6,
                 from drivers/gpu/drm/i915/i915_active.c:7:
./include/linux/atomic/atomic-instrumented.h:255:22: note: expected ‘atomic_t *’ {aka ‘struct <anonymous> *’} but argument is of type ‘refcount_t *’ {aka ‘struct refcount_struct *’}
  255 | atomic_dec(atomic_t *v)
      |            ~~~~~~~~~~^
cc1: all warnings being treated as errors
make[5]: *** [scripts/Makefile.build:250: drivers/gpu/drm/i915/i915_active.o] Error 1
make[4]: *** [scripts/Makefile.build:500: drivers/gpu/drm/i915] Error 2
make[3]: *** [scripts/Makefile.build:500: drivers/gpu/drm] Error 2
make[2]: *** [scripts/Makefile.build:500: drivers/gpu] Error 2
make[1]: *** [scripts/Makefile.build:500: drivers] Error 2
make: *** [Makefile:1992: .] Error 2


