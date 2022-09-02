Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B0465ABB66
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Sep 2022 01:51:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAF9F10E944;
	Fri,  2 Sep 2022 23:50:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 09DE210E93A;
 Fri,  2 Sep 2022 23:50:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A2205AADD6;
 Fri,  2 Sep 2022 23:50:50 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Fri, 02 Sep 2022 23:50:50 -0000
Message-ID: <166216265063.22601.11278394917626436859@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220902233257.3088492-1-matthew.d.roper@intel.com>
In-Reply-To: <20220902233257.3088492-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_i915=3A_Add_=22standalone_media=22_support_for_MTL_=28rev3?=
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

Series: i915: Add "standalone media" support for MTL (rev3)
URL   : https://patchwork.freedesktop.org/series/107908/
State : warning

== Summary ==

Error: dim checkpatch failed
37274f1f4068 drm/i915: Move locking and unclaimed check into mmio_debug_{suspend, resume}
a54ec2ba43d9 drm/i915: Only hook up uncore->debug for primary uncore
884dc9b22c7f drm/i915: Use managed allocations for extra uncore objects
bc55b5f78d81 drm/i915: Prepare more multi-GT initialization
-:77: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "gtdef->setup"
#77: FILE: drivers/gpu/drm/i915/gt/intel_gt.c:845:
+	     gtdef->setup != NULL;

total: 0 errors, 0 warnings, 1 checks, 145 lines checked
42e3ef15239e drm/i915: Rename and expose common GT early init routine
c89bcd0f475f drm/i915: Use a DRM-managed action to release the PCI bridge device
92209b602b0a drm/i915: Initialize MMIO access for each GT
305fc9377923 drm/i915: Handle each GT on init/release and suspend/resume
48cc0a18886f drm/i915/uncore: Add GSI offset to uncore
c7a1db1bf375 drm/i915/xelpmp: Expose media as another GT
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:48: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#48: 
new file mode 100644

-:84: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!uncore->regs"
#84: FILE: drivers/gpu/drm/i915/gt/intel_sa_media.c:32:
+	if (drm_WARN_ON(&i915->drm, uncore->regs == NULL))

total: 0 errors, 1 warnings, 1 checks, 123 lines checked
ac9f18358457 drm/i915/mtl: Use primary GT's irq lock for media GT
-:85: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#85: FILE: drivers/gpu/drm/i915/gt/intel_gt.c:800:
+		spinlock_t *irq_lock;

-:231: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#231: FILE: drivers/gpu/drm/i915/gt/intel_gt_types.h:160:
+	spinlock_t *irq_lock;

total: 0 errors, 0 warnings, 2 checks, 466 lines checked
dd8286e593bd drm/i915/mtl: Hook up interrupts for standalone media


