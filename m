Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7243AB49964
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 21:07:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 791BF10E1F1;
	Mon,  8 Sep 2025 19:07:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C58D10E1F1;
 Mon,  8 Sep 2025 19:07:29 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm/i915=3A_clean_up_i915?=
 =?utf-8?q?=5Futils=2Eh?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 08 Sep 2025 19:07:29 -0000
Message-ID: <175735844917.313434.9634314565533072534@1538d3639d33>
X-Patchwork-Hint: ignore
References: <cover.1757340520.git.jani.nikula@intel.com>
In-Reply-To: <cover.1757340520.git.jani.nikula@intel.com>
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

Series: drm/i915: clean up i915_utils.h
URL   : https://patchwork.freedesktop.org/series/154194/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/i915_driver.o
In file included from ./drivers/gpu/drm/i915/gt/intel_engine_types.h:20,
                 from ./drivers/gpu/drm/i915/gt/intel_context_types.h:17,
                 from drivers/gpu/drm/i915/gem/i915_gem_context_types.h:19,
                 from drivers/gpu/drm/i915/gem/i915_gem_context.h:9,
                 from drivers/gpu/drm/i915/i915_driver.c:70:
./drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h: In function ‘engine_class_to_guc_class’:
./drivers/gpu/drm/i915/i915_gem.h:123:37: error: implicit declaration of function ‘__add_taint_for_CI’ [-Werror=implicit-function-declaration]
  123 |         do { ftrace_dump(DUMP_ALL); __add_taint_for_CI(TAINT_WARN); } while (0)
      |                                     ^~~~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_gem.h:98:17: note: in expansion of macro ‘GEM_TRACE_DUMP’
   98 |                 GEM_TRACE_DUMP(); \
      |                 ^~~~~~~~~~~~~~
./drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h:186:9: note: in expansion of macro ‘GEM_BUG_ON’
  186 |         GEM_BUG_ON(class > MAX_ENGINE_CLASS);
      |         ^~~~~~~~~~
In file included from ./drivers/gpu/drm/i915/i915_drv.h:56,
                 from ./drivers/gpu/drm/i915/gt/intel_context.h:14,
                 from drivers/gpu/drm/i915/gem/i915_gem_context.h:11:
./drivers/gpu/drm/i915/i915_utils.h: At top level:
./drivers/gpu/drm/i915/i915_utils.h:141:20: error: conflicting types for ‘__add_taint_for_CI’; have ‘void(unsigned int)’ [-Werror]
  141 | static inline void __add_taint_for_CI(unsigned int taint)
      |                    ^~~~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_utils.h:141:20: error: static declaration of ‘__add_taint_for_CI’ follows non-static declaration
./drivers/gpu/drm/i915/i915_gem.h:123:37: note: previous implicit declaration of ‘__add_taint_for_CI’ with type ‘void(unsigned int)’
  123 |         do { ftrace_dump(DUMP_ALL); __add_taint_for_CI(TAINT_WARN); } while (0)
      |                                     ^~~~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_gem.h:98:17: note: in expansion of macro ‘GEM_TRACE_DUMP’
   98 |                 GEM_TRACE_DUMP(); \
      |                 ^~~~~~~~~~~~~~
./drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h:186:9: note: in expansion of macro ‘GEM_BUG_ON’
  186 |         GEM_BUG_ON(class > MAX_ENGINE_CLASS);
      |         ^~~~~~~~~~
cc1: all warnings being treated as errors
make[6]: *** [scripts/Makefile.build:287: drivers/gpu/drm/i915/i915_driver.o] Error 1
make[5]: *** [scripts/Makefile.build:556: drivers/gpu/drm/i915] Error 2
make[4]: *** [scripts/Makefile.build:556: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:556: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:556: drivers] Error 2
make[1]: *** [/home/kbuild2/kernel/Makefile:2011: .] Error 2
make: *** [Makefile:248: __sub-make] Error 2
Build failed, no error log produced


