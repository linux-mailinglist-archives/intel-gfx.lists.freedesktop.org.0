Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4964C4C09F2
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 04:08:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58D4910E4DC;
	Wed, 23 Feb 2022 03:08:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D9D6E10E4D7;
 Wed, 23 Feb 2022 03:08:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D5752A0118;
 Wed, 23 Feb 2022 03:08:07 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arunpravin" <arunpravin.paneerselvam@amd.com>
Date: Wed, 23 Feb 2022 03:08:07 -0000
Message-ID: <164558568784.25286.305933217230174799@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220222174845.2175-1-Arunpravin.PaneerSelvam@amd.com>
In-Reply-To: <20220222174845.2175-1-Arunpravin.PaneerSelvam@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv2=2C1/7=5D_drm/selftests=3A_Move_i?=
 =?utf-8?q?915_buddy_selftests_into_drm?=
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

Series: series starting with [v2,1/7] drm/selftests: Move i915 buddy selftests into drm
URL   : https://patchwork.freedesktop.org/series/100598/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
c2f145f475fd drm/selftests: Move i915 buddy selftests into drm
-:46: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#46: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 71 lines checked
c1ff1a372360 drm/selftests: add drm buddy alloc limit testcase
-:45: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#45: FILE: drivers/gpu/drm/selftests/test-drm_buddy.c:28:
+	size = end = round_down(size, 4096);

total: 0 errors, 0 warnings, 1 checks, 69 lines checked
76bc718400f9 drm/selftests: add drm buddy alloc range testcase
cdf118d834e7 drm/selftests: add drm buddy optimistic testcase
-:74: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#74: FILE: drivers/gpu/drm/selftests/test-drm_buddy.c:342:
+	BUG_ON(mm.max_order != max_order);

-:77: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#77: FILE: drivers/gpu/drm/selftests/test-drm_buddy.c:345:
+		size = min_page_size = get_size(order, PAGE_SIZE);

-:98: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#98: FILE: drivers/gpu/drm/selftests/test-drm_buddy.c:366:
+	size = min_page_size = get_size(0, PAGE_SIZE);

total: 0 errors, 1 warnings, 2 checks, 96 lines checked
01e27a9237ed drm/selftests: add drm buddy pessimistic testcase
-:62: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#62: FILE: drivers/gpu/drm/selftests/test-drm_buddy.c:341:
+	BUG_ON(mm.max_order != max_order);

-:65: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#65: FILE: drivers/gpu/drm/selftests/test-drm_buddy.c:344:
+		size = min_page_size = get_size(order, PAGE_SIZE);

-:86: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#86: FILE: drivers/gpu/drm/selftests/test-drm_buddy.c:365:
+	size = min_page_size = get_size(0, PAGE_SIZE);

-:106: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#106: FILE: drivers/gpu/drm/selftests/test-drm_buddy.c:385:
+		size = min_page_size = get_size(order, PAGE_SIZE);

-:136: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#136: FILE: drivers/gpu/drm/selftests/test-drm_buddy.c:415:
+		size = min_page_size = get_size(order, PAGE_SIZE);

-:159: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#159: FILE: drivers/gpu/drm/selftests/test-drm_buddy.c:438:
+	size = min_page_size = get_size(max_order, PAGE_SIZE);

total: 0 errors, 1 warnings, 5 checks, 157 lines checked
aa15ac08715a drm/selftests: add drm buddy smoke testcase
-:126: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#126: FILE: drivers/gpu/drm/selftests/test-drm_buddy.c:384:
+			size = min_page_size = get_size(order, chunk_size);

total: 0 errors, 0 warnings, 1 checks, 167 lines checked
f5edaa7db6d7 drm/selftests: add drm buddy pathological testcase
-:64: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#64: FILE: drivers/gpu/drm/selftests/test-drm_buddy.c:366:
+	BUG_ON(mm.max_order != max_order);

-:75: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#75: FILE: drivers/gpu/drm/selftests/test-drm_buddy.c:377:
+			size = min_page_size = get_size(order, PAGE_SIZE);

-:97: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#97: FILE: drivers/gpu/drm/selftests/test-drm_buddy.c:399:
+		size = min_page_size = get_size(0, PAGE_SIZE);

-:115: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#115: FILE: drivers/gpu/drm/selftests/test-drm_buddy.c:417:
+		size = min_page_size = get_size(top, PAGE_SIZE);

-:139: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#139: FILE: drivers/gpu/drm/selftests/test-drm_buddy.c:441:
+		size = min_page_size = get_size(order, PAGE_SIZE);

total: 0 errors, 1 warnings, 4 checks, 140 lines checked


