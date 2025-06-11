Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0A27AD5B1E
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jun 2025 17:52:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 398EB10E6C8;
	Wed, 11 Jun 2025 15:52:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QRzT+dqy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0464010E6C6;
 Wed, 11 Jun 2025 15:52:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749657175; x=1781193175;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YXQiqq8ZmbhWGOJKfLZYdV6LESOVwXy5rsigvlqYSGE=;
 b=QRzT+dqy4DdmTWHagRoNZGlYsr/DMVqZgacTg7YJ9DG2k5uKyur5Jxao
 QrqROenF+kR8Nqu7GfmQpTAs6Uxc95fwnQaIKOOnz6AYcWKE906v6YkZq
 LOqbonfd7Sn7dcH2AVvVv5xGnUYoHNklpveI6muU8QSLbne8CuoplEpXo
 ak5G3OiXJgYMr2eKgTvP/PJd/skGGRMfP8GcI9z6MNPOM+L9ipHRWbTZo
 bt5DFKg6JZ2Xc8AwzhtUPqWuK8QArpXZ+DlRw68GCpt5X5L3+WaU8ybNb
 qwmO84jc9im6Mpq7tvo87650MvkHpyx17Osz8PrYwwtU1gaq1EfuWc5ga Q==;
X-CSE-ConnectionGUID: Gv9X6VbrTVmX1qLv71GcKw==
X-CSE-MsgGUID: R9n/E5cgROmdtdNF9Y9/3A==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="62419110"
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="62419110"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 08:52:55 -0700
X-CSE-ConnectionGUID: UdkvdXwVQ7ukssCsBF2jqg==
X-CSE-MsgGUID: iBk9+X1lQH66rbEfCSKlYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="152507355"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.24])
 by orviesa005.jf.intel.com with SMTP; 11 Jun 2025 08:52:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 11 Jun 2025 18:52:51 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH 3/9] drm/i915/dmc: Shuffle code around
Date: Wed, 11 Jun 2025 18:52:35 +0300
Message-ID: <20250611155241.24191-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250611155241.24191-1-ville.syrjala@linux.intel.com>
References: <20250611155241.24191-1-ville.syrjala@linux.intel.com>
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

Shuffle the DMC_EVT_CTL related stuff around once more. We'll need
this stuff during intel_dmc_enable_pipe(), and this lets us avoid
forward declarations.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 144 +++++++++++------------
 1 file changed, 72 insertions(+), 72 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 6392fa928e08..5a43298cd0e7 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -505,42 +505,6 @@ static u32 pipedmc_interrupt_mask(struct intel_display *display)
 		PIPEDMC_ATS_FAULT;
 }
 
-void intel_dmc_enable_pipe(struct intel_display *display, enum pipe pipe)
-{
-	enum intel_dmc_id dmc_id = PIPE_TO_DMC_ID(pipe);
-
-	if (!is_valid_dmc_id(dmc_id) || !has_dmc_id_fw(display, dmc_id))
-		return;
-
-	if (DISPLAY_VER(display) >= 20) {
-		intel_de_write(display, PIPEDMC_INTERRUPT(pipe), pipedmc_interrupt_mask(display));
-		intel_de_write(display, PIPEDMC_INTERRUPT_MASK(pipe), ~pipedmc_interrupt_mask(display));
-	}
-
-	if (DISPLAY_VER(display) >= 14)
-		intel_de_rmw(display, MTL_PIPEDMC_CONTROL, 0, PIPEDMC_ENABLE_MTL(pipe));
-	else
-		intel_de_rmw(display, PIPEDMC_CONTROL(pipe), 0, PIPEDMC_ENABLE);
-}
-
-void intel_dmc_disable_pipe(struct intel_display *display, enum pipe pipe)
-{
-	enum intel_dmc_id dmc_id = PIPE_TO_DMC_ID(pipe);
-
-	if (!is_valid_dmc_id(dmc_id) || !has_dmc_id_fw(display, dmc_id))
-		return;
-
-	if (DISPLAY_VER(display) >= 14)
-		intel_de_rmw(display, MTL_PIPEDMC_CONTROL, PIPEDMC_ENABLE_MTL(pipe), 0);
-	else
-		intel_de_rmw(display, PIPEDMC_CONTROL(pipe), PIPEDMC_ENABLE, 0);
-
-	if (DISPLAY_VER(display) >= 20) {
-		intel_de_write(display, PIPEDMC_INTERRUPT_MASK(pipe), ~0);
-		intel_de_write(display, PIPEDMC_INTERRUPT(pipe), pipedmc_interrupt_mask(display));
-	}
-}
-
 static u32 dmc_evt_ctl_disable(void)
 {
 	return REG_FIELD_PREP(DMC_EVT_CTL_TYPE_MASK,
@@ -578,6 +542,78 @@ static bool is_event_handler(struct intel_display *display,
 		REG_FIELD_GET(DMC_EVT_CTL_EVENT_ID_MASK, data) == event_id;
 }
 
+static bool disable_dmc_evt(struct intel_display *display,
+			    enum intel_dmc_id dmc_id,
+			    i915_reg_t reg, u32 data)
+{
+	if (!is_dmc_evt_ctl_reg(display, dmc_id, reg))
+		return false;
+
+	/* keep all pipe DMC events disabled by default */
+	if (dmc_id != DMC_FW_MAIN)
+		return true;
+
+	/* also disable the flip queue event on the main DMC on TGL */
+	if (display->platform.tigerlake &&
+	    is_event_handler(display, dmc_id, MAINDMC_EVENT_CLK_MSEC, reg, data))
+		return true;
+
+	/* also disable the HRR event on the main DMC on TGL/ADLS */
+	if ((display->platform.tigerlake || display->platform.alderlake_s) &&
+	    is_event_handler(display, dmc_id, MAINDMC_EVENT_VBLANK_A, reg, data))
+		return true;
+
+	return false;
+}
+
+static u32 dmc_mmiodata(struct intel_display *display,
+			struct intel_dmc *dmc,
+			enum intel_dmc_id dmc_id, int i)
+{
+	if (disable_dmc_evt(display, dmc_id,
+			    dmc->dmc_info[dmc_id].mmioaddr[i],
+			    dmc->dmc_info[dmc_id].mmiodata[i]))
+		return dmc_evt_ctl_disable();
+	else
+		return dmc->dmc_info[dmc_id].mmiodata[i];
+}
+
+void intel_dmc_enable_pipe(struct intel_display *display, enum pipe pipe)
+{
+	enum intel_dmc_id dmc_id = PIPE_TO_DMC_ID(pipe);
+
+	if (!is_valid_dmc_id(dmc_id) || !has_dmc_id_fw(display, dmc_id))
+		return;
+
+	if (DISPLAY_VER(display) >= 20) {
+		intel_de_write(display, PIPEDMC_INTERRUPT(pipe), pipedmc_interrupt_mask(display));
+		intel_de_write(display, PIPEDMC_INTERRUPT_MASK(pipe), ~pipedmc_interrupt_mask(display));
+	}
+
+	if (DISPLAY_VER(display) >= 14)
+		intel_de_rmw(display, MTL_PIPEDMC_CONTROL, 0, PIPEDMC_ENABLE_MTL(pipe));
+	else
+		intel_de_rmw(display, PIPEDMC_CONTROL(pipe), 0, PIPEDMC_ENABLE);
+}
+
+void intel_dmc_disable_pipe(struct intel_display *display, enum pipe pipe)
+{
+	enum intel_dmc_id dmc_id = PIPE_TO_DMC_ID(pipe);
+
+	if (!is_valid_dmc_id(dmc_id) || !has_dmc_id_fw(display, dmc_id))
+		return;
+
+	if (DISPLAY_VER(display) >= 14)
+		intel_de_rmw(display, MTL_PIPEDMC_CONTROL, PIPEDMC_ENABLE_MTL(pipe), 0);
+	else
+		intel_de_rmw(display, PIPEDMC_CONTROL(pipe), PIPEDMC_ENABLE, 0);
+
+	if (DISPLAY_VER(display) >= 20) {
+		intel_de_write(display, PIPEDMC_INTERRUPT_MASK(pipe), ~0);
+		intel_de_write(display, PIPEDMC_INTERRUPT(pipe), pipedmc_interrupt_mask(display));
+	}
+}
+
 static void dmc_configure_event(struct intel_display *display,
 				enum intel_dmc_id dmc_id,
 				unsigned int event_id,
@@ -638,42 +674,6 @@ void intel_dmc_start_pkgc_exit_at_start_of_undelayed_vblank(struct intel_display
 	dmc_configure_event(display, dmc_id, PIPEDMC_EVENT_VBLANK, enable);
 }
 
-static bool disable_dmc_evt(struct intel_display *display,
-			    enum intel_dmc_id dmc_id,
-			    i915_reg_t reg, u32 data)
-{
-	if (!is_dmc_evt_ctl_reg(display, dmc_id, reg))
-		return false;
-
-	/* keep all pipe DMC events disabled by default */
-	if (dmc_id != DMC_FW_MAIN)
-		return true;
-
-	/* also disable the flip queue event on the main DMC on TGL */
-	if (display->platform.tigerlake &&
-	    is_event_handler(display, dmc_id, MAINDMC_EVENT_CLK_MSEC, reg, data))
-		return true;
-
-	/* also disable the HRR event on the main DMC on TGL/ADLS */
-	if ((display->platform.tigerlake || display->platform.alderlake_s) &&
-	    is_event_handler(display, dmc_id, MAINDMC_EVENT_VBLANK_A, reg, data))
-		return true;
-
-	return false;
-}
-
-static u32 dmc_mmiodata(struct intel_display *display,
-			struct intel_dmc *dmc,
-			enum intel_dmc_id dmc_id, int i)
-{
-	if (disable_dmc_evt(display, dmc_id,
-			    dmc->dmc_info[dmc_id].mmioaddr[i],
-			    dmc->dmc_info[dmc_id].mmiodata[i]))
-		return dmc_evt_ctl_disable();
-	else
-		return dmc->dmc_info[dmc_id].mmiodata[i];
-}
-
 /**
  * intel_dmc_load_program() - write the firmware from memory to register.
  * @display: display instance
-- 
2.49.0

