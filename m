Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ADA97C9B68
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Oct 2023 22:25:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6451C10E0EA;
	Sun, 15 Oct 2023 20:25:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4CA9010E0EA;
 Sun, 15 Oct 2023 20:25:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 321ACA7DFF;
 Sun, 15 Oct 2023 20:25:09 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jonathan Cavitt" <jonathan.cavitt@intel.com>
Date: Sun, 15 Oct 2023 20:25:09 -0000
Message-ID: <169740150917.21827.9766774618263476262@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231013221419.2710833-1-jonathan.cavitt@intel.com>
In-Reply-To: <20231013221419.2710833-1-jonathan.cavitt@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Define_and_use_GuC_and_CTB_TLB_invalidation_rou?=
 =?utf-8?q?tines_=28rev3=29?=
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

Series: drm/i915: Define and use GuC and CTB TLB invalidation routines (rev3)
URL   : https://patchwork.freedesktop.org/series/125136/
State : warning

== Summary ==

Error: dim checkpatch failed
a718844cd2f3 drm/i915: Add GuC TLB Invalidation device info flags
549f1563531e drm/i915/guc: Add CT size delay helper
81ac1bf9d8e5 drm/i915: Define and use GuC and CTB TLB invalidation routines
-:284: WARNING:MISORDERED_TYPE: type 'long unsigned int' should be specified in [[un]signed] [short|int|long|long long] order
#284: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:1929:
+	long unsigned int i;

-:284: WARNING:UNNECESSARY_INT: Prefer 'unsigned long' over 'long unsigned int' as the int is unnecessary
#284: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:1929:
+	long unsigned int i;

-:447: WARNING:MEMORY_BARRIER: memory barrier without comment
#447: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:4741:
+	smp_store_mb(wq_entry->flags, wq_entry->flags & ~WQ_FLAG_WOKEN);

total: 0 errors, 3 warnings, 0 checks, 441 lines checked
6cb682ddc1ab drm/i915: No TLB invalidation on suspended GT
1d77d0b8d34a drm/i915: No TLB invalidation on wedged GT
519b80d651da drm/i915/gt: Increase sleep in gt_tlb selftest sanitycheck
-:32: WARNING:MSLEEP: msleep < 20ms can sleep for up to 20ms; see Documentation/timers/timers-howto.rst
#32: FILE: drivers/gpu/drm/i915/gt/selftest_tlb.c:146:
+		msleep(10);

total: 0 errors, 1 warnings, 0 checks, 17 lines checked
ce4dfe061bcc drm/i915: Enable GuC TLB invalidations for MTL


