Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAFC963E678
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Dec 2022 01:27:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCB2210E13C;
	Thu,  1 Dec 2022 00:27:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EBCFA10E13C;
 Thu,  1 Dec 2022 00:27:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E45C3A0078;
 Thu,  1 Dec 2022 00:27:16 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Atwood" <matthew.s.atwood@intel.com>
Date: Thu, 01 Dec 2022 00:27:16 -0000
Message-ID: <166985443692.14637.754824058580582862@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221130231709.4870-1-matthew.s.atwood@intel.com>
In-Reply-To: <20221130231709.4870-1-matthew.s.atwood@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915/mtl=3A_Initial_disp?=
 =?utf-8?q?lay_workarounds?=
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

Series: series starting with [1/2] drm/i915/mtl: Initial display workarounds
URL   : https://patchwork.freedesktop.org/series/111507/
State : warning

== Summary ==

Error: dim checkpatch failed
8c18d75df531 drm/i915/mtl: Initial display workarounds
-:122: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#122: FILE: drivers/gpu/drm/i915/i915_drv.h:730:
+#define IS_MTL_DISPLAY_STEP(__i915, since, until) \
+	(DISPLAY_VER(__i915) == 14 && \
+	 IS_DISPLAY_STEP(__i915, since, until))

total: 0 errors, 0 warnings, 1 checks, 89 lines checked
1f8e6e4fe341 drm/i915/mtl: Add initial gt workarounds
-:325: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#325: FILE: drivers/gpu/drm/i915/i915_drv.h:734:
+#define IS_MTL_GRAPHICS_STEP(__i915, variant, since, until) \
+	(IS_SUBPLATFORM(__i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_##variant) && \
+	 IS_GRAPHICS_STEP(__i915, since, until))

total: 0 errors, 0 warnings, 1 checks, 280 lines checked


