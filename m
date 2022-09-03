Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 353E65ABB9D
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Sep 2022 02:22:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D752910E39D;
	Sat,  3 Sep 2022 00:22:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 35FAF10E39D;
 Sat,  3 Sep 2022 00:22:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2E84FA7DFF;
 Sat,  3 Sep 2022 00:22:29 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ashutosh Dixit" <ashutosh.dixit@intel.com>
Date: Sat, 03 Sep 2022 00:22:29 -0000
Message-ID: <166216454916.27810.7148536393128008298@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220902235302.1112388-1-ashutosh.dixit@intel.com>
In-Reply-To: <20220902235302.1112388-1-ashutosh.dixit@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_i915=3A_freq_caps_and_perf=5Flimit=5Freasons_changes_for_MT?=
 =?utf-8?q?L?=
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

Series: i915: freq caps and perf_limit_reasons changes for MTL
URL   : https://patchwork.freedesktop.org/series/108091/
State : warning

== Summary ==

Error: dim checkpatch failed
8ea5bb04f062 drm/i915: Prepare more multi-GT initialization
-:79: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "gtdef->setup"
#79: FILE: drivers/gpu/drm/i915/gt/intel_gt.c:853:
+	     gtdef->setup != NULL;

total: 0 errors, 0 warnings, 1 checks, 148 lines checked
a02a7019961c drm/i915: Rename and expose common GT early init routine
782a3577cc4b drm/i915/xelpmp: Expose media as another GT
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
60df617faf42 drm/i915/debugfs: Add perf_limit_reasons in debugfs
-:27: CHECK:SPACING: spaces preferred around that '*' (ctx:ExV)
#27: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c:664:
+		*val = intel_uncore_read(gt->uncore, GT0_PERF_LIMIT_REASONS);
 		^

total: 0 errors, 0 warnings, 1 checks, 46 lines checked
9d45261cb74b drm/i915/mtl: PERF_LIMIT_REASONS changes for MTL
-:46: CHECK:SPACING: spaces preferred around that '*' (ctx:ExV)
#46: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c:664:
+		*val = intel_uncore_read(gt->uncore, intel_gt_perf_limit_reasons_reg(gt));
 		^

total: 0 errors, 0 warnings, 1 checks, 67 lines checked
6260ca75d88a drm/i915/rps: Freq caps for MTL


