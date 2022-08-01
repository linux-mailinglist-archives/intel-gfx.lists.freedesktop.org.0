Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81BB85871DA
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Aug 2022 21:56:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91371112FEA;
	Mon,  1 Aug 2022 19:56:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7D851113F29;
 Mon,  1 Aug 2022 19:56:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6FF07A00A0;
 Mon,  1 Aug 2022 19:56:03 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mauro Carvalho Chehab" <mchehab@kernel.org>
Date: Mon, 01 Aug 2022 19:56:03 -0000
Message-ID: <165938376345.14742.522790836968820025@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1659077372.git.mchehab@kernel.org>
In-Reply-To: <cover.1659077372.git.mchehab@kernel.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Move_TLB_invalidation_code_for_its_own_file_and_document_it?=
 =?utf-8?q?_=28rev3=29?=
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

Series: Move TLB invalidation code for its own file and document it (rev3)
URL   : https://patchwork.freedesktop.org/series/106805/
State : warning

== Summary ==

Error: dim checkpatch failed
6e8221ff3e55 drm/i915/gt: Move TLB invalidation to its own file
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:274: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#274: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 294 lines checked
b5743e507945 drm/i915/gt: document TLB cache invalidation functions
-:103: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#103: FILE: drivers/gpu/drm/i915/gt/intel_tlb.h:31:
+ * ^Iwith_intel_gt_pm_if_awake(gt, wakeref) {$

-:104: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#104: FILE: drivers/gpu/drm/i915/gt/intel_tlb.h:32:
+ * ^I^Imutex_lock(&gt->tlb.invalidate_lock);$

-:105: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#105: FILE: drivers/gpu/drm/i915/gt/intel_tlb.h:33:
+ * ^I^Iif (tlb_seqno_passed(gt, seqno))$

-:106: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#106: FILE: drivers/gpu/drm/i915/gt/intel_tlb.h:34:
+ * ^I^I^I^Igoto unlock;$

-:108: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#108: FILE: drivers/gpu/drm/i915/gt/intel_tlb.h:36:
+ * ^I^I// Some code to do TLB invalidation$

-:111: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#111: FILE: drivers/gpu/drm/i915/gt/intel_tlb.h:39:
+ * ^I^Iwrite_seqcount_invalidate(&gt->tlb.seqno); // increment seqno$

-:112: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#112: FILE: drivers/gpu/drm/i915/gt/intel_tlb.h:40:
+ * ^I^Imutex_lock(&gt->tlb.invalidate_lock);$

-:118: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#118: FILE: drivers/gpu/drm/i915/gt/intel_tlb.h:46:
+ * ^Iobj1$

-:119: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#119: FILE: drivers/gpu/drm/i915/gt/intel_tlb.h:47:
+ * ^Iobj2$

-:120: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#120: FILE: drivers/gpu/drm/i915/gt/intel_tlb.h:48:
+ * ^Iobj3$

total: 0 errors, 10 warnings, 0 checks, 173 lines checked


