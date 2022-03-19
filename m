Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2798F4DEAF7
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Mar 2022 22:27:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3491910E26A;
	Sat, 19 Mar 2022 21:27:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0667810E26A;
 Sat, 19 Mar 2022 21:26:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0684CAADD9;
 Sat, 19 Mar 2022 21:26:57 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ramalingam C" <ramalingam.c@intel.com>
Date: Sat, 19 Mar 2022 21:26:57 -0000
Message-ID: <164772521702.30528.8991592598555896238@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220319204229.9846-1-ramalingam.c@intel.com>
In-Reply-To: <20220319204229.9846-1-ramalingam.c@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiB3YXJuaW5nIGZvciBk?=
 =?utf-8?q?rm/i915/ttm=3A_Evict_and_restore_of_compressed_object_=28rev2?=
 =?utf-8?q?=29?=
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

Series: drm/i915/ttm: Evict and restore of compressed object (rev2)
URL   : https://patchwork.freedesktop.org/series/101106/
State : warning

== Summary ==

CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/i915/gt/intel_migrate.o
In file included from ./include/linux/kernel.h:29,
                 from ./include/linux/iova.h:13,
                 from ./include/linux/intel-iommu.h:14,
                 from ./drivers/gpu/drm/i915/i915_drv.h:37,
                 from drivers/gpu/drm/i915/gt/intel_migrate.c:6:
drivers/gpu/drm/i915/gt/selftest_migrate.c: In function ‘clear’:
./include/linux/kern_levels.h:5:18: error: format ‘%lu’ expects argument of type ‘long unsigned int’, but argument 4 has type ‘unsigned int’ [-Werror=format=]
 #define KERN_SOH "\001"  /* ASCII Start Of Header */
                  ^~~~~~
./include/linux/printk.h:418:11: note: in definition of macro ‘printk_index_wrap’
   _p_func(_fmt, ##__VA_ARGS__);    \
           ^~~~
./include/linux/printk.h:489:2: note: in expansion of macro ‘printk’
  printk(KERN_ERR pr_fmt(fmt), ##__VA_ARGS__)
  ^~~~~~
./include/linux/kern_levels.h:11:18: note: in expansion of macro ‘KERN_SOH’
 #define KERN_ERR KERN_SOH "3" /* error conditions */
                  ^~~~~~~~
./include/linux/printk.h:489:9: note: in expansion of macro ‘KERN_ERR’
  printk(KERN_ERR pr_fmt(fmt), ##__VA_ARGS__)
         ^~~~~~~~
drivers/gpu/drm/i915/gt/selftest_migrate.c:403:6: note: in expansion of macro ‘pr_err’
      pr_err("%ps ccs clearing failed, offset: %d/%lu\n",
      ^~~~~~
In file included from drivers/gpu/drm/i915/gt/intel_migrate.c:1167:
drivers/gpu/drm/i915/gt/selftest_migrate.c:403:52: note: format string is defined here
      pr_err("%ps ccs clearing failed, offset: %d/%lu\n",
                                                  ~~^
                                                  %u
cc1: all warnings being treated as errors
scripts/Makefile.build:288: recipe for target 'drivers/gpu/drm/i915/gt/intel_migrate.o' failed
make[4]: *** [drivers/gpu/drm/i915/gt/intel_migrate.o] Error 1
scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:550: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1831: recipe for target 'drivers' failed
make: *** [drivers] Error 2

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22620/build_32bit.log
