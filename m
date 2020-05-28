Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25C201E5AA2
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2020 10:22:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 948546E4F4;
	Thu, 28 May 2020 08:22:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CFB866E4F3;
 Thu, 28 May 2020 08:21:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CA562A00C7;
 Thu, 28 May 2020 08:21:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 28 May 2020 08:21:59 -0000
Message-ID: <159065411980.686.11251402088363181638@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200528074324.5765-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200528074324.5765-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/3=5D_drm/i915/gt=3A_Prevent_times?=
 =?utf-8?q?licing_into_unpreemptable_requests?=
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

Series: series starting with [1/3] drm/i915/gt: Prevent timeslicing into unpreemptable requests
URL   : https://patchwork.freedesktop.org/series/77730/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
006567321620 drm/i915/gt: Prevent timeslicing into unpreemptable requests
78e4f820cf01 drm/i915/gt: Don't declare hangs if engine is stalled
ee61f90a8c75 drm/i915: Track i915_vma with its own reference counter
-:2210: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#2210: FILE: drivers/gpu/drm/i915/gt/intel_gtt.h:267:
+		spinlock_t lock;

-:3960: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#3960: FILE: drivers/gpu/drm/i915/i915_vma.h:385:
+	spinlock_t lock;

-:4123: WARNING:BRACES: braces {} are not necessary for single statement blocks
#4123: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:149:
+	if (IS_ERR(obj)) {
+		return ERR_CAST(obj);
+	}

-:4206: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#4206: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:395:
+						if (offset < hole_start + vma->size)

-:4217: WARNING:LONG_LINE: line over 100 characters
#4217: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:403:
+						       __func__, p->name, err, npages, prime, offset,

-:4227: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#4227: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:420:
+						if (offset + vma->node.size > hole_end)

-:4243: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#4243: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:429:
+						if (offset < hole_start + vma->node.size)

-:4255: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#4255: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:452:
+						if (offset + vma->node.size > hole_end)

-:4271: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#4271: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:461:
+						if (offset < hole_start + vma->node.size)

-:4283: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#4283: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:485:
+						if (offset + vma->size >= hole_end)

-:4299: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#4299: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:494:
+						if (offset < hole_start + vma->size)

-:4311: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#4311: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:517:
+						if (offset + vma->size >= hole_end)

total: 0 errors, 10 warnings, 2 checks, 4744 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
