Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6704D454F58
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Nov 2021 22:27:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D26F6E5C3;
	Wed, 17 Nov 2021 21:27:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A0E516E546;
 Wed, 17 Nov 2021 21:27:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 98301A008A;
 Wed, 17 Nov 2021 21:27:36 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kahola" <mika.kahola@intel.com>
Date: Wed, 17 Nov 2021 21:27:36 -0000
Message-ID: <163718445661.18222.16528109553028082579@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211117151850.627674-1-mika.kahola@intel.com>
In-Reply-To: <20211117151850.627674-1-mika.kahola@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/display/dg2=3A_Read_CD_clock_from_squasher_table?=
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

Series: drm/i915/display/dg2: Read CD clock from squasher table
URL   : https://patchwork.freedesktop.org/series/97031/
State : failure

== Summary ==

CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/i915/display/intel_cdclk.o
drivers/gpu/drm/i915/display/intel_cdclk.c: In function ‘bxt_get_cdclk’:
drivers/gpu/drm/i915/display/intel_cdclk.c:1495:6: error: implicit declaration of function ‘has_cdclk_squasher’ [-Werror=implicit-function-declaration]
  if (has_cdclk_squasher(dev_priv))
      ^~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:1496:40: error: ‘CDCLK_SQUASH_CTL’ undeclared (first use in this function); did you mean ‘CDCLK_CTL’?
   squash_ctl = intel_de_read(dev_priv, CDCLK_SQUASH_CTL);
                                        ^~~~~~~~~~~~~~~~
                                        CDCLK_CTL
drivers/gpu/drm/i915/display/intel_cdclk.c:1496:40: note: each undeclared identifier is reported only once for each function it appears in
drivers/gpu/drm/i915/display/intel_cdclk.c:1498:19: error: ‘CDCLK_SQUASH_ENABLE’ undeclared (first use in this function); did you mean ‘ICL_CSC_ENABLE’?
  if (squash_ctl & CDCLK_SQUASH_ENABLE) {
                   ^~~~~~~~~~~~~~~~~~~
                   ICL_CSC_ENABLE
In file included from <command-line>:
drivers/gpu/drm/i915/display/intel_cdclk.c:1502:24: error: ‘CDCLK_SQUASH_WINDOW_SIZE_MASK’ undeclared (first use in this function); did you mean ‘ACPI_EBDA_WINDOW_SIZE’?
   size = REG_FIELD_GET(CDCLK_SQUASH_WINDOW_SIZE_MASK, squash_ctl) + 1;
                        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
././include/linux/compiler_types.h:315:9: note: in definition of macro ‘__compiletime_assert’
   if (!(condition))     \
         ^~~~~~~~~
././include/linux/compiler_types.h:335:2: note: in expansion of macro ‘_compiletime_assert’
  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
  ^~~~~~~~~~~~~~~~~~~
./include/linux/build_bug.h:39:37: note: in expansion of macro ‘compiletime_assert’
 #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                     ^~~~~~~~~~~~~~~~~~
./include/linux/bitfield.h:46:3: note: in expansion of macro ‘BUILD_BUG_ON_MSG’
   BUILD_BUG_ON_MSG(!__builtin_constant_p(_mask),  \
   ^~~~~~~~~~~~~~~~
./include/linux/bitfield.h:108:3: note: in expansion of macro ‘__BF_FIELD_CHECK’
   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \
   ^~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:179:44: note: in expansion of macro ‘FIELD_GET’
 #define REG_FIELD_GET(__mask, __val) ((u32)FIELD_GET(__mask, __val))
                                            ^~~~~~~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:1502:10: note: in expansion of macro ‘REG_FIELD_GET’
   size = REG_FIELD_GET(CDCLK_SQUASH_WINDOW_SIZE_MASK, squash_ctl) + 1;
          ^~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:1503:28: error: ‘CDCLK_SQUASH_WAVEFORM_MASK’ undeclared (first use in this function); did you mean ‘CDCLK_FREQ_SEL_MASK’?
   waveform = REG_FIELD_GET(CDCLK_SQUASH_WAVEFORM_MASK, squash_ctl) >> (16 - size);
                            ^~~~~~~~~~~~~~~~~~~~~~~~~~
././include/linux/compiler_types.h:315:9: note: in definition of macro ‘__compiletime_assert’
   if (!(condition))     \
         ^~~~~~~~~
././include/linux/compiler_types.h:335:2: note: in expansion of macro ‘_compiletime_assert’
  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
  ^~~~~~~~~~~~~~~~~~~
./include/linux/build_bug.h:39:37: note: in expansion of macro ‘compiletime_assert’
 #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                     ^~~~~~~~~~~~~~~~~~
./include/linux/bitfield.h:46:3: note: in expansion of macro ‘BUILD_BUG_ON_MSG’
   BUILD_BUG_ON_MSG(!__builtin_constant_p(_mask),  \
   ^~~~~~~~~~~~~~~~
./include/linux/bitfield.h:108:3: note: in expansion of macro ‘__BF_FIELD_CHECK’
   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \
   ^~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:179:44: note: in expansion of macro ‘FIELD_GET’
 #define REG_FIELD_GET(__mask, __val) ((u32)FIELD_GET(__mask, __val))
                                            ^~~~~~~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:1503:14: note: in expansion of macro ‘REG_FIELD_GET’
   waveform = REG_FIELD_GET(CDCLK_SQUASH_WAVEFORM_MASK, squash_ctl) >> (16 - size);
              ^~~~~~~~~~~~~
cc1: all warnings being treated as errors
scripts/Makefile.build:287: recipe for target 'drivers/gpu/drm/i915/display/intel_cdclk.o' failed
make[4]: *** [drivers/gpu/drm/i915/display/intel_cdclk.o] Error 1
scripts/Makefile.build:549: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:549: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:549: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1846: recipe for target 'drivers' failed
make: *** [drivers] Error 2


