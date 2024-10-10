Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E88CD997C7D
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2024 07:34:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A5DB10E875;
	Thu, 10 Oct 2024 05:34:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TwLCzcgZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB8DC10E874;
 Thu, 10 Oct 2024 05:34:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728538470; x=1760074470;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7DWC8mH5AZEggSSmtIdY30N/vcGvbyKQUnm9UPGqiKA=;
 b=TwLCzcgZPn9CAbEGJk7hbBjmecRjVWgsomsOSVTOOJjvGOvC4NlktpKM
 S/znbMLCk4SMVHod1Rx/xshfenSx7pdC0aP5Rd6Gm4gJ+8Grgac/+6htL
 9mJQ+X7Mf4vbEnw/E4rB9UEmFV9HPuycrDFQIJeUP/arwSeTYSDEO2IZt
 UsVUFkuWMCR5JxEyTREy4fOQpAw87DMNdm+ybLF3vabVsgU+KdEADG46s
 7kCRLs1GiJFsZ22zU0BrmmqLrNA7iENCgH5LWemeCTa4j3bhabhfaQLL1
 OEPQVGUeD7PmyvefNgHN1Yi7H+x0oDSll09gl6RV+7BmdhFNXaZJ5z+1k Q==;
X-CSE-ConnectionGUID: tODVXvlDSomTyvyXgDz0xA==
X-CSE-MsgGUID: w4aKtorBSnauNHT37GkaXw==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="30749369"
X-IronPort-AV: E=Sophos;i="6.11,192,1725346800"; d="scan'208";a="30749369"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 22:34:29 -0700
X-CSE-ConnectionGUID: F+boBgJBSFeT0uHCyPimQQ==
X-CSE-MsgGUID: jlagK++zQhi5iQqH5EgK8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,192,1725346800"; d="scan'208";a="76697311"
Received: from oandoniu-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.162])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 22:34:28 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, intel-xe@lists.freedesktop.org,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 5/7] drm/i915/psr: Simplify frontbuffer invalidate/flush
 callbacks
Date: Thu, 10 Oct 2024 08:33:14 +0300
Message-Id: <20241010053316.1580527-6-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241010053316.1580527-1-jouni.hogander@intel.com>
References: <20241010053316.1580527-1-jouni.hogander@intel.com>
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
index b32020321ca7a..5be8076475f0b 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3069,28 +3069,8 @@ static void intel_psr_work(struct work_struct *work)
 
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
@@ -3172,43 +3152,21 @@ static void _psr_flush_handle(struct intel_dp *intel_dp)
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

