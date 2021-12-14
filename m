Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 09946474C4F
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Dec 2021 20:54:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 860EA10E139;
	Tue, 14 Dec 2021 19:54:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5127810E139;
 Tue, 14 Dec 2021 19:54:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 477C3A0BCB;
 Tue, 14 Dec 2021 19:54:46 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Date: Tue, 14 Dec 2021 19:54:46 -0000
Message-ID: <163951168626.24611.10097697623746483789@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211214193346.21231-1-andi.shyti@linux.intel.com>
In-Reply-To: <20211214193346.21231-1-andi.shyti@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_More_preparation_for_multi_gt_patches?=
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

Series: More preparation for multi gt patches
URL   : https://patchwork.freedesktop.org/series/98032/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
9213cee2d3f1 drm/i915: Store backpointer to GT in uncore
03c38fe5890e drm/i915: Introduce to_gt() helper
3396a9399332 drm/i915/display: Use to_gt() helper
c55e7cf11a96 drm/i915/gt: Use to_gt() helper
c76f51bbcc77 drm/i915/gem: Use to_gt() helper
8080a5ab6c26 drm/i915/gvt: Use to_gt() helper
15c86f199591 drm/i915/selftests: Use to_gt() helper
157bd8ae7fcb drm/i915/pxp: Use to_gt() helper
5208b9d94f5e drm/i915: Use to_gt() helper
3168444a49c9 drm/i915: Rename i915->gt to i915->gt0
816cc046ac41 drm/i915/gem: Use to_gt() helper for GGTT accesses
-:302: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#302: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c:323:
+			      (1 + next_prime_number(to_gt(i915)->ggtt->vm.total >> PAGE_SHIFT)) << PAGE_SHIFT);

-:333: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#333: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c:460:
+			      (1 + next_prime_number(to_gt(i915)->ggtt->vm.total >> PAGE_SHIFT)) << PAGE_SHIFT);

total: 0 errors, 2 warnings, 0 checks, 287 lines checked
0391dffccd54 drm/i915/display: Use to_gt() helper for GGTT accesses
3ee8899bc707 drm/i915/gt: Use to_gt() helper for GGTT accesses
5f031aaa1681 drm/i915/selftests: Use to_gt() helper for GGTT accesses
b78e5bf18426 drm/i915: Use to_gt() helper for GGTT accesses
9fbfb3c53e54 drm/i915: Remove unused i915->ggtt


