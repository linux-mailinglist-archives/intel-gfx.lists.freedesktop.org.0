Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4C3CB1A393
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Aug 2025 15:39:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BA3110E535;
	Mon,  4 Aug 2025 13:39:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cLi9k9gQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C87C210E534;
 Mon,  4 Aug 2025 13:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754314746; x=1785850746;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fghbG/xaMn/RdKWOF7pWW3ndtqqt6zmapGY11YpJ4ic=;
 b=cLi9k9gQLVHv2IJia06LceoVDnIDCU/WRLknzCwuZeHMXlz3z6O3mvU0
 vPgU6VEK8UAFPifIU5bToMfX32FjEJ0sUUxDV4LtpqwRmFbhe+zHe/aVz
 blTMAUWCtJF0DB3t348kIyG+lMNHIOvMfr4gOCtyqj0R4qE5d0Cc9S/o7
 h+h2NEbF0caBthiEiq5HMJYheTwFYMVJdHHW/oCznq4ZRU1gSNHRJrTyG
 WVk33eiKyv0LmRiCpGUUvPXHPwhHl+qtOaauyPWoOCcN8wqjnbR2vOMth
 b1njKxOaN+IPOpId9vCvAkd6+USeyn+7WM3NvIW39WuQ5kD6qvevHmDL8 Q==;
X-CSE-ConnectionGUID: GWaK5weUTQis5DrXjFzgPA==
X-CSE-MsgGUID: NPldVuwAQY+I0nd8X/3LWQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="56447409"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="56447409"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 06:39:06 -0700
X-CSE-ConnectionGUID: q5g45yQKRbe2Gf3kWY6W2A==
X-CSE-MsgGUID: WX9OJpdcR1WHZRhINfEj9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="163430701"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 06:39:04 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 14/15] drm/i915/panel: Add helper to get highest fixed mode
Date: Mon,  4 Aug 2025 18:54:39 +0530
Message-ID: <20250804132441.990441-15-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250804132441.990441-1-ankit.k.nautiyal@intel.com>
References: <20250804132441.990441-1-ankit.k.nautiyal@intel.com>
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

Add intel_panel_highest_fixed_mode() to return the fixed mode with the
highest pixel clock. Unlike intel_panel_highest_mode(), this function
does not fall back to the adjusted mode and returns NULL if no fixed
modes are available.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_panel.c | 13 +++++++++++++
 drivers/gpu/drm/i915/display/intel_panel.h |  2 ++
 2 files changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 2a20aaaaac39..ea4351d11e63 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -158,6 +158,19 @@ intel_panel_highest_mode(struct intel_connector *connector,
 	return best_mode;
 }
 
+const struct drm_display_mode *
+intel_panel_highest_fixed_mode(struct intel_connector *connector)
+{
+	const struct drm_display_mode *fixed_mode, *highest_mode = NULL;
+
+	list_for_each_entry(fixed_mode, &connector->panel.fixed_modes, head) {
+		if (!highest_mode || fixed_mode->clock > highest_mode->clock)
+			highest_mode = fixed_mode;
+	}
+
+	return highest_mode;
+}
+
 int intel_panel_get_modes(struct intel_connector *connector)
 {
 	const struct drm_display_mode *fixed_mode;
diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm/i915/display/intel_panel.h
index 56a6412cf0fb..60f6873cdbaa 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.h
+++ b/drivers/gpu/drm/i915/display/intel_panel.h
@@ -39,6 +39,8 @@ intel_panel_downclock_mode(struct intel_connector *connector,
 const struct drm_display_mode *
 intel_panel_highest_mode(struct intel_connector *connector,
 			 const struct drm_display_mode *adjusted_mode);
+const struct drm_display_mode *
+intel_panel_highest_fixed_mode(struct intel_connector *connector);
 int intel_panel_get_modes(struct intel_connector *connector);
 enum drrs_type intel_panel_drrs_type(struct intel_connector *connector);
 enum drm_mode_status
-- 
2.45.2

