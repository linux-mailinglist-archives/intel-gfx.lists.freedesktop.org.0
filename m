Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DCF5536CBC
	for <lists+intel-gfx@lfdr.de>; Sat, 28 May 2022 13:59:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43C4F10E26D;
	Sat, 28 May 2022 11:59:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2E2AB10E26D;
 Sat, 28 May 2022 11:59:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 11DE1A0096;
 Sat, 28 May 2022 11:59:16 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Sat, 28 May 2022 11:59:16 -0000
Message-ID: <165373915603.24493.14084084832231518932@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220527163348.1936146-1-matthew.d.roper@intel.com>
In-Reply-To: <20220527163348.1936146-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_i915=3A_PVC_steppings_and_initial_workarounds?=
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

Series: i915: PVC steppings and initial workarounds
URL   : https://patchwork.freedesktop.org/series/104461/
State : warning

== Summary ==

Error: dim checkpatch failed
882c40092eea drm/i915/pvc: Extract stepping information from PCI revid
-:34: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#34: FILE: drivers/gpu/drm/i915/i915_drv.h:960:
+#define IS_BASEDIE_STEP(__i915, since, until) \
+	(drm_WARN_ON(&(__i915)->drm, INTEL_BASEDIE_STEP(__i915) == STEP_NONE), \
+	 INTEL_BASEDIE_STEP(__i915) >= (since) && INTEL_BASEDIE_STEP(__i915) < (until))

-:45: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#45: FILE: drivers/gpu/drm/i915/i915_drv.h:1216:
+#define IS_PVC_BD_STEP(__i915, since, until) \
+	(IS_PONTEVECCHIO(__i915) && \
+	 IS_BASEDIE_STEP(__i915, since, until))

-:49: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#49: FILE: drivers/gpu/drm/i915/i915_drv.h:1220:
+#define IS_PVC_CT_STEP(__i915, since, until) \
+	(IS_PONTEVECCHIO(__i915) && \
+	 IS_GRAPHICS_STEP(__i915, since, until))

total: 0 errors, 0 warnings, 3 checks, 137 lines checked
4a3ecbc78e66 drm/i915/pvc: Add initial PVC workarounds


