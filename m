Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B21AB9B2A
	for <lists+intel-gfx@lfdr.de>; Fri, 16 May 2025 13:34:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54EBE10EA66;
	Fri, 16 May 2025 11:34:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HOMP6AI/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90CE510EA66;
 Fri, 16 May 2025 11:34:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747395287; x=1778931287;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gCM/ZuOvEKtSnoe05STBlTOOcAQrsNbaGUx6zBWtY7Y=;
 b=HOMP6AI/vAMaBYm6n+/7icpT0mQfVJW6zZs9QY4X25wPtRDmw0on0cxy
 +Sii+FpxBEoX4xObnnoWm9wtFEnUFIP2GO1HvOj4BCGxrkevBGrdJbyAn
 AaAzvvAPfKM2+5VsN/3uWeAmWzhc/maJFPXqLsthaTYwmVaa1GDc7NGXq
 V7lDSFe6p0JU/C/3MwTxgtnpaLjrNyVQru1J7iBdocB+wZn2Pes3YXYNf
 5uRBQlrAtZR49JDNPIV44LLzqUM4adzJmetyOX6uWFBE8EB4Oz2RCX4/3
 xN6HyQ6luqAXo3syd2dam9owMeT/LCg9Z8HZRFaOnqa9qsrhXFdXAT1yG A==;
X-CSE-ConnectionGUID: sVlnAXGzSdO6eTZFvh7cXA==
X-CSE-MsgGUID: wylCWfaNSkymZpPKvbWRDQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11434"; a="49349839"
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="49349839"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 04:34:47 -0700
X-CSE-ConnectionGUID: AYUU8BoRRFOWgQuTCawAUQ==
X-CSE-MsgGUID: 3VGbSUkLTLKImYergFjddA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="143779615"
Received: from johunt-mobl9.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.161])
 by orviesa005.jf.intel.com with SMTP; 16 May 2025 04:34:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 16 May 2025 14:34:43 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 11/12] drm/i915/flipq: Add intel_flipq_dump()
Date: Fri, 16 May 2025 14:34:07 +0300
Message-ID: <20250516113408.11689-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250516113408.11689-1-ville.syrjala@linux.intel.com>
References: <20250516113408.11689-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Add a function for dumping the entries of a specific flip queue.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_flipq.c | 46 ++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_flipq.h |  2 +
 2 files changed, 48 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_flipq.c b/drivers/gpu/drm/i915/display/intel_flipq.c
index fdda8d71c182..82a7996e7005 100644
--- a/drivers/gpu/drm/i915/display/intel_flipq.c
+++ b/drivers/gpu/drm/i915/display/intel_flipq.c
@@ -147,6 +147,52 @@ static void intel_flipq_sw_dmc_wake(struct intel_crtc *crtc)
 	intel_de_write(display, PIPEDMC_FPQ_CTL1(crtc->pipe), PIPEDMC_SW_DMC_WAKE);
 }
 
+void intel_flipq_dump(struct intel_crtc *crtc,
+		      enum intel_flipq_id flipq_id)
+{
+	struct intel_display *display = to_intel_display(crtc);
+	struct intel_flipq *flipq = &crtc->flipq[flipq_id];
+	u32 tmp;
+
+	drm_dbg_kms(display->drm,
+		    "[CRTC:%d:%s] FQ %d @ 0x%x: ",
+		    crtc->base.base.id, crtc->base.name, flipq_id,
+		    flipq->start_mmioaddr);
+	for (int i = 0 ; i < intel_flipq_size_dw(flipq_id); i++) {
+		printk(KERN_CONT " 0x%08x",
+		       intel_de_read(display, PIPEDMC_FQ_RAM(flipq->start_mmioaddr, i)));
+		if (i % intel_flipq_elem_size_dw(flipq_id) == intel_flipq_elem_size_dw(flipq_id) - 1)
+			printk(KERN_CONT "\n");
+	}
+
+	drm_dbg_kms(display->drm,
+		    "[CRTC:%d:%s] FQ %d: chp=0x%x, hp=0x%x\n",
+		    crtc->base.base.id, crtc->base.name, flipq_id,
+		    intel_de_read(display, PIPEDMC_FPQ_CHP(crtc->pipe, flipq_id)),
+		    intel_de_read(display, PIPEDMC_FPQ_HP(crtc->pipe, flipq_id)));
+
+	drm_dbg_kms(display->drm,
+		    "[CRTC:%d:%s] FQ %d: current head %d\n",
+		    crtc->base.base.id, crtc->base.name, flipq_id,
+		    intel_flipq_current_head(crtc, flipq_id));
+
+	drm_dbg_kms(display->drm,
+		    "[CRTC:%d:%s] flip queue timestamp: 0x%x\n",
+		    crtc->base.base.id, crtc->base.name,
+		    intel_de_read(display, PIPEDMC_FPQ_TS(crtc->pipe)));
+
+	tmp = intel_de_read(display, PIPEDMC_FPQ_ATOMIC_TP(crtc->pipe));
+
+	drm_dbg_kms(display->drm,
+		    "[CRTC:%d:%s] flip queue atomic tails: P3 %d, P2 %d, P1 %d, G %d, F %d\n",
+		    crtc->base.base.id, crtc->base.name,
+		    REG_FIELD_GET(PIPEDMC_FPQ_PLANEQ_3_TP_MASK, tmp),
+		    REG_FIELD_GET(PIPEDMC_FPQ_PLANEQ_2_TP_MASK, tmp),
+		    REG_FIELD_GET(PIPEDMC_FPQ_PLANEQ_1_TP_MASK, tmp),
+		    REG_FIELD_GET(PIPEDMC_FPQ_GENERALQ_TP_MASK, tmp),
+		    REG_FIELD_GET(PIPEDMC_FPQ_FASTQ_TP_MASK, tmp));
+}
+
 static int cdclk_factor(struct intel_display *display)
 {
 	if (DISPLAY_VER(display) >= 30)
diff --git a/drivers/gpu/drm/i915/display/intel_flipq.h b/drivers/gpu/drm/i915/display/intel_flipq.h
index 8483c93ecdb3..0179719df8a3 100644
--- a/drivers/gpu/drm/i915/display/intel_flipq.h
+++ b/drivers/gpu/drm/i915/display/intel_flipq.h
@@ -27,6 +27,8 @@ void intel_flipq_add(struct intel_crtc *crtc,
 		     unsigned int pts,
 		     enum intel_dsb_id dsb_id,
 		     struct intel_dsb *dsb);
+void intel_flipq_dump(struct intel_crtc *crtc,
+		      enum intel_flipq_id flip_queue_id);
 void intel_flipq_wait_dmc_halt(struct intel_dsb *dsb);
 void intel_flipq_unhalt_dmc(struct intel_dsb *dsb, struct intel_crtc *crtc);
 
-- 
2.49.0

