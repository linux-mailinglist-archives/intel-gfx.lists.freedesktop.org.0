Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C99626CF8C6
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Mar 2023 03:37:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEF7610ECBD;
	Thu, 30 Mar 2023 01:37:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C587210ECC0;
 Thu, 30 Mar 2023 01:37:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BEF67A00E6;
 Thu, 30 Mar 2023 01:37:27 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Thu, 30 Mar 2023 01:37:27 -0000
Message-ID: <168014024775.18827.5836428896293741545@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230330004103.1295413-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20230330004103.1295413-1-umesh.nerlige.ramappa@intel.com>
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
URL   : https://patchwork.freedesktop.org/series/115836/
State : warning

== Summary ==

Error: dim checkpatch failed
11153695e917 drm/i915/pmu: Support PMU for all engines
e81f792130c7 drm/i915/pmu: Skip sampling engines with no enabled counters
ecedc375d617 drm/i915/pmu: Transform PMU parking code to be GT based
12bdfd2a45f4 drm/i915/pmu: Add reference counting to the sampling timer
927155f231d6 drm/i915/pmu: Prepare for multi-tile non-engine counters
-:54: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#54: FILE: drivers/gpu/drm/i915/i915_pmu.c:99:
+		GEM_BUG_ON(config_gt_id(config));

-:103: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#103: FILE: drivers/gpu/drm/i915/i915_pmu.c:197:
+	GEM_BUG_ON(idx >= ARRAY_SIZE(pmu->sample));

total: 0 errors, 2 warnings, 0 checks, 346 lines checked
ab6717f2e5ca drm/i915/pmu: Export counters from all tiles
2a5e80bfe71e drm/i915/pmu: Use a helper to convert to MHz
3b4e837ed3d7 drm/i915/pmu: Split reading engine and other events into helpers
7d0b9b050afc drm/i915/pmu: Enable legacy PMU events for MTL
-:241: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#241: FILE: drivers/gpu/drm/i915/i915_pmu.c:817:
+			GEM_BUG_ON(bit >= ARRAY_SIZE(pmu->enable_count));

-:242: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#242: FILE: drivers/gpu/drm/i915/i915_pmu.c:818:
+			GEM_BUG_ON(pmu->enable_count[bit] == ~0);

-:276: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#276: FILE: drivers/gpu/drm/i915/i915_pmu.c:909:
+			GEM_BUG_ON(bit >= ARRAY_SIZE(pmu->enable_count));

-:277: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#277: FILE: drivers/gpu/drm/i915/i915_pmu.c:910:
+			GEM_BUG_ON(pmu->enable_count[bit] == 0);

total: 0 errors, 4 warnings, 0 checks, 298 lines checked


