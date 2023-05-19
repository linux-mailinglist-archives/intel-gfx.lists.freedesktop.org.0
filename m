Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 972D0709FD2
	for <lists+intel-gfx@lfdr.de>; Fri, 19 May 2023 21:22:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C26AD10E584;
	Fri, 19 May 2023 19:21:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6326910E548;
 Fri, 19 May 2023 19:21:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5B245A73C7;
 Fri, 19 May 2023 19:21:55 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Fri, 19 May 2023 19:21:55 -0000
Message-ID: <168452411534.26991.2532508139340403752@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230519154946.3751971-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20230519154946.3751971-1-umesh.nerlige.ramappa@intel.com>
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
URL   : https://patchwork.freedesktop.org/series/118034/
State : warning

== Summary ==

Error: dim checkpatch failed
b0667b45bb9b drm/i915/pmu: Change bitmask of enabled events to u32
3120083f65f4 drm/i915/pmu: Support PMU for all engines
cc2b26b90bb2 drm/i915/pmu: Skip sampling engines with no enabled counters
4bb62bb0f5b4 drm/i915/pmu: Transform PMU parking code to be GT based
dca8c7e0a4df drm/i915/pmu: Add reference counting to the sampling timer
ab1fae8f9e3f drm/i915/pmu: Prepare for multi-tile non-engine counters
-:106: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#106: FILE: drivers/gpu/drm/i915/i915_pmu.c:205:
+	GEM_BUG_ON(idx >= ARRAY_SIZE(pmu->sample));

total: 0 errors, 1 warnings, 0 checks, 338 lines checked
990ae3bbf7f2 drm/i915/pmu: Export counters from all tiles


