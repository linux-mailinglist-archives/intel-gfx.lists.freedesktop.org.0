Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 21890601C08
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Oct 2022 00:05:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D39C910EB8F;
	Mon, 17 Oct 2022 22:05:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id ECFA210EB3C;
 Mon, 17 Oct 2022 22:05:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5FE11A73C7;
 Mon, 17 Oct 2022 22:05:11 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Mon, 17 Oct 2022 22:05:11 -0000
Message-ID: <166604431135.13570.1294594656975270817@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221012222739.27296-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20221012222739.27296-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBB?=
 =?utf-8?q?dd_DG2_OA_support_=28rev7=29?=
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

Series: Add DG2 OA support (rev7)
URL   : https://patchwork.freedesktop.org/series/107584/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  CC [M]  drivers/gpu/drm/i915/i915_perf.o
In file included from drivers/gpu/drm/i915/i915_perf.c:207:
drivers/gpu/drm/i915/i915_perf.c: In function ‘gen12_enable_metric_set’:
drivers/gpu/drm/i915/gt/intel_gt_regs.h:11:25: error: incompatible type for argument 2 of ‘intel_uncore_write’
 #define MCR_REG(offset) ((const i915_mcr_reg_t){ .reg = (offset) })
                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/gt/intel_gt_regs.h:1150:28: note: in expansion of macro ‘MCR_REG’
 #define GEN8_ROW_CHICKEN   MCR_REG(0xe4f0)
                            ^~~~~~~
drivers/gpu/drm/i915/i915_perf.c:2798:30: note: in expansion of macro ‘GEN8_ROW_CHICKEN’
   intel_uncore_write(uncore, GEN8_ROW_CHICKEN,
                              ^~~~~~~~~~~~~~~~
In file included from ./drivers/gpu/drm/i915/gt/intel_engine_types.h:26,
                 from ./drivers/gpu/drm/i915/gt/intel_context_types.h:18,
                 from drivers/gpu/drm/i915/gem/i915_gem_context_types.h:20,
                 from drivers/gpu/drm/i915/gem/i915_gem_context.h:10,
                 from drivers/gpu/drm/i915/i915_perf.c:198:
./drivers/gpu/drm/i915/intel_uncore.h:353:18: note: expected ‘i915_reg_t’ {aka ‘struct <anonymous>’} but argument is of type ‘i915_mcr_reg_t’ {aka ‘const struct <anonymous>’}
       i915_reg_t reg, u##x__ val) \
       ~~~~~~~~~~~^~~
./drivers/gpu/drm/i915/intel_uncore.h:366:1: note: in expansion of macro ‘__uncore_write’
 __uncore_write(write, 32, l, true)
 ^~~~~~~~~~~~~~
In file included from drivers/gpu/drm/i915/i915_perf.c:207:
drivers/gpu/drm/i915/i915_perf.c: In function ‘gen12_disable_metric_set’:
drivers/gpu/drm/i915/gt/intel_gt_regs.h:11:25: error: incompatible type for argument 2 of ‘intel_uncore_write’
 #define MCR_REG(offset) ((const i915_mcr_reg_t){ .reg = (offset) })
                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/gt/intel_gt_regs.h:1150:28: note: in expansion of macro ‘MCR_REG’
 #define GEN8_ROW_CHICKEN   MCR_REG(0xe4f0)
                            ^~~~~~~
drivers/gpu/drm/i915/i915_perf.c:2887:30: note: in expansion of macro ‘GEN8_ROW_CHICKEN’
   intel_uncore_write(uncore, GEN8_ROW_CHICKEN,
                              ^~~~~~~~~~~~~~~~
In file included from ./drivers/gpu/drm/i915/gt/intel_engine_types.h:26,
                 from ./drivers/gpu/drm/i915/gt/intel_context_types.h:18,
                 from drivers/gpu/drm/i915/gem/i915_gem_context_types.h:20,
                 from drivers/gpu/drm/i915/gem/i915_gem_context.h:10,
                 from drivers/gpu/drm/i915/i915_perf.c:198:
./drivers/gpu/drm/i915/intel_uncore.h:353:18: note: expected ‘i915_reg_t’ {aka ‘struct <anonymous>’} but argument is of type ‘i915_mcr_reg_t’ {aka ‘const struct <anonymous>’}
       i915_reg_t reg, u##x__ val) \
       ~~~~~~~~~~~^~~
./drivers/gpu/drm/i915/intel_uncore.h:366:1: note: in expansion of macro ‘__uncore_write’
 __uncore_write(write, 32, l, true)
 ^~~~~~~~~~~~~~
scripts/Makefile.build:250: recipe for target 'drivers/gpu/drm/i915/i915_perf.o' failed
make[5]: *** [drivers/gpu/drm/i915/i915_perf.o] Error 1
scripts/Makefile.build:500: recipe for target 'drivers/gpu/drm/i915' failed
make[4]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:500: recipe for target 'drivers/gpu/drm' failed
make[3]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:500: recipe for target 'drivers/gpu' failed
make[2]: *** [drivers/gpu] Error 2
scripts/Makefile.build:500: recipe for target 'drivers' failed
make[1]: *** [drivers] Error 2
Makefile:1992: recipe for target '.' failed
make: *** [.] Error 2


