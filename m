Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B41F1A64500
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Mar 2025 09:19:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA30E10E359;
	Mon, 17 Mar 2025 08:19:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BULeztNx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CF4E10E023;
 Mon, 17 Mar 2025 08:19:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742199558; x=1773735558;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=K82t/6Pbwlux40PvWz7hJIvAzAPgkkGeoPgRnM71C60=;
 b=BULeztNxzAznuuP6l+wojbxvS0PUgUZTSvlbkDqw4VrvIFmsRD69ulHK
 s3WzzCHqHlP+I7d7sCqvH8Qx4H2wM9lFgUUlHuQJaD7T93mnW3dmM6O94
 MNX44ZQCDIBZm06JsU5n71IxcS9Fqp5GSHI7xm0tKZ+W8BJ2OHnwCZdD/
 RJ/i86ls8ljlqTpLt+WGYyE8DLDo6CrknlwSlpGbtaDsDf7/A99Ijv6Ce
 RHFp/qu8pAbucWLWSMAoEIrG3iNr8v1Q5eaWNu6DrOvejL8l0BNVZZ1Xj
 8eiT7O9qDQa8MvANoR9HvyG1cKP52YHECHFJeDTJTupF5F2RFZUGfm6+/ A==;
X-CSE-ConnectionGUID: zbEzapfLTAGslwUdvoqBSw==
X-CSE-MsgGUID: tsGREJZbQZauq6BozRlEzg==
X-IronPort-AV: E=McAfee;i="6700,10204,11375"; a="54653487"
X-IronPort-AV: E=Sophos;i="6.14,253,1736841600"; d="scan'208";a="54653487"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2025 01:19:18 -0700
X-CSE-ConnectionGUID: 8KSAZZJpQ32pE4KvMtcgrQ==
X-CSE-MsgGUID: 6ddPyumkT5OJRlr7BXYCuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,253,1736841600"; d="scan'208";a="121677130"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.231])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2025 01:19:16 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 01/11] drm/i915/display: Add new interface for getting
 dc_state
Date: Mon, 17 Mar 2025 10:18:55 +0200
Message-ID: <20250317081905.3683654-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250317081905.3683654-1-jouni.hogander@intel.com>
References: <20250317081905.3683654-1-jouni.hogander@intel.com>
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
index f7171e6932dc3..6dfe85a5528fc 100644
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
index 1b53d67f9b60d..f8813b0e16dfb 100644
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

