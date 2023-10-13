Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 74C357C8019
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Oct 2023 10:25:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E9FA10E094;
	Fri, 13 Oct 2023 08:25:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 403AA10E086;
 Fri, 13 Oct 2023 08:25:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 39B46AADE3;
 Fri, 13 Oct 2023 08:25:13 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jonathan Cavitt" <jonathan.cavitt@intel.com>
Date: Fri, 13 Oct 2023 08:25:13 -0000
Message-ID: <169718551320.31157.4562299899530962889@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231012223826.2556700-1-jonathan.cavitt@intel.com>
In-Reply-To: <20231012223826.2556700-1-jonathan.cavitt@intel.com>
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
URL   : https://patchwork.freedesktop.org/series/125076/
State : warning

== Summary ==

Error: dim checkpatch failed
f7cb19dc39f1 drm/i915: Add GuC TLB Invalidation device info flags
23d5c0118b98 drm/i915/guc: Add CT size delay helper
a7184bb383c9 drm/i915: Define and use GuC and CTB TLB invalidation routines
-:452: WARNING:MEMORY_BARRIER: memory barrier without comment
#452: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:4739:
+	smp_store_mb(wq_entry->flags, wq_entry->flags & ~WQ_FLAG_WOKEN);

total: 0 errors, 1 warnings, 0 checks, 445 lines checked
8c6010e5ab58 drm/i915: No TLB invalidation on suspended GT
0cfb064c9e9c drm/i915: No TLB invalidation on wedged GT
937b7430468e drm/i915/gt: Increase sleep in gt_tlb selftest sanitycheck
-:32: WARNING:MSLEEP: msleep < 20ms can sleep for up to 20ms; see Documentation/timers/timers-howto.rst
#32: FILE: drivers/gpu/drm/i915/gt/selftest_tlb.c:146:
+		msleep(10);

total: 0 errors, 1 warnings, 0 checks, 17 lines checked
9553f34bb117 drm/i915: Enable GuC TLB invalidations for MTL


