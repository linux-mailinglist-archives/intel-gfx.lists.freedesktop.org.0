Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B38912914A
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2019 05:23:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18A676E144;
	Mon, 23 Dec 2019 04:23:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4055C6E10C;
 Mon, 23 Dec 2019 04:23:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 30FE5A00E6;
 Mon, 23 Dec 2019 04:23:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Abdiel Janulgue" <abdiel.janulgue@linux.intel.com>
Date: Mon, 23 Dec 2019 04:23:55 -0000
Message-ID: <157707503517.16935.9390149040106997175@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191223041512.3582-1-abdiel.janulgue@linux.intel.com>
In-Reply-To: <20191223041512.3582-1-abdiel.janulgue@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/3=5D_drm/i915=3A_Introduce_remap?=
 =?utf-8?q?=5Fio=5Fsg=28=29_to_prefault_discontiguous_objects?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [1/3] drm/i915: Introduce remap_io_sg() to prefault discontiguous objects
URL   : https://patchwork.freedesktop.org/series/71283/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
baed6d9ecce4 drm/i915: Introduce remap_io_sg() to prefault discontiguous objects
-:54: WARNING:LINE_SPACING: Missing a blank line after declarations
#54: FILE: drivers/gpu/drm/i915/i915_mm.c:59:
+	struct sg_dma_page_iter *sgiter = &r->sgiter;
+	if (!r->pfn)

-:100: WARNING:LINE_SPACING: Missing a blank line after declarations
#100: FILE: drivers/gpu/drm/i915/i915_mm.c:132:
+	int err;
+	GEM_BUG_ON((vma->vm_flags & EXPECTED_FLAGS) != EXPECTED_FLAGS);

total: 0 errors, 2 warnings, 0 checks, 92 lines checked
c8a913e722c5 drm/i915: Add lmem fault handler
-:107: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#107: FILE: drivers/gpu/drm/i915/gem/i915_gem_mman.c:727:
+       .fault = vm_fault_iomem,$

-:108: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#108: FILE: drivers/gpu/drm/i915/gem/i915_gem_mman.c:728:
+       .open = vm_open,$

-:109: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#109: FILE: drivers/gpu/drm/i915/gem/i915_gem_mman.c:729:
+       .close = vm_close,$

total: 0 errors, 3 warnings, 0 checks, 115 lines checked
0dfca0c7f22b drm/i915/selftests: Add selftest for memory region PF handling

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
