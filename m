Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD53F7FCDC5
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Nov 2023 05:16:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 753B310E11D;
	Wed, 29 Nov 2023 04:16:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2211910E0A4;
 Wed, 29 Nov 2023 04:16:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 19838AADD5;
 Wed, 29 Nov 2023 04:16:42 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Weixi Zhu" <weixi.zhu@huawei.com>
Date: Wed, 29 Nov 2023 04:16:42 -0000
Message-ID: <170123140207.12092.866503392779622378@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231128125025.4449-1-weixi.zhu@huawei.com>
In-Reply-To: <20231128125025.4449-1-weixi.zhu@huawei.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBT?=
 =?utf-8?q?upporting_GMEM_=28generalized_memory_management=29_for_external?=
 =?utf-8?q?_memory_devices?=
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

Series: Supporting GMEM (generalized memory management) for external memory devices
URL   : https://patchwork.freedesktop.org/series/126986/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC      mm/gmem.o
In file included from ./include/linux/kernel.h:23,
                 from ./arch/x86/include/asm/percpu.h:27,
                 from ./arch/x86/include/asm/preempt.h:6,
                 from ./include/linux/preempt.h:79,
                 from ./include/linux/spinlock.h:56,
                 from ./include/linux/mmzone.h:8,
                 from ./include/linux/gfp.h:7,
                 from ./include/linux/mm.h:7,
                 from mm/gmem.c:9:
mm/gmem.c: In function ‘is_hnode_allowed’:
mm/gmem.c:43:51: error: ‘struct task_struct’ has no member named ‘mems_allowed’
   43 |  return is_hnode(node) && node_isset(node, current->mems_allowed);
      |                                                   ^~
./include/linux/bitops.h:50:37: note: in definition of macro ‘bitop’
   50 |    __builtin_constant_p((uintptr_t)(addr) != (uintptr_t)NULL) && \
      |                                     ^~~~
./include/linux/nodemask.h:153:36: note: in expansion of macro ‘test_bit’
  153 | #define node_isset(node, nodemask) test_bit((node), (nodemask).bits)
      |                                    ^~~~~~~~
mm/gmem.c:43:27: note: in expansion of macro ‘node_isset’
   43 |  return is_hnode(node) && node_isset(node, current->mems_allowed);
      |                           ^~~~~~~~~~
mm/gmem.c:43:51: error: ‘struct task_struct’ has no member named ‘mems_allowed’
   43 |  return is_hnode(node) && node_isset(node, current->mems_allowed);
      |                                                   ^~
./include/linux/bitops.h:51:16: note: in definition of macro ‘bitop’
   51 |    (uintptr_t)(addr) != (uintptr_t)NULL &&   \
      |                ^~~~
./include/linux/nodemask.h:153:36: note: in expansion of macro ‘test_bit’
  153 | #define node_isset(node, nodemask) test_bit((node), (nodemask).bits)
      |                                    ^~~~~~~~
mm/gmem.c:43:27: note: in expansion of macro ‘node_isset’
   43 |  return is_hnode(node) && node_isset(node, current->mems_allowed);
      |                           ^~~~~~~~~~
mm/gmem.c:43:51: error: ‘struct task_struct’ has no member named ‘mems_allowed’
   43 |  return is_hnode(node) && node_isset(node, current->mems_allowed);
      |                                                   ^~
./include/linux/bitops.h:52:50: note: in definition of macro ‘bitop’
   52 |    __builtin_constant_p(*(const unsigned long *)(addr))) ? \
      |                                                  ^~~~
./include/linux/nodemask.h:153:36: note: in expansion of macro ‘test_bit’
  153 | #define node_isset(node, nodemask) test_bit((node), (nodemask).bits)
      |                                    ^~~~~~~~
mm/gmem.c:43:27: note: in expansion of macro ‘node_isset’
   43 |  return is_hnode(node) && node_isset(node, current->mems_allowed);
      |                           ^~~~~~~~~~
mm/gmem.c:43:51: error: ‘struct task_struct’ has no member named ‘mems_allowed’
   43 |  return is_hnode(node) && node_isset(node, current->mems_allowed);
      |                                                   ^~
./include/linux/bitops.h:53:17: note: in definition of macro ‘bitop’
   53 |   const##op(nr, addr) : op(nr, addr))
      |                 ^~~~
./include/linux/nodemask.h:153:36: note: in expansion of macro ‘test_bit’
  153 | #define node_isset(node, nodemask) test_bit((node), (nodemask).bits)
      |                                    ^~~~~~~~
mm/gmem.c:43:27: note: in expansion of macro ‘node_isset’
   43 |  return is_hnode(node) && node_isset(node, current->mems_allowed);
      |                           ^~~~~~~~~~
mm/gmem.c:43:51: error: ‘struct task_struct’ has no member named ‘mems_allowed’
   43 |  return is_hnode(node) && node_isset(node, current->mems_allowed);
      |                                                   ^~
./include/linux/bitops.h:53:32: note: in definition of macro ‘bitop’
   53 |   const##op(nr, addr) : op(nr, addr))
      |                                ^~~~
./include/linux/nodemask.h:153:36: note: in expansion of macro ‘test_bit’
  153 | #define node_isset(node, nodemask) test_bit((node), (nodemask).bits)
      |                                    ^~~~~~~~
mm/gmem.c:43:27: note: in expansion of macro ‘node_isset’
   43 |  return is_hnode(node) && node_isset(node, current->mems_allowed);
      |                           ^~~~~~~~~~
mm/gmem.c: At top level:
mm/gmem.c:401:6: warning: no previous prototype for ‘gm_dev_unregister_physmem’ [-Wmissing-prototypes]
  401 | void gm_dev_unregister_physmem(struct gm_dev *dev, unsigned int nid)
      |      ^~~~~~~~~~~~~~~~~~~~~~~~~
In file included from ./include/linux/mmzone.h:18,
                 from ./include/linux/gfp.h:7,
                 from ./include/linux/mm.h:7,
                 from mm/gmem.c:9:
mm/gmem.c: In function ‘gm_as_attach’:
mm/gmem.c:485:24: error: ‘struct task_struct’ has no member named ‘mems_allowed’
  485 |   node_set(nid, current->mems_allowed);
      |                        ^~
./include/linux/nodemask.h:128:50: note: in definition of macro ‘node_set’
  128 | #define node_set(node, dst) __node_set((node), &(dst))
      |                                                  ^~~
mm/gmem.c: In function ‘hmadvise_do_eagerfree’:
mm/gmem.c:664:16: warning: variable ‘old_start’ set but not used [-Wunused-but-set-variable]
  664 |  unsigned long old_start;
      |                ^~~~~~~~~
mm/gmem.c: In function ‘setup_gmem’:
mm/gmem.c:149:8: warning: ignoring return value of ‘kstrtobool’, declared with attribute warn_unused_result [-Wunused-result]
  149 |  (void)kstrtobool(str, &enable_gmem);
      |        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
mm/gmem.c: In function ‘is_hnode_allowed’:
mm/gmem.c:44:1: error: control reaches end of non-void function [-Werror=return-type]
   44 | }
      | ^
cc1: some warnings being treated as errors
make[3]: *** [scripts/Makefile.build:243: mm/gmem.o] Error 1
make[2]: *** [scripts/Makefile.build:480: mm] Error 2
make[1]: *** [/home/kbuild2/kernel/Makefile:1911: .] Error 2
make: *** [Makefile:234: __sub-make] Error 2
Build failed, no error log produced


