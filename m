Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9FCBAB34FE
	for <lists+intel-gfx@lfdr.de>; Mon, 12 May 2025 12:34:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A3BB10E39E;
	Mon, 12 May 2025 10:34:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bouBOZbn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CA3210E395;
 Mon, 12 May 2025 10:34:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747046063; x=1778582063;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DxWVWT3GHm7cjIycxeok6ibwOPkNrYTWsuY5RT8oYD4=;
 b=bouBOZbnGYOwNEGRZYyVsFPgmPWK+7bI09gjVNq1nHzSD6Laz+CR3WW8
 0qf7IFkrP2Ekk6NNAZQK+5/pD7DPN60zbnqlHm0kwnVdGoLxbyUkR0Euo
 7kGV8rjgvseasn5wh275XJBKJEC+C11ki8fQHR4ZZMNdaRjHpDgG0Tw+o
 teFmO075PXhnB+OaLXOa2UoypZCpqXzUfTjma3ExKnPAzQT/xpMkgCvkY
 GP/9hFnR30R0rZHoDgFtbkF1vL5o1FKF2gTKJCFVe128HyiN9WmEFG+jn
 INdsB9Zy1ESIKKt3qwNBjKxatU8a8A259INmYQ1jDo+IwRoI5LnXVYsAZ g==;
X-CSE-ConnectionGUID: xnWu+XRMRoSHbnxf0YyVMw==
X-CSE-MsgGUID: 8HOjPNrkRcCRUVAYoOaL+g==
X-IronPort-AV: E=McAfee;i="6700,10204,11430"; a="59467407"
X-IronPort-AV: E=Sophos;i="6.15,282,1739865600"; d="scan'208";a="59467407"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 03:34:23 -0700
X-CSE-ConnectionGUID: 46V/dXL4RWWl3HT366ofXQ==
X-CSE-MsgGUID: SNQ+FQFsSvWuNtQSA2gV6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,282,1739865600"; d="scan'208";a="142439958"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.195])
 by orviesa005.jf.intel.com with SMTP; 12 May 2025 03:34:22 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 12 May 2025 13:34:20 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 7/7] drm/i915/dmc: Introduce dmc_configure_event()
Date: Mon, 12 May 2025 13:33:58 +0300
Message-ID: <20250512103358.15724-8-ville.syrjala@linux.intel.com>
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

Instead of hardcoding the event handler indices (for runtime
event handler enable/disable) we can simply look for the handler
with the appropriate event type. This isolates us from the firmware
details a bit better.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c      | 39 +++++++++++++------
 drivers/gpu/drm/i915/display/intel_dmc_regs.h |  6 ---
 2 files changed, 27 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index d758032d1af6..f42880f00aab 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -573,6 +573,31 @@ static bool is_event_handler(struct intel_display *display,
 		REG_FIELD_GET(DMC_EVT_CTL_EVENT_ID_MASK, data) == event_id;
 }
 
+static void dmc_configure_event(struct intel_display *display,
+				enum intel_dmc_id dmc_id,
+				unsigned int event_id,
+				bool enable)
+{
+	struct intel_dmc *dmc = display_to_dmc(display);
+	int num_handlers = 0;
+	int i;
+
+	for (i = 0; i < dmc->dmc_info[dmc_id].mmio_count; i++) {
+		i915_reg_t reg = dmc->dmc_info[dmc_id].mmioaddr[i];
+		u32 data = dmc->dmc_info[dmc_id].mmiodata[i];
+
+		if (!is_event_handler(display, dmc_id, event_id, reg, data))
+			continue;
+
+		intel_de_write(display, reg, enable ? data : dmc_evt_ctl_disable());
+		num_handlers++;
+	}
+
+	drm_WARN_ONCE(display->drm, num_handlers != 1,
+		      "DMC %d has %d handlers for event 0x%x\n",
+		      dmc_id, num_handlers, event_id);
+}
+
 /**
  * intel_dmc_block_pkgc() - block PKG C-state
  * @display: display instance
@@ -603,19 +628,9 @@ void intel_dmc_block_pkgc(struct intel_display *display, enum pipe pipe,
 void intel_dmc_start_pkgc_exit_at_start_of_undelayed_vblank(struct intel_display *display,
 							    enum pipe pipe, bool enable)
 {
-	u32 val;
+	enum intel_dmc_id dmc_id = PIPE_TO_DMC_ID(pipe);
 
-	if (enable)
-		val = DMC_EVT_CTL_ENABLE | DMC_EVT_CTL_RECURRING |
-			REG_FIELD_PREP(DMC_EVT_CTL_TYPE_MASK,
-				       DMC_EVT_CTL_TYPE_EDGE_0_1) |
-			REG_FIELD_PREP(DMC_EVT_CTL_EVENT_ID_MASK,
-				       PIPEDMC_EVENT_VBLANK);
-	else
-		val = dmc_evt_ctl_disable();
-
-	intel_de_write(display, MTL_PIPEDMC_EVT_CTL_4(pipe),
-		       val);
+	dmc_configure_event(display, dmc_id, PIPEDMC_EVENT_VBLANK, enable);
 }
 
 static bool disable_dmc_evt(struct intel_display *display,
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
index edd4e69319b9..d8e715677454 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
@@ -287,12 +287,6 @@ enum pipedmc_event_id {
 #define MTL_PIPEDMC_CONTROL		_MMIO(0x45250)
 #define  PIPEDMC_ENABLE_MTL(pipe)	REG_BIT(((pipe) - PIPE_A) * 4)
 
-#define _MTL_PIPEDMC_EVT_CTL_4_A	0x5f044
-#define _MTL_PIPEDMC_EVT_CTL_4_B	0x5f444
-#define MTL_PIPEDMC_EVT_CTL_4(pipe)	_MMIO_PIPE(pipe,		\
-						   _MTL_PIPEDMC_EVT_CTL_4_A, \
-						   _MTL_PIPEDMC_EVT_CTL_4_B)
-
 #define _PIPEDMC_STATUS_A		0x5f06c
 #define _PIPEDMC_STATUS_B		0x5f46c
 #define PIPEDMC_STATUS(pipe)		_MMIO_PIPE((pipe), _PIPEDMC_STATUS_A, _PIPEDMC_STATUS_B)
-- 
2.49.0

