Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A3BD74AEAAA
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 07:57:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98A1C10E2DC;
	Wed,  9 Feb 2022 06:57:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 32E5510E2DC;
 Wed,  9 Feb 2022 06:57:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2EBF8A73C7;
 Wed,  9 Feb 2022 06:57:20 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Michael Cheng" <michael.cheng@intel.com>
Date: Wed, 09 Feb 2022 06:57:20 -0000
Message-ID: <164438984015.23763.9901792424699995025@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220209063023.914205-1-michael.cheng@intel.com>
In-Reply-To: <20220209063023.914205-1-michael.cheng@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Use_drm=5Fclflush*_instead_of_clflush_=28rev6=29?=
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

Series: Use drm_clflush* instead of clflush (rev6)
URL   : https://patchwork.freedesktop.org/series/99450/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
46bf608d395e drm: Add arch arm64 for drm_clflush_virt_range
-:24: WARNING:INCLUDE_LINUX: Use #include <linux/cacheflush.h> instead of <asm/cacheflush.h>
#24: FILE: drivers/gpu/drm/drm_cache.c:43:
+#include <asm/cacheflush.h>

-:37: WARNING:LINE_SPACING: Missing a blank line after declarations
#37: FILE: drivers/gpu/drm/drm_cache.c:184:
+	void *end = addr + length;
+	dcache_clean_inval_poc((unsigned long)addr, (unsigned long)end);

total: 0 errors, 2 warnings, 0 checks, 20 lines checked
af1ddd5cfab1 drm/i915/gt: Re-work intel_write_status_page
2cd8842cdb4f drm/i915/gt: Drop invalidate_csb_entries
-:52: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#52: FILE: drivers/gpu/drm/i915/gt/intel_execlists_submission.c:2781:
+	drm_clflush_virt_range(&execlists->csb_status[0],
+		execlists->csb_size * sizeof(execlists->csb_status[0]));

total: 0 errors, 0 warnings, 1 checks, 30 lines checked
5027b028fdc4 drm/i915/gt: Re-work reset_csb
-:28: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#28: FILE: drivers/gpu/drm/i915/gt/intel_execlists_submission.c:2948:
+	drm_clflush_virt_range(execlists->csb_write,
+			sizeof(execlists->csb_write));

total: 0 errors, 0 warnings, 1 checks, 11 lines checked
315ba5405322 drm/i915/: Re-work clflush_write32
1808b1f8eb7a drm/i915/gt: replace cache_clflush_range
-:6: WARNING:TYPO_SPELLING: 'occurance' may be misspelled - perhaps 'occurrence'?
#6: 
Replace all occurance of cache_clflush_range with
            ^^^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 77 lines checked


