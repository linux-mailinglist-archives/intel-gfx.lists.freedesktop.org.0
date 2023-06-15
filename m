Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE0C8730F0A
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jun 2023 08:06:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B13F310E10A;
	Thu, 15 Jun 2023 06:06:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3E82A10E10A;
 Thu, 15 Jun 2023 06:06:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3648CAADF0;
 Thu, 15 Jun 2023 06:06:29 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dnyaneshwar Bhadane" <dnyaneshwar.bhadane@intel.com>
Date: Thu, 15 Jun 2023 06:06:29 -0000
Message-ID: <168680918918.10725.6168686743735476020@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230615050015.3105902-1-dnyaneshwar.bhadane@intel.com>
In-Reply-To: <20230615050015.3105902-1-dnyaneshwar.bhadane@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBS?=
 =?utf-8?q?eplace_acronym_with_full_platform_name_in_defines=2E?=
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

Series: Replace acronym with full platform name in defines.
URL   : https://patchwork.freedesktop.org/series/119361/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/display/intel_cdclk.o
drivers/gpu/drm/i915/display/intel_cdclk.c: In function ‘intel_init_cdclk_hooks’:
drivers/gpu/drm/i915/display/intel_cdclk.c:3562:3: error: this ‘if’ clause does not guard... [-Werror=misleading-indentation]
 3562 |   if (IS_ALDERLAKE_P_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
      |   ^~
drivers/gpu/drm/i915/display/intel_cdclk.c:3564:4: note: ...this statement, but the latter is misleadingly indented as if it were guarded by the ‘if’
 3564 |    dev_priv->display.funcs.cdclk = &tgl_cdclk_funcs;
      |    ^~~~~~~~
drivers/gpu/drm/i915/display/intel_cdclk.c: At top level:
drivers/gpu/drm/i915/display/intel_cdclk.c:3572:4: error: expected identifier or ‘(’ before ‘else’
 3572 |  } else if (IS_ROCKETLAKE(dev_priv)) {
      |    ^~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:3575:4: error: expected identifier or ‘(’ before ‘else’
 3575 |  } else if (DISPLAY_VER(dev_priv) >= 12) {
      |    ^~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:3578:4: error: expected identifier or ‘(’ before ‘else’
 3578 |  } else if (IS_JASPERLAKE_EHL(dev_priv)) {
      |    ^~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:3581:4: error: expected identifier or ‘(’ before ‘else’
 3581 |  } else if (DISPLAY_VER(dev_priv) >= 11) {
      |    ^~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:3584:4: error: expected identifier or ‘(’ before ‘else’
 3584 |  } else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
      |    ^~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:3590:4: error: expected identifier or ‘(’ before ‘else’
 3590 |  } else if (DISPLAY_VER(dev_priv) == 9) {
      |    ^~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:3592:4: error: expected identifier or ‘(’ before ‘else’
 3592 |  } else if (IS_BROADWELL(dev_priv)) {
      |    ^~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:3594:4: error: expected identifier or ‘(’ before ‘else’
 3594 |  } else if (IS_HASWELL(dev_priv)) {
      |    ^~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:3596:4: error: expected identifier or ‘(’ before ‘else’
 3596 |  } else if (IS_CHERRYVIEW(dev_priv)) {
      |    ^~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:3598:4: error: expected identifier or ‘(’ before ‘else’
 3598 |  } else if (IS_VALLEYVIEW(dev_priv)) {
      |    ^~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:3600:4: error: expected identifier or ‘(’ before ‘else’
 3600 |  } else if (IS_SANDYBRIDGE(dev_priv) || IS_IVYBRIDGE(dev_priv)) {
      |    ^~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:3602:4: error: expected identifier or ‘(’ before ‘else’
 3602 |  } else if (IS_IRONLAKE(dev_priv)) {
      |    ^~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:3604:4: error: expected identifier or ‘(’ before ‘else’
 3604 |  } else if (IS_GM45(dev_priv)) {
      |    ^~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:3606:4: error: expected identifier or ‘(’ before ‘else’
 3606 |  } else if (IS_G45(dev_priv)) {
      |    ^~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:3608:4: error: expected identifier or ‘(’ before ‘else’
 3608 |  } else if (IS_I965GM(dev_priv)) {
      |    ^~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:3610:4: error: expected identifier or ‘(’ before ‘else’
 3610 |  } else if (IS_I965G(dev_priv)) {
      |    ^~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:3612:4: error: expected identifier or ‘(’ before ‘else’
 3612 |  } else if (IS_PINEVIEW(dev_priv)) {
      |    ^~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:3614:4: error: expected identifier or ‘(’ before ‘else’
 3614 |  } else if (IS_G33(dev_priv)) {
      |    ^~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:3616:4: error: expected identifier or ‘(’ before ‘else’
 3616 |  } else if (IS_I945GM(dev_priv)) {
      |    ^~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:3618:4: error: expected identifier or ‘(’ before ‘else’
 3618 |  } else if (IS_I945G(dev_priv)) {
      |    ^~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:3620:4: error: expected identifier or ‘(’ before ‘else’
 3620 |  } else if (IS_I915GM(dev_priv)) {
      |    ^~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:3622:4: error: expected identifier or ‘(’ before ‘else’
 3622 |  } else if (IS_I915G(dev_priv)) {
      |    ^~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:3624:4: error: expected identifier or ‘(’ before ‘else’
 3624 |  } else if (IS_I865G(dev_priv)) {
      |    ^~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:3626:4: error: expected identifier or ‘(’ before ‘else’
 3626 |  } else if (IS_I85X(dev_priv)) {
      |    ^~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:3628:4: error: expected identifier or ‘(’ before ‘else’
 3628 |  } else if (IS_I845G(dev_priv)) {
      |    ^~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:3630:4: error: expected identifier or ‘(’ before ‘else’
 3630 |  } else if (IS_I830(dev_priv)) {
      |    ^~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:3634:2: error: expected identifier or ‘(’ before ‘if’
 3634 |  if (drm_WARN(&dev_priv->drm, !dev_priv->display.funcs.cdclk,
      |  ^~
In file included from ./arch/x86/include/asm/bug.h:87,
                 from ./include/linux/bug.h:5,
                 from ./include/linux/cpumask.h:14,
                 from ./arch/x86/include/asm/cpumask.h:5,
                 from ./arch/x86/include/asm/msr.h:11,
                 from ./arch/x86/include/asm/processor.h:23,
                 from ./arch/x86/include/asm/timex.h:5,
                 from ./include/linux/timex.h:67,
                 from ./include/linux/time32.h:13,
                 from ./include/linux/time.h:60,
                 from drivers/gpu/drm/i915/display/intel_cdclk.c:24:
./include/asm-generic/bug.h:135:2: error: expected identifier or ‘(’ before ‘)’ token
  135 | })
      |  ^
./include/drm/drm_print.h:620:2: note: in expansion of macro ‘WARN’
  620 |  WARN(condition, "%s %s: " format,    \
      |  ^~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:3634:6: note: in expansion of macro ‘drm_WARN’
 3634 |  if (drm_WARN(&dev_priv->drm, !dev_priv->display.funcs.cdclk,
      |      ^~~~~~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:3637:1: error: expected identifier or ‘(’ before ‘}’ token
 3637 | }
      | ^
drivers/gpu/drm/i915/display/intel_cdclk.c:3543:39: error: ‘i830_cdclk_funcs’ defined but not used [-Werror=unused-const-variable=]
 3543 | static const struct intel_cdclk_funcs i830_cdclk_funcs = {
      |                                       ^~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:3538:39: error: ‘i845g_cdclk_funcs’ defined but not used [-Werror=unused-const-variable=]
 3538 | static const struct intel_cdclk_funcs i845g_cdclk_funcs = {
      |                                       ^~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:3533:39: error: ‘i85x_cdclk_funcs’ defined but not used [-Werror=unused-const-variable=]
 3533 | static const struct intel_cdclk_funcs i85x_cdclk_funcs = {
      |                                       ^~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:3528:39: error: ‘i865g_cdclk_funcs’ defined but not used [-Werror=unused-const-variable=]
 3528 | static const struct intel_cdclk_funcs i865g_cdclk_funcs = {
      |                                       ^~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:3523:39: error: ‘i915g_cdclk_funcs’ defined but not used [-Werror=unused-const-variable=]
 3523 | static const struct intel_cdclk_funcs i915g_cdclk_funcs = {
      |                                       ^~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:3518:39: error: ‘i915gm_cdclk_funcs’ defined but not used [-Werror=unused-const-variable=]
 3518 | static const struct intel_cdclk_funcs i915gm_cdclk_funcs = {
      |                                       ^~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:3511:39: error: ‘i945gm_cdclk_funcs’ defined but not used [-Werror=unused-const-variable=]
 3511 | static const struct intel_cdclk_funcs i945gm_cdclk_funcs = {
      |                                       ^~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:3506:39: error: ‘g33_cdclk_funcs’ defined but not used [-Werror=unused-const-variable=]
 3506 | static const struct intel_cdclk_funcs g33_cdclk_funcs = {
      |                                       ^~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:3501:39: error: ‘pnv_cdclk_funcs’ defined but not used [-Werror=unused-const-variable=]
 3501 | static const struct intel_cdclk_funcs pnv_cdclk_funcs = {
      |                                       ^~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:3494:39: error: ‘i965gm_cdclk_funcs’ defined but not used [-Werror=unused-const-variable=]
 3494 | static const struct intel_cdclk_funcs i965gm_cdclk_funcs = {
      |                                       ^~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:3487:39: error: ‘gm45_cdclk_funcs’ defined but not used [-Werror=unused-const-variable=]
 3487 | static const struct intel_cdclk_funcs gm45_cdclk_funcs = {
      |                                       ^~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:3482:39: error: ‘ilk_cdclk_funcs’ defined but not used [-Werror=unused-const-variable=]
 3482 | static const struct intel_cdclk_funcs ilk_cdclk_funcs = {
      |                                       ^~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:3477:39: error: ‘fixed_400mhz_cdclk_funcs’ defined but not used [-Werror=unused-const-variable=]
 3477 | static const struct intel_cdclk_funcs fixed_400mhz_cdclk_funcs = {
      |                                       ^~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:3471:39: error: ‘hsw_cdclk_funcs’ defined but not used [-Werror=unused-const-variable=]
 3471 | static const struct intel_cdclk_funcs hsw_cdclk_funcs = {
      |                                       ^~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:3465:39: error: ‘vlv_cdclk_funcs’ defined but not used [-Werror=unused-const-variable=]
 3465 | static const struct intel_cdclk_funcs vlv_cdclk_funcs = {
      |                                       ^~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:3459:39: error: ‘chv_cdclk_funcs’ defined but not used [-Werror=unused-const-variable=]
 3459 | static const struct intel_cdclk_funcs chv_cdclk_funcs = {
      |                                       ^~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:3453:39: error: ‘bdw_cdclk_funcs’ defined but not used [-Werror=unused-const-variable=]
 3453 | static const struct intel_cdclk_funcs bdw_cdclk_funcs = {
      |                                       ^~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:3447:39: error: ‘skl_cdclk_funcs’ defined but not used [-Werror=unused-const-variable=]
 3447 | static const struct intel_cdclk_funcs skl_cdclk_funcs = {
      |                                       ^~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:3440:39: error: ‘bxt_cdclk_funcs’ defined but not used [-Werror=unused-const-variable=]
 3440 | static const struct intel_cdclk_funcs bxt_cdclk_funcs = {
      |                                       ^~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:3433:39: error: ‘icl_cdclk_funcs’ defined but not used [-Werror=unused-const-variable=]
 3433 | static const struct intel_cdclk_funcs icl_cdclk_funcs = {
      |                                       ^~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:3426:39: error: ‘ehl_cdclk_funcs’ defined but not used [-Werror=unused-const-variable=]
 3426 | static const struct intel_cdclk_funcs ehl_cdclk_funcs = {
      |                                       ^~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:1272:38: error: ‘rkl_cdclk_table’ defined but not used [-Werror=unused-const-variable=]
 1272 | static const struct intel_cdclk_vals rkl_cdclk_table[] = {
      |                                      ^~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:1248:38: error: ‘icl_cdclk_table’ defined but not used [-Werror=unused-const-variable=]
 1248 | static const struct intel_cdclk_vals icl_cdclk_table[] = {
      |                                      ^~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:1241:38: error: ‘glk_cdclk_table’ defined but not used [-Werror=unused-const-variable=]
 1241 | static const struct intel_cdclk_vals glk_cdclk_table[] = {
      |                                      ^~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_cdclk.c:1232:38: error: ‘bxt_cdclk_table’ defined but not used [-Werror=unused-const-variable=]
 1232 | static const struct intel_cdclk_vals bxt_cdclk_table[] = {
      |                                      ^~~~~~~~~~~~~~~
cc1: all warnings being treated as errors
make[5]: *** [scripts/Makefile.build:252: drivers/gpu/drm/i915/display/intel_cdclk.o] Error 1
make[4]: *** [scripts/Makefile.build:494: drivers/gpu/drm/i915] Error 2
make[3]: *** [scripts/Makefile.build:494: drivers/gpu/drm] Error 2
make[2]: *** [scripts/Makefile.build:494: drivers/gpu] Error 2
make[1]: *** [scripts/Makefile.build:494: drivers] Error 2
make: *** [Makefile:2026: .] Error 2
Build failed, no error log produced


