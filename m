Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 408505B1438
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 07:58:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54AC310E958;
	Thu,  8 Sep 2022 05:57:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 73DDD10E953;
 Thu,  8 Sep 2022 05:57:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6B245A9932;
 Thu,  8 Sep 2022 05:57:38 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Date: Thu, 08 Sep 2022 05:57:38 -0000
Message-ID: <166261665840.27236.14222413719641768904@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1662613377.git.ashutosh.dixit@intel.com>
In-Reply-To: <cover.1662613377.git.ashutosh.dixit@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_i915=3A_freq_caps_and_perf=5Flimit=5Freasons_changes_for_MT?=
 =?utf-8?q?L_=28rev2=29?=
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

Series: i915: freq caps and perf_limit_reasons changes for MTL (rev2)
URL   : https://patchwork.freedesktop.org/series/108091/
State : warning

== Summary ==

Error: dim checkpatch failed
7c1612061058 drm/i915: Prepare more multi-GT initialization
-:22: WARNING:TYPO_SPELLING: 'forseeable' may be misspelled - perhaps 'foreseeable'?
#22: 
   forseeable future.  (Jani)
   ^^^^^^^^^^

-:77: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "gtdef->name"
#77: FILE: drivers/gpu/drm/i915/gt/intel_gt.c:859:
+	     gtdef->name != NULL;

total: 0 errors, 1 warnings, 1 checks, 154 lines checked
48b942c1a84c drm/i915: Rename and expose common GT early init routine
823b9373f852 drm/i915/uncore: Add GSI offset to uncore
cefd9dfae66a drm/i915/xelpmp: Expose media as another GT
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:87: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#87: 
new file mode 100644

-:123: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!uncore->regs"
#123: FILE: drivers/gpu/drm/i915/gt/intel_sa_media.c:32:
+	if (drm_WARN_ON(&i915->drm, uncore->regs == NULL))

total: 0 errors, 1 warnings, 1 checks, 130 lines checked
a155005ece00 drm/i915/gt: Fix perf limit reasons bit positions
bd6797adb94f drm/i915/debugfs: Add perf_limit_reasons in debugfs
-:33: CHECK:SPACING: spaces preferred around that '*' (ctx:ExV)
#33: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c:664:
+		*val = intel_uncore_read(gt->uncore, GT0_PERF_LIMIT_REASONS);
 		^

total: 0 errors, 0 warnings, 1 checks, 50 lines checked
a6302c2a5d25 drm/i915/mtl: PERF_LIMIT_REASONS changes for MTL
-:52: CHECK:SPACING: spaces preferred around that '*' (ctx:ExV)
#52: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c:664:
+		*val = intel_uncore_read(gt->uncore, intel_gt_perf_limit_reasons_reg(gt));
 		^

total: 0 errors, 0 warnings, 1 checks, 66 lines checked
8c2310e08f2a drm/i915/rps: Freq caps for MTL


