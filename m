Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E15F939647
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2024 00:10:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA22310E361;
	Mon, 22 Jul 2024 22:10:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4166A10E10A;
 Mon, 22 Jul 2024 22:10:25 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Fix_i915_pmu_on_bind?=
 =?utf-8?q?/unbind?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Jul 2024 22:10:25 -0000
Message-ID: <172168622526.358422.7898132076441976088@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240722210648.80892-1-lucas.demarchi@intel.com>
In-Reply-To: <20240722210648.80892-1-lucas.demarchi@intel.com>
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

Series: Fix i915 pmu on bind/unbind
URL   : https://patchwork.freedesktop.org/series/136362/
State : warning

== Summary ==

Error: dim checkpatch failed
db2b3cfa072e perf/core: Add pmu get/put
-:30: WARNING:SPACING: Unnecessary space before function pointer arguments
#30: FILE: include/linux/perf_event.h:544:
+	struct pmu *(*get)		(struct pmu *pmu); /* optional: get a reference */

-:31: WARNING:SPACING: Unnecessary space before function pointer arguments
#31: FILE: include/linux/perf_event.h:545:
+	void (*put)			(struct pmu *pmu); /* optional: put a reference */

total: 0 errors, 2 warnings, 0 checks, 77 lines checked
ba821d7898b3 drm/i915/pmu: Fix crash due to use-after-free
a7e8a324d898 drm/i915/pmu: Use event_to_pmu()
7f148b052f87 drm/i915/pmu: Drop is_igp()
1f548ca93dcd drm/i915/pmu: Let resource survive unbind
f587fb41a28a drm/i915/pmu: Lazy unregister
c4659678da43 drm/i915/pmu: Do not set event_init to NULL


