Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55861B1D6C5
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Aug 2025 13:33:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E346410E81F;
	Thu,  7 Aug 2025 11:33:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZkuHQmKw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61AEF10E81C;
 Thu,  7 Aug 2025 11:33:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754566387; x=1786102387;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fghbG/xaMn/RdKWOF7pWW3ndtqqt6zmapGY11YpJ4ic=;
 b=ZkuHQmKwkaCvRN0dyH3Q89Y22w6LTx2jK+aTyXoNr1yglgASd2Veiss6
 0Mq5g8T5H18pMEuTECq7Ux3C0iUuSvw1lvO/yI9Gm5Za9Urr+tAa4OIcL
 E2OLErV7KgE9Vk3nmyyJw5fsN4gQvZcTr1UJwHxbo8g23jj4I+1cfXKk5
 1JLQlNll7+duojUjgK1QYl3wD7FJlLh0Op3t7yLs6W6zSaJYwrOzISKBS
 Y1+Lozs4SIuIJNs+IfVBVCnGM5IFbfScaXavyhdheOiQE9LQyAKmnctNs
 1c87gHUhaAobDkpn9fbh0oqR4PDJByGdZeNOOfkNfIAsYewzMgcW/aDXn Q==;
X-CSE-ConnectionGUID: FCz/DrB0Qle3Ue16TCwwjg==
X-CSE-MsgGUID: 5wuvx9PPQ3iKvqGe1/zNrw==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="67167138"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="67167138"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 04:30:09 -0700
X-CSE-ConnectionGUID: jVA34TpQRvSzpSkVr1pzeg==
X-CSE-MsgGUID: MIe41ZFsT3GstJnMj7cedw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="188716767"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 04:30:08 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jani.nikula@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 11/12] drm/i915/panel: Add helper to get highest fixed mode
Date: Thu,  7 Aug 2025 16:45:47 +0530
Message-ID: <20250807111548.1490624-12-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250807111548.1490624-1-ankit.k.nautiyal@intel.com>
References: <20250807111548.1490624-1-ankit.k.nautiyal@intel.com>
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

