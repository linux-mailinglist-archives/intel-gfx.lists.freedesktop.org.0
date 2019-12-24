Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F27FE129C5D
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Dec 2019 02:20:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E3CC89E57;
	Tue, 24 Dec 2019 01:20:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 890FD89F69
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Dec 2019 01:20:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Dec 2019 17:20:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,349,1571727600"; d="scan'208";a="367202547"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by orsmga004.jf.intel.com with ESMTP; 23 Dec 2019 17:20:37 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Dec 2019 17:20:24 -0800
Message-Id: <20191224012026.3157766-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191224012026.3157766-1-matthew.d.roper@intel.com>
References: <20191224012026.3157766-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Extend WaDisableDARBFClkGating to
 icl, ehl, tgl
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

WaDisableDARBFClkGating, now known as Wa_14010480278, has been added to
the workaround tables for ICL, EHL, and TGL so we need to extend our
platform test accordingly.

Bspec: 33450
Bspec: 33451
Bspec: 52890
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Matt Atwood <matthew.s.atwood@intel.com>
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1860da0a493e..0944b56c8f04 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -17827,8 +17827,11 @@ get_encoder_power_domains(struct drm_i915_private *dev_priv)
 
 static void intel_early_display_was(struct drm_i915_private *dev_priv)
 {
-	/* Display WA #1185 WaDisableDARBFClkGating:cnl,glk */
-	if (IS_CANNONLAKE(dev_priv) || IS_GEMINILAKE(dev_priv))
+	/*
+	 * Display WA #1185 WaDisableDARBFClkGating:cnl,glk,icl,ehl,tgl
+	 * Also known as Wa_14010480278.
+	 */
+	if (IS_GEN_RANGE(dev_priv, 10, 12) || IS_GEMINILAKE(dev_priv))
 		I915_WRITE(GEN9_CLKGATE_DIS_0, I915_READ(GEN9_CLKGATE_DIS_0) |
 			   DARBF_GATING_DIS);
 
-- 
2.23.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
