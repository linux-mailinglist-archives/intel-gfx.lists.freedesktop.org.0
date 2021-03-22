Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9225A3452EE
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Mar 2021 00:20:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17B396E7FE;
	Mon, 22 Mar 2021 23:20:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CA7056E7FE;
 Mon, 22 Mar 2021 23:20:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B922BA363D;
 Mon, 22 Mar 2021 23:20:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Mon, 22 Mar 2021 23:20:13 -0000
Message-ID: <161645521372.19227.4892694577246141732@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210322204223.919936-1-imre.deak@intel.com>
In-Reply-To: <20210322204223.919936-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Fix_the_GT_fence_revocation_runtime_PM_logic?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: Fix the GT fence revocation runtime PM logic
URL   : https://patchwork.freedesktop.org/series/88300/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
85e423a9bccf drm/i915: Fix the GT fence revocation runtime PM logic
-:90: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'rpm' - possible side-effects?
#90: FILE: drivers/gpu/drm/i915/intel_runtime_pm.h:192:
+#define with_intel_runtime_pm_if_active(rpm, wf) \
+	for ((wf) = intel_runtime_pm_get_if_active(rpm); (wf); \
+	     intel_runtime_pm_put((rpm), (wf)), (wf) = 0)

-:90: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'wf' - possible side-effects?
#90: FILE: drivers/gpu/drm/i915/intel_runtime_pm.h:192:
+#define with_intel_runtime_pm_if_active(rpm, wf) \
+	for ((wf) = intel_runtime_pm_get_if_active(rpm); (wf); \
+	     intel_runtime_pm_put((rpm), (wf)), (wf) = 0)

total: 0 errors, 0 warnings, 2 checks, 58 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
