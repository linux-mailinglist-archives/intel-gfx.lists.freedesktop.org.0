Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ECEEA87CD9
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Apr 2025 12:05:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3FF910E543;
	Mon, 14 Apr 2025 10:05:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VjiHohdU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF08210E537;
 Mon, 14 Apr 2025 10:05:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744625124; x=1776161124;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NinwxwNREHTW5asp9oPyLm3kmcrI0gXj0iEWOqiv8WE=;
 b=VjiHohdUT1GqXgJ0UCpNEJRr71Qho+3ABKqhK8PXlfI+YZifgs7blcEb
 XB0Bt0UC1Velvrrl5JD1okcY+HBTxcMmqAXG0zI4U1DA7oiDhfMumGcFE
 F7Thhk3HApivAv4QLyRGIqXObLqEFLYy2KRDW7B86iC/5mEDUM3V0xh3+
 aSvqQkolP44BVbNPk79trv4cDbQOUq8MB5eclr87bReC8TECnMjZ4Kdnl
 lY7UqmaD3OUJaOBVgQ1vyxUuNv6HnKmYCjWutX6BmK52iZUJxy26ITr6w
 X9+5EzMOXBCvRW2ePKhqY65+B4Ytc/YxCFVGv4hICtfpgHdhf0+zon/Ow A==;
X-CSE-ConnectionGUID: 2m9dBN6oQ6ylgtXMUIzKcg==
X-CSE-MsgGUID: 7FDDbQinQ1ixF1SFmbmALA==
X-IronPort-AV: E=McAfee;i="6700,10204,11402"; a="48789110"
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="48789110"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 03:05:23 -0700
X-CSE-ConnectionGUID: Uc42A94WQBSkxlUtcHGOlw==
X-CSE-MsgGUID: bG3V1aPkTRiF4xSeBScnZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="129743183"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.194])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 03:05:23 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 01/13] drm/i915/display: Add new interface for getting
 dc_state
Date: Mon, 14 Apr 2025 13:04:56 +0300
Message-ID: <20250414100508.1208774-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250414100508.1208774-1-jouni.hogander@intel.com>
References: <20250414100508.1208774-1-jouni.hogander@intel.com>
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
index c78315eb44fa..f11a4fb4b7f6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -323,6 +323,35 @@ void intel_display_power_set_target_dc_state(struct intel_display *display,
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

