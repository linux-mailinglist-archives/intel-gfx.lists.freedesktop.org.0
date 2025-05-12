Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 210DDAB34FC
	for <lists+intel-gfx@lfdr.de>; Mon, 12 May 2025 12:34:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A975B10E362;
	Mon, 12 May 2025 10:34:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HiRsjU31";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 527BF10E091;
 Mon, 12 May 2025 10:34:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747046057; x=1778582057;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=X3hfzcI6PX6d+BGsqFs9e4NYOGVR7vwlZu8nuJb03AE=;
 b=HiRsjU31QYkpw1Xh1yZw0hdncKjKKbfsXqOZZDwftmHWtF544R4BHQIf
 IM7J+a78DNAyzxAO5jQPvOpIzGk9+QbKkZafMuFUGLn5p/n+VHSt5pSkQ
 MJAiRtqd6UoDatpCiBPRbVp78Kn1Mshe7tZmOqnRy8FRrssyAckKs18GS
 fVVf+P8uoy8WRVhJtqSdH6nm9Y3c5IrEd+T3BW1fyq7AF8R/Nxl4Wttvi
 mb5fjXnxgPdHKuGPKtNboq9rszqPQgxpJbUGV4sVGdumbGYLu1Mau9khR
 xWyGCqpFs6sAup18ebA1fFztLesskRWW0hzvL5CyiKA0Gd7/YKkjgcOMI g==;
X-CSE-ConnectionGUID: ettJZvwQSAesFx0rTyVGTg==
X-CSE-MsgGUID: qnYBRWNaQ9mdWYkZCQi5eA==
X-IronPort-AV: E=McAfee;i="6700,10204,11430"; a="59467381"
X-IronPort-AV: E=Sophos;i="6.15,282,1739865600"; d="scan'208";a="59467381"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 03:34:17 -0700
X-CSE-ConnectionGUID: rfeA+BeSTtupD1AeUxIhuA==
X-CSE-MsgGUID: ZGpiAfvwQqe1BLqWD44IUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,282,1739865600"; d="scan'208";a="142439956"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.195])
 by orviesa005.jf.intel.com with SMTP; 12 May 2025 03:34:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 12 May 2025 13:34:14 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 5/7] drm/o915/dmc: Relocate is_dmc_evt_{ctl,htp}_reg()
Date: Mon, 12 May 2025 13:33:56 +0300
Message-ID: <20250512103358.15724-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250512103358.15724-1-ville.syrjala@linux.intel.com>
References: <20250512103358.15724-1-ville.syrjala@linux.intel.com>
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

Move is_dmc_evt_ctl_reg() to a slightly earlier position in the file
so that we can reuse it in the pkgc workaround code. Also move
is_dmc_evt_htp_reg() just to keep the two together.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 40 ++++++++++++------------
 1 file changed, 20 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index ec940f837427..238f3cda400c 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -544,6 +544,26 @@ static u32 dmc_evt_ctl_disable(void)
 			       DMC_EVENT_FALSE);
 }
 
+static bool is_dmc_evt_ctl_reg(struct intel_display *display,
+			       enum intel_dmc_id dmc_id, i915_reg_t reg)
+{
+	u32 offset = i915_mmio_reg_offset(reg);
+	u32 start = i915_mmio_reg_offset(DMC_EVT_CTL(display, dmc_id, 0));
+	u32 end = i915_mmio_reg_offset(DMC_EVT_CTL(display, dmc_id, DMC_EVENT_HANDLER_COUNT_GEN12));
+
+	return offset >= start && offset < end;
+}
+
+static bool is_dmc_evt_htp_reg(struct intel_display *display,
+			       enum intel_dmc_id dmc_id, i915_reg_t reg)
+{
+	u32 offset = i915_mmio_reg_offset(reg);
+	u32 start = i915_mmio_reg_offset(DMC_EVT_HTP(display, dmc_id, 0));
+	u32 end = i915_mmio_reg_offset(DMC_EVT_HTP(display, dmc_id, DMC_EVENT_HANDLER_COUNT_GEN12));
+
+	return offset >= start && offset < end;
+}
+
 /**
  * intel_dmc_block_pkgc() - block PKG C-state
  * @display: display instance
@@ -589,26 +609,6 @@ void intel_dmc_start_pkgc_exit_at_start_of_undelayed_vblank(struct intel_display
 		       val);
 }
 
-static bool is_dmc_evt_ctl_reg(struct intel_display *display,
-			       enum intel_dmc_id dmc_id, i915_reg_t reg)
-{
-	u32 offset = i915_mmio_reg_offset(reg);
-	u32 start = i915_mmio_reg_offset(DMC_EVT_CTL(display, dmc_id, 0));
-	u32 end = i915_mmio_reg_offset(DMC_EVT_CTL(display, dmc_id, DMC_EVENT_HANDLER_COUNT_GEN12));
-
-	return offset >= start && offset < end;
-}
-
-static bool is_dmc_evt_htp_reg(struct intel_display *display,
-			       enum intel_dmc_id dmc_id, i915_reg_t reg)
-{
-	u32 offset = i915_mmio_reg_offset(reg);
-	u32 start = i915_mmio_reg_offset(DMC_EVT_HTP(display, dmc_id, 0));
-	u32 end = i915_mmio_reg_offset(DMC_EVT_HTP(display, dmc_id, DMC_EVENT_HANDLER_COUNT_GEN12));
-
-	return offset >= start && offset < end;
-}
-
 static bool disable_dmc_evt(struct intel_display *display,
 			    enum intel_dmc_id dmc_id,
 			    i915_reg_t reg, u32 data)
-- 
2.49.0

