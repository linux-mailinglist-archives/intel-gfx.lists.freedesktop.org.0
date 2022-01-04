Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F69D484B0C
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jan 2022 00:07:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67BDF10E67F;
	Tue,  4 Jan 2022 23:07:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 89EC110E28C;
 Tue,  4 Jan 2022 23:07:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 86205A0099;
 Tue,  4 Jan 2022 23:07:32 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Date: Tue, 04 Jan 2022 23:07:32 -0000
Message-ID: <164133765251.30370.7501593578258319742@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211219212500.61432-1-andi.shyti@linux.intel.com>
In-Reply-To: <20211219212500.61432-1-andi.shyti@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_More_preparation_for_multi_gt_patches_=28rev3=29?=
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

Series: More preparation for multi gt patches (rev3)
URL   : https://patchwork.freedesktop.org/series/98215/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
c7c755be7a63 drm/i915/gt: Use to_gt() helper for GGTT accesses
9eaaac9e4a25 drm/i915: Use to_gt() helper for GGTT accesses
-:234: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#234: FILE: drivers/gpu/drm/i915/i915_perf.c:1634:
+		intel_gt_ns_to_clock_interval(to_gt(stream->perf->i915),
+		atomic64_read(&stream->perf->noa_programming_delay));

total: 0 errors, 0 warnings, 1 checks, 176 lines checked
0062e64281bd drm/i915/gem: Use to_gt() helper for GGTT accesses
-:304: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#304: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c:323:
+			      (1 + next_prime_number(to_gt(i915)->ggtt->vm.total >> PAGE_SHIFT)) << PAGE_SHIFT);

-:335: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#335: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c:460:
+			      (1 + next_prime_number(to_gt(i915)->ggtt->vm.total >> PAGE_SHIFT)) << PAGE_SHIFT);

total: 0 errors, 2 warnings, 0 checks, 287 lines checked
4d0e5e2c0049 drm/i915/display: Use to_gt() helper for GGTT accesses
7e25a514b822 drm/i915/selftests: Use to_gt() helper for GGTT accesses
462f50e3499f drm/i915: Remove unused i915->ggtt


