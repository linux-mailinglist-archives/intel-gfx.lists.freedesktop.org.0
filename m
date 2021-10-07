Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB23425FC7
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Oct 2021 00:20:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 657A86E03F;
	Thu,  7 Oct 2021 22:20:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 91DBE6E03A;
 Thu,  7 Oct 2021 22:20:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 89AD5A8169;
 Thu,  7 Oct 2021 22:20:36 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Oak Zeng" <oak.zeng@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 07 Oct 2021 22:20:36 -0000
Message-ID: <163364523652.5187.8652757122226537415@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211007225553.571381-1-oak.zeng@intel.com>
In-Reply-To: <20211007225553.571381-1-oak.zeng@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/gem=3A_Check_function_return_in_live=5Fnop=5Fswitch?=
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

Series: drm/i915/gem: Check function return in live_nop_switch
URL   : https://patchwork.freedesktop.org/series/95584/
State : failure

== Summary ==

CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/i915/gem/i915_gem_context.o
In file included from drivers/gpu/drm/i915/gem/i915_gem_context.c:2283:
drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c: In function ‘live_nop_switch’:
drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c:88:26: error: implicit declaration of function ‘to_gt’; did you mean ‘uc_to_gt’? [-Werror=implicit-function-declaration]
      intel_gt_set_wedged(to_gt(i915));
                          ^~~~~
                          uc_to_gt
drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c:88:26: error: passing argument 1 of ‘intel_gt_set_wedged’ makes pointer from integer without a cast [-Werror=int-conversion]
      intel_gt_set_wedged(to_gt(i915));
                          ^~~~~~~~~~~
In file included from ./drivers/gpu/drm/i915/gt/intel_gtt.h:28,
                 from ./drivers/gpu/drm/i915/gt/gen6_ppgtt.h:9,
                 from drivers/gpu/drm/i915/gem/i915_gem_context.c:72:
./drivers/gpu/drm/i915/gt/intel_reset.h:44:43: note: expected ‘struct intel_gt *’ but argument is of type ‘int’
 void intel_gt_set_wedged(struct intel_gt *gt);
                          ~~~~~~~~~~~~~~~~~^~
cc1: all warnings being treated as errors
scripts/Makefile.build:277: recipe for target 'drivers/gpu/drm/i915/gem/i915_gem_context.o' failed
make[4]: *** [drivers/gpu/drm/i915/gem/i915_gem_context.o] Error 1
scripts/Makefile.build:540: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:540: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:540: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1868: recipe for target 'drivers' failed
make: *** [drivers] Error 2


