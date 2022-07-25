Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A2055804A7
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jul 2022 21:45:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 629E211324A;
	Mon, 25 Jul 2022 19:45:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 30BADB117E;
 Mon, 25 Jul 2022 19:45:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 282C6A010C;
 Mon, 25 Jul 2022 19:45:33 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Piorkowski, Piotr" <piotr.piorkowski@intel.com>
Date: Mon, 25 Jul 2022 19:45:33 -0000
Message-ID: <165877833313.20164.15734365281835645846@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220725194105.4054734-1-piotr.piorkowski@intel.com>
In-Reply-To: <20220725194105.4054734-1-piotr.piorkowski@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBT?=
 =?utf-8?q?anitycheck_PCI_BARs?=
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

Series: Sanitycheck PCI BARs
URL   : https://patchwork.freedesktop.org/series/106686/
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
                 from ./drivers/gpu/drm/i915/i915_drv.h:50,
                 from drivers/gpu/drm/i915/gvt/cfg_space.c:34:
drivers/gpu/drm/i915/gvt/cfg_space.c: In function ‘intel_vgpu_init_cfg_space’:
drivers/gpu/drm/i915/gvt/cfg_space.c:356:26: error: ‘GTTMMADR_BAR’ undeclared (first use in this function)
   pci_resource_len(pdev, GTTMMADR_BAR);
                          ^~~~~~~~~~~~
./include/linux/pci.h:1951:54: note: in definition of macro ‘pci_resource_end’
 #define pci_resource_end(dev, bar) ((dev)->resource[(bar)].end)
                                                      ^~~
drivers/gpu/drm/i915/gvt/cfg_space.c:356:3: note: in expansion of macro ‘pci_resource_len’
   pci_resource_len(pdev, GTTMMADR_BAR);
   ^~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/gvt/cfg_space.c:356:26: note: each undeclared identifier is reported only once for each function it appears in
   pci_resource_len(pdev, GTTMMADR_BAR);
                          ^~~~~~~~~~~~
./include/linux/pci.h:1951:54: note: in definition of macro ‘pci_resource_end’
 #define pci_resource_end(dev, bar) ((dev)->resource[(bar)].end)
                                                      ^~~
drivers/gpu/drm/i915/gvt/cfg_space.c:356:3: note: in expansion of macro ‘pci_resource_len’
   pci_resource_len(pdev, GTTMMADR_BAR);
   ^~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/gvt/cfg_space.c:358:26: error: ‘GTT_APERTURE_BAR’ undeclared (first use in this function); did you mean ‘GVT_PORT_MAX’?
   pci_resource_len(pdev, GTT_APERTURE_BAR);
                          ^~~~~~~~~~~~~~~~
./include/linux/pci.h:1951:54: note: in definition of macro ‘pci_resource_end’
 #define pci_resource_end(dev, bar) ((dev)->resource[(bar)].end)
                                                      ^~~
drivers/gpu/drm/i915/gvt/cfg_space.c:358:3: note: in expansion of macro ‘pci_resource_len’
   pci_resource_len(pdev, GTT_APERTURE_BAR);
   ^~~~~~~~~~~~~~~~
scripts/Makefile.build:249: recipe for target 'drivers/gpu/drm/i915/gvt/cfg_space.o' failed
make[4]: *** [drivers/gpu/drm/i915/gvt/cfg_space.o] Error 1
scripts/Makefile.build:466: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:466: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:466: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1843: recipe for target 'drivers' failed
make: *** [drivers] Error 2


