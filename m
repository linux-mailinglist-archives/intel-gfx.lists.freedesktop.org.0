Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BED7469540
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Dec 2021 12:51:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12CFB73996;
	Mon,  6 Dec 2021 11:51:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 721DC73996;
 Mon,  6 Dec 2021 11:51:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 69C0AA0096;
 Mon,  6 Dec 2021 11:51:29 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Date: Mon, 06 Dec 2021 11:51:29 -0000
Message-ID: <163879148939.15873.10630856816253870768@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211206004901.69729-1-andi.shyti@linux.intel.com>
In-Reply-To: <20211206004901.69729-1-andi.shyti@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_More_preparation_for_multi_gt_patches_=28rev5=29?=
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

Series: More preparation for multi gt patches (rev5)
URL   : https://patchwork.freedesktop.org/series/97020/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
664bf127629d drm/i915: Store backpointer to GT in uncore
6126245f7f9b drm/i915: Introduce to_gt() helper
85a64d5e3941 drm/i915/display: Use to_gt() helper
285ede8ab554 drm/i915/gt: Use to_gt() helper
-:13: WARNING:BAD_SIGN_OFF: Non-standard signature: 'Singed-off-by:' - perhaps 'Signed-off-by:'?
#13: 
Singed-off-by: Andi Shyti <andi.shyti@linux.intel.com>

total: 0 errors, 1 warnings, 0 checks, 306 lines checked
5d66c381c586 drm/i915/gem: Use to_gt() helper
1bce3ff140dd drm/i915/gvt: Use to_gt() helper
0ec5ef1f0da2 drm/i915/selftests: Use to_gt() helper
fe75e5f64d63 drm/i915/pxp: Use to_gt() helper
7922c316658f drm/i915: Use to_gt() helper
f8c0e8ff2a32 drm/i915: Use to_gt() helper for GGTT accesses
-:226: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#226: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c:323:
+			      (1 + next_prime_number(to_gt(i915)->ggtt->vm.total >> PAGE_SHIFT)) << PAGE_SHIFT);

-:257: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#257: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c:460:
+			      (1 + next_prime_number(to_gt(i915)->ggtt->vm.total >> PAGE_SHIFT)) << PAGE_SHIFT);

total: 0 errors, 2 warnings, 0 checks, 494 lines checked
fb8677e8f722 drm/i915: Rename i915->gt to i915->gt0


