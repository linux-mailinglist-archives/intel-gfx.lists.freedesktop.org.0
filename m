Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A5E54955CD
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jan 2022 22:11:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4022A10E77A;
	Thu, 20 Jan 2022 21:11:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 326F310E6B9;
 Thu, 20 Jan 2022 21:11:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2F831A47EB;
 Thu, 20 Jan 2022 21:11:18 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Robert Beckett" <bob.beckett@collabora.com>
Date: Thu, 20 Jan 2022 21:11:18 -0000
Message-ID: <164271307816.22529.5696178659188975658@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220120203721.632424-1-bob.beckett@collabora.com>
In-Reply-To: <20220120203721.632424-1-bob.beckett@collabora.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_discrete_card_64K_page_support?=
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

Series: discrete card 64K page support
URL   : https://patchwork.freedesktop.org/series/99119/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
2ad66084bf0b drm/i915: add needs_compact_pt flag
f2a348f85370 drm/i915: enforce min GTT alignment for discrete cards
-:288: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#288: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:457:
+						if (offset < hole_start + aligned_size)

-:300: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#300: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:481:
+						if (offset + aligned_size > hole_end)

-:318: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#318: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:497:
+						if (offset < hole_start + aligned_size)

-:330: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#330: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:520:
+						if (offset + aligned_size > hole_end)

-:348: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#348: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:536:
+						if (offset < hole_start + aligned_size)

-:360: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#360: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:560:
+						if (offset + aligned_size > hole_end)

-:378: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#378: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:576:
+						if (offset < hole_start + aligned_size)

-:390: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#390: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:599:
+						if (offset + aligned_size > hole_end)

total: 0 errors, 8 warnings, 0 checks, 433 lines checked
e270ed3aae8a drm/i915: support 64K GTT pages for discrete cards
3ccd33b30eb1 drm/i915: add gtt misalignment test
-:157: CHECK:LINE_SPACING: Please don't use multiple blank lines
#157: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:1260:
+
+

-:170: CHECK:LINE_SPACING: Please don't use multiple blank lines
#170: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:1338:
+
+

total: 0 errors, 0 warnings, 2 checks, 170 lines checked
5b1165701d6d drm/i915/uapi: document behaviour for DG2 64K support


