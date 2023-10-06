Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE3A57BC11F
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 23:27:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EF1410E57C;
	Fri,  6 Oct 2023 21:27:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 02A2410E56E;
 Fri,  6 Oct 2023 21:27:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EFCB7AADEF;
 Fri,  6 Oct 2023 21:27:06 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Date: Fri, 06 Oct 2023 21:27:06 -0000
Message-ID: <169662762694.6468.6163310440623381@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231006182051.1599923-1-jonathan.cavitt@intel.com>
In-Reply-To: <20231006182051.1599923-1-jonathan.cavitt@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Define_and_use_GuC_and_CTB_TLB_invalidation_rou?=
 =?utf-8?q?tines?=
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

Series: drm/i915: Define and use GuC and CTB TLB invalidation routines
URL   : https://patchwork.freedesktop.org/series/124744/
State : warning

== Summary ==

Error: dim checkpatch failed
a989e19c9fa8 drm/i915: Add GuC TLB Invalidation device info flags
b8ea885e3069 drm/i915/guc: Add CT size delay helper
ec7ad50f3bc3 drm/i915: Define and use GuC and CTB TLB invalidation routines
-:411: WARNING:EMBEDDED_FUNCTION_NAME: Prefer using '"%s...", __func__' to using 'fini_tlb_lookup', this function's name, in a string
#411: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2002:
+		guc_dbg(guc, "fini_tlb_lookup: Unexpected item in tlb_lookup\n");

total: 0 errors, 1 warnings, 0 checks, 442 lines checked
a71d6627453a drm/i915: No TLB invalidation on suspended GT
9a28bcd71d02 drm/i915: No TLB invalidation on wedged GT
6810984ab8f8 drm/i915/gt: Increase sleep in gt_tlb selftest sanitycheck
-:23: ERROR:TRAILING_WHITESPACE: trailing whitespace
#23: FILE: drivers/gpu/drm/i915/gt/selftest_tlb.c:140:
+^I * Short sleep to sanitycheck the batch is spinning before we begin $

-:29: WARNING:MSLEEP: msleep < 20ms can sleep for up to 20ms; see Documentation/timers/timers-howto.rst
#29: FILE: drivers/gpu/drm/i915/gt/selftest_tlb.c:146:
+		msleep(10);

total: 1 errors, 1 warnings, 0 checks, 17 lines checked
7ffe5af8a6bd drm/i915: Enable GuC TLB invalidations for MTL


