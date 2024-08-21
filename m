Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F19FB9597AD
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2024 12:33:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C2BC10E8CE;
	Wed, 21 Aug 2024 10:33:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jsB7+aHH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12F4C10E8CA
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2024 10:33:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724236422; x=1755772422;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LxLwM53Z5SSSXdbI1lAM8GT/jBN5p6wyk5ExyC2mau4=;
 b=jsB7+aHHm2Vp7pyWjrHAsaT3EUiPx6hYkTtvyTssEYHijvvJJ7lOmieE
 e8SYAKuvxbtEczSjIufmKEzDtA9wnp6tFIdetzUNBMED2Z94pvzyAJPId
 draxKCnYaEjfYjIL2J40KEDLpIpj6c7GKTL0E7IaecAhARsmrprvEYuWa
 Vtd+NcHWloKpCWoJ5wYnPrYji6ieUKKIB5EYm6HK9gxCFvI9o19DhcivJ
 wjaBqdYuSNbJShuRG73gncTNYfRi8rhqoKtShaw5J20XEfLoyRBAkAbKf
 AviNey4/BPIJ7aaEBj/bR4t/lz2TVlnEYNb3QX+Sp+xl2eG3HhJkbBpvy w==;
X-CSE-ConnectionGUID: jJDZ9Ye+S7GWbkjHRvQG6Q==
X-CSE-MsgGUID: SUiv39TcSbGtXY1N9PmbUQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11170"; a="33155460"
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="33155460"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2024 03:33:42 -0700
X-CSE-ConnectionGUID: 3kfIkeJUQ1ikjQvvB5EoZw==
X-CSE-MsgGUID: 87+naA7oRgWDCcq5mXGqsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="65740612"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmviesa004.fm.intel.com with ESMTP; 21 Aug 2024 03:33:39 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCHv2 4/5] drm/i915/histogram: histogram delay counter doesnt reset
Date: Wed, 21 Aug 2024 15:53:48 +0530
Message-Id: <20240821102349.3961986-5-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240821102349.3961986-1-arun.r.murthy@intel.com>
References: <20240821102349.3961986-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The delay counter for histogram does not reset and as a result the
histogram bin never gets updated. Woraround would be to use save and
restore histogram register.

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_histogram.c | 17 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_histogram.h |  1 +
 2 files changed, 18 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_histogram.c b/drivers/gpu/drm/i915/display/intel_histogram.c
index ad4f75607ccb..189f7ccd6df8 100644
--- a/drivers/gpu/drm/i915/display/intel_histogram.c
+++ b/drivers/gpu/drm/i915/display/intel_histogram.c
@@ -36,6 +36,11 @@ static void intel_histogram_handle_int_work(struct work_struct *work)
 	u32 dpstbin;
 	int i, try = 0;
 
+	/* Wa: 14014889975 */
+	if (IS_DISPLAY_VER(i915, 12, 13))
+		intel_de_rmw(i915, DPST_CTL(intel_crtc->pipe),
+			     DPST_CTL_RESTORE, 0);
+
 	/*
 	 * TODO: PSR to be exited while reading the Histogram data
 	 * Set DPST_CTL Bin Reg function select to TC
@@ -77,6 +82,12 @@ static void intel_histogram_handle_int_work(struct work_struct *work)
 			       histogram_event))
 		drm_err(&i915->drm, "sending HISTOGRAM event failed\n");
 
+	/* Wa: 14014889975 */
+	if (IS_DISPLAY_VER(i915, 12, 13))
+		/* Write the value read from DPST_CTL to DPST_CTL.Interrupt Delay Counter(bit 23:16) */
+		intel_de_write(i915, DPST_CTL(intel_crtc->pipe), intel_de_read(i915,
+			       DPST_CTL(intel_crtc->pipe)) | DPST_CTL_RESTORE);
+
 	/* Enable histogram interrupt */
 	intel_de_rmw(i915, DPST_GUARD(intel_crtc->pipe), DPST_GUARD_HIST_INT_EN,
 		     DPST_GUARD_HIST_INT_EN);
@@ -140,6 +151,12 @@ static int intel_histogram_enable(struct intel_crtc *intel_crtc)
 	/* Pipe Dithering should be enabled with GLOBAL_HIST */
 	intel_histogram_enable_dithering(i915, pipe);
 
+	/* Wa: 14014889975 */
+	if (IS_DISPLAY_VER(i915, 12, 13))
+		/* Write the value read from DPST_CTL to DPST_CTL.Interrupt Delay Counter(bit 23:16) */
+		intel_de_write(i915, DPST_CTL(intel_crtc->pipe), intel_de_read(i915,
+			       DPST_CTL(intel_crtc->pipe)) | DPST_CTL_RESTORE);
+
 	/*
 	 * enable DPST_CTL Histogram mode
 	 * Clear DPST_CTL Bin Reg function select to TC
diff --git a/drivers/gpu/drm/i915/display/intel_histogram.h b/drivers/gpu/drm/i915/display/intel_histogram.h
index f35ea76719d8..5e24d3c5c28b 100644
--- a/drivers/gpu/drm/i915/display/intel_histogram.h
+++ b/drivers/gpu/drm/i915/display/intel_histogram.h
@@ -20,6 +20,7 @@ enum pipe;
 #define DPST_CTL_RESTORE				REG_BIT(28)
 #define DPST_CTL_IE_MODI_TABLE_EN			REG_BIT(27)
 #define DPST_CTL_HIST_MODE				REG_BIT(24)
+#define DPST_CTL_GUARDBAND_INTERRUPT_DELAY_CNT		REG_GENMASK(23, 16)
 #define DPST_CTL_ENHANCEMENT_MODE_MASK			REG_GENMASK(14, 13)
 #define DPST_CTL_EN_MULTIPLICATIVE			REG_FIELD_PREP(DPST_CTL_ENHANCEMENT_MODE_MASK, 2)
 #define DPST_CTL_IE_TABLE_VALUE_FORMAT			REG_BIT(15)
-- 
2.25.1

