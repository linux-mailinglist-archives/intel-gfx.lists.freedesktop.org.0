Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F1D15A5585
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Aug 2022 22:28:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B88910EC7F;
	Mon, 29 Aug 2022 20:28:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6EBDA10EC7F;
 Mon, 29 Aug 2022 20:28:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 65A73AA0EA;
 Mon, 29 Aug 2022 20:28:11 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Mon, 29 Aug 2022 20:28:11 -0000
Message-ID: <166180489138.11949.13224443431363925685@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220829170238.969875-1-matthew.d.roper@intel.com>
In-Reply-To: <20220829170238.969875-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_i915=3A_Add_=22standalone_media=22_support_for_MTL?=
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

Series: i915: Add "standalone media" support for MTL
URL   : https://patchwork.freedesktop.org/series/107908/
State : warning

== Summary ==

Error: dim checkpatch failed
2d07e36f0a4f drm/i915: Move locking and unclaimed check into mmio_debug_{suspend, resume}
943c8e30fc24 drm/i915: Only hook up uncore->debug for primary uncore
005c7f1709b6 drm/i915: Use managed allocations for extra uncore objects
001d8b25313a drm/i915: Prepare more multi-GT initialization
-:70: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "gtdef->setup"
#70: FILE: drivers/gpu/drm/i915/gt/intel_gt.c:842:
+	     gtdef->setup != NULL;

total: 0 errors, 0 warnings, 1 checks, 142 lines checked
6e44c6e54b94 drm/i915: Rename and expose common GT early init routine
2c5537309641 drm/i915/xelpmp: Expose media as another GT
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:83: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#83: 
new file mode 100644

-:119: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!uncore->regs"
#119: FILE: drivers/gpu/drm/i915/gt/intel_sa_media.c:32:
+	if (drm_WARN_ON(&i915->drm, uncore->regs == NULL))

total: 0 errors, 1 warnings, 1 checks, 233 lines checked
06eba434c957 drm/i915/mtl: Use primary GT's irq lock for media GT
-:81: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#81: FILE: drivers/gpu/drm/i915/gt/intel_gt.c:795:
+		spinlock_t *irq_lock;

-:227: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#227: FILE: drivers/gpu/drm/i915/gt/intel_gt_types.h:160:
+	spinlock_t *irq_lock;

total: 0 errors, 0 warnings, 2 checks, 459 lines checked
3be80c873513 drm/i915/mtl: Hook up interrupts for standalone media


