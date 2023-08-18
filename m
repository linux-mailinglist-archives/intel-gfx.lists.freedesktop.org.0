Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0892C78140B
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Aug 2023 22:05:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D69910E0F4;
	Fri, 18 Aug 2023 20:05:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E7CEB10E0F4;
 Fri, 18 Aug 2023 20:05:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DFDC2AADD5;
 Fri, 18 Aug 2023 20:05:09 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Date: Fri, 18 Aug 2023 20:05:09 -0000
Message-ID: <169238910988.12740.17649349466100727807@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230818194249.1014022-1-andi.shyti@linux.intel.com>
In-Reply-To: <20230818194249.1014022-1-andi.shyti@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5BCI=5D_drm/i915/gt=3A_Refactor_hangcheck_?=
 =?utf-8?q?selftest_to_use_igt=5Fspinner_=28rev2=29?=
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

Series: series starting with [CI] drm/i915/gt: Refactor hangcheck selftest to use igt_spinner (rev2)
URL   : https://patchwork.freedesktop.org/series/122651/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/i915_driver.o
drivers/gpu/drm/i915/i915_driver.c: In function ‘i915_driver_probe’:
drivers/gpu/drm/i915/i915_driver.c:818:2: error: implicit declaration of function ‘intel_engine_blitter_context_set_ready’ [-Werror=implicit-function-declaration]
  818 |  intel_engine_blitter_context_set_ready(to_gt(i915), true);
      |  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cc1: all warnings being treated as errors
make[6]: *** [scripts/Makefile.build:243: drivers/gpu/drm/i915/i915_driver.o] Error 1
make[5]: *** [scripts/Makefile.build:480: drivers/gpu/drm/i915] Error 2
make[4]: *** [scripts/Makefile.build:480: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:480: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:480: drivers] Error 2
make[1]: *** [/home/kbuild2/kernel/Makefile:2032: .] Error 2
make: *** [Makefile:234: __sub-make] Error 2
Build failed, no error log produced


