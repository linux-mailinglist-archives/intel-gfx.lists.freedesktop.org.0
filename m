Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F26634CE8
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 02:24:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D346A10E1E4;
	Wed, 23 Nov 2022 01:24:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3C67710E053;
 Wed, 23 Nov 2022 01:24:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3A414AADDC;
 Wed, 23 Nov 2022 01:24:45 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Wed, 23 Nov 2022 01:24:45 -0000
Message-ID: <166916668523.15574.2618009697268243613@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221122234156.599924-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20221122234156.599924-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/perf=3A_Do_not_parse_context_image_for_HSW?=
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

Series: drm/i915/perf: Do not parse context image for HSW
URL   : https://patchwork.freedesktop.org/series/111231/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  CC [M]  drivers/gpu/drm/i915/i915_perf.o
drivers/gpu/drm/i915/i915_perf.c: In function ‘oa_context_image_offset’:
drivers/gpu/drm/i915/i915_perf.c:1387:3: error: expected ‘)’ before ‘return’
   return U32_MAX;
   ^~~~~~
drivers/gpu/drm/i915/i915_perf.c:1386:5: note: to match this ‘(’
  if (drm_WARN_ON(&ce->engine->i915->drm, state == NULL)
     ^
drivers/gpu/drm/i915/i915_perf.c:1406:1: error: expected expression before ‘}’ token
 }
 ^
drivers/gpu/drm/i915/i915_perf.c:1383:14: error: unused variable ‘len’ [-Werror=unused-variable]
  u32 offset, len = (ce->engine->context_size - PAGE_SIZE) / 4;
              ^~~
drivers/gpu/drm/i915/i915_perf.c:1383:6: error: unused variable ‘offset’ [-Werror=unused-variable]
  u32 offset, len = (ce->engine->context_size - PAGE_SIZE) / 4;
      ^~~~~~
drivers/gpu/drm/i915/i915_perf.c:1406:1: error: no return statement in function returning non-void [-Werror=return-type]
 }
 ^
At top level:
drivers/gpu/drm/i915/i915_perf.c:1363:13: error: ‘oa_find_reg_in_lri’ defined but not used [-Werror=unused-function]
 static bool oa_find_reg_in_lri(u32 *state, u32 reg, u32 *offset, u32 end)
             ^~~~~~~~~~~~~~~~~~
cc1: all warnings being treated as errors
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


