Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DC657CC1CF
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Oct 2023 13:32:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D75F10E03E;
	Tue, 17 Oct 2023 11:32:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 206C210E03E;
 Tue, 17 Oct 2023 11:32:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 14ECAACC1F;
 Tue, 17 Oct 2023 11:32:40 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jonathan Cavitt" <jonathan.cavitt@intel.com>
Date: Tue, 17 Oct 2023 11:32:40 -0000
Message-ID: <169754236005.14377.14695508053820304939@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231016145109.2843611-1-jonathan.cavitt@intel.com>
In-Reply-To: <20231016145109.2843611-1-jonathan.cavitt@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Define_and_use_GuC_and_CTB_TLB_invalidation_rou?=
 =?utf-8?q?tines_=28rev6=29?=
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

Series: drm/i915: Define and use GuC and CTB TLB invalidation routines (rev6)
URL   : https://patchwork.freedesktop.org/series/125177/
State : warning

== Summary ==

Error: dim checkpatch failed
a44a48ef96e6 drm/i915: Add GuC TLB Invalidation device info flags
6dfb0c28700b drm/i915/guc: Add CT size delay helper
19d95ef0e0f1 drm/i915: Define and use GuC and CTB TLB invalidation routines
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
99fabd0c0878 drm/i915: No TLB invalidation on suspended GT
88e8474d7f6b drm/i915: No TLB invalidation on wedged GT
ce2166084d41 drm/i915/gt: Increase sleep in gt_tlb selftest sanitycheck
-:32: WARNING:MSLEEP: msleep < 20ms can sleep for up to 20ms; see Documentation/timers/timers-howto.rst
#32: FILE: drivers/gpu/drm/i915/gt/selftest_tlb.c:146:
+		msleep(10);

total: 0 errors, 1 warnings, 0 checks, 17 lines checked
9d76c2abb871 drm/i915: Enable GuC TLB invalidations for MTL


