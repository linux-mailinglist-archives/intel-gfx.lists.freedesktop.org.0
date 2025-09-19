Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C15B8B339
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 22:39:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADE5B10EA95;
	Fri, 19 Sep 2025 20:39:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E088210EA8F;
 Fri, 19 Sep 2025 20:39:08 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm/i915/gvt=3A_Improve_i?=
 =?utf-8?q?ntel=5Fvgpu=5Fioctl_hdr_error_handling?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jonathan Cavitt" <jonathan.cavitt@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 19 Sep 2025 20:39:08 -0000
Message-ID: <175831434889.350138.11776472618072871021@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250919201514.73182-2-jonathan.cavitt@intel.com>
In-Reply-To: <20250919201514.73182-2-jonathan.cavitt@intel.com>
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

Series: drm/i915/gvt: Improve intel_vgpu_ioctl hdr error handling
URL   : https://patchwork.freedesktop.org/series/154798/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  LD [M]  drivers/gpu/drm/i915/i915.o
  CC [M]  drivers/gpu/drm/i915/gvt/kvmgt.o
In file included from ./arch/x86/include/asm/bitops.h:427,
                 from ./include/linux/bitops.h:67,
                 from ./include/linux/kernel.h:23,
                 from ./include/linux/cpumask.h:11,
                 from ./arch/x86/include/asm/paravirt.h:21,
                 from ./arch/x86/include/asm/irqflags.h:102,
                 from ./include/linux/irqflags.h:18,
                 from ./include/linux/spinlock.h:59,
                 from ./include/linux/mmzone.h:8,
                 from ./include/linux/gfp.h:7,
                 from ./include/linux/mm.h:7,
                 from drivers/gpu/drm/i915/gvt/kvmgt.c:37:
drivers/gpu/drm/i915/gvt/kvmgt.c: In function ‘intel_vgpu_ioctl’:
drivers/gpu/drm/i915/gvt/kvmgt.c:1364:43: error: ‘VFIO_IRQ_DATA_TYPE_MASK’ undeclared (first use in this function); did you mean ‘VFIO_IRQ_SET_DATA_TYPE_MASK’?
 1364 |                 if (hweight32(hdr.flags & VFIO_IRQ_DATA_TYPE_MASK) != 1 ||
      |                                           ^~~~~~~~~~~~~~~~~~~~~~~
./include/asm-generic/bitops/const_hweight.h:28:44: note: in definition of macro ‘hweight32’
   28 | #define hweight32(w) (__builtin_constant_p(w) ? __const_hweight32(w) : __arch_hweight32(w))
      |                                            ^
drivers/gpu/drm/i915/gvt/kvmgt.c:1364:43: note: each undeclared identifier is reported only once for each function it appears in
 1364 |                 if (hweight32(hdr.flags & VFIO_IRQ_DATA_TYPE_MASK) != 1 ||
      |                                           ^~~~~~~~~~~~~~~~~~~~~~~
./include/asm-generic/bitops/const_hweight.h:28:44: note: in definition of macro ‘hweight32’
   28 | #define hweight32(w) (__builtin_constant_p(w) ? __const_hweight32(w) : __arch_hweight32(w))
      |                                            ^
drivers/gpu/drm/i915/gvt/kvmgt.c:1365:43: error: ‘VFIO_IRQ_ACTION_TYPE_MASK’ undeclared (first use in this function); did you mean ‘VFIO_IRQ_SET_ACTION_TYPE_MASK’?
 1365 |                     hweight32(hdr.flags & VFIO_IRQ_ACTION_TYPE_MASK) != 1)
      |                                           ^~~~~~~~~~~~~~~~~~~~~~~~~
./include/asm-generic/bitops/const_hweight.h:28:44: note: in definition of macro ‘hweight32’
   28 | #define hweight32(w) (__builtin_constant_p(w) ? __const_hweight32(w) : __arch_hweight32(w))
      |                                            ^
make[6]: *** [scripts/Makefile.build:287: drivers/gpu/drm/i915/gvt/kvmgt.o] Error 1
make[5]: *** [scripts/Makefile.build:556: drivers/gpu/drm/i915] Error 2
make[4]: *** [scripts/Makefile.build:556: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:556: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:556: drivers] Error 2
make[1]: *** [/home/kbuild/kernel/Makefile:2011: .] Error 2
make: *** [Makefile:248: __sub-make] Error 2
Build failed, no error log produced


