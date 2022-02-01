Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 741684A63EB
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Feb 2022 19:34:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE03110E121;
	Tue,  1 Feb 2022 18:33:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 61A0110E121;
 Tue,  1 Feb 2022 18:33:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5D1DCA7DFC;
 Tue,  1 Feb 2022 18:33:55 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Robert Beckett" <bob.beckett@collabora.com>
Date: Tue, 01 Feb 2022 18:33:55 -0000
Message-ID: <164374043535.2606.17765778428761684015@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220201182422.1548863-1-bob.beckett@collabora.com>
In-Reply-To: <20220201182422.1548863-1-bob.beckett@collabora.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_discrete_card_64K_page_support_=28rev5=29?=
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

Series: discrete card 64K page support (rev5)
URL   : https://patchwork.freedesktop.org/series/99119/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
640354f70085 drm/i915: add needs_compact_pt flag
7dc2679d906a drm/i915: enforce min GTT alignment for discrete cards
-:298: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#298: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:457:
+						if (offset < hole_start + aligned_size)

-:310: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#310: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:481:
+						if (offset + aligned_size > hole_end)

-:328: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#328: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:497:
+						if (offset < hole_start + aligned_size)

-:340: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#340: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:520:
+						if (offset + aligned_size > hole_end)

-:358: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#358: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:536:
+						if (offset < hole_start + aligned_size)

-:370: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#370: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:560:
+						if (offset + aligned_size > hole_end)

-:388: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#388: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:576:
+						if (offset < hole_start + aligned_size)

-:400: WARNING:DEEP_INDENTATION: Too many leading tabs - consider code refactoring
#400: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:599:
+						if (offset + aligned_size > hole_end)

total: 0 errors, 8 warnings, 0 checks, 434 lines checked
969ac009dcff drm/i915: support 64K GTT pages for discrete cards
0fa221774a2e drm/i915: add gtt misalignment test
9d2612a88ac0 drm/i915/uapi: document behaviour for DG2 64K support


