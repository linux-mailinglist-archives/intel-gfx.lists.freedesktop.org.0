Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FA7B471B58
	for <lists+intel-gfx@lfdr.de>; Sun, 12 Dec 2021 16:33:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FB8610E751;
	Sun, 12 Dec 2021 15:33:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3E09310E751;
 Sun, 12 Dec 2021 15:33:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 35BDBA7DFC;
 Sun, 12 Dec 2021 15:33:44 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Date: Sun, 12 Dec 2021 15:33:44 -0000
Message-ID: <163932322419.3476.12535445558794481699@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211212152117.118428-1-andi.shyti@linux.intel.com>
In-Reply-To: <20211212152117.118428-1-andi.shyti@linux.intel.com>
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
URL   : https://patchwork.freedesktop.org/series/97935/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
5b1912ef3bfc drm/i915: Store backpointer to GT in uncore
6fcd28bd3a26 drm/i915: Introduce to_gt() helper
60b7e735636e drm/i915/display: Use to_gt() helper
5d9c78ed3444 drm/i915/gt: Use to_gt() helper
fa675a22a978 drm/i915/gem: Use to_gt() helper
8ea7b7f67e01 drm/i915/gvt: Use to_gt() helper
010263fb2611 drm/i915/selftests: Use to_gt() helper
95a26ffab544 drm/i915/pxp: Use to_gt() helper
d094507a89b3 drm/i915: Use to_gt() helper
d2a40e69f615 drm/i915: Rename i915->gt to i915->gt0
cb96ff680854 drm/i915: Use to_gt() helper for GGTT accesses
-:274: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#274: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c:323:
+			      (1 + next_prime_number(to_gt(i915)->ggtt->vm.total >> PAGE_SHIFT)) << PAGE_SHIFT);

-:305: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#305: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c:460:
+			      (1 + next_prime_number(to_gt(i915)->ggtt->vm.total >> PAGE_SHIFT)) << PAGE_SHIFT);

total: 0 errors, 2 warnings, 0 checks, 603 lines checked
e3606ddace3c drm/i915: Move the GGTT from i915 private data to the GT
-:389: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#389: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c:323:
+			      (1 + next_prime_number(to_gt(i915)->ggtt.vm.total >> PAGE_SHIFT)) << PAGE_SHIFT);

-:420: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#420: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c:460:
+			      (1 + next_prime_number(to_gt(i915)->ggtt.vm.total >> PAGE_SHIFT)) << PAGE_SHIFT);

total: 0 errors, 2 warnings, 0 checks, 1304 lines checked


