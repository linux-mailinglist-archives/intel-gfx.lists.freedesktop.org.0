Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2801246FEB2
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Dec 2021 11:25:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCDB010E45B;
	Fri, 10 Dec 2021 10:25:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D4F9B10E45B;
 Fri, 10 Dec 2021 10:25:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CE698A363D;
 Fri, 10 Dec 2021 10:25:39 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Date: Fri, 10 Dec 2021 10:25:39 -0000
Message-ID: <163913193980.3443.18380451485928596991@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211209132512.47241-1-andi.shyti@linux.intel.com>
In-Reply-To: <20211209132512.47241-1-andi.shyti@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_More_preparation_for_multi_gt_patches_=28rev7=29?=
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

Series: More preparation for multi gt patches (rev7)
URL   : https://patchwork.freedesktop.org/series/97020/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
3898ddfa1ff2 drm/i915: Store backpointer to GT in uncore
7c7e522ad409 drm/i915: Introduce to_gt() helper
d19054d74575 drm/i915/display: Use to_gt() helper
595baf54a4a0 drm/i915/gt: Use to_gt() helper
354ed755db25 drm/i915/gem: Use to_gt() helper
691b7560971a drm/i915/gvt: Use to_gt() helper
d36c065c1524 drm/i915/selftests: Use to_gt() helper
517954034efd drm/i915/pxp: Use to_gt() helper
626201b2cf65 drm/i915: Use to_gt() helper
20683ba153ba drm/i915: Use to_gt() helper for GGTT accesses
-:226: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#226: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c:323:
+			      (1 + next_prime_number(to_gt(i915)->ggtt->vm.total >> PAGE_SHIFT)) << PAGE_SHIFT);

-:257: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#257: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c:460:
+			      (1 + next_prime_number(to_gt(i915)->ggtt->vm.total >> PAGE_SHIFT)) << PAGE_SHIFT);

total: 0 errors, 2 warnings, 0 checks, 516 lines checked
802d82dfafcd drm/i915: Rename i915->gt to i915->gt0


