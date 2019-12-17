Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC19122BBF
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 13:37:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7997B6E9CB;
	Tue, 17 Dec 2019 12:37:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 39DE96E9CB;
 Tue, 17 Dec 2019 12:37:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 31C05A00C7;
 Tue, 17 Dec 2019 12:37:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Abdiel Janulgue" <abdiel.janulgue@linux.intel.com>
Date: Tue, 17 Dec 2019 12:37:28 -0000
Message-ID: <157658624819.21848.12554613418920555628@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191217115750.11938-1-abdiel.janulgue@linux.intel.com>
In-Reply-To: <20191217115750.11938-1-abdiel.janulgue@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915=3A_Add_lmem_fault_h?=
 =?utf-8?q?andler?=
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

Series: series starting with [1/2] drm/i915: Add lmem fault handler
URL   : https://patchwork.freedesktop.org/series/71051/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
21b92ebb9c01 drm/i915: Add lmem fault handler
-:116: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#116: FILE: drivers/gpu/drm/i915/gem/i915_gem_mman.c:303:
+		return i915_error_to_vmf_fault(ret);
+	} else {

-:118: WARNING:LINE_SPACING: Missing a blank line after declarations
#118: FILE: drivers/gpu/drm/i915/gem/i915_gem_mman.c:305:
+		vm_fault_t vmf_ret = VM_FAULT_SIGBUS;
+		if (GEM_WARN_ON(size < PAGE_SIZE))

-:151: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#151: FILE: drivers/gpu/drm/i915/gem/i915_gem_mman.c:742:
+       .fault = vm_fault_iomem,$

-:152: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#152: FILE: drivers/gpu/drm/i915/gem/i915_gem_mman.c:743:
+       .open = vm_open,$

-:153: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#153: FILE: drivers/gpu/drm/i915/gem/i915_gem_mman.c:744:
+       .close = vm_close,$

total: 0 errors, 5 warnings, 0 checks, 157 lines checked
ded079f2d6fc drm/i915/selftests: Add selftest for memory region PF handling

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
