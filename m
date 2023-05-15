Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E05E7025B3
	for <lists+intel-gfx@lfdr.de>; Mon, 15 May 2023 09:10:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CBA510E13B;
	Mon, 15 May 2023 07:10:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D331310E13D;
 Mon, 15 May 2023 07:10:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CAE06AADEB;
 Mon, 15 May 2023 07:10:31 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Mon, 15 May 2023 07:10:31 -0000
Message-ID: <168413463179.22015.8860345540528322936@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230515064416.3054707-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20230515064416.3054707-1-umesh.nerlige.ramappa@intel.com>
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
URL   : https://patchwork.freedesktop.org/series/117738/
State : warning

== Summary ==

Error: dim checkpatch failed
6114f8d0c211 drm/i915/pmu: Support PMU for all engines
8736cb79fd80 drm/i915/pmu: Skip sampling engines with no enabled counters
a758943c95f5 drm/i915/pmu: Transform PMU parking code to be GT based
e5548d8ca335 drm/i915/pmu: Add reference counting to the sampling timer
ccb4d59f4da6 drm/i915/pmu: Prepare for multi-tile non-engine counters
-:107: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#107: FILE: drivers/gpu/drm/i915/i915_pmu.c:194:
+	GEM_BUG_ON(idx >= ARRAY_SIZE(pmu->sample));

total: 0 errors, 1 warnings, 0 checks, 351 lines checked
fb34a531fb2d drm/i915/pmu: Export counters from all tiles


