Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBD279B8B3D
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2024 07:27:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5508310E95C;
	Fri,  1 Nov 2024 06:27:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RuOskQwc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C20A10E95C;
 Fri,  1 Nov 2024 06:27:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730442477; x=1761978477;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Z+Kvj084WufoA7lREmuJ3OCf9oyi1v3ezi5jnfrW6LM=;
 b=RuOskQwcVFWy4+WbLX9GolIZmoznTd6Lakvqoy74NsaVrlu9Tlch4UZE
 3y3depjD3BElANm43UBoI4NaOMdMSVU3b2iHbw8N7xwUnJvHDydntoSBj
 7+qFE0Y50wMLjpyKkpKWo5Pyb2c4OyoMe20Y+oyB4ugwbNnL0b4g9/0rR
 gnkvkLlqAYYY3v714jnn6lUFVAzeT/DmyQHG5NdBetQBfyhiDktlOR8wj
 prONEIPo7tUnvhhmg0oK0tp+GdcG11OKmeG5HVgWStl6YBtIdrHa6lcu0
 Mf5YzPZSrNr6bR17hxndm0BbuXa36LYmRkS3C1HbRhMCI/WzxSdh8u0B0 Q==;
X-CSE-ConnectionGUID: KXEb+m5RSaWk9Kfui2XYgg==
X-CSE-MsgGUID: kRPqZPXHTtGo2sYOZSdNSQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="41306075"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="41306075"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 23:27:57 -0700
X-CSE-ConnectionGUID: maQAFmPqQhaynsz1WXiFgw==
X-CSE-MsgGUID: O1g+OmeoSgGBOYT3PxPsFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="87648587"
Received: from ksztyber-mobl2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.3])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 23:27:55 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 5/7] drm/i915/psr: Simplify frontbuffer invalidate/flush
 callbacks
Date: Fri,  1 Nov 2024 08:27:26 +0200
Message-Id: <20241101062728.3865980-6-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241101062728.3865980-1-jouni.hogander@intel.com>
References: <20241101062728.3865980-1-jouni.hogander@intel.com>
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

There is unnecessary complexity in frontbuffer tracking invalidate and
flush callbacks. Simplify them a bit with some minor changes to sequences:

Invalidate:

1. Additionally write single full frame bit when selective fetch is
enabled. This should be ok as continuous full frame bit is already set.
2. Rewrite bits in PSR2_MAN_TRK_CTL if two invalidate calls in row without
flush in between (psr.psr2_sel_fetch_cff_enabled == true).

Flush:

1. intel_dp->psr.psr2_sel_fetch_cff_enabled is clearn also when it is
already false.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 66 +++++-------------------
 1 file changed, 12 insertions(+), 54 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index c1cf63f55fe6..12ec1ea94b53 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3119,28 +3119,8 @@ static void intel_psr_work(struct work_struct *work)
 
 static void _psr_invalidate_handle(struct intel_dp *intel_dp)
 {
-	struct intel_display *display = to_intel_display(intel_dp);
-	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
-
 	if (intel_dp->psr.psr2_sel_fetch_enabled) {
-		u32 val;
-
-		if (intel_dp->psr.psr2_sel_fetch_cff_enabled) {
-			/* Send one update otherwise lag is observed in screen */
-			intel_de_write(display,
-				       CURSURFLIVE(display, intel_dp->psr.pipe),
-				       0);
-			return;
-		}
-
-		val = man_trk_ctl_enable_bit_get(display) |
-		      man_trk_ctl_partial_frame_bit_get(display) |
-		      man_trk_ctl_continuos_full_frame(display);
-		intel_de_write(display,
-			       PSR2_MAN_TRK_CTL(display, cpu_transcoder),
-			       val);
-		intel_de_write(display,
-			       CURSURFLIVE(display, intel_dp->psr.pipe), 0);
+		psr_force_exit(intel_dp);
 		intel_dp->psr.psr2_sel_fetch_cff_enabled = true;
 	} else {
 		intel_psr_exit(intel_dp);
@@ -3222,43 +3202,21 @@ static void _psr_flush_handle(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct drm_i915_private *dev_priv = to_i915(display->drm);
-	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
+
+	psr_force_exit(intel_dp);
 
 	if (intel_dp->psr.psr2_sel_fetch_enabled) {
-		if (intel_dp->psr.psr2_sel_fetch_cff_enabled) {
-			/* can we turn CFF off? */
-			if (intel_dp->psr.busy_frontbuffer_bits == 0) {
-				u32 val = man_trk_ctl_enable_bit_get(display) |
-					man_trk_ctl_partial_frame_bit_get(display) |
-					man_trk_ctl_single_full_frame_bit_get(display) |
-					man_trk_ctl_continuos_full_frame(display);
-
-				/*
-				 * Set psr2_sel_fetch_cff_enabled as false to allow selective
-				 * updates. Still keep cff bit enabled as we don't have proper
-				 * SU configuration in case update is sent for any reason after
-				 * sff bit gets cleared by the HW on next vblank.
-				 */
-				intel_de_write(display,
-					       PSR2_MAN_TRK_CTL(display, cpu_transcoder),
-					       val);
-				intel_de_write(display,
-					       CURSURFLIVE(display, intel_dp->psr.pipe),
-					       0);
-				intel_dp->psr.psr2_sel_fetch_cff_enabled = false;
-			}
-		} else {
+		/* can we turn CFF off? */
+		if (intel_dp->psr.busy_frontbuffer_bits == 0)
 			/*
-			 * continuous full frame is disabled, only a single full
-			 * frame is required
+			 * Set psr2_sel_fetch_cff_enabled as false to allow selective
+			 * updates. Still keep cff bit enabled as we don't have proper
+			 * SU configuration in case update is sent for any reason after
+			 * sff bit gets cleared by the HW on next vblank.
 			 */
-			psr_force_exit(intel_dp);
-		}
-	} else {
-		psr_force_exit(intel_dp);
-
-		if (!intel_dp->psr.active && !intel_dp->psr.busy_frontbuffer_bits)
-			queue_work(dev_priv->unordered_wq, &intel_dp->psr.work);
+			intel_dp->psr.psr2_sel_fetch_cff_enabled = false;
+	} else if (!intel_dp->psr.active && !intel_dp->psr.busy_frontbuffer_bits) {
+		queue_work(dev_priv->unordered_wq, &intel_dp->psr.work);
 	}
 }
 
-- 
2.34.1

