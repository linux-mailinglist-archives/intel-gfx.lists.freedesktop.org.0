Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A8834EEE5D
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Apr 2022 15:42:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 778EB10E009;
	Fri,  1 Apr 2022 13:42:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A0E5F10E009;
 Fri,  1 Apr 2022 13:42:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9A475AAA91;
 Fri,  1 Apr 2022 13:42:20 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ramalingam C" <ramalingam.c@intel.com>
Date: Fri, 01 Apr 2022 13:42:20 -0000
Message-ID: <164882054061.22006.15396566048531286341@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220401123751.27771-1-ramalingam.c@intel.com>
In-Reply-To: <20220401123751.27771-1-ramalingam.c@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/ttm=3A_Evict_and_restore_of_compressed_object_=28r?=
 =?utf-8?q?ev7=29?=
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

Series: drm/i915/ttm: Evict and restore of compressed object (rev7)
URL   : https://patchwork.freedesktop.org/series/101106/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
c7781263ce21 drm/i915/gt: use engine instance directly for offset
4b35aa78c844 drm/i915/gt: Use XY_FAST_COLOR_BLT to clear obj on graphics ver 12+
cd1f1f11df1b drm/i915/gt: Optimize the migration and clear loop
de8e6525e810 drm/i915/gt: Clear compress metadata for Flat-ccs objects
-:44: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#44: FILE: drivers/gpu/drm/i915/gt/intel_gpu_commands.h:157:
+#define   MI_FLUSH_DW_CCS		(1<<16)
                          		  ^

-:47: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#47: FILE: drivers/gpu/drm/i915/gt/intel_gpu_commands.h:160:
+#define   MI_FLUSH_DW_LLC		(1<<9)
                          		  ^

total: 0 errors, 0 warnings, 2 checks, 197 lines checked
c00c4ecd5d06 drm/i915/selftest_migrate: Consider the possible roundup of size
886c492b3dfa drm/i915/selftest_migrate: Check CCS meta data clear
b875586d6ccb drm/ttm: Add a parameter to add extra pages into ttm_tt
-:93: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#93: FILE: drivers/gpu/drm/ttm/ttm_tt.c:150:
+		uint32_t page_flags, enum ttm_caching caching,

-:140: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#140: FILE: include/drm/ttm/ttm_tt.h:151:
+		uint32_t page_flags, enum ttm_caching caching,

total: 0 errors, 0 warnings, 2 checks, 88 lines checked
b88b5b478be0 drm/i915/gem: Add extra pages in ttm_tt for ccs data
e893bdce4102 drm/i915/migrate: Evict and restore the flatccs capable lmem obj


