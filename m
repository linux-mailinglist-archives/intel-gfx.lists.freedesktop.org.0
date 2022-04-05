Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EDCA84F3C91
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Apr 2022 18:17:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A805810EAE9;
	Tue,  5 Apr 2022 16:16:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 84C2D10EAE7;
 Tue,  5 Apr 2022 16:16:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 821A0AA0EA;
 Tue,  5 Apr 2022 16:16:58 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ramalingam C" <ramalingam.c@intel.com>
Date: Tue, 05 Apr 2022 16:16:58 -0000
Message-ID: <164917541850.24158.11593498364552884168@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220405150840.29351-1-ramalingam.c@intel.com>
In-Reply-To: <20220405150840.29351-1-ramalingam.c@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/ttm=3A_Evict_and_restore_of_compressed_object_=28r?=
 =?utf-8?q?ev9=29?=
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

Series: drm/i915/ttm: Evict and restore of compressed object (rev9)
URL   : https://patchwork.freedesktop.org/series/101106/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
8bdf454baf04 drm/i915/gt: use engine instance directly for offset
c429cfa1eeb3 drm/i915/gt: Use XY_FAST_COLOR_BLT to clear obj on graphics ver 12+
d1f1831e5ac2 drm/i915/gt: Optimize the migration and clear loop
bb7cede05b09 drm/i915/gt: Pass the -EINVAL when emit_pte doesn't update any PTE
0095411c8411 drm/i915/gt: Clear compress metadata for Flat-ccs objects
-:44: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#44: FILE: drivers/gpu/drm/i915/gt/intel_gpu_commands.h:157:
+#define   MI_FLUSH_DW_CCS		(1<<16)
                          		  ^

-:47: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#47: FILE: drivers/gpu/drm/i915/gt/intel_gpu_commands.h:160:
+#define   MI_FLUSH_DW_LLC		(1<<9)
                          		  ^

total: 0 errors, 0 warnings, 2 checks, 197 lines checked
8338ff2f885e drm/i915/selftest_migrate: Consider the possible roundup of size
c793bb5f2f54 drm/i915/selftest_migrate: Check CCS meta data clear
23688a7f28b4 drm/i915/gem: Add extra pages in ttm_tt for ccs data
f8741c260fa2 drm/i915/migrate: Evict and restore the flatccs capable lmem obj


