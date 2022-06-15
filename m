Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA2BB54CFB9
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jun 2022 19:26:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B8C2112702;
	Wed, 15 Jun 2022 17:26:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 60848112702;
 Wed, 15 Jun 2022 17:26:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 56EAAAA914;
 Wed, 15 Jun 2022 17:26:18 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mauro Carvalho Chehab" <mchehab@kernel.org>
Date: Wed, 15 Jun 2022 17:26:18 -0000
Message-ID: <165531397835.14602.12506473535535669197@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1655306128.git.mchehab@kernel.org>
In-Reply-To: <cover.1655306128.git.mchehab@kernel.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Fix_TLB_invalidate_issues_with_Broadwell?=
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

Series: Fix TLB invalidate issues with Broadwell
URL   : https://patchwork.freedesktop.org/series/105167/
State : warning

== Summary ==

Error: dim checkpatch failed
f4a32c9a2c4b drm/i915/gt: Ignore TLB invalidations on idle engines
-:135: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'gt' - possible side-effects?
#135: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm.h:58:
+#define with_intel_gt_pm_if_awake(gt, wf) \
+	for (wf = intel_gt_pm_get_if_awake(gt); wf; intel_gt_pm_put_async(gt), wf = 0)

-:135: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'wf' - possible side-effects?
#135: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm.h:58:
+#define with_intel_gt_pm_if_awake(gt, wf) \
+	for (wf = intel_gt_pm_get_if_awake(gt); wf; intel_gt_pm_put_async(gt), wf = 0)

total: 0 errors, 0 warnings, 2 checks, 95 lines checked
81db701fd3ad drm/i915/gt: Invalidate TLB of the OA unit at TLB invalidations
8cf10580267f drm/i915/gt: Skip TLB invalidations once wedged
dff31200063a drm/i915/gt: Only invalidate TLBs exposed to user manipulation
-:11: WARNING:REPEATED_WORD: Possible repeated word: 'of'
#11: 
control of the kernel, as there's no risk of of concurrent access

total: 0 errors, 1 warnings, 0 checks, 9 lines checked
93a8fff3630a drm/i915/gt: Serialize GRDOM access between multiple engine resets
-:111: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Chris Wilson <chris.p.wilson@intel.com>' != 'Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>'

total: 0 errors, 1 warnings, 0 checks, 77 lines checked
8c4f0ef22248 drm/i915/gt: Serialize TLB invalidates with GT resets


