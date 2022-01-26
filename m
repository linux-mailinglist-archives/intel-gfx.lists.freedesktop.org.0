Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98DDC49D651
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 00:43:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EC9A10EDEB;
	Wed, 26 Jan 2022 23:43:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4743A10EDF9;
 Wed, 26 Jan 2022 23:42:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 48066A00A0;
 Wed, 26 Jan 2022 23:42:58 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Wed, 26 Jan 2022 23:42:58 -0000
Message-ID: <164324057829.25402.9117421263405624774@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220126203702.1784589-1-lucas.demarchi@intel.com>
In-Reply-To: <20220126203702.1784589-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiB3YXJuaW5nIGZvciBk?=
 =?utf-8?q?rm/i915/guc=3A_Refactor_ADS_access_to_use_dma=5Fbuf=5Fmap?=
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

Series: drm/i915/guc: Refactor ADS access to use dma_buf_map
URL   : https://patchwork.freedesktop.org/series/99378/
State : warning

== Summary ==

CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/i915/gt/uc/intel_guc_ads.o
In file included from ./include/drm/drm_mm.h:51,
                 from ./drivers/gpu/drm/i915/i915_vma.h:31,
                 from ./drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h:13,
                 from ./drivers/gpu/drm/i915/gt/uc/intel_guc.h:20,
                 from ./drivers/gpu/drm/i915/gt/uc/intel_uc.h:9,
                 from ./drivers/gpu/drm/i915/gt/intel_gt_types.h:18,
                 from ./drivers/gpu/drm/i915/gt/intel_gt.h:10,
                 from drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c:9:
drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c: In function ‘guc_mmio_reg_state_create’:
drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c:369:38: error: format ‘%lu’ expects argument of type ‘long unsigned int’, but argument 4 has type ‘u32’ {aka ‘unsigned int’} [-Werror=format=]
  drm_dbg(&guc_to_gt(guc)->i915->drm, "Used %lu KB for temporary ADS regset\n",
                                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   (temp_set.storage_max * sizeof(struct guc_mmio_reg)) >> 10);
   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
./include/drm/drm_print.h:461:56: note: in definition of macro ‘drm_dbg’
  drm_dev_dbg((drm) ? (drm)->dev : NULL, DRM_UT_DRIVER, fmt, ##__VA_ARGS__)
                                                        ^~~
cc1: all warnings being treated as errors
scripts/Makefile.build:288: recipe for target 'drivers/gpu/drm/i915/gt/uc/intel_guc_ads.o' failed
make[4]: *** [drivers/gpu/drm/i915/gt/uc/intel_guc_ads.o] Error 1
scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:550: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1831: recipe for target 'drivers' failed
make: *** [drivers] Error 2

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22116/build_32bit.log
