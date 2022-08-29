Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA08C5A55ED
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Aug 2022 23:06:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBF5010EF38;
	Mon, 29 Aug 2022 21:06:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1176210EF40;
 Mon, 29 Aug 2022 21:06:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 08C3BA66C9;
 Mon, 29 Aug 2022 21:06:20 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Mon, 29 Aug 2022 21:06:20 -0000
Message-ID: <166180718000.11952.11694390467364891143@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220829170238.969875-1-matthew.d.roper@intel.com>
In-Reply-To: <20220829170238.969875-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_i915=3A_Add_=22standalone_media=22_support_for_MTL_=28rev2?=
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

Series: i915: Add "standalone media" support for MTL (rev2)
URL   : https://patchwork.freedesktop.org/series/107908/
State : warning

== Summary ==

Error: dim checkpatch failed
b89acd14d33e drm/i915: Move locking and unclaimed check into mmio_debug_{suspend, resume}
f45cffb31b0a drm/i915: Only hook up uncore->debug for primary uncore
56a84766b498 drm/i915: Use managed allocations for extra uncore objects
999eb6f42ba7 drm/i915: Prepare more multi-GT initialization
-:76: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "gtdef->setup"
#76: FILE: drivers/gpu/drm/i915/gt/intel_gt.c:845:
+	     gtdef->setup != NULL;

total: 0 errors, 0 warnings, 1 checks, 145 lines checked
f0fd6fde9ebe drm/i915: Rename and expose common GT early init routine
fe239df10fe1 drm/i915/xelpmp: Expose media as another GT
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:83: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#83: 
new file mode 100644

-:119: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!uncore->regs"
#119: FILE: drivers/gpu/drm/i915/gt/intel_sa_media.c:32:
+	if (drm_WARN_ON(&i915->drm, uncore->regs == NULL))

total: 0 errors, 1 warnings, 1 checks, 233 lines checked
0bda84aacacf drm/i915/mtl: Use primary GT's irq lock for media GT
-:81: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#81: FILE: drivers/gpu/drm/i915/gt/intel_gt.c:795:
+		spinlock_t *irq_lock;

-:227: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#227: FILE: drivers/gpu/drm/i915/gt/intel_gt_types.h:160:
+	spinlock_t *irq_lock;

total: 0 errors, 0 warnings, 2 checks, 459 lines checked
4c2b96042803 drm/i915/mtl: Hook up interrupts for standalone media


