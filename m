Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C654043B5
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Sep 2021 04:44:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B49336E42A;
	Thu,  9 Sep 2021 02:44:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4990F6E42A;
 Thu,  9 Sep 2021 02:44:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4167CA363C;
 Thu,  9 Sep 2021 02:44:46 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dave Airlie" <airlied@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 09 Sep 2021 02:44:46 -0000
Message-ID: <163115548626.16811.9725192640237426709@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210909023420.2988944-1-airlied@gmail.com>
In-Reply-To: <20210909023420.2988944-1-airlied@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5B1/2=5D_drm/i915/uncore=3A_split_the_fw_g?=
 =?utf-8?q?et_function_into_separate_vfunc?=
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

Series: series starting with [1/2] drm/i915/uncore: split the fw get function into separate vfunc
URL   : https://patchwork.freedesktop.org/series/94495/
State : failure

== Summary ==

CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/i915/intel_uncore.o
In file included from drivers/gpu/drm/i915/intel_uncore.c:2605:
drivers/gpu/drm/i915/selftests/mock_uncore.c: In function ‘mock_uncore_init’:
drivers/gpu/drm/i915/selftests/mock_uncore.c:47:2: error: implicit declaration of function ‘ASSIGN_RAW_WRITE_MMIO_VFUNCS’; did you mean ‘MMIO_RAW_WRITE_VFUNCS’? [-Werror=implicit-function-declaration]
  ASSIGN_RAW_WRITE_MMIO_VFUNCS(uncore, nop);
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
  MMIO_RAW_WRITE_VFUNCS
drivers/gpu/drm/i915/selftests/mock_uncore.c:47:39: error: ‘nop’ undeclared (first use in this function); did you mean ‘node’?
  ASSIGN_RAW_WRITE_MMIO_VFUNCS(uncore, nop);
                                       ^~~
                                       node
drivers/gpu/drm/i915/selftests/mock_uncore.c:47:39: note: each undeclared identifier is reported only once for each function it appears in
drivers/gpu/drm/i915/selftests/mock_uncore.c:48:2: error: implicit declaration of function ‘ASSIGN_RAW_READ_MMIO_VFUNCS’; did you mean ‘MMIO_RAW_READ_VFUNCS’? [-Werror=implicit-function-declaration]
  ASSIGN_RAW_READ_MMIO_VFUNCS(uncore, nop);
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~
  MMIO_RAW_READ_VFUNCS
At top level:
drivers/gpu/drm/i915/selftests/mock_uncore.c:36:1: error: ‘nop_read64’ defined but not used [-Werror=unused-function]
 nop_read##x(struct intel_uncore *uncore, i915_reg_t reg, bool trace) { return 0; }
 ^~~~~~~~
drivers/gpu/drm/i915/selftests/mock_uncore.c:36:1: note: in definition of macro ‘__nop_read’
 nop_read##x(struct intel_uncore *uncore, i915_reg_t reg, bool trace) { return 0; }
 ^~~~~~~~
drivers/gpu/drm/i915/selftests/mock_uncore.c:36:1: error: ‘nop_read32’ defined but not used [-Werror=unused-function]
 nop_read##x(struct intel_uncore *uncore, i915_reg_t reg, bool trace) { return 0; }
 ^~~~~~~~
drivers/gpu/drm/i915/selftests/mock_uncore.c:36:1: note: in definition of macro ‘__nop_read’
 nop_read##x(struct intel_uncore *uncore, i915_reg_t reg, bool trace) { return 0; }
 ^~~~~~~~
drivers/gpu/drm/i915/selftests/mock_uncore.c:36:1: error: ‘nop_read16’ defined but not used [-Werror=unused-function]
 nop_read##x(struct intel_uncore *uncore, i915_reg_t reg, bool trace) { return 0; }
 ^~~~~~~~
drivers/gpu/drm/i915/selftests/mock_uncore.c:36:1: note: in definition of macro ‘__nop_read’
 nop_read##x(struct intel_uncore *uncore, i915_reg_t reg, bool trace) { return 0; }
 ^~~~~~~~
drivers/gpu/drm/i915/selftests/mock_uncore.c:36:1: error: ‘nop_read8’ defined but not used [-Werror=unused-function]
 nop_read##x(struct intel_uncore *uncore, i915_reg_t reg, bool trace) { return 0; }
 ^~~~~~~~
drivers/gpu/drm/i915/selftests/mock_uncore.c:36:1: note: in definition of macro ‘__nop_read’
 nop_read##x(struct intel_uncore *uncore, i915_reg_t reg, bool trace) { return 0; }
 ^~~~~~~~
drivers/gpu/drm/i915/selftests/mock_uncore.c:29:1: error: ‘nop_write32’ defined but not used [-Werror=unused-function]
 nop_write##x(struct intel_uncore *uncore, i915_reg_t reg, u##x val, bool trace) { }
 ^~~~~~~~~
drivers/gpu/drm/i915/selftests/mock_uncore.c:29:1: note: in definition of macro ‘__nop_write’
 nop_write##x(struct intel_uncore *uncore, i915_reg_t reg, u##x val, bool trace) { }
 ^~~~~~~~~
drivers/gpu/drm/i915/selftests/mock_uncore.c:29:1: error: ‘nop_write16’ defined but not used [-Werror=unused-function]
 nop_write##x(struct intel_uncore *uncore, i915_reg_t reg, u##x val, bool trace) { }
 ^~~~~~~~~
drivers/gpu/drm/i915/selftests/mock_uncore.c:29:1: note: in definition of macro ‘__nop_write’
 nop_write##x(struct intel_uncore *uncore, i915_reg_t reg, u##x val, bool trace) { }
 ^~~~~~~~~
drivers/gpu/drm/i915/selftests/mock_uncore.c:29:1: error: ‘nop_write8’ defined but not used [-Werror=unused-function]
 nop_write##x(struct intel_uncore *uncore, i915_reg_t reg, u##x val, bool trace) { }
 ^~~~~~~~~
drivers/gpu/drm/i915/selftests/mock_uncore.c:29:1: note: in definition of macro ‘__nop_write’
 nop_write##x(struct intel_uncore *uncore, i915_reg_t reg, u##x val, bool trace) { }
 ^~~~~~~~~
cc1: all warnings being treated as errors
scripts/Makefile.build:271: recipe for target 'drivers/gpu/drm/i915/intel_uncore.o' failed
make[4]: *** [drivers/gpu/drm/i915/intel_uncore.o] Error 1
scripts/Makefile.build:514: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:514: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:514: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1851: recipe for target 'drivers' failed
make: *** [drivers] Error 2


