Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F5646F8DEB
	for <lists+intel-gfx@lfdr.de>; Sat,  6 May 2023 04:21:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 677DD10E685;
	Sat,  6 May 2023 02:21:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E434510E192;
 Sat,  6 May 2023 02:20:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DC690A00E6;
 Sat,  6 May 2023 02:20:59 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Sat, 06 May 2023 02:20:59 -0000
Message-ID: <168333965987.28059.13666149221533183781@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230506005816.1891043-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20230506005816.1891043-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_MTL_PMU_support_for_multi-gt_=28rev2=29?=
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

Series: Add MTL PMU support for multi-gt (rev2)
URL   : https://patchwork.freedesktop.org/series/115836/
State : warning

== Summary ==

Error: dim checkpatch failed
4fcbc0ab4f43 drm/i915/pmu: Support PMU for all engines
64197b1bcaba drm/i915/pmu: Skip sampling engines with no enabled counters
aefd29011a00 drm/i915/pmu: Transform PMU parking code to be GT based
1a9fda0a5224 drm/i915/pmu: Add reference counting to the sampling timer
ff7ecb6be508 drm/i915/pmu: Prepare for multi-tile non-engine counters
-:60: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#60: FILE: drivers/gpu/drm/i915/i915_pmu.c:99:
+		GEM_BUG_ON(config_gt_id(config));

-:109: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#109: FILE: drivers/gpu/drm/i915/i915_pmu.c:197:
+	GEM_BUG_ON(idx >= ARRAY_SIZE(pmu->sample));

total: 0 errors, 2 warnings, 0 checks, 342 lines checked
94d6b886eeaf drm/i915/pmu: Export counters from all tiles


