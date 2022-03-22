Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB5F4E3618
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 02:47:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FB6810E4F5;
	Tue, 22 Mar 2022 01:47:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D499B10E4F5;
 Tue, 22 Mar 2022 01:47:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D0564A00E8;
 Tue, 22 Mar 2022 01:47:31 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ramalingam C" <ramalingam.c@intel.com>
Date: Tue, 22 Mar 2022 01:47:31 -0000
Message-ID: <164791365182.20007.3673777454332028502@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220321224459.12223-1-ramalingam.c@intel.com>
In-Reply-To: <20220321224459.12223-1-ramalingam.c@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/ttm=3A_Evict_and_restore_of_compressed_object_=28r?=
 =?utf-8?q?ev3=29?=
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

Series: drm/i915/ttm: Evict and restore of compressed object (rev3)
URL   : https://patchwork.freedesktop.org/series/101106/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
a6e13a3a409f drm/i915/gt: Use XY_FAST_COLOR_BLT to clear obj on graphics ver 12+
3d544738736f drm/i915/gt: Optimize the migration and clear loop
5fbb84963217 drm/i915/gt: Clear compress metadata for Flat-ccs objects
-:41: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#41: FILE: drivers/gpu/drm/i915/gt/intel_gpu_commands.h:156:
+#define   MI_FLUSH_DW_CCS		(1<<16)
                          		  ^

-:44: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#44: FILE: drivers/gpu/drm/i915/gt/intel_gpu_commands.h:159:
+#define   MI_FLUSH_DW_LLC		(1<<9)
                          		  ^

total: 0 errors, 0 warnings, 2 checks, 235 lines checked
52c6d109b8ac drm/i915/selftest_migrate: Consider the possible roundup of size
ef8a14ea443a drm/i915/selftest_migrate: Check CCS meta data clear
b2e276f1b5df drm/i915/gt: offset handling for multiple copy engines
0bfb428dad09 drm/ttm: Add a parameter to add extra pages into ttm_tt
-:93: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#93: FILE: drivers/gpu/drm/ttm/ttm_tt.c:150:
+		uint32_t page_flags, enum ttm_caching caching,

-:140: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#140: FILE: include/drm/ttm/ttm_tt.h:151:
+		uint32_t page_flags, enum ttm_caching caching,

total: 0 errors, 0 warnings, 2 checks, 88 lines checked
ad707694af7b drm/i915/gem: Add extra pages in ttm_tt for ccs data
e86bed52649a drm/i915/migrate: Evict and restore the flatccs capable lmem obj


