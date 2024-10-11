Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38EA599AF8D
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Oct 2024 01:55:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CF3410E133;
	Fri, 11 Oct 2024 23:55:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 315C310E133;
 Fri, 11 Oct 2024 23:55:02 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Fix_i915_pmu_on_bind?=
 =?utf-8?q?/unbind_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Oct 2024 23:55:02 -0000
Message-ID: <172869090219.1242654.8736460023000428848@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241011225430.1219345-1-lucas.demarchi@intel.com>
In-Reply-To: <20241011225430.1219345-1-lucas.demarchi@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Fix i915 pmu on bind/unbind (rev2)
URL   : https://patchwork.freedesktop.org/series/136362/
State : warning

== Summary ==

Error: dim checkpatch failed
73e46040952e squashed series - 20241008183501.1354695-1-lucas.demarchi@intel.com
-:7: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#7: 
Patches 2 and 3 of https://lore.kernel.org/all/20241008183501.1354695-1-lucas.demarchi@intel.com/

-:27: WARNING:SPACING: Unnecessary space before function pointer arguments
#27: FILE: include/linux/perf_event.h:571:
+	struct pmu *(*get)		(struct pmu *pmu);

-:30: WARNING:SPACING: Unnecessary space before function pointer arguments
#30: FILE: include/linux/perf_event.h:574:
+	 void (*put)			(struct pmu *pmu);

-:38: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#38: FILE: include/linux/perf_event.h:1118:
+extern void perf_pmu_free(struct pmu *pmu);

-:95: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#95: FILE: kernel/events/core.c:11769:
+	if (WARN_ONCE((!!pmu->get) ^ (!!pmu->put), "Can not register a pmu with only get or put defined.\n")) {

total: 0 errors, 4 warnings, 1 checks, 113 lines checked
1a85dc884b6d drm/i915/pmu: Let resource survive unbind
e7bb5806e940 drm/i915/pmu: Fix crash due to use-after-free
-:110: WARNING:MISSING_FIXES_TAG: The commit message has 'stable@', perhaps it also needs a 'Fixes:' tag?

total: 0 errors, 1 warnings, 0 checks, 66 lines checked
26c2507815e4 drm/i915/pmu: Rename cpuhp_slot to cpuhp_state
1b5adbd7c6e4 drm/i915/pmu: Stop setting event_init to NULL
c98937826402 drm/i915/pmu: Replace closed with registered
f21a1a02ada7 drm/i915/pmu: Remove pointless synchronize_rcu() call
ec2a46c1535d drm/i915/pmu: Release open events when unregistering


