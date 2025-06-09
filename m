Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6685CAD20A9
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Jun 2025 16:11:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0110310E3E9;
	Mon,  9 Jun 2025 14:11:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EfEnLzQO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DF1D10E3E3;
 Mon,  9 Jun 2025 14:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749478314; x=1781014314;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=23ksbaS+3B75mpNpt8mwOHaUhgNXEkBXGh/v/EsxfsQ=;
 b=EfEnLzQO0uQklxo2UUDv8H+WOPZEYdPyaDSJPs0MOTuotyarQCOsN2L1
 2S5Z8PQMUL68Y5m3SuXoGkWCIlrxNFnE0caUUBNfmY5y1VvZX92qC94L4
 ATOc1QQwpVxYmI0x6aGm3jr5exPkmaj6MER/x/NcxEax2Vutleh2tKKEK
 rYoetY/1hjT6RNpJt/tiAqGqCmLw6mC9KoRkeYcY0ezOFJzdZSAqv6oD4
 LFqCcICKlaUWrmskPafWhNORoEW6zLgyJhb7vwU8X8FJEVSUN+beZVSC2
 rM4k4ltpYF0PcXxOynvExx6h2DWfI2qhg+yaCEo9/7/nifJndATtD/+1O w==;
X-CSE-ConnectionGUID: rLrWUNq/RP6CYpzXyWEy5Q==
X-CSE-MsgGUID: Ky5y4cZXTR2xOg2et7mIeQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11459"; a="55360897"
X-IronPort-AV: E=Sophos;i="6.16,222,1744095600"; d="scan'208";a="55360897"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 07:11:54 -0700
X-CSE-ConnectionGUID: mRmHng5OToG1qPyfy118cA==
X-CSE-MsgGUID: 1tXqniOmRxuWQDlbDcIR/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,222,1744095600"; d="scan'208";a="151765864"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.99])
 by orviesa005.jf.intel.com with SMTP; 09 Jun 2025 07:11:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 09 Jun 2025 17:11:50 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v4 19/21] drm/i915/flipq: Add intel_flipq_dump()
Date: Mon,  9 Jun 2025 17:10:44 +0300
Message-ID: <20250609141046.6244-20-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250609141046.6244-1-ville.syrjala@linux.intel.com>
References: <20250609141046.6244-1-ville.syrjala@linux.intel.com>
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
index 2b0fb1e78d7d..b16199d7f426 100644
--- a/drivers/gpu/drm/i915/display/intel_flipq.c
+++ b/drivers/gpu/drm/i915/display/intel_flipq.c
@@ -191,6 +191,52 @@ static void intel_flipq_sw_dmc_wake(struct intel_crtc *crtc)
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
 void intel_flipq_reset(struct intel_display *display, enum pipe pipe)
 {
 	struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
diff --git a/drivers/gpu/drm/i915/display/intel_flipq.h b/drivers/gpu/drm/i915/display/intel_flipq.h
index 2d4386a16197..012e3e9a6bcb 100644
--- a/drivers/gpu/drm/i915/display/intel_flipq.h
+++ b/drivers/gpu/drm/i915/display/intel_flipq.h
@@ -31,5 +31,7 @@ void intel_flipq_add(struct intel_crtc *crtc,
 int intel_flipq_exec_time_us(struct intel_display *display);
 void intel_flipq_wait_dmc_halt(struct intel_dsb *dsb, struct intel_crtc *crtc);
 void intel_flipq_unhalt_dmc(struct intel_dsb *dsb, struct intel_crtc *crtc);
+void intel_flipq_dump(struct intel_crtc *crtc,
+		      enum intel_flipq_id flip_queue_id);
 
 #endif /* __INTEL_FLIPQ_H__ */
-- 
2.49.0

