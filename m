Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C6415F5960
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Oct 2022 19:50:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 106C110E1EE;
	Wed,  5 Oct 2022 17:50:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BAE0C10E1EE;
 Wed,  5 Oct 2022 17:50:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B0F54AA0ED;
 Wed,  5 Oct 2022 17:50:25 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Wed, 05 Oct 2022 17:50:25 -0000
Message-ID: <166499222569.20197.16890019209461706995@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221005154159.18750-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20221005154159.18750-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5B1/3=5D_drm/i915=3A_Extract_intel=5Fmmio?=
 =?utf-8?b?X2Jhcigp?=
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

Series: series starting with [1/3] drm/i915: Extract intel_mmio_bar()
URL   : https://patchwork.freedesktop.org/series/109421/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  LD [M]  drivers/gpu/drm/i915/i915.o
  CC [M]  drivers/gpu/drm/i915/gvt/cfg_space.o
In file included from ./drivers/gpu/drm/i915/display/intel_opregion.h:29,
                 from ./drivers/gpu/drm/i915/display/intel_display_core.h:26,
                 from ./drivers/gpu/drm/i915/i915_drv.h:40,
                 from drivers/gpu/drm/i915/gvt/cfg_space.c:34:
drivers/gpu/drm/i915/gvt/cfg_space.c: In function ‘intel_vgpu_init_cfg_space’:
drivers/gpu/drm/i915/gvt/cfg_space.c:357:26: error: ‘GTTMMADR_BAR’ undeclared (first use in this function); did you mean ‘GEN2_MMADR_BAR’?
   pci_resource_len(pdev, GTTMMADR_BAR);
                          ^~~~~~~~~~~~
./include/linux/pci.h:1941:54: note: in definition of macro ‘pci_resource_end’
 #define pci_resource_end(dev, bar) ((dev)->resource[(bar)].end)
                                                      ^~~
drivers/gpu/drm/i915/gvt/cfg_space.c:357:3: note: in expansion of macro ‘pci_resource_len’
   pci_resource_len(pdev, GTTMMADR_BAR);
   ^~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/gvt/cfg_space.c:357:26: note: each undeclared identifier is reported only once for each function it appears in
   pci_resource_len(pdev, GTTMMADR_BAR);
                          ^~~~~~~~~~~~
./include/linux/pci.h:1941:54: note: in definition of macro ‘pci_resource_end’
 #define pci_resource_end(dev, bar) ((dev)->resource[(bar)].end)
                                                      ^~~
drivers/gpu/drm/i915/gvt/cfg_space.c:357:3: note: in expansion of macro ‘pci_resource_len’
   pci_resource_len(pdev, GTTMMADR_BAR);
   ^~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/gvt/cfg_space.c:359:26: error: ‘GMADR_BAR’ undeclared (first use in this function)
   pci_resource_len(pdev, GMADR_BAR);
                          ^~~~~~~~~
./include/linux/pci.h:1941:54: note: in definition of macro ‘pci_resource_end’
 #define pci_resource_end(dev, bar) ((dev)->resource[(bar)].end)
                                                      ^~~
drivers/gpu/drm/i915/gvt/cfg_space.c:359:3: note: in expansion of macro ‘pci_resource_len’
   pci_resource_len(pdev, GMADR_BAR);
   ^~~~~~~~~~~~~~~~
scripts/Makefile.build:249: recipe for target 'drivers/gpu/drm/i915/gvt/cfg_space.o' failed
make[4]: *** [drivers/gpu/drm/i915/gvt/cfg_space.o] Error 1
scripts/Makefile.build:465: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:465: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:465: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1852: recipe for target 'drivers' failed
make: *** [drivers] Error 2


