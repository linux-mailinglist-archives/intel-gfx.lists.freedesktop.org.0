Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79559733C9A
	for <lists+intel-gfx@lfdr.de>; Sat, 17 Jun 2023 00:50:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE15D10E6A2;
	Fri, 16 Jun 2023 22:50:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A81C910E6A2
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Jun 2023 22:50:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686955848; x=1718491848;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UggedaA8vkBjR72z2ZVwNmKq7nJeM1t9UuFI/ZY9knI=;
 b=bAUbge1FOa5Ql4+BJBR23b2EEOTHyTIXh/Jf9eqJe6b/lfv3ukzEKJKc
 PBeK37dZNFLNjUV2Ih+/LHfM8bflSbcoccEBnnKzCd/JwdJAczaXkDhX2
 1yZYyJCXhoJH+IrKtlrmnWyBhp1Wi7T1R8i3JJGtM7wtpz27rqiCkKCfE
 rNCAJNwNvKp+VHrVvi55uCR25ob40Enx3iz2IV+5o8UtgeL8mV9+jsLGl
 S66F2bQFq8/Af1l3E9u23Rg0GMZHA9M6rEiOyQIX4mfMWcXF6yTJxliti
 SuwFyfUloYEWrKrRAye5WdMllHT+glfcrdM3Vohv3Yk0eSfPbdgGZOjMv g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10743"; a="356821172"
X-IronPort-AV: E=Sophos;i="6.00,248,1681196400"; d="scan'208";a="356821172"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2023 15:50:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10743"; a="783093553"
X-IronPort-AV: E=Sophos;i="6.00,248,1681196400"; d="scan'208";a="783093553"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.147])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2023 15:50:47 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Jun 2023 15:50:41 -0700
Message-Id: <20230616225041.3922719-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915: Extend Wa_14015795083 platforms
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This workaround was already implemented for DG2, PVC, and some steppings
of MTL, but the workaround database has now been updated to extend this
workaround to TGL, RKL, DG1, and ADL.

v2:
 - Skip readback verification for these extra gen12lp platforms.  On
   some of the platforms, the firmware locks this register, preventing
   the driver from making any modifications.  We should still try to
   apply the workaround, but if the register is locked and the value
   doesn't stick, that's semi-expected and not something we want to flag
   as a driver error on debug builds.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 4d2dece96011..4bb83c435a70 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1485,6 +1485,18 @@ gen12_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 
 	/* Wa_14011059788:tgl,rkl,adl-s,dg1,adl-p */
 	wa_mcr_write_or(wal, GEN10_DFR_RATIO_EN_AND_CHICKEN, DFR_DISABLE);
+
+	/*
+	 * Wa_14015795083
+	 *
+	 * Firmware on some gen12 platforms locks the MISCCPCTL register,
+	 * preventing i915 from modifying it for this workaround.  Skip the
+	 * readback verification for this workaround on debug builds; if the
+	 * workaround doesn't stick due to firmware behavior, it's not an error
+	 * that we want CI to flag.
+	 */
+	wa_add(wal, GEN7_MISCCPCTL, GEN12_DOP_CLOCK_GATE_RENDER_ENABLE,
+	       0, 0, false);
 }
 
 static void
-- 
2.40.1

