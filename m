Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 249EB4AFE8F
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 21:36:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EFD810E58D;
	Wed,  9 Feb 2022 20:36:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8E5BA10E46C;
 Wed,  9 Feb 2022 20:36:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8F977A47DF;
 Wed,  9 Feb 2022 20:36:13 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Wed, 09 Feb 2022 20:36:13 -0000
Message-ID: <164443897358.23763.7395134703552449527@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220209195851.404256-1-jose.souza@intel.com>
In-Reply-To: <20220209195851.404256-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiB3YXJuaW5nIGZvciBk?=
 =?utf-8?q?rm/i915=3A_Check_stolen_memory_size_before_calling_drm=5Fmm=5Fi?=
 =?utf-8?q?nit?=
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

Series: drm/i915: Check stolen memory size before calling drm_mm_init
URL   : https://patchwork.freedesktop.org/series/99917/
State : warning

== Summary ==

CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/i915/gem/i915_gem_stolen.o
In file included from ./include/drm/drm_mm.h:51,
                 from drivers/gpu/drm/i915/gem/i915_gem_stolen.c:10:
drivers/gpu/drm/i915/gem/i915_gem_stolen.c: In function ‘i915_gem_init_stolen’:
drivers/gpu/drm/i915/gem/i915_gem_stolen.c:503:3: error: format ‘%llu’ expects argument of type ‘long long unsigned int’, but argument 5 has type ‘resource_size_t’ {aka ‘unsigned int’} [-Werror=format=]
   "Memory reserved for graphics device: %lluK, usable: %lluK\n",
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/gem/i915_gem_stolen.c:505:3:
   i915->stolen_usable_size >> 10);
   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
./include/drm/drm_print.h:461:56: note: in definition of macro ‘drm_dbg’
  drm_dev_dbg((drm) ? (drm)->dev : NULL, DRM_UT_DRIVER, fmt, ##__VA_ARGS__)
                                                        ^~~
cc1: all warnings being treated as errors
scripts/Makefile.build:288: recipe for target 'drivers/gpu/drm/i915/gem/i915_gem_stolen.o' failed
make[4]: *** [drivers/gpu/drm/i915/gem/i915_gem_stolen.o] Error 1
scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:550: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1831: recipe for target 'drivers' failed
make: *** [drivers] Error 2

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22226/build_32bit.log
