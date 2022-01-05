Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40AA7484DC4
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jan 2022 06:45:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E90610E5FA;
	Wed,  5 Jan 2022 05:45:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C4E1810E617;
 Wed,  5 Jan 2022 05:45:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BF241A008A;
 Wed,  5 Jan 2022 05:45:37 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Date: Wed, 05 Jan 2022 05:45:37 -0000
Message-ID: <164136153775.25401.2265293866296808881@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211219212500.61432-1-andi.shyti@linux.intel.com>
In-Reply-To: <20211219212500.61432-1-andi.shyti@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_More_preparation_for_multi_gt_patches_=28rev4=29?=
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

Series: More preparation for multi gt patches (rev4)
URL   : https://patchwork.freedesktop.org/series/98215/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
4f190d35025d drm/i915/gt: Use to_gt() helper for GGTT accesses
afd4ed1a47d2 drm/i915: Use to_gt() helper for GGTT accesses
-:235: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#235: FILE: drivers/gpu/drm/i915/i915_perf.c:1634:
+		intel_gt_ns_to_clock_interval(to_gt(stream->perf->i915),
+		atomic64_read(&stream->perf->noa_programming_delay));

total: 0 errors, 0 warnings, 1 checks, 176 lines checked
5f1faa95095c drm/i915/gem: Use to_gt() helper for GGTT accesses
-:304: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#304: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c:323:
+			      (1 + next_prime_number(to_gt(i915)->ggtt->vm.total >> PAGE_SHIFT)) << PAGE_SHIFT);

-:335: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#335: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c:460:
+			      (1 + next_prime_number(to_gt(i915)->ggtt->vm.total >> PAGE_SHIFT)) << PAGE_SHIFT);

total: 0 errors, 2 warnings, 0 checks, 287 lines checked
d1f4dc7bb6bb drm/i915/display: Use to_gt() helper for GGTT accesses
dd2830cfee21 drm/i915/selftests: Use to_gt() helper for GGTT accesses
7f9fe7d9fcfd drm/i915: Remove unused i915->ggtt


