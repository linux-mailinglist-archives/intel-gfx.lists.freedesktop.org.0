Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01BB44B0270
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 02:38:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58BDF10E3C8;
	Thu, 10 Feb 2022 01:38:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D773810E144;
 Thu, 10 Feb 2022 01:38:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D0D18A66C9;
 Thu, 10 Feb 2022 01:38:24 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Michael Cheng" <michael.cheng@intel.com>
Date: Thu, 10 Feb 2022 01:38:24 -0000
Message-ID: <164445710482.24640.15775705913163833482@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220210012617.1061641-1-michael.cheng@intel.com>
In-Reply-To: <20220210012617.1061641-1-michael.cheng@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Use_drm=5Fclflush*_instead_of_clflush_=28rev8=29?=
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

Series: Use drm_clflush* instead of clflush (rev8)
URL   : https://patchwork.freedesktop.org/series/99450/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
3bb116c416b9 drm: Add arch arm64 for drm_clflush_virt_range
-:27: WARNING:INCLUDE_LINUX: Use #include <linux/cacheflush.h> instead of <asm/cacheflush.h>
#27: FILE: drivers/gpu/drm/drm_cache.c:31:
+#include <asm/cacheflush.h>

-:38: WARNING:LINE_SPACING: Missing a blank line after declarations
#38: FILE: drivers/gpu/drm/drm_cache.c:181:
+	void *end = addr + length;
+	dcache_clean_inval_poc((unsigned long)addr, (unsigned long)end);

total: 0 errors, 2 warnings, 0 checks, 17 lines checked
5860a6b50357 drm/i915/gt: Re-work intel_write_status_page
b88c0d0c2e11 drm/i915/gt: Drop invalidate_csb_entries
-:52: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#52: FILE: drivers/gpu/drm/i915/gt/intel_execlists_submission.c:2781:
+	drm_clflush_virt_range(&execlists->csb_status[0],
+		execlists->csb_size * sizeof(execlists->csb_status[0]));

total: 0 errors, 0 warnings, 1 checks, 30 lines checked
808c2aa68876 drm/i915/gt: Re-work reset_csb
-:28: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#28: FILE: drivers/gpu/drm/i915/gt/intel_execlists_submission.c:2948:
+	drm_clflush_virt_range(execlists->csb_write,
+			sizeof(execlists->csb_write));

total: 0 errors, 0 warnings, 1 checks, 11 lines checked
c0184abcc96a drm/i915/: Re-work clflush_write32
705b5b446b71 drm/i915/gt: replace cache_clflush_range
-:6: WARNING:TYPO_SPELLING: 'occurance' may be misspelled - perhaps 'occurrence'?
#6: 
Replace all occurance of cache_clflush_range with
            ^^^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 77 lines checked


