Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 544CB4A9D27
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Feb 2022 17:53:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6AB910E3C9;
	Fri,  4 Feb 2022 16:53:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7C28510E3C9;
 Fri,  4 Feb 2022 16:53:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 778CAAAA91;
 Fri,  4 Feb 2022 16:53:41 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Michael Cheng" <michael.cheng@intel.com>
Date: Fri, 04 Feb 2022 16:53:41 -0000
Message-ID: <164399362145.12042.7674642608173838679@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220204163711.439403-1-michael.cheng@intel.com>
In-Reply-To: <20220204163711.439403-1-michael.cheng@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Use_drm=5Fclflush*_instead_of_clflush_=28rev4=29?=
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

Series: Use drm_clflush* instead of clflush (rev4)
URL   : https://patchwork.freedesktop.org/series/99450/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
09b1c8ee43ad drm/i915/gt: Re-work intel_write_status_page
3f38f2a1e91d drm/i915/gt: Drop invalidate_csb_entries
-:49: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#49: FILE: drivers/gpu/drm/i915/gt/intel_execlists_submission.c:2781:
+	drm_clflush_virt_range(&execlists->csb_status[0],
+				sizeof(&execlists->csb_status[reset_value]));

-:49: WARNING:SIZEOF_ADDRESS: sizeof(& should be avoided
#49: FILE: drivers/gpu/drm/i915/gt/intel_execlists_submission.c:2781:
+				sizeof(&execlists->csb_status[reset_value]));

total: 0 errors, 1 warnings, 1 checks, 30 lines checked
a18f55ff9cbc drm/i915/gt: Re-work reset_csb
-:28: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#28: FILE: drivers/gpu/drm/i915/gt/intel_execlists_submission.c:2948:
+	drm_clflush_virt_range(execlists->csb_write,
+			sizeof(execlists->csb_write));

total: 0 errors, 0 warnings, 1 checks, 11 lines checked
fab67357e34d drm/i915/: Re-work clflush_write32
0ba361b324ae drm/i915/gt: replace cache_clflush_range
-:6: WARNING:TYPO_SPELLING: 'occurance' may be misspelled - perhaps 'occurrence'?
#6: 
Replace all occurance of cache_clflush_range with
            ^^^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 77 lines checked


