Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC5DA478BC5
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Dec 2021 13:50:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93B7A10FB13;
	Fri, 17 Dec 2021 12:50:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6F96F10FB13;
 Fri, 17 Dec 2021 12:50:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6C1DCA00A0;
 Fri, 17 Dec 2021 12:50:44 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Fri, 17 Dec 2021 12:50:44 -0000
Message-ID: <163974544443.10412.9773547038223324001@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211217091929.105781-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20211217091929.105781-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiB3YXJuaW5nIGZvciBk?=
 =?utf-8?q?rm/i915=3A_Asynchronous_vma_unbinding_=28rev2=29?=
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

Series: drm/i915: Asynchronous vma unbinding (rev2)
URL   : https://patchwork.freedesktop.org/series/98055/
State : warning

== Summary ==

CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/i915/i915_vma_resource.o
In file included from ./include/linux/kernel.h:20,
                 from ./include/linux/rbtree.h:22,
                 from ./include/linux/rbtree_augmented.h:16,
                 from ./include/linux/interval_tree_generic.h:10,
                 from drivers/gpu/drm/i915/i915_vma_resource.c:6:
drivers/gpu/drm/i915/i915_vma_resource.c: In function ‘i915_vma_resource_module_init’:
./include/linux/kern_levels.h:5:18: error: format ‘%lu’ expects argument of type ‘long unsigned int’, but argument 2 has type ‘unsigned int’ [-Werror=format=]
 #define KERN_SOH "\001"  /* ASCII Start Of Header */
                  ^~~~~~
./include/linux/printk.h:422:11: note: in definition of macro ‘printk_index_wrap’
   _p_func(_fmt, ##__VA_ARGS__);    \
           ^~~~
./include/linux/printk.h:493:2: note: in expansion of macro ‘printk’
  printk(KERN_ERR pr_fmt(fmt), ##__VA_ARGS__)
  ^~~~~~
./include/linux/kern_levels.h:11:18: note: in expansion of macro ‘KERN_SOH’
 #define KERN_ERR KERN_SOH "3" /* error conditions */
                  ^~~~~~~~
./include/linux/printk.h:493:9: note: in expansion of macro ‘KERN_ERR’
  printk(KERN_ERR pr_fmt(fmt), ##__VA_ARGS__)
         ^~~~~~~~
drivers/gpu/drm/i915/i915_vma_resource.c:382:2: note: in expansion of macro ‘pr_err’
  pr_err("vma resource size is %lu\n", sizeof(struct i915_vma_resource));
  ^~~~~~
drivers/gpu/drm/i915/i915_vma_resource.c:382:33: note: format string is defined here
  pr_err("vma resource size is %lu\n", sizeof(struct i915_vma_resource));
                               ~~^
                               %u
cc1: all warnings being treated as errors
scripts/Makefile.build:287: recipe for target 'drivers/gpu/drm/i915/i915_vma_resource.o' failed
make[4]: *** [drivers/gpu/drm/i915/i915_vma_resource.o] Error 1
scripts/Makefile.build:549: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:549: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:549: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1846: recipe for target 'drivers' failed
make: *** [drivers] Error 2

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21868/build_32bit.log
