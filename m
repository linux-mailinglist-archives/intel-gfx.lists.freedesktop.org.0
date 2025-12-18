Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6052BCCD00B
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Dec 2025 18:42:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB0A710E5A6;
	Thu, 18 Dec 2025 17:42:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 977A410E42E;
 Thu, 18 Dec 2025 17:42:52 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm/i915/display=3A_All_p?=
 =?utf-8?q?atches_to_make_PREEMPT=5FRT_work_on_i915_+_xe=2E_=28rev5=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <dev@lankhorst.se>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 18 Dec 2025 17:42:52 -0000
Message-ID: <176607977261.102714.4785612617479203073@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20251218163408.97508-1-dev@lankhorst.se>
In-Reply-To: <20251218163408.97508-1-dev@lankhorst.se>
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

Series: drm/i915/display: All patches to make PREEMPT_RT work on i915 + xe. (rev5)
URL   : https://patchwork.freedesktop.org/series/159035/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/i915_driver.o
In file included from ./drivers/gpu/drm/i915/gt/intel_engine_types.h:26,
                 from ./drivers/gpu/drm/i915/gt/intel_context_types.h:17,
                 from drivers/gpu/drm/i915/gem/i915_gem_context_types.h:19,
                 from drivers/gpu/drm/i915/gem/i915_gem_context.h:9,
                 from drivers/gpu/drm/i915/i915_driver.c:75:
./drivers/gpu/drm/i915/intel_uncore.h: In function ‘intel_uncore_read64_2x32_fw’:
./drivers/gpu/drm/i915/intel_uncore.h:455:19: error: expected ‘=’, ‘,’, ‘;’, ‘asm’ or ‘__attribute__’ before ‘lower’
  455 |         u32 upper lower, old_upper, loop = 0;
      |                   ^~~~~
./drivers/gpu/drm/i915/intel_uncore.h:455:19: error: ‘lower’ undeclared (first use in this function); did you mean ‘islower’?
  455 |         u32 upper lower, old_upper, loop = 0;
      |                   ^~~~~
      |                   islower
./drivers/gpu/drm/i915/intel_uncore.h:455:19: note: each undeclared identifier is reported only once for each function it appears in
./drivers/gpu/drm/i915/intel_uncore.h:455:26: error: ‘old_upper’ undeclared (first use in this function); did you mean ‘si_upper’?
  455 |         u32 upper lower, old_upper, loop = 0;
      |                          ^~~~~~~~~
      |                          si_upper
./drivers/gpu/drm/i915/intel_uncore.h:455:24: error: left-hand operand of comma expression has no effect [-Werror=unused-value]
  455 |         u32 upper lower, old_upper, loop = 0;
      |                        ^
./drivers/gpu/drm/i915/intel_uncore.h:455:37: error: ‘loop’ undeclared (first use in this function)
  455 |         u32 upper lower, old_upper, loop = 0;
      |                                     ^~~~
./drivers/gpu/drm/i915/intel_uncore.h:455:35: error: left-hand operand of comma expression has no effect [-Werror=unused-value]
  455 |         u32 upper lower, old_upper, loop = 0;
      |                                   ^
./drivers/gpu/drm/i915/intel_uncore.h:456:9: error: ‘upper’ undeclared (first use in this function)
  456 |         upper = intel_uncore_read_fw(uncoree, upper_reg);
      |         ^~~~~
./drivers/gpu/drm/i915/intel_uncore.h:456:38: error: ‘uncoree’ undeclared (first use in this function); did you mean ‘uncore’?
  456 |         upper = intel_uncore_read_fw(uncoree, upper_reg);
      |                                      ^~~~~~~
./drivers/gpu/drm/i915/intel_uncore.h:425:55: note: in definition of macro ‘intel_uncore_read_fw’
  425 | #define intel_uncore_read_fw(...) __raw_uncore_read32(__VA_ARGS__)
      |                                                       ^~~~~~~~~~~
./drivers/gpu/drm/i915/intel_uncore.h:456:47: error: ‘upper_reg’ undeclared (first use in this function)
  456 |         upper = intel_uncore_read_fw(uncoree, upper_reg);
      |                                               ^~~~~~~~~
./drivers/gpu/drm/i915/intel_uncore.h:425:55: note: in definition of macro ‘intel_uncore_read_fw’
  425 | #define intel_uncore_read_fw(...) __raw_uncore_read32(__VA_ARGS__)
      |                                                       ^~~~~~~~~~~
./drivers/gpu/drm/i915/intel_uncore.h:459:54: error: ‘lower_reg’ undeclared (first use in this function)
  459 |                 lower = intel_uncore_read_fw(uncore, lower_reg);
      |                                                      ^~~~~~~~~
./drivers/gpu/drm/i915/intel_uncore.h:425:55: note: in definition of macro ‘intel_uncore_read_fw’
  425 | #define intel_uncore_read_fw(...) __raw_uncore_read32(__VA_ARGS__)
      |                                                       ^~~~~~~~~~~
./drivers/gpu/drm/i915/intel_uncore.h: In function ‘intel_uncore_read64_2x32’:
./drivers/gpu/drm/i915/intel_uncore.h:483:15: error: too many arguments to function ‘intel_uncore_read64_2x32_fw’
  483 |         ret = intel_uncore_read64_2x32_fw(uncore, lower_reg, upper_reg);
      |               ^~~~~~~~~~~~~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/intel_uncore.h:453:1: note: declared here
  453 | intel_uncore_read64_2x32_fw(struct intel_uncore *uncore)
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~
cc1: all warnings being treated as errors
make[6]: *** [scripts/Makefile.build:287: drivers/gpu/drm/i915/i915_driver.o] Error 1
make[5]: *** [scripts/Makefile.build:556: drivers/gpu/drm/i915] Error 2
make[4]: *** [scripts/Makefile.build:556: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:556: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:556: drivers] Error 2
make[1]: *** [/home/kbuild/kernel/Makefile:2054: .] Error 2
make: *** [Makefile:248: __sub-make] Error 2
Build failed, no error log produced


