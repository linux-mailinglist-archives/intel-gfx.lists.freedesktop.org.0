Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD5254E3E03
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 13:02:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 107B710E55C;
	Tue, 22 Mar 2022 12:02:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4E5D810E562;
 Tue, 22 Mar 2022 12:02:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 48DC3A9A42;
 Tue, 22 Mar 2022 12:02:36 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ramalingam C" <ramalingam.c@intel.com>
Date: Tue, 22 Mar 2022 12:02:36 -0000
Message-ID: <164795055629.20009.9487930022942983683@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220321224459.12223-1-ramalingam.c@intel.com>
In-Reply-To: <20220321224459.12223-1-ramalingam.c@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/ttm=3A_Evict_and_restore_of_compressed_object_=28r?=
 =?utf-8?q?ev4=29?=
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

Series: drm/i915/ttm: Evict and restore of compressed object (rev4)
URL   : https://patchwork.freedesktop.org/series/101106/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
7bd13c18ac9e drm/i915/gt: Use XY_FAST_COLOR_BLT to clear obj on graphics ver 12+
3d80382ed2d7 drm/i915/gt: Optimize the migration and clear loop
b1fffd14ade8 drm/i915/gt: Clear compress metadata for Flat-ccs objects
-:41: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#41: FILE: drivers/gpu/drm/i915/gt/intel_gpu_commands.h:156:
+#define   MI_FLUSH_DW_CCS		(1<<16)
                          		  ^

-:44: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#44: FILE: drivers/gpu/drm/i915/gt/intel_gpu_commands.h:159:
+#define   MI_FLUSH_DW_LLC		(1<<9)
                          		  ^

total: 0 errors, 0 warnings, 2 checks, 235 lines checked
d45626d09747 drm/i915/selftest_migrate: Consider the possible roundup of size
5983ea8c0949 drm/i915/selftest_migrate: Check CCS meta data clear
76ff4ce56fc2 drm/i915/gt: offset handling for multiple copy engines
766cd5bde39e drm/ttm: Add a parameter to add extra pages into ttm_tt
-:93: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#93: FILE: drivers/gpu/drm/ttm/ttm_tt.c:150:
+		uint32_t page_flags, enum ttm_caching caching,

-:140: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#140: FILE: include/drm/ttm/ttm_tt.h:151:
+		uint32_t page_flags, enum ttm_caching caching,

total: 0 errors, 0 warnings, 2 checks, 88 lines checked
39ff40d5bebd drm/i915/gem: Add extra pages in ttm_tt for ccs data
e353c857458a drm/i915/migrate: Evict and restore the flatccs capable lmem obj


