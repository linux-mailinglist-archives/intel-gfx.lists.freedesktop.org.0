Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE4F58990E
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Aug 2022 10:12:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6236C11B937;
	Thu,  4 Aug 2022 08:12:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A155E90B16;
 Thu,  4 Aug 2022 08:12:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9421FA0003;
 Thu,  4 Aug 2022 08:12:26 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mauro Carvalho Chehab" <mchehab@kernel.org>
Date: Thu, 04 Aug 2022 08:12:26 -0000
Message-ID: <165960074657.14888.14849563934088988990@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1659598090.git.mchehab@kernel.org>
In-Reply-To: <cover.1659598090.git.mchehab@kernel.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Move_TLB_invalidation_code_for_its_own_file_and_document_it?=
 =?utf-8?q?_=28rev4=29?=
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

Series: Move TLB invalidation code for its own file and document it (rev4)
URL   : https://patchwork.freedesktop.org/series/106805/
State : warning

== Summary ==

Error: dim checkpatch failed
c884d515384d drm/i915: pass a pointer for tlb seqno at vma_invalidate_tlb()
e78e81b032d5 drm/i915/gt: Move TLB invalidation to its own file
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:281: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#281: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 294 lines checked
03f39a09e961 drm/i915/gt: document TLB cache invalidation functions
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

total: 0 errors, 10 warnings, 0 checks, 171 lines checked


