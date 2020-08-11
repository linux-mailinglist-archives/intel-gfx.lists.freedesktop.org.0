Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EAA224153E
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Aug 2020 05:30:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C97DD6E038;
	Tue, 11 Aug 2020 03:30:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 281736E02B;
 Tue, 11 Aug 2020 03:30:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 17273A47E9;
 Tue, 11 Aug 2020 03:30:47 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Tue, 11 Aug 2020 03:30:47 -0000
Message-ID: <159711664706.3768.9476692511405363203@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200808184511.2594286-1-matthew.d.roper@intel.com>
In-Reply-To: <20200808184511.2594286-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/kbl=3A_Fix_revision_ID_checks_=28rev2=29?=
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

Series: drm/i915/kbl: Fix revision ID checks (rev2)
URL   : https://patchwork.freedesktop.org/series/80419/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
2734daf22ac5 drm/i915/kbl: Fix revision ID checks
-:143: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#143: FILE: drivers/gpu/drm/i915/i915_drv.h:1536:
+#define IS_KBL_GT_REVID(dev_priv, since, until) \
+	(IS_KABYLAKE(dev_priv) && \
+	 kbl_revids[INTEL_REVID(dev_priv)].gt_stepping >= since && \
+	 kbl_revids[INTEL_REVID(dev_priv)].gt_stepping <= until)

-:143: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'since' may be better as '(since)' to avoid precedence issues
#143: FILE: drivers/gpu/drm/i915/i915_drv.h:1536:
+#define IS_KBL_GT_REVID(dev_priv, since, until) \
+	(IS_KABYLAKE(dev_priv) && \
+	 kbl_revids[INTEL_REVID(dev_priv)].gt_stepping >= since && \
+	 kbl_revids[INTEL_REVID(dev_priv)].gt_stepping <= until)

-:143: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'until' may be better as '(until)' to avoid precedence issues
#143: FILE: drivers/gpu/drm/i915/i915_drv.h:1536:
+#define IS_KBL_GT_REVID(dev_priv, since, until) \
+	(IS_KABYLAKE(dev_priv) && \
+	 kbl_revids[INTEL_REVID(dev_priv)].gt_stepping >= since && \
+	 kbl_revids[INTEL_REVID(dev_priv)].gt_stepping <= until)

-:147: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#147: FILE: drivers/gpu/drm/i915/i915_drv.h:1540:
+#define IS_KBL_DISP_REVID(dev_priv, since, until) \
+	(IS_KABYLAKE(dev_priv) && \
+	 kbl_revids[INTEL_REVID(dev_priv)].disp_stepping >= since && \
+	 kbl_revids[INTEL_REVID(dev_priv)].disp_stepping <= until)

-:147: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'since' may be better as '(since)' to avoid precedence issues
#147: FILE: drivers/gpu/drm/i915/i915_drv.h:1540:
+#define IS_KBL_DISP_REVID(dev_priv, since, until) \
+	(IS_KABYLAKE(dev_priv) && \
+	 kbl_revids[INTEL_REVID(dev_priv)].disp_stepping >= since && \
+	 kbl_revids[INTEL_REVID(dev_priv)].disp_stepping <= until)

-:147: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'until' may be better as '(until)' to avoid precedence issues
#147: FILE: drivers/gpu/drm/i915/i915_drv.h:1540:
+#define IS_KBL_DISP_REVID(dev_priv, since, until) \
+	(IS_KABYLAKE(dev_priv) && \
+	 kbl_revids[INTEL_REVID(dev_priv)].disp_stepping >= since && \
+	 kbl_revids[INTEL_REVID(dev_priv)].disp_stepping <= until)

total: 0 errors, 0 warnings, 6 checks, 120 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
