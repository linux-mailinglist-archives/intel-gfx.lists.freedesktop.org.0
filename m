Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 21E1A7BC51D
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Oct 2023 08:43:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF92010E111;
	Sat,  7 Oct 2023 06:43:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E45B410E111;
 Sat,  7 Oct 2023 06:43:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DD5B1AADE3;
 Sat,  7 Oct 2023 06:43:31 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Date: Sat, 07 Oct 2023 06:43:31 -0000
Message-ID: <169666101187.8262.9002120038073805981@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231006182051.1599923-1-jonathan.cavitt@intel.com>
In-Reply-To: <20231006182051.1599923-1-jonathan.cavitt@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Define_and_use_GuC_and_CTB_TLB_invalidation_rou?=
 =?utf-8?q?tines_=28rev2=29?=
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

Series: drm/i915: Define and use GuC and CTB TLB invalidation routines (rev2)
URL   : https://patchwork.freedesktop.org/series/124744/
State : warning

== Summary ==

Error: dim checkpatch failed
e44ffdf14c0b drm/i915: Add GuC TLB Invalidation device info flags
d57c779f7d68 drm/i915/guc: Add CT size delay helper
de4bef329bd4 drm/i915: Define and use GuC and CTB TLB invalidation routines
-:411: WARNING:EMBEDDED_FUNCTION_NAME: Prefer using '"%s...", __func__' to using 'fini_tlb_lookup', this function's name, in a string
#411: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2002:
+		guc_dbg(guc, "fini_tlb_lookup: Unexpected item in tlb_lookup\n");

total: 0 errors, 1 warnings, 0 checks, 442 lines checked
05b6153f0d8e drm/i915: No TLB invalidation on suspended GT
774631eb2723 drm/i915: No TLB invalidation on wedged GT
a81ca53dd7f1 drm/i915/gt: Increase sleep in gt_tlb selftest sanitycheck
-:23: ERROR:TRAILING_WHITESPACE: trailing whitespace
#23: FILE: drivers/gpu/drm/i915/gt/selftest_tlb.c:140:
+^I * Short sleep to sanitycheck the batch is spinning before we begin $

-:29: WARNING:MSLEEP: msleep < 20ms can sleep for up to 20ms; see Documentation/timers/timers-howto.rst
#29: FILE: drivers/gpu/drm/i915/gt/selftest_tlb.c:146:
+		msleep(10);

total: 1 errors, 1 warnings, 0 checks, 17 lines checked
b387a13104b1 drm/i915: Enable GuC TLB invalidations for MTL


