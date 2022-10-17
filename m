Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79250600DDE
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Oct 2022 13:36:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D231E10ED55;
	Mon, 17 Oct 2022 11:36:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 63DC010ED55;
 Mon, 17 Oct 2022 11:36:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5A7EAA0169;
 Mon, 17 Oct 2022 11:36:33 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Zhao Liu" <zhao1.liu@linux.intel.com>
Date: Mon, 17 Oct 2022 11:36:33 -0000
Message-ID: <166600659333.13567.5420162511622217262@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221017093726.2070674-1-zhao1.liu@linux.intel.com>
In-Reply-To: <20221017093726.2070674-1-zhao1.liu@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_x86/hyperv=3A_Replace_kmap=28=29_with_kmap=5Flocal=5Fpage?=
 =?utf-8?b?KCk=?=
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

Series: x86/hyperv: Replace kmap() with kmap_local_page()
URL   : https://patchwork.freedesktop.org/series/109762/
State : warning

== Summary ==

Error: dim checkpatch failed
94f5a3ebd264 drm/i915: Use kmap_local_page() in gem/i915_gem_object.c
-:36: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#36: 
[1]: https://lore.kernel.org/all/20220813220034.806698-1-ira.weiny@intel.com

-:58: ERROR:CODE_INDENT: code indent should use tabs where possible
#58: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.c:419:
+^I          + offset_in_page(offset);$

total: 1 errors, 1 warnings, 0 checks, 20 lines checked
28b17b9feee4 drm/i915: Use kmap_local_page() in gem/i915_gem_pyhs.c
-:35: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#35: 
[1]: https://lore.kernel.org/all/20220813220034.806698-1-ira.weiny@intel.com

total: 0 errors, 1 warnings, 0 checks, 24 lines checked
eaa5326f369c drm/i915: Use kmap_local_page() in gem/i915_gem_shmem.c
-:20: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#20: 
[1]: https://lore.kernel.org/all/20220813220034.806698-1-ira.weiny@intel.com

total: 0 errors, 1 warnings, 0 checks, 15 lines checked
1af0cf05e783 drm/i915: Use kmap_local_page() in gem/selftests/huge_pages.c
-:33: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#33: 
[1]: https://lore.kernel.org/all/20220813220034.806698-1-ira.weiny@intel.com

total: 0 errors, 1 warnings, 0 checks, 22 lines checked
12b88a322bea drm/i915: Use kmap_local_page() in gem/selftests/i915_gem_coherency.c
-:34: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#34: 
[1]: https://lore.kernel.org/all/20220813220034.806698-1-ira.weiny@intel.com

total: 0 errors, 1 warnings, 0 checks, 48 lines checked
06618dde00cf drm/i915: Use kmap_local_page() in gem/selftests/i915_gem_context.c
-:36: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#36: 
[1]: https://lore.kernel.org/all/20220813220034.806698-1-ira.weiny@intel.com

total: 0 errors, 1 warnings, 0 checks, 30 lines checked
6b630c742132 drm/i915: Use memcpy_from_page() in gt/uc/intel_uc_fw.c
-:24: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#24: 
[1]: https://lore.kernel.org/all/20220813220034.806698-1-ira.weiny@intel.com/T/#u

total: 0 errors, 1 warnings, 0 checks, 17 lines checked
e482142fdccb drm/i915: Use kmap_local_page() in i915_cmd_parser.c
-:31: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#31: 
[1]: https://lore.kernel.org/all/20220813220034.806698-1-ira.weiny@intel.com

total: 0 errors, 1 warnings, 0 checks, 13 lines checked
67e1e69c2291 drm/i915: Use kmap_local_page() in gem/i915_gem_execbuffer.c
-:29: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#29: 
[1]: https://lore.kernel.org/all/20220813220034.806698-1-ira.weiny@intel.com

total: 0 errors, 1 warnings, 0 checks, 40 lines checked


