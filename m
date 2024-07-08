Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4222C929B6C
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jul 2024 07:10:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1526810E1C7;
	Mon,  8 Jul 2024 05:10:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F24510E1B1;
 Mon,  8 Jul 2024 05:10:03 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm/i915/display=3A_WA_to?=
 =?utf-8?q?_Re-initialize_dispcnlunitt1_xosc_clock?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mitul Golani" <mitulkumar.ajitkumar.golani@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 08 Jul 2024 05:10:03 -0000
Message-ID: <172041540332.49295.873298130270284290@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240708050522.2538474-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20240708050522.2538474-1-mitulkumar.ajitkumar.golani@intel.com>
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

Series: drm/i915/display: WA to Re-initialize dispcnlunitt1 xosc clock
URL   : https://patchwork.freedesktop.org/series/135828/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/display/intel_display_power.o
In file included from drivers/gpu/drm/i915/display/intel_display_power.c:15:
drivers/gpu/drm/i915/display/intel_display_power.c: In function ‘icl_display_core_init’:
drivers/gpu/drm/i915/display/intel_de.h:111:29: error: too few arguments to function ‘__intel_de_rmw’
  111 | #define intel_de_rmw(p,...) __intel_de_rmw(__to_intel_display(p), __VA_ARGS__)
      |                             ^~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_display_power.c:1710:3: note: in expansion of macro ‘intel_de_rmw’
 1710 |   intel_de_rmw(dev_priv, SOUTH_DSPCLK_GATE_D,
      |   ^~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_de.h:98:1: note: declared here
   98 | __intel_de_rmw(struct intel_display *display, i915_reg_t reg, u32 clear,
      | ^~~~~~~~~~~~~~
make[6]: *** [scripts/Makefile.build:244: drivers/gpu/drm/i915/display/intel_display_power.o] Error 1
make[5]: *** [scripts/Makefile.build:485: drivers/gpu/drm/i915] Error 2
make[4]: *** [scripts/Makefile.build:485: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:485: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:485: drivers] Error 2
make[1]: *** [/home/kbuild/kernel/Makefile:1934: .] Error 2
make: *** [Makefile:240: __sub-make] Error 2
Build failed, no error log produced


