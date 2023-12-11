Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 78FD480DD51
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Dec 2023 22:38:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3308010E506;
	Mon, 11 Dec 2023 21:38:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C192210E506
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Dec 2023 21:38:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702330710; x=1733866710;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=DqQiTWmi9AHvG9GJFdwNwYAwjyVd+0k9nQ740uhSm6k=;
 b=BC8pRqISXNStvIMPWJZZP/kaRO4nOWZovj6EjzTTzOreEdtUBkpKZpN/
 viMLbhxsIGziXXfQCLyQtbK09noR8TA0TgvYtEYkATGFPRRt1A79T5xUA
 JwI+7Os29LDL67bpmW+e+7JsCFKqNTWC4/Pc1qu1tD1D+oPDbtUkAGpzy
 kGzeXY+R9Dhg/Ie0Zz1A6cQhUzmaeu+MB3p8t4gpqG8PRynwmav/mmbMe
 /PkKZl9LXlAyIRG+UHRmAcrgNCQcD0OY4C/nNAjQsyBVk4zxXNqTyI+8A
 0IWawB6oanRrkmkC8xZL7azQONva8HmaX2PlRdYH0KJvEAdhaCmMD1Y8x w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="379712248"
X-IronPort-AV: E=Sophos;i="6.04,268,1695711600"; d="scan'208";a="379712248"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2023 13:37:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="766547048"
X-IronPort-AV: E=Sophos;i="6.04,268,1695711600"; d="scan'208";a="766547048"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 11 Dec 2023 13:37:57 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 11 Dec 2023 23:37:56 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/4] drm/i915/dmc: Also disable the flip queue event on TGL
 main DMC
Date: Mon, 11 Dec 2023 23:37:48 +0200
Message-ID: <20231211213750.27109-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231211213750.27109-1-ville.syrjala@linux.intel.com>
References: <20231211213750.27109-1-ville.syrjala@linux.intel.com>
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

Unlike later platforms TGL has its flip queue event (CLK_MSEC) on
the main DMC (as opposed to the pipe DMC). Currently we're doing
a second pass to disable that, but let's just follow the same
approach as the later platforms and never even enable the event
in the first place.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 83 ++----------------------
 1 file changed, 5 insertions(+), 78 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 073b85b57679..9385898e3aa5 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -335,77 +335,6 @@ static void disable_event_handler(struct drm_i915_private *i915,
 	intel_de_write(i915, htp_reg, 0);
 }
 
-static void
-disable_flip_queue_event(struct drm_i915_private *i915,
-			 i915_reg_t ctl_reg, i915_reg_t htp_reg)
-{
-	u32 event_ctl;
-	u32 event_htp;
-
-	event_ctl = intel_de_read(i915, ctl_reg);
-	event_htp = intel_de_read(i915, htp_reg);
-	if (event_ctl != (DMC_EVT_CTL_ENABLE |
-			  DMC_EVT_CTL_RECURRING |
-			  REG_FIELD_PREP(DMC_EVT_CTL_TYPE_MASK,
-					 DMC_EVT_CTL_TYPE_EDGE_0_1) |
-			  REG_FIELD_PREP(DMC_EVT_CTL_EVENT_ID_MASK,
-					 DMC_EVT_CTL_EVENT_ID_CLK_MSEC)) ||
-	    !event_htp) {
-		drm_dbg_kms(&i915->drm,
-			    "Unexpected DMC event configuration (control %08x htp %08x)\n",
-			    event_ctl, event_htp);
-		return;
-	}
-
-	disable_event_handler(i915, ctl_reg, htp_reg);
-}
-
-static bool
-get_flip_queue_event_regs(struct drm_i915_private *i915, enum intel_dmc_id dmc_id,
-			  i915_reg_t *ctl_reg, i915_reg_t *htp_reg)
-{
-	if (dmc_id == DMC_FW_MAIN) {
-		if (DISPLAY_VER(i915) == 12) {
-			*ctl_reg = DMC_EVT_CTL(i915, dmc_id, 3);
-			*htp_reg = DMC_EVT_HTP(i915, dmc_id, 3);
-
-			return true;
-		}
-	} else if (dmc_id >= DMC_FW_PIPEA && dmc_id <= DMC_FW_PIPED) {
-		if (IS_DG2(i915)) {
-			*ctl_reg = DMC_EVT_CTL(i915, dmc_id, 2);
-			*htp_reg = DMC_EVT_HTP(i915, dmc_id, 2);
-
-			return true;
-		}
-	}
-
-	return false;
-}
-
-static void
-disable_all_flip_queue_events(struct drm_i915_private *i915)
-{
-	enum intel_dmc_id dmc_id;
-
-	/* TODO: check if the following applies to all D13+ platforms. */
-	if (!IS_TIGERLAKE(i915))
-		return;
-
-	for_each_dmc_id(dmc_id) {
-		i915_reg_t ctl_reg;
-		i915_reg_t htp_reg;
-
-		if (!has_dmc_id_fw(i915, dmc_id))
-			continue;
-
-		if (!get_flip_queue_event_regs(i915, dmc_id, &ctl_reg, &htp_reg))
-			continue;
-
-		disable_flip_queue_event(i915, ctl_reg, htp_reg);
-	}
-}
-
 static void disable_all_event_handlers(struct drm_i915_private *i915)
 {
 	enum intel_dmc_id dmc_id;
@@ -514,6 +443,11 @@ static bool disable_dmc_evt(struct drm_i915_private *i915,
 	if (dmc_id != DMC_FW_MAIN)
 		return true;
 
+	/* also disable the flip queue event on the main DMC on TGL */
+	if (IS_TIGERLAKE(i915) &&
+	    REG_FIELD_GET(DMC_EVT_CTL_EVENT_ID_MASK, data) == DMC_EVT_CTL_EVENT_ID_CLK_MSEC)
+		return true;
+
 	return false;
 }
 
@@ -579,13 +513,6 @@ void intel_dmc_load_program(struct drm_i915_private *i915)
 
 	gen9_set_dc_state_debugmask(i915);
 
-	/*
-	 * Flip queue events need to be disabled before enabling DC5/6.
-	 * i915 doesn't use the flip queue feature, so disable it already
-	 * here.
-	 */
-	disable_all_flip_queue_events(i915);
-
 	pipedmc_clock_gating_wa(i915, false);
 }
 
-- 
2.41.0

