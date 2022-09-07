Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B2EEE5AF8D2
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Sep 2022 02:06:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 345B989453;
	Wed,  7 Sep 2022 00:06:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D0E8F89453;
 Wed,  7 Sep 2022 00:06:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C8181AADD9;
 Wed,  7 Sep 2022 00:06:35 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Wed, 07 Sep 2022 00:06:35 -0000
Message-ID: <166250919578.19838.783274835532136569@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220906234934.3655440-1-matthew.d.roper@intel.com>
In-Reply-To: <20220906234934.3655440-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_i915=3A_Add_=22standalone_media=22_support_for_MTL_=28rev4?=
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

Series: i915: Add "standalone media" support for MTL (rev4)
URL   : https://patchwork.freedesktop.org/series/107908/
State : warning

== Summary ==

Error: dim checkpatch failed
c661b3282c5a drm/i915: Move locking and unclaimed check into mmio_debug_{suspend, resume}
4c204c08be6f drm/i915: Only hook up uncore->debug for primary uncore
010f263f4b04 drm/i915: Use managed allocations for extra uncore objects
a16b305625aa drm/i915: Drop intel_gt_tile_cleanup()
bbded340bce5 drm/i915: Prepare more multi-GT initialization
-:20: WARNING:TYPO_SPELLING: 'forseeable' may be misspelled - perhaps 'foreseeable'?
#20: 
   forseeable future.  (Jani)
   ^^^^^^^^^^

-:75: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "gtdef->name"
#75: FILE: drivers/gpu/drm/i915/gt/intel_gt.c:839:
+	     gtdef->name != NULL;

total: 0 errors, 1 warnings, 1 checks, 154 lines checked
f741cc27d52c drm/i915: Rename and expose common GT early init routine
21b959602cb9 drm/i915: Use a DRM-managed action to release the PCI bridge device
32733d6164a6 drm/i915: Initialize MMIO access for each GT
5dd04650b127 drm/i915: Handle each GT on init/release and suspend/resume
681cf57bc1a1 drm/i915/uncore: Add GSI offset to uncore
c0008bff7ae6 drm/i915/mtl: Add gsi_offset when emitting aux table invalidation
3c57ee4c6106 drm/i915/xelpmp: Expose media as another GT
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:85: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#85: 
new file mode 100644

-:121: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!uncore->regs"
#121: FILE: drivers/gpu/drm/i915/gt/intel_sa_media.c:32:
+	if (drm_WARN_ON(&i915->drm, uncore->regs == NULL))

total: 0 errors, 1 warnings, 1 checks, 130 lines checked
da4f6c934628 drm/i915/mtl: Use primary GT's irq lock for media GT
-:85: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#85: FILE: drivers/gpu/drm/i915/gt/intel_gt.c:791:
+		spinlock_t *irq_lock;

-:231: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#231: FILE: drivers/gpu/drm/i915/gt/intel_gt_types.h:166:
+	spinlock_t *irq_lock;

total: 0 errors, 0 warnings, 2 checks, 477 lines checked
b6f222748eb1 drm/i915/mtl: Hook up interrupts for standalone media


