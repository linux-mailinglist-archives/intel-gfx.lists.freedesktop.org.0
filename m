Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C76E707441
	for <lists+intel-gfx@lfdr.de>; Wed, 17 May 2023 23:29:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BED9310E49D;
	Wed, 17 May 2023 21:29:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6A9FF10E49D;
 Wed, 17 May 2023 21:29:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 63029A7DFF;
 Wed, 17 May 2023 21:29:21 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Wed, 17 May 2023 21:29:21 -0000
Message-ID: <168435896140.6591.3325408954182820955@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230517205542.3680895-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20230517205542.3680895-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_MTL_PMU_support_for_multi-gt?=
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

Series: Add MTL PMU support for multi-gt
URL   : https://patchwork.freedesktop.org/series/117913/
State : warning

== Summary ==

Error: dim checkpatch failed
210d9b13e02b drm/i915/pmu: Change bitmask of enabled events to u32
1c19f595d54a drm/i915/pmu: Support PMU for all engines
b3f0a6813864 drm/i915/pmu: Skip sampling engines with no enabled counters
b566ba4d283f drm/i915/pmu: Transform PMU parking code to be GT based
866e5d18d35a drm/i915/pmu: Add reference counting to the sampling timer
42554172eb8c drm/i915/pmu: Prepare for multi-tile non-engine counters
-:105: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#105: FILE: drivers/gpu/drm/i915/i915_pmu.c:205:
+	GEM_BUG_ON(idx >= ARRAY_SIZE(pmu->sample));

total: 0 errors, 1 warnings, 0 checks, 338 lines checked
d4a8070fba6c drm/i915/pmu: Export counters from all tiles


