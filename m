Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CFD2ABFCD8
	for <lists+intel-gfx@lfdr.de>; Wed, 21 May 2025 20:29:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8020C10E7AB;
	Wed, 21 May 2025 18:18:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N5Wc7ZvC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D13F10E7C7;
 Wed, 21 May 2025 18:17:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747851447; x=1779387447;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=68KZy8DFwGld48b1nFk2seeXQjDu+yS086ooQ6s/xes=;
 b=N5Wc7ZvCgCzelZDdhmofL5y6aYhOVBJmRoJuhh0lwS03AA6vsMx86LMA
 OBhugY/go/kpTFLBG5D9nvCBLTwH1BKgofi/L2KjoH13V0SO0zJrElpv7
 ogWDOXg4vrDhoUVVMiFbWYCejFde35+D6y30pMVYb5Ifd8NYaqSRmCoDL
 HHNU31wgj9aXhOmh7Xyv8qjo17QVtiTVE8N6WU/vJL90zqjsElO4TTyMg
 RUnw1G4GxEz4KphvSAc1jONaG/XpCJOw/2tqchTetIghyuSv+jotXIZRN
 z7iG2hQOfcZ3M8gORzzLQ42XW/ofwrAmPkCjnGVKKswWKV8jPSCslWcei A==;
X-CSE-ConnectionGUID: Hmd9EmvvQRG45czJ65/l8Q==
X-CSE-MsgGUID: LHb6UMFcQSGUOMmNemg94Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11440"; a="75244779"
X-IronPort-AV: E=Sophos;i="6.15,304,1739865600"; d="scan'208";a="75244779"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 11:17:26 -0700
X-CSE-ConnectionGUID: sCeZ95yAR0u/jTW8FOLLow==
X-CSE-MsgGUID: PtrVAA2YTOeK681Kg5vjTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,304,1739865600"; d="scan'208";a="145322301"
Received: from oandoniu-mobl3.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.255])
 by orviesa005.jf.intel.com with SMTP; 21 May 2025 11:17:24 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 21 May 2025 21:17:23 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 12/13] drm/i915/flipq: Add intel_flipq_dump()
Date: Wed, 21 May 2025 21:16:44 +0300
Message-ID: <20250521181645.32737-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250521181645.32737-1-ville.syrjala@linux.intel.com>
References: <20250521181645.32737-1-ville.syrjala@linux.intel.com>
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
index 00667cf64924..e3ef0b989be4 100644
--- a/drivers/gpu/drm/i915/display/intel_flipq.c
+++ b/drivers/gpu/drm/i915/display/intel_flipq.c
@@ -163,6 +163,52 @@ static void intel_flipq_sw_dmc_wake(struct intel_crtc *crtc)
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
index 3a5e825884c3..ec8ade72ea47 100644
--- a/drivers/gpu/drm/i915/display/intel_flipq.h
+++ b/drivers/gpu/drm/i915/display/intel_flipq.h
@@ -30,5 +30,7 @@ void intel_flipq_add(struct intel_crtc *crtc,
 		     struct intel_dsb *dsb);
 void intel_flipq_wait_dmc_halt(struct intel_dsb *dsb, struct intel_crtc *crtc);
 void intel_flipq_unhalt_dmc(struct intel_dsb *dsb, struct intel_crtc *crtc);
+void intel_flipq_dump(struct intel_crtc *crtc,
+		      enum intel_flipq_id flip_queue_id);
 
 #endif /* __INTEL_FLIPQ_H__ */
-- 
2.49.0

