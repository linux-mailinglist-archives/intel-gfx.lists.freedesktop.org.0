Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4795B5AD949
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Sep 2022 20:52:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F33610E4AE;
	Mon,  5 Sep 2022 18:52:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D4D9410E4AE;
 Mon,  5 Sep 2022 18:52:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CD612AA3D8;
 Mon,  5 Sep 2022 18:52:38 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Badal Nilawar" <badal.nilawar@intel.com>
Date: Mon, 05 Sep 2022 18:52:38 -0000
Message-ID: <166240395881.1950.2108812372158933246@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220905183801.2126693-1-badal.nilawar@intel.com>
In-Reply-To: <20220905183801.2126693-1-badal.nilawar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_i915=3A_CAGF_and_RC6_changes_for_MTL_=28rev2=29?=
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

Series: i915: CAGF and RC6 changes for MTL (rev2)
URL   : https://patchwork.freedesktop.org/series/108156/
State : warning

== Summary ==

Error: dim checkpatch failed
7cf29ff9789e drm/i915: Prepare more multi-GT initialization
-:79: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "gtdef->setup"
#79: FILE: drivers/gpu/drm/i915/gt/intel_gt.c:853:
+	     gtdef->setup != NULL;

total: 0 errors, 0 warnings, 1 checks, 148 lines checked
9861a75e18f2 drm/i915: Rename and expose common GT early init routine
96ce8665ebbd drm/i915/xelpmp: Expose media as another GT
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
0322aaf49089 drm/i915/mtl: Modify CAGF functions for MTL
e50ddf12a96b drm/i915/mtl: Add C6 residency support for MTL SAMedia


