Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 084945B29E0
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Sep 2022 01:05:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26B2010E7AB;
	Thu,  8 Sep 2022 23:05:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EBCBB10E7AA;
 Thu,  8 Sep 2022 23:05:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E4555AADD1;
 Thu,  8 Sep 2022 23:05:13 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Thu, 08 Sep 2022 23:05:13 -0000
Message-ID: <166267831393.27232.2132560698694658798@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220906234934.3655440-1-matthew.d.roper@intel.com>
In-Reply-To: <20220906234934.3655440-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_i915=3A_Add_=22standalone_media=22_support_for_MTL_=28rev5?=
 =?utf-8?q?=29?=
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

Series: i915: Add "standalone media" support for MTL (rev5)
URL   : https://patchwork.freedesktop.org/series/107908/
State : warning

== Summary ==

Error: dim checkpatch failed
6c1062d5ca5c drm/i915: Move locking and unclaimed check into mmio_debug_{suspend, resume}
7177653099aa drm/i915: Only hook up uncore->debug for primary uncore
b8d94f04c11c drm/i915: Use managed allocations for extra uncore objects
e00663c87b21 drm/i915: Drop intel_gt_tile_cleanup()
40d07a66a0bc drm/i915: Prepare more multi-GT initialization
-:20: WARNING:TYPO_SPELLING: 'forseeable' may be misspelled - perhaps 'foreseeable'?
#20: 
   forseeable future.  (Jani)
   ^^^^^^^^^^

-:76: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "gtdef->name"
#76: FILE: drivers/gpu/drm/i915/gt/intel_gt.c:839:
+	     gtdef->name != NULL;

total: 0 errors, 1 warnings, 1 checks, 154 lines checked
007ad6461e71 drm/i915: Rename and expose common GT early init routine
01c3e55744fd drm/i915: Use a DRM-managed action to release the PCI bridge device
1a7a252e05ce drm/i915: Initialize MMIO access for each GT
d6c997444feb drm/i915: Handle each GT on init/release and suspend/resume
ff941b5b951f drm/i915/uncore: Add GSI offset to uncore
efbcfb77e435 drm/i915/mtl: Add gsi_offset when emitting aux table invalidation
4dcce833b95f drm/i915/xelpmp: Expose media as another GT
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:86: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#86: 
new file mode 100644

-:122: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!uncore->regs"
#122: FILE: drivers/gpu/drm/i915/gt/intel_sa_media.c:32:
+	if (drm_WARN_ON(&i915->drm, uncore->regs == NULL))

total: 0 errors, 1 warnings, 1 checks, 130 lines checked
03860f169e2f drm/i915/mtl: Use primary GT's irq lock for media GT
-:86: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#86: FILE: drivers/gpu/drm/i915/gt/intel_gt.c:791:
+		spinlock_t *irq_lock;

-:232: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#232: FILE: drivers/gpu/drm/i915/gt/intel_gt_types.h:166:
+	spinlock_t *irq_lock;

total: 0 errors, 0 warnings, 2 checks, 477 lines checked
5b0125fed70d drm/i915/mtl: Hook up interrupts for standalone media


