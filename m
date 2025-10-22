Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 625C5BFB4EC
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 12:07:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE90E10E735;
	Wed, 22 Oct 2025 10:07:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IqfeIGZN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E01B10E735;
 Wed, 22 Oct 2025 10:07:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761127655; x=1792663655;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zK8UP5y+s168C2vAQaBgs3TgPuj9qiWrQv+UX5qtkaE=;
 b=IqfeIGZNZVPYX6nTtM+J7cBxabYnOWYM5d5aF7OoqqjzxAX8yN9j3/W2
 HX4HNgLFhhlxp5qBgecaHO6ulLjT03TECb3hCvGghzGdKc2VwluaOGsWS
 fSxAt/F3rkAh8QbBeY5wmR5RBxBy8B0JheiBu1pofEZbFhio0+LthrmaQ
 FptzUAW6SDL+qqcoO9UWyCUgL5k808i0tOAYbFKUKMtlNIgqIpvh62esV
 qgwzBT2mdp5plrVU76zIs1WlmyA2b3uU5MFzZHEKPMeirSqm2StrVhOTm
 MY512uCM0R4Bi6LDJ/HE9nZcvSUno6xXmNIR3oCHX013VJULIaMSQH+Ew w==;
X-CSE-ConnectionGUID: bKvplaFPQsSejwFOORuQzA==
X-CSE-MsgGUID: Vn10NfrgTYe9w8VKUAK8eg==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="74614326"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="74614326"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 03:07:34 -0700
X-CSE-ConnectionGUID: YK1MpAWUTYOFzfYRRkN+Eg==
X-CSE-MsgGUID: oGdz3GzGRm2ZGZ2bpeoSzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="184317949"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.74])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 03:07:33 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Petr Vorel <pvorel@suse.cz>
Subject: [PATCH 3/3] drm/i915/dmc: Set DMC_EVT_CTL_ENABLE for disabled event
 handlers as well
Date: Wed, 22 Oct 2025 13:07:18 +0300
Message-ID: <20251022100718.24803-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251022100718.24803-1-ville.syrjala@linux.intel.com>
References: <20251022100718.24803-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

DMC_EVT_CTL_ENABLE cannot be cleared once set. So currently
any event we never enable will have DMC_EVT_CTL_ENABLE cleared,
whereas any event which has been enabled even once will have
DMC_EVT_CTL_ENABLE set. For that reason assert_dmc_loaded() has
a special case to ignore any mismatches in DMC_EVT_CTL_ENABLE.

Eliminate the special case by always configuring DMC_EVT_CTL_ENABLE
based on the original firmware event definition. Now all
event handlers will have DMC_EVT_CTL_ENABLE set, whether or
not the event has been enabled in the past.

All disabled event handlers will still have the event type set
to DMC_EVENT_FALSE so they will not actually trigger despite
DMC_EVT_CTL_ENABLE being set.

Tested-by: Petr Vorel <pvorel@suse.cz>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 02ef0a252220..5ba17e66d90b 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -513,10 +513,16 @@ static u32 pipedmc_interrupt_mask(struct intel_display *display)
 		PIPEDMC_ATS_FAULT;
 }
 
-static u32 dmc_evt_ctl_disable(void)
+static u32 dmc_evt_ctl_disable(u32 dmc_evt_ctl)
 {
-	return REG_FIELD_PREP(DMC_EVT_CTL_TYPE_MASK,
-			      DMC_EVT_CTL_TYPE_EDGE_0_1) |
+	/*
+	 * DMC_EVT_CTL_ENABLE cannot be cleared once set. Always
+	 * configure it based on the original event definition to
+	 * avoid mismatches in assert_dmc_loaded().
+	 */
+	return (dmc_evt_ctl & DMC_EVT_CTL_ENABLE) |
+		REG_FIELD_PREP(DMC_EVT_CTL_TYPE_MASK,
+			       DMC_EVT_CTL_TYPE_EDGE_0_1) |
 		REG_FIELD_PREP(DMC_EVT_CTL_EVENT_ID_MASK,
 			       DMC_EVENT_FALSE);
 }
@@ -626,7 +632,7 @@ static u32 dmc_mmiodata(struct intel_display *display,
 	if (disable_dmc_evt(display, dmc_id,
 			    dmc->dmc_info[dmc_id].mmioaddr[i],
 			    dmc->dmc_info[dmc_id].mmiodata[i]))
-		return dmc_evt_ctl_disable();
+		return dmc_evt_ctl_disable(dmc->dmc_info[dmc_id].mmiodata[i]);
 	else
 		return dmc->dmc_info[dmc_id].mmiodata[i];
 }
@@ -685,12 +691,6 @@ static void assert_dmc_loaded(struct intel_display *display,
 		found = intel_de_read(display, reg);
 		expected = dmc_mmiodata(display, dmc, dmc_id, i);
 
-		/* once set DMC_EVT_CTL_ENABLE can't be cleared :/ */
-		if (is_dmc_evt_ctl_reg(display, dmc_id, reg)) {
-			found &= ~DMC_EVT_CTL_ENABLE;
-			expected &= ~DMC_EVT_CTL_ENABLE;
-		}
-
 		drm_WARN(display->drm, found != expected,
 			 "DMC %d mmio[%d]/0x%x incorrect (expected 0x%x, current 0x%x)\n",
 			 dmc_id, i, i915_mmio_reg_offset(reg), expected, found);
@@ -843,7 +843,7 @@ static void dmc_configure_event(struct intel_display *display,
 		if (!is_event_handler(display, dmc_id, event_id, reg, data))
 			continue;
 
-		intel_de_write(display, reg, enable ? data : dmc_evt_ctl_disable());
+		intel_de_write(display, reg, enable ? data : dmc_evt_ctl_disable(data));
 		num_handlers++;
 	}
 
-- 
2.49.1

