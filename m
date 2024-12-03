Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C34F59E1345
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2024 07:15:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34FBC10E8ED;
	Tue,  3 Dec 2024 06:15:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDF6710E8ED;
 Tue,  3 Dec 2024 06:15:55 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_Display_Global_Histogram_?=
 =?utf-8?q?=28rev9=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arun R Murthy" <arun.r.murthy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 03 Dec 2024 06:15:55 -0000
Message-ID: <173320655596.1891689.5759080190072367168@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241203055520.1704661-1-arun.r.murthy@intel.com>
In-Reply-To: <20241203055520.1704661-1-arun.r.murthy@intel.com>
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

Series: Display Global Histogram (rev9)
URL   : https://patchwork.freedesktop.org/series/135793/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/display/intel_histogram.o
In file included from ./include/linux/string.h:389,
                 from ./include/linux/bitmap.h:13,
                 from ./include/linux/cpumask.h:12,
                 from ./arch/x86/include/asm/paravirt.h:21,
                 from ./arch/x86/include/asm/irqflags.h:80,
                 from ./include/linux/irqflags.h:18,
                 from ./include/linux/spinlock.h:59,
                 from ./include/linux/kref.h:16,
                 from ./include/drm/drm_device.h:5,
                 from drivers/gpu/drm/i915/display/intel_histogram.c:6:
In function ‘fortify_memcpy_chk’,
    inlined from ‘intel_histogram_handle_int_work’ at drivers/gpu/drm/i915/display/intel_histogram.c:135:4:
./include/linux/fortify-string.h:571:25: error: call to ‘__write_overflow_field’ declared with attribute warning: detected write beyond size of field (1st parameter); maybe use struct_group()? [-Werror=attribute-warning]
  571 |                         __write_overflow_field(p_size_field, size);
      |                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cc1: all warnings being treated as errors
make[6]: *** [scripts/Makefile.build:194: drivers/gpu/drm/i915/display/intel_histogram.o] Error 1
make[5]: *** [scripts/Makefile.build:440: drivers/gpu/drm/i915] Error 2
make[4]: *** [scripts/Makefile.build:440: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:440: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:440: drivers] Error 2
make[1]: *** [/home/kbuild2/kernel/Makefile:1989: .] Error 2
make: *** [Makefile:251: __sub-make] Error 2
Build failed, no error log produced


