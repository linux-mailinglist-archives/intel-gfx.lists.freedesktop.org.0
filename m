Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B52FE634485
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 20:29:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3211510E452;
	Tue, 22 Nov 2022 19:28:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3F53510E452;
 Tue, 22 Nov 2022 19:28:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 39D6AAA0ED;
 Tue, 22 Nov 2022 19:28:54 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andy Shevchenko" <andriy.shevchenko@linux.intel.com>
Date: Tue, 22 Nov 2022 19:28:54 -0000
Message-ID: <166914533420.2185.4522645976694668822@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221122153516.52577-1-andriy.shevchenko@linux.intel.com>
In-Reply-To: <20221122153516.52577-1-andriy.shevchenko@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5Bv3=2C1/4=5D_i915=3A_Move_list=5Fcount=28?=
 =?utf-8?q?=29_to_list=2Eh_for_broader_use?=
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

Series: series starting with [v3,1/4] i915: Move list_count() to list.h for broader use
URL   : https://patchwork.freedesktop.org/series/111206/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  VDSO    arch/x86/entry/vdso/vdso64.so.dbg
arch/x86/entry/vdso/vgetcpu.o: In function `list_count':
/home/kbuild/kernel/./include/linux/list.h:667: multiple definition of `list_count'
arch/x86/entry/vdso/vclock_gettime.o:/home/kbuild/kernel/./include/linux/list.h:667: first defined here
objdump: 'arch/x86/entry/vdso/vdso64.so.dbg': No such file
  OBJCOPY arch/x86/entry/vdso/vdso64.so
objcopy: 'arch/x86/entry/vdso/vdso64.so.dbg': No such file
arch/x86/entry/vdso/Makefile:139: recipe for target 'arch/x86/entry/vdso/vdso64.so' failed
make[4]: *** [arch/x86/entry/vdso/vdso64.so] Error 1
scripts/Makefile.build:500: recipe for target 'arch/x86/entry/vdso' failed
make[3]: *** [arch/x86/entry/vdso] Error 2
scripts/Makefile.build:500: recipe for target 'arch/x86/entry' failed
make[2]: *** [arch/x86/entry] Error 2
scripts/Makefile.build:500: recipe for target 'arch/x86' failed
make[1]: *** [arch/x86] Error 2
Makefile:1992: recipe for target '.' failed
make: *** [.] Error 2


