Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C631D331EF
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jan 2026 16:16:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A976210E8C1;
	Fri, 16 Jan 2026 15:16:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 205C210E8C1;
 Fri, 16 Jan 2026 15:16:53 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm/=7Bi915=2C_xe=7D/dsb?=
 =?utf-8?q?=3A_move_DSB_buffer_calls_to_parent_interface?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Jan 2026 15:16:53 -0000
Message-ID: <176857661312.161945.5846285410656796640@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <cover.1768575249.git.jani.nikula@intel.com>
In-Reply-To: <cover.1768575249.git.jani.nikula@intel.com>
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

Series: drm/{i915, xe}/dsb: move DSB buffer calls to parent interface
URL   : https://patchwork.freedesktop.org/series/160197/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/display/intel_dsb.o
drivers/gpu/drm/i915/display/intel_dsb.c: In function ‘dsb_buffer_memset’:
drivers/gpu/drm/i915/display/intel_dsb.c:107:66: error: macro "memset" passed 4 arguments, but takes just 3
  107 |         display->parent->dsb->memset(dsb->dsb_buf, idx, val, size);
      |                                                                  ^
In file included from ./include/linux/string.h:386,
                 from ./include/linux/bitmap.h:13,
                 from ./include/linux/cpumask.h:11,
                 from ./arch/x86/include/asm/paravirt.h:21,
                 from ./arch/x86/include/asm/cpuid/api.h:57,
                 from ./arch/x86/include/asm/processor.h:19,
                 from ./arch/x86/include/asm/timex.h:5,
                 from ./include/linux/timex.h:67,
                 from ./include/linux/time32.h:13,
                 from ./include/linux/time.h:60,
                 from ./include/linux/jiffies.h:10,
                 from ./include/linux/ktime.h:25,
                 from ./include/linux/iopoll.h:11,
                 from drivers/gpu/drm/i915/display/intel_dsb.c:7:
./include/linux/fortify-string.h:512: note: macro "memset" defined here
  512 | #define memset(p, c, s) __fortify_memset_chk(p, c, s,                   \
      | 
drivers/gpu/drm/i915/display/intel_dsb.c:107:29: error: statement with no effect [-Werror=unused-value]
  107 |         display->parent->dsb->memset(dsb->dsb_buf, idx, val, size);
      |         ~~~~~~~~~~~~~~~~~~~~^~~~~~~~
cc1: all warnings being treated as errors
make[6]: *** [scripts/Makefile.build:287: drivers/gpu/drm/i915/display/intel_dsb.o] Error 1
make[5]: *** [scripts/Makefile.build:544: drivers/gpu/drm/i915] Error 2
make[4]: *** [scripts/Makefile.build:544: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:544: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:544: drivers] Error 2
make[1]: *** [/home/kbuild/kernel/Makefile:2054: .] Error 2
make: *** [Makefile:248: __sub-make] Error 2
Build failed, no error log produced


