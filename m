Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F3B44EA431
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 02:39:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8EF110E1D8;
	Tue, 29 Mar 2022 00:39:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8032310E1D8;
 Tue, 29 Mar 2022 00:39:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7A873A66C9;
 Tue, 29 Mar 2022 00:39:51 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ramalingam C" <ramalingam.c@intel.com>
Date: Tue, 29 Mar 2022 00:39:51 -0000
Message-ID: <164851439147.5798.11306116328652470803@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220328190736.19697-1-ramalingam.c@intel.com>
In-Reply-To: <20220328190736.19697-1-ramalingam.c@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/ttm=3A_Evict_and_restore_of_compressed_object_=28r?=
 =?utf-8?q?ev5=29?=
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

Series: drm/i915/ttm: Evict and restore of compressed object (rev5)
URL   : https://patchwork.freedesktop.org/series/101106/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
9a1f4b2f7d57 drm/i915/gt: use engine instance directly for offset
9fd4c25a3ef9 drm/i915/gt: Use XY_FAST_COLOR_BLT to clear obj on graphics ver 12+
734643fe6a1d drm/i915/gt: Optimize the migration and clear loop
3bac9cd2dc5b drm/i915/gt: Clear compress metadata for Flat-ccs objects
-:43: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#43: FILE: drivers/gpu/drm/i915/gt/intel_gpu_commands.h:156:
+#define   MI_FLUSH_DW_CCS		(1<<16)
                          		  ^

-:46: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#46: FILE: drivers/gpu/drm/i915/gt/intel_gpu_commands.h:159:
+#define   MI_FLUSH_DW_LLC		(1<<9)
                          		  ^

total: 0 errors, 0 warnings, 2 checks, 197 lines checked
a20a28de7f4e drm/i915/selftest_migrate: Consider the possible roundup of size
9edb499b6b8a drm/i915/selftest_migrate: Check CCS meta data clear
c78481a9dcad drm/ttm: Add a parameter to add extra pages into ttm_tt
-:93: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#93: FILE: drivers/gpu/drm/ttm/ttm_tt.c:150:
+		uint32_t page_flags, enum ttm_caching caching,

-:140: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#140: FILE: include/drm/ttm/ttm_tt.h:151:
+		uint32_t page_flags, enum ttm_caching caching,

total: 0 errors, 0 warnings, 2 checks, 88 lines checked
09687169c45f drm/i915/gem: Add extra pages in ttm_tt for ccs data
d41eea6db42c drm/i915/migrate: Evict and restore the flatccs capable lmem obj


