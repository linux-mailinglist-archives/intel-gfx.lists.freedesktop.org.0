Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B1E6F492CEF
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jan 2022 19:02:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E618F10E441;
	Tue, 18 Jan 2022 18:02:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2D5E010E11C;
 Tue, 18 Jan 2022 18:02:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2A26BA7DFB;
 Tue, 18 Jan 2022 18:02:45 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Robert Beckett" <bob.beckett@collabora.com>
Date: Tue, 18 Jan 2022 18:02:45 -0000
Message-ID: <164252896516.25102.9155569398963324123@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220118175036.3840934-1-bob.beckett@collabora.com>
In-Reply-To: <20220118175036.3840934-1-bob.beckett@collabora.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_discsrete_card_64K_page_support?=
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

Series: discsrete card 64K page support
URL   : https://patchwork.freedesktop.org/series/98996/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
3fc953fbf8ce drm/i915: enforce min GTT alignment for discrete cards
-:275: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#275: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:457:
+						if (offset < hole_start + aligned_size)

-:287: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#287: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:481:
+						if (offset + aligned_size > hole_end)

-:305: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#305: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:497:
+						if (offset < hole_start + aligned_size)

-:317: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#317: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:520:
+						if (offset + aligned_size > hole_end)

-:335: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#335: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:536:
+						if (offset < hole_start + aligned_size)

-:347: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#347: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:560:
+						if (offset + aligned_size > hole_end)

-:365: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#365: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:576:
+						if (offset < hole_start + aligned_size)

-:377: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#377: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:599:
+						if (offset + aligned_size > hole_end)

total: 0 errors, 8 warnings, 0 checks, 428 lines checked
a68ac5de3a3c drm/i915: support 64K GTT pages for discrete cards
f8049933a42f drm/i915: add gtt misalignment test
-:157: CHECK:LINE_SPACING: Please don't use multiple blank lines
#157: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:1260:
+
+

-:170: CHECK:LINE_SPACING: Please don't use multiple blank lines
#170: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:1338:
+
+

total: 0 errors, 0 warnings, 2 checks, 170 lines checked
b496821c4212 drm/i915/uapi: document behaviour for DG2 64K support


