Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5621FA565C7
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 11:52:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C38C810EB4C;
	Fri,  7 Mar 2025 10:52:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a9pU3lvN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B7C410EB42;
 Fri,  7 Mar 2025 10:52:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741344772; x=1772880772;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8waxI/5JIzWsk046EX6aOG4dJvetZPgN++69nSPy0bU=;
 b=a9pU3lvNjLv2qKqaU81TFnd9UNwKJOqaY01U5iqLCWM27BldSMQm8I69
 le5Iwh+Kx7LHlhb0LzU1l2o5HlmQxhhXELaOY4h/qocCTp8evIap6GF7R
 5CqwJib304Djx/DHcChFBjuRy4hrFqjFCM2QgjfXAWB99q6iCJ3Fjknkl
 q+PdhyZunru4CUpOnKCSxHc4K1d8Ci2gH8exy6FAW3KyyMLJR/HsrrFS+
 xKuFr2UoKTBS59aWl1FXlokEwKhWGWtdi+fNr7JCskaOz5q8QeLEU2S2n
 Dp5d6tuSsGh3NnHZS1ExfA39rP9Sswf/Nwu+GQtIP+kffXnoevxHq9UDl Q==;
X-CSE-ConnectionGUID: K9cB/OseQe+XlHPqItmc8g==
X-CSE-MsgGUID: 4Sa+n3aiRw+9BaVqvaCWPg==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="42301646"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="42301646"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 02:52:52 -0800
X-CSE-ConnectionGUID: +4Sc99ZjT+WuULAGFuo/kQ==
X-CSE-MsgGUID: wKu5r0N1R2OEapesZO1rTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="123481556"
Received: from mlehtone-mobl.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.100])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 02:52:48 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [RFC PATCH 01/11] drm/i915/display: Add new interface for getting
 dc_state
Date: Fri,  7 Mar 2025 12:52:27 +0200
Message-ID: <20250307105237.2909849-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250307105237.2909849-1-jouni.hogander@intel.com>
References: <20250307105237.2909849-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

To implement workaround for underrun on idle PSR HW issue (Wa_16025596647)
we need to have current configured DC state available. Add new interface
for this purpose.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../drm/i915/display/intel_display_power.c    | 29 +++++++++++++++++++
 .../drm/i915/display/intel_display_power.h    |  1 +
 2 files changed, 30 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index f7171e6932dc..6dfe85a5528f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -322,6 +322,35 @@ void intel_display_power_set_target_dc_state(struct intel_display *display,
 	mutex_unlock(&power_domains->lock);
 }
 
+/**
+ * intel_display_power_get_current_dc_state - Set target dc state.
+ * @display: display device
+ *
+ * This function set the "DC off" power well target_dc_state,
+ * based upon this target_dc_stste, "DC off" power well will
+ * enable desired DC state.
+ */
+u32 intel_display_power_get_current_dc_state(struct intel_display *display)
+{
+	struct i915_power_well *power_well;
+	struct i915_power_domains *power_domains = &display->power.domains;
+	u32 current_dc_state = DC_STATE_DISABLE;
+
+	mutex_lock(&power_domains->lock);
+	power_well = lookup_power_well(display, SKL_DISP_DC_OFF);
+
+	if (drm_WARN_ON(display->drm, !power_well))
+		goto unlock;
+
+	current_dc_state = intel_power_well_is_enabled(display, power_well) ?
+		DC_STATE_DISABLE : power_domains->target_dc_state;
+
+unlock:
+	mutex_unlock(&power_domains->lock);
+
+	return current_dc_state;
+}
+
 static void __async_put_domains_mask(struct i915_power_domains *power_domains,
 				     struct intel_power_domain_mask *mask)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 1b53d67f9b60..f8813b0e16df 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -183,6 +183,7 @@ void intel_display_power_suspend(struct intel_display *display);
 void intel_display_power_resume(struct intel_display *display);
 void intel_display_power_set_target_dc_state(struct intel_display *display,
 					     u32 state);
+u32 intel_display_power_get_current_dc_state(struct intel_display *display);
 
 bool intel_display_power_is_enabled(struct intel_display *display,
 				    enum intel_display_power_domain domain);
-- 
2.43.0

