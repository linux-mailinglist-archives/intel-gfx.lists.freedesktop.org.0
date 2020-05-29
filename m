Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CD941E7D3F
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2020 14:31:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCC8A6E8E5;
	Fri, 29 May 2020 12:31:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 596836E8E4;
 Fri, 29 May 2020 12:31:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 53A35A0099;
 Fri, 29 May 2020 12:31:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 29 May 2020 12:31:05 -0000
Message-ID: <159075546533.3334.5171415593386465490@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200529115731.7666-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200529115731.7666-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915=3A_Track_i915=5Fvma?=
 =?utf-8?q?_with_its_own_reference_counter?=
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

Series: series starting with [1/2] drm/i915: Track i915_vma with its own reference counter
URL   : https://patchwork.freedesktop.org/series/77784/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
5ddf1d723df5 drm/i915: Track i915_vma with its own reference counter
-:2232: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#2232: FILE: drivers/gpu/drm/i915/gt/intel_gtt.h:267:
+		spinlock_t lock;

-:4006: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#4006: FILE: drivers/gpu/drm/i915/i915_vma.h:386:
+	spinlock_t lock;

-:4253: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#4253: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:394:
+						if (offset < hole_start + vma->size)

-:4264: WARNING:LONG_LINE: line over 100 characters
#4264: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:402:
+						       __func__, p->name, err, npages, prime, offset,

-:4274: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#4274: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:419:
+						if (offset + vma->node.size > hole_end)

-:4290: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#4290: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:428:
+						if (offset < hole_start + vma->node.size)

-:4302: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#4302: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:451:
+						if (offset + vma->node.size > hole_end)

-:4318: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#4318: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:460:
+						if (offset < hole_start + vma->node.size)

-:4330: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#4330: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:484:
+						if (offset + vma->size >= hole_end)

-:4346: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#4346: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:493:
+						if (offset < hole_start + vma->size)

-:4358: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#4358: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:516:
+						if (offset + vma->size >= hole_end)

total: 0 errors, 9 warnings, 2 checks, 4783 lines checked
fd7715d1f5e5 drm/i915: Discard a misplaced GGTT vma

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
