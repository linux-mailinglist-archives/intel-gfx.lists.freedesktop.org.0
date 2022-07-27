Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 711A6582768
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jul 2022 15:12:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D8EF95B3A;
	Wed, 27 Jul 2022 13:12:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 961D69182C;
 Wed, 27 Jul 2022 13:12:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 86CE2A0003;
 Wed, 27 Jul 2022 13:12:27 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mauro Carvalho Chehab" <mchehab@kernel.org>
Date: Wed, 27 Jul 2022 13:12:27 -0000
Message-ID: <165892754751.21595.5590651050138716126@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1658924372.git.mchehab@kernel.org>
In-Reply-To: <cover.1658924372.git.mchehab@kernel.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_reduce_TLB_performance_regressions?=
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

Series: drm/i915: reduce TLB performance regressions
URL   : https://patchwork.freedesktop.org/series/106758/
State : warning

== Summary ==

Error: dim checkpatch failed
735755e9d5d5 drm/i915/gt: Ignore TLB invalidations on idle engines
-:138: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'gt' - possible side-effects?
#138: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm.h:58:
+#define with_intel_gt_pm_if_awake(gt, wf) \
+	for (wf = intel_gt_pm_get_if_awake(gt); wf; intel_gt_pm_put_async(gt), wf = 0)

-:138: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'wf' - possible side-effects?
#138: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm.h:58:
+#define with_intel_gt_pm_if_awake(gt, wf) \
+	for (wf = intel_gt_pm_get_if_awake(gt); wf; intel_gt_pm_put_async(gt), wf = 0)

total: 0 errors, 0 warnings, 2 checks, 99 lines checked
225d8336f971 drm/i915/gt: document with_intel_gt_pm_if_awake()
14c4636e0625 drm/i915/gt: Invalidate TLB of the OA unit at TLB invalidations
2bbb43b7f32b drm/i915/gt: Skip TLB invalidations once wedged
0cb17ababb41 drm/i915/gt: Batch TLB invalidations
051e0bf95aa1 drm/i915/gt: describe the new tlb parameter at i915_vma_resource


