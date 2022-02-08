Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DAB14AE32F
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 23:06:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2DA410E27B;
	Tue,  8 Feb 2022 22:06:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D0EDB10E27B;
 Tue,  8 Feb 2022 22:06:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CDF70A7DFC;
 Tue,  8 Feb 2022 22:06:10 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Robert Beckett" <bob.beckett@collabora.com>
Date: Tue, 08 Feb 2022 22:06:10 -0000
Message-ID: <164435797082.22542.4995588593109102743@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220208203419.1094362-1-bob.beckett@collabora.com>
In-Reply-To: <20220208203419.1094362-1-bob.beckett@collabora.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_discrete_card_64K_page_support_=28rev6=29?=
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

Series: discrete card 64K page support (rev6)
URL   : https://patchwork.freedesktop.org/series/99119/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
3661cc75d2f0 drm/i915: add needs_compact_pt flag
d28e89eb3a6f drm/i915: enforce min GTT alignment for discrete cards
-:304: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#304: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:457:
+						if (offset < hole_start + aligned_size)

-:316: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#316: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:481:
+						if (offset + aligned_size > hole_end)

-:334: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#334: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:497:
+						if (offset < hole_start + aligned_size)

-:346: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#346: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:520:
+						if (offset + aligned_size > hole_end)

-:364: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#364: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:536:
+						if (offset < hole_start + aligned_size)

-:376: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#376: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:560:
+						if (offset + aligned_size > hole_end)

-:394: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#394: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:576:
+						if (offset < hole_start + aligned_size)

-:406: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#406: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:599:
+						if (offset + aligned_size > hole_end)

total: 0 errors, 8 warnings, 0 checks, 438 lines checked
7c4419b395e6 drm/i915: support 64K GTT pages for discrete cards
821eba08b7a4 drm/i915: add gtt misalignment test
266421b1e797 drm/i915/uapi: document behaviour for DG2 64K support


