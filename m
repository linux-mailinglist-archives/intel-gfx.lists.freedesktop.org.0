Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 068AA4D0143
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Mar 2022 15:31:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBBA210E132;
	Mon,  7 Mar 2022 14:31:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1448410E132;
 Mon,  7 Mar 2022 14:31:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 10FE5A8836;
 Mon,  7 Mar 2022 14:31:39 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ramalingam C" <ramalingam.c@intel.com>
Date: Mon, 07 Mar 2022 14:31:39 -0000
Message-ID: <164666349904.12770.13489831921263369793@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220307134038.30525-1-ramalingam.c@intel.com>
In-Reply-To: <20220307134038.30525-1-ramalingam.c@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/ttm=3A_Evict_and_restore_of_compressed_object?=
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

Series: drm/i915/ttm: Evict and restore of compressed object
URL   : https://patchwork.freedesktop.org/series/101106/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ca55d5422881 drm/i915/gt: Use XY_FASR_COLOR_BLT to clear obj on graphics ver 12+
ecd91714c6d2 drm/i915/gt: Clear compress metadata for Flat-ccs objects
f5878410b6ff drm/ttm: Add a parameter to add extra pages into ttm_tt
-:92: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#92: FILE: drivers/gpu/drm/ttm/ttm_tt.c:150:
+		uint32_t page_flags, enum ttm_caching caching,

-:139: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#139: FILE: include/drm/ttm/ttm_tt.h:151:
+		uint32_t page_flags, enum ttm_caching caching,

total: 0 errors, 0 warnings, 2 checks, 88 lines checked
7160c760c643 drm/i915/gem: Add extra pages in ttm_tt for ccs data
1f4b56203045 drm/i915/gt: Optimize the migration loop
68f3742dad6a drm/i915/migrate: Evict and restore the flatccs capable lmem obj
-:38: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#38: FILE: drivers/gpu/drm/i915/gt/intel_gpu_commands.h:156:
+#define   MI_FLUSH_DW_CCS		(1<<16)
                          		  ^

-:41: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#41: FILE: drivers/gpu/drm/i915/gt/intel_gpu_commands.h:159:
+#define   MI_FLUSH_DW_LLC		(1<<9)
                          		  ^

total: 0 errors, 0 warnings, 2 checks, 349 lines checked


