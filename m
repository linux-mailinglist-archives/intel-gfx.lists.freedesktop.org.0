Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 134854CE0FA
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Mar 2022 00:31:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18AA7113D86;
	Fri,  4 Mar 2022 23:31:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EDD96113D41;
 Fri,  4 Mar 2022 23:31:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E93CBA9932;
 Fri,  4 Mar 2022 23:31:11 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Fri, 04 Mar 2022 23:31:11 -0000
Message-ID: <164643667193.21355.6308635849019187792@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220304230354.1453629-1-anusha.srivatsa@intel.com>
In-Reply-To: <20220304230354.1453629-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBB?=
 =?utf-8?q?dd_CDCLK_checks_to_atomic_check_phase?=
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

Series: Add CDCLK checks to atomic check phase
URL   : https://patchwork.freedesktop.org/series/101068/
State : failure

== Summary ==

CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/i915/display/intel_cdclk.o
drivers/gpu/drm/i915/display/intel_cdclk.c: In function ‘bxt_set_cdclk’:
drivers/gpu/drm/i915/display/intel_cdclk.c:1719:14: error: assignment to ‘struct cdclk_steps *’ from incompatible pointer type ‘struct cdclk_step *’ [-Werror=incompatible-pointer-types]
  cdclk_steps = new_cdclk_state->steps;
              ^
drivers/gpu/drm/i915/display/intel_cdclk.c:1743:22: error: invalid use of undefined type ‘struct cdclk_steps’
   switch (cdclk_steps[i].action) {
                      ^
drivers/gpu/drm/i915/display/intel_cdclk.c:1743:22: error: dereferencing pointer to incomplete type ‘struct cdclk_steps’
drivers/gpu/drm/i915/display/intel_cdclk.c:1767:59: error: invalid use of undefined type ‘struct cdclk_steps’
    waveform =  cdclk_squash_waveform(dev_priv, cdclk_steps[i].cdclk);
                                                           ^
In file included from ./arch/x86/include/asm/bug.h:86,
                 from ./include/linux/bug.h:5,
                 from ./include/linux/cpumask.h:14,
                 from ./arch/x86/include/asm/cpumask.h:5,
                 from ./arch/x86/include/asm/msr.h:11,
                 from ./arch/x86/include/asm/processor.h:22,
                 from ./arch/x86/include/asm/timex.h:5,
                 from ./include/linux/timex.h:65,
                 from ./include/linux/time32.h:13,
                 from ./include/linux/time.h:60,
                 from drivers/gpu/drm/i915/display/intel_cdclk.c:24:
drivers/gpu/drm/i915/display/intel_cdclk.c:1776:28: error: invalid use of undefined type ‘struct cdclk_steps’
    MISSING_CASE(cdclk_steps[i].action);
                            ^
./include/asm-generic/bug.h:99:17: note: in definition of macro ‘__WARN_printf’
   __warn_printk(arg);     \
                 ^~~
./drivers/gpu/drm/i915/i915_utils.h:41:25: note: in expansion of macro ‘WARN’
 #define MISSING_CASE(x) WARN(1, "Missing case (%s == %ld)\n", \
                         ^~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:1776:4: note: in expansion of macro ‘MISSING_CASE’
    MISSING_CASE(cdclk_steps[i].action);
    ^~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_cdclk.c: In function ‘intel_cdclk_can_crawl’:
drivers/gpu/drm/i915/display/intel_cdclk.c:1973:41: error: initialization of ‘struct cdclk_steps *’ from incompatible pointer type ‘struct cdclk_step *’ [-Werror=incompatible-pointer-types]
  struct cdclk_steps *cdclk_transition = b->steps;
                                         ^
drivers/gpu/drm/i915/display/intel_cdclk.c:1985:18: error: invalid use of undefined type ‘struct cdclk_steps’
  cdclk_transition[0].action = INTEL_CDCLK_CRAWL;
                  ^
drivers/gpu/drm/i915/display/intel_cdclk.c:1985:18: error: dereferencing pointer to incomplete type ‘struct cdclk_steps’
drivers/gpu/drm/i915/display/intel_cdclk.c:1986:18: error: invalid use of undefined type ‘struct cdclk_steps’
  cdclk_transition[0].cdclk = b->actual.cdclk;
                  ^
drivers/gpu/drm/i915/display/intel_cdclk.c:1987:18: error: invalid use of undefined type ‘struct cdclk_steps’
  cdclk_transition[1].action = INTEL_CDCLK_NOOP;
                  ^
drivers/gpu/drm/i915/display/intel_cdclk.c:1988:18: error: invalid use of undefined type ‘struct cdclk_steps’
  cdclk_transition[1].cdclk = b->actual.cdclk;
                  ^
drivers/gpu/drm/i915/display/intel_cdclk.c: In function ‘intel_cdclk_squash’:
drivers/gpu/drm/i915/display/intel_cdclk.c:2001:41: error: initialization of ‘struct cdclk_steps *’ from incompatible pointer type ‘struct cdclk_step *’ [-Werror=incompatible-pointer-types]
  struct cdclk_steps *cdclk_transition = b->steps;
                                         ^
drivers/gpu/drm/i915/display/intel_cdclk.c:2011:18: error: invalid use of undefined type ‘struct cdclk_steps’
  cdclk_transition[0].action = INTEL_CDCLK_SQUASH;
                  ^
drivers/gpu/drm/i915/display/intel_cdclk.c:2011:18: error: dereferencing pointer to incomplete type ‘struct cdclk_steps’
drivers/gpu/drm/i915/display/intel_cdclk.c:2012:18: error: invalid use of undefined type ‘struct cdclk_steps’
  cdclk_transition[0].cdclk = b->actual.cdclk;
                  ^
drivers/gpu/drm/i915/display/intel_cdclk.c:2013:18: error: invalid use of undefined type ‘struct cdclk_steps’
  cdclk_transition[1].action = INTEL_CDCLK_NOOP;
                  ^
drivers/gpu/drm/i915/display/intel_cdclk.c:2014:18: error: invalid use of undefined type ‘struct cdclk_steps’
  cdclk_transition[1].cdclk = b->actual.cdclk;
                  ^
drivers/gpu/drm/i915/display/intel_cdclk.c: In function ‘intel_cdclk_needs_modeset’:
drivers/gpu/drm/i915/display/intel_cdclk.c:2042:19: error: assignment to ‘struct cdclk_steps *’ from incompatible pointer type ‘struct cdclk_step *’ [-Werror=incompatible-pointer-types]
  cdclk_transition = new_cdclk_state->steps;
                   ^
drivers/gpu/drm/i915/display/intel_cdclk.c:2047:19: error: invalid use of undefined type ‘struct cdclk_steps’
   cdclk_transition[0].action = INTEL_CDCLK_MODESET;
                   ^
drivers/gpu/drm/i915/display/intel_cdclk.c:2047:19: error: dereferencing pointer to incomplete type ‘struct cdclk_steps’
drivers/gpu/drm/i915/display/intel_cdclk.c:2048:19: error: invalid use of undefined type ‘struct cdclk_steps’
   cdclk_transition[0].cdclk = b->cdclk;
                   ^
drivers/gpu/drm/i915/display/intel_cdclk.c:2049:19: error: invalid use of undefined type ‘struct cdclk_steps’
   cdclk_transition[1].action = INTEL_CDCLK_NOOP;
                   ^
drivers/gpu/drm/i915/display/intel_cdclk.c:2050:19: error: invalid use of undefined type ‘struct cdclk_steps’
   cdclk_transition[1].cdclk = b->cdclk;
                   ^
cc1: all warnings being treated as errors
scripts/Makefile.build:288: recipe for target 'drivers/gpu/drm/i915/display/intel_cdclk.o' failed
make[4]: *** [drivers/gpu/drm/i915/display/intel_cdclk.o] Error 1
scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:550: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1831: recipe for target 'drivers' failed
make: *** [drivers] Error 2


