Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8984D5E69B6
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Sep 2022 19:36:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3905D10E0BD;
	Thu, 22 Sep 2022 17:36:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7FDC410E0BD;
 Thu, 22 Sep 2022 17:36:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 78822A0099;
 Thu, 22 Sep 2022 17:36:29 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Das, Nirmoy" <nirmoy.das@intel.com>
Date: Thu, 22 Sep 2022 17:36:29 -0000
Message-ID: <166386818947.19672.2202651287028521338@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220922120908.10352-1-nirmoy.das@intel.com>
In-Reply-To: <20220922120908.10352-1-nirmoy.das@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915=3A_Improve_debug_print_in_vm=5Ffault=5Fttm?=
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

Series: drm/i915: Improve debug print in vm_fault_ttm
URL   : https://patchwork.freedesktop.org/series/108887/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/i915/gem/i915_gem_ttm.o
In file included from ./include/drm/drm_mm.h:51,
                 from ./include/drm/ttm/ttm_bo_driver.h:33,
                 from drivers/gpu/drm/i915/gem/i915_gem_ttm.c:8:
drivers/gpu/drm/i915/gem/i915_gem_ttm.c: In function ‘vm_fault_ttm’:
drivers/gpu/drm/i915/gem/i915_gem_ttm.c:1037:17: error: format ‘%p’ expects argument of type ‘void *’, but argument 4 has type ‘int’ [-Werror=format=]
    drm_dbg(dev, "Unable to make resource CPU accessible(err = %pe)\n", err);
                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~
./include/drm/drm_print.h:461:56: note: in definition of macro ‘drm_dbg’
  drm_dev_dbg((drm) ? (drm)->dev : NULL, DRM_UT_DRIVER, fmt, ##__VA_ARGS__)
                                                        ^~~
cc1: all warnings being treated as errors
scripts/Makefile.build:249: recipe for target 'drivers/gpu/drm/i915/gem/i915_gem_ttm.o' failed
make[4]: *** [drivers/gpu/drm/i915/gem/i915_gem_ttm.o] Error 1
scripts/Makefile.build:465: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:465: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:465: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1852: recipe for target 'drivers' failed
make: *** [drivers] Error 2


