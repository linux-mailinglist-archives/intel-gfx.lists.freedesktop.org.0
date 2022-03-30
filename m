Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 71FE14EB773
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Mar 2022 02:27:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C349F10E09A;
	Wed, 30 Mar 2022 00:27:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F2DE010E09A;
 Wed, 30 Mar 2022 00:27:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EF102AADDC;
 Wed, 30 Mar 2022 00:27:50 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Casey Bowman" <casey.g.bowman@intel.com>
Date: Wed, 30 Mar 2022 00:27:50 -0000
Message-ID: <164860007095.8653.2405348933638275872@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220329235830.1025100-1-casey.g.bowman@intel.com>
In-Reply-To: <20220329235830.1025100-1-casey.g.bowman@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBT?=
 =?utf-8?q?plitting_intel-gtt_calls_for_non-x86_platforms_=28rev3=29?=
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

Series: Splitting intel-gtt calls for non-x86 platforms (rev3)
URL   : https://patchwork.freedesktop.org/series/101552/
State : failure

== Summary ==

CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/i915/gt/intel_ggtt.o
In file included from ./include/drm/drm_mm.h:51,
                 from ./drivers/gpu/drm/i915/i915_vma.h:31,
                 from drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h:13,
                 from drivers/gpu/drm/i915/gt/uc/intel_guc.h:19,
                 from drivers/gpu/drm/i915/gt/uc/intel_uc.h:9,
                 from drivers/gpu/drm/i915/gt/intel_gt_types.h:18,
                 from drivers/gpu/drm/i915/gt/intel_gt.h:10,
                 from drivers/gpu/drm/i915/gt/intel_ggtt.c:12:
drivers/gpu/drm/i915/gt/intel_ggtt.c: In function ‘ggtt_probe_hw’:
drivers/gpu/drm/i915/gt/intel_ggtt.c:610:23: error: ‘intel_graphics_stolen_res’ undeclared (first use in this function); did you mean ‘intel_engine_stop_cs’?
   (u64)resource_size(&intel_graphics_stolen_res) >> 20);
                       ^~~~~~~~~~~~~~~~~~~~~~~~~
./include/drm/drm_print.h:461:63: note: in definition of macro ‘drm_dbg’
  drm_dev_dbg((drm) ? (drm)->dev : NULL, DRM_UT_DRIVER, fmt, ##__VA_ARGS__)
                                                               ^~~~~~~~~~~
drivers/gpu/drm/i915/gt/intel_ggtt.c:610:23: note: each undeclared identifier is reported only once for each function it appears in
   (u64)resource_size(&intel_graphics_stolen_res) >> 20);
                       ^~~~~~~~~~~~~~~~~~~~~~~~~
./include/drm/drm_print.h:461:63: note: in definition of macro ‘drm_dbg’
  drm_dev_dbg((drm) ? (drm)->dev : NULL, DRM_UT_DRIVER, fmt, ##__VA_ARGS__)
                                                               ^~~~~~~~~~~
scripts/Makefile.build:288: recipe for target 'drivers/gpu/drm/i915/gt/intel_ggtt.o' failed
make[4]: *** [drivers/gpu/drm/i915/gt/intel_ggtt.o] Error 1
scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:550: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1831: recipe for target 'drivers' failed
make: *** [drivers] Error 2


