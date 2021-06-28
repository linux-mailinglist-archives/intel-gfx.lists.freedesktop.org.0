Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A09D3B6892
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Jun 2021 20:37:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEB206E4A6;
	Mon, 28 Jun 2021 18:37:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 951AB6E4A6;
 Mon, 28 Jun 2021 18:37:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8D55CA8836;
 Mon, 28 Jun 2021 18:37:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Bommu Krishnaiah" <krishnaiah.bommu@intel.com>
Date: Mon, 28 Jun 2021 18:37:03 -0000
Message-ID: <162490542355.2574.11938904708762025277@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210628143829.22995-1-krishnaiah.bommu@intel.com>
In-Reply-To: <20210628143829.22995-1-krishnaiah.bommu@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_The_Following_Patches_are_to_Fix_the_Critical_KclockWork_Er?=
 =?utf-8?q?rors_in_i915=5Fgem_and_gt?=
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

Series: The Following Patches are to Fix the Critical KclockWork Errors in i915_gem and gt
URL   : https://patchwork.freedesktop.org/series/91978/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
4b2a948b3db2 Klock work Fix for NULL dereferencing in i915_gem_ttm.c
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 7 lines checked
f9066d1a6aab Klock work Fix for NULL dereferencing in i915_gem_mman.c
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 8 lines checked
7a1adeb3f0da Klock work Fix for possible memory leak in intel_execlists_submission.c
-:8: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 7 lines checked
ba8a3deef097 Klock work Fix for uninitialized array intel_migrate.c
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:17: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#17: FILE: drivers/gpu/drm/i915/gt/intel_migrate.c:211:
 	for (i = 0; i < ARRAY_SIZE(gt->engine_class[COPY_ENGINE_CLASS]); i++) {
+

total: 0 errors, 1 warnings, 1 checks, 15 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
