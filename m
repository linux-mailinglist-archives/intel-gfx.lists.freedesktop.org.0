Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D66CB1B503
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 15:34:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94AFA10E695;
	Tue,  5 Aug 2025 13:34:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Fq0W9S+x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E400610E475;
 Tue,  5 Aug 2025 13:34:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754400878; x=1785936878;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fghbG/xaMn/RdKWOF7pWW3ndtqqt6zmapGY11YpJ4ic=;
 b=Fq0W9S+xIYd5koSCW/D8emsd4mW4ygjf6/6DPjti9UtGDapHNBJXYhY9
 CUd+zWCYzsAdhpWFgQtQfWfMDWE9xJyXCQkOz0CI14muswruD1k5Szo2v
 lxEg5iokFOxMOS+39XcsUSlu0+qR2j1tHVCTUAFmJMLmxLFwF9F1v7ofI
 tLaVfnohzeMie1zeCGuN8DA4S6Ef0nYKDGEfLKtfprSIVbou5XkNIt60k
 HXKTqsoPCLrGQ0x++p5lH+SMfkpt/Ol9bcy9mNxypgxT23Iypv5zTexaE
 7ImOjr1ixir+qFOpxAdaqBFKXwzKdZcdwnCn2xpQZnj36joKtA11+Nz6V g==;
X-CSE-ConnectionGUID: eex6+coZS5imejlSXYPW7w==
X-CSE-MsgGUID: 870XSO7mR+K/hU6NqmI6Yg==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="67768968"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="67768968"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 06:34:37 -0700
X-CSE-ConnectionGUID: Qw+IFrMHRMSIFe8Oai+QhQ==
X-CSE-MsgGUID: cYvmORK7SMyVzQWiIo0fFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="164915468"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 06:34:35 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 12/13] drm/i915/panel: Add helper to get highest fixed mode
Date: Tue,  5 Aug 2025 18:50:15 +0530
Message-ID: <20250805132016.1250202-13-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250805132016.1250202-1-ankit.k.nautiyal@intel.com>
References: <20250805132016.1250202-1-ankit.k.nautiyal@intel.com>
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

