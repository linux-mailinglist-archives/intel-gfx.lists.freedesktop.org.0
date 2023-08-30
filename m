Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF17B78D7E6
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Aug 2023 20:00:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8916B10E1BD;
	Wed, 30 Aug 2023 18:00:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EE00310E1BD;
 Wed, 30 Aug 2023 18:00:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D21E5A00CC;
 Wed, 30 Aug 2023 18:00:28 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Shekhar Chauhan" <shekhar.chauhan@intel.com>
Date: Wed, 30 Aug 2023 18:00:28 -0000
Message-ID: <169341842883.15234.10529147680957493451@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230830160001.2395993-1-shekhar.chauhan@intel.com>
In-Reply-To: <20230830160001.2395993-1-shekhar.chauhan@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915=3A_Add_Wa=5F14015150844?=
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

Series: drm/i915: Add Wa_14015150844
URL   : https://patchwork.freedesktop.org/series/123074/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/gt/intel_workarounds.o
drivers/gpu/drm/i915/gt/intel_workarounds.c: In function ‘rcs_engine_wa_init’:
drivers/gpu/drm/i915/gt/intel_workarounds.c:2330:6: error: implicit declaration of function ‘IS_DG2_GRAPHICS_STEP’; did you mean ‘IS_GRAPHICS_STEP’? [-Werror=implicit-function-declaration]
 2330 |  if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_C0, STEP_FOREVER) ||
      |      ^~~~~~~~~~~~~~~~~~~~
      |      IS_GRAPHICS_STEP
drivers/gpu/drm/i915/gt/intel_workarounds.c:2330:33: error: ‘G10’ undeclared (first use in this function)
 2330 |  if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_C0, STEP_FOREVER) ||
      |                                 ^~~
drivers/gpu/drm/i915/gt/intel_workarounds.c:2330:33: note: each undeclared identifier is reported only once for each function it appears in
drivers/gpu/drm/i915/gt/intel_workarounds.c:2331:33: error: ‘G11’ undeclared (first use in this function)
 2331 |      IS_DG2_GRAPHICS_STEP(i915, G11, STEP_B0, STEP_FOREVER) ||
      |                                 ^~~
drivers/gpu/drm/i915/gt/intel_workarounds.c:2333:6: error: implicit declaration of function ‘IS_MTL_GRAPHICS_STEP’; did you mean ‘INTEL_GRAPHICS_STEP’? [-Werror=implicit-function-declaration]
 2333 |      IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_FOREVER) ||
      |      ^~~~~~~~~~~~~~~~~~~~
      |      INTEL_GRAPHICS_STEP
drivers/gpu/drm/i915/gt/intel_workarounds.c:2333:33: error: ‘M’ undeclared (first use in this function)
 2333 |      IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_FOREVER) ||
      |                                 ^
drivers/gpu/drm/i915/gt/intel_workarounds.c:2334:33: error: ‘P’ undeclared (first use in this function)
 2334 |      IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_FOREVER)) {
      |                                 ^
cc1: all warnings being treated as errors
make[6]: *** [scripts/Makefile.build:243: drivers/gpu/drm/i915/gt/intel_workarounds.o] Error 1
make[5]: *** [scripts/Makefile.build:480: drivers/gpu/drm/i915] Error 2
make[4]: *** [scripts/Makefile.build:480: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:480: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:480: drivers] Error 2
make[1]: *** [/home/kbuild2/kernel/Makefile:2032: .] Error 2
make: *** [Makefile:234: __sub-make] Error 2
Build failed, no error log produced


