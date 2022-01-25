Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5041B49BE41
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jan 2022 23:12:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2E4910E340;
	Tue, 25 Jan 2022 22:12:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6E03410E167;
 Tue, 25 Jan 2022 22:12:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 659CEA00A0;
 Tue, 25 Jan 2022 22:12:47 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Robert Beckett" <bob.beckett@collabora.com>
Date: Tue, 25 Jan 2022 22:12:47 -0000
Message-ID: <164314876737.27371.880428187767329268@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220125193530.3272386-1-bob.beckett@collabora.com>
In-Reply-To: <20220125193530.3272386-1-bob.beckett@collabora.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_discrete_card_64K_page_support_=28rev3=29?=
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

Series: discrete card 64K page support (rev3)
URL   : https://patchwork.freedesktop.org/series/99119/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
df51c5a24eef drm/i915: add needs_compact_pt flag
c3d4f40f9033 drm/i915: enforce min GTT alignment for discrete cards
-:294: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#294: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:457:
+						if (offset < hole_start + aligned_size)

-:306: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#306: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:481:
+						if (offset + aligned_size > hole_end)

-:324: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#324: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:497:
+						if (offset < hole_start + aligned_size)

-:336: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#336: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:520:
+						if (offset + aligned_size > hole_end)

-:354: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#354: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:536:
+						if (offset < hole_start + aligned_size)

-:366: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#366: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:560:
+						if (offset + aligned_size > hole_end)

-:384: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#384: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:576:
+						if (offset < hole_start + aligned_size)

-:396: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#396: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:599:
+						if (offset + aligned_size > hole_end)

total: 0 errors, 8 warnings, 0 checks, 436 lines checked
c39377079d4d drm/i915: support 64K GTT pages for discrete cards
c3028878f829 drm/i915: add gtt misalignment test
7dd58d6f3a52 drm/i915/uapi: document behaviour for DG2 64K support


