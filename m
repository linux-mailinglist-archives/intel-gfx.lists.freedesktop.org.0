Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F7CC92865E
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2024 12:06:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C31610EA0B;
	Fri,  5 Jul 2024 10:06:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mJg03cc3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C8A110EA0B
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jul 2024 10:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720173958; x=1751709958;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fB8N+BkkVHg8PJBX/L/DIx5EUnHths0aj6XUIlT3SdQ=;
 b=mJg03cc32xjjm+TIgmuenl609gFkfMj0EOR0Pfx6GkdNHRbJFFJ0DHUu
 tR+r6skK/L5aaiRBhT03lwZEBg2E0usZVVnwoRlZaAjgtgTAihug5Dq6A
 YB8bnlaFYBXRBvlX+qkciwic71Mzte9xNaC4s8+u1IBO3BfzA7gZnsTwR
 tpl2VLeGveLJNlhrqtOX84hAJ/ze5lpg5d90+4a4K7IGHTYC+IBi2HsMh
 LMHVpHakPJ3L4tT733CPYRxMOGKsnUs8NjPX82FoyPp/W469cnf1t2ELi
 OO0lV3Ne7idUhkyvMa0A66C2vxr8qX1Q6q2EXnHFwLYTLzSX9JxJB5CKW A==;
X-CSE-ConnectionGUID: 76cW9ILqSh+u/fT+n7JyIA==
X-CSE-MsgGUID: UEmtkCQdQ1iFRtpzc4BV9Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11123"; a="21275205"
X-IronPort-AV: E=Sophos;i="6.09,184,1716274800"; d="scan'208";a="21275205"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2024 03:05:57 -0700
X-CSE-ConnectionGUID: shZ9FpCVQ0WpWUeB56jLZQ==
X-CSE-MsgGUID: MI4LGlUoSzm+rcUB0emF2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,184,1716274800"; d="scan'208";a="46839214"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmviesa009.fm.intel.com with ESMTP; 05 Jul 2024 03:05:56 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH 4/5] drm/i915/histogram: histogram delay counter doesnt reset
Date: Fri,  5 Jul 2024 15:25:50 +0530
Message-Id: <20240705095551.1244154-5-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240705095551.1244154-1-arun.r.murthy@intel.com>
References: <20240705095551.1244154-1-arun.r.murthy@intel.com>
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
index 740019fdf0df..61a8cd623f19 100644
--- a/drivers/gpu/drm/i915/display/intel_histogram.c
+++ b/drivers/gpu/drm/i915/display/intel_histogram.c
@@ -22,6 +22,11 @@ static void intel_histogram_handle_int_work(struct work_struct *work)
 	u32 dpstbin;
 	int i, try = 0;
 
+	/* Wa: 14014889975 */
+	if (IS_DISPLAY_VER(i915, 12, 13))
+		intel_de_rmw(i915, DPST_CTL(histogram->pipe),
+			     DPST_CTL_RESTORE, 0);
+
 	/*
 	 * TODO: PSR to be exited while reading the Histogram data
 	 * Set DPST_CTL Bin Reg function select to TC
@@ -59,6 +64,12 @@ static void intel_histogram_handle_int_work(struct work_struct *work)
 			       histogram_event))
 		drm_err(&i915->drm, "sending HISTOGRAM event failed\n");
 
+	/* Wa: 14014889975 */
+	if (IS_DISPLAY_VER(i915, 12, 13))
+		/* Write the value read from DPST_CTL to DPST_CTL.Interrupt Delay Counter(bit 23:16) */
+		intel_de_write(i915, DPST_CTL(histogram->pipe), intel_de_read(i915,
+			       DPST_CTL(histogram->pipe)) | DPST_CTL_RESTORE);
+
 	/* Enable histogram interrupt */
 	intel_de_rmw(i915, DPST_GUARD(histogram->pipe), DPST_GUARD_HIST_INT_EN,
 		     DPST_GUARD_HIST_INT_EN);
@@ -127,6 +138,12 @@ static int intel_histogram_enable(struct intel_crtc *intel_crtc)
 	/* Pipe Dithering should be enabled with GLOBAL_HIST */
 	intel_histogram_enable_dithering(i915, pipe);
 
+	/* Wa: 14014889975 */
+	if (IS_DISPLAY_VER(i915, 12, 13))
+		/* Write the value read from DPST_CTL to DPST_CTL.Interrupt Delay Counter(bit 23:16) */
+		intel_de_write(i915, DPST_CTL(histogram->pipe), intel_de_read(i915,
+			       DPST_CTL(histogram->pipe)) | DPST_CTL_RESTORE);
+
 	/*
 	 * enable DPST_CTL Histogram mode
 	 * Clear DPST_CTL Bin Reg function select to TC
diff --git a/drivers/gpu/drm/i915/display/intel_histogram.h b/drivers/gpu/drm/i915/display/intel_histogram.h
index f07683dde005..88942564fdc0 100644
--- a/drivers/gpu/drm/i915/display/intel_histogram.h
+++ b/drivers/gpu/drm/i915/display/intel_histogram.h
@@ -19,6 +19,7 @@
 #define DPST_CTL_RESTORE				REG_BIT(28)
 #define DPST_CTL_IE_MODI_TABLE_EN			REG_BIT(27)
 #define DPST_CTL_HIST_MODE				REG_BIT(24)
+#define DPST_CTL_GUARDBAND_INTERRUPT_DELAY_CNT		REG_GENMASK(23, 16)
 #define DPST_CTL_ENHANCEMENT_MODE_MASK			REG_GENMASK(14, 13)
 #define DPST_CTL_EN_MULTIPLICATIVE			REG_FIELD_PREP(DPST_CTL_ENHANCEMENT_MODE_MASK, 2)
 #define DPST_CTL_IE_TABLE_VALUE_FORMAT			REG_BIT(15)
-- 
2.25.1

