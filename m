Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F168B1CA13
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 18:55:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 396A110E19E;
	Wed,  6 Aug 2025 16:55:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ATForqAz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F25010E19E;
 Wed,  6 Aug 2025 16:55:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754499337; x=1786035337;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6TAhUSyJKoYaDPOerSpYDujktTPdEkcRhMKl0lqYX3E=;
 b=ATForqAznezmuEjuNz3embEp+6kret5BSrezfNbQe/oPvw3TEoDMFjra
 oKnORXnBpkNTY7wuBz3z2j5AxEN1qf3HwJ6bxigZE+7e8OR2y1G9MYHSK
 FhaWgIveLsxYedSvgRBjFH7gQ3ksXmKRFAdE+hvJha8i95+e6T+aVrk/r
 flEMr5wvLWZXxwK1IEW1sSrbQA/S3ZoIjaX8q3dWwywD5akKv5FZkDC6H
 HSMZg0GczJx0DgoD9HegnDArAT/1wnys3B8p/dLdC3+r/JnP/Qy7r7fCh
 achS4rebSLfh7aVjBNM54gY28hSDrobkYdHpel6jOVnMHswoAPwF8Xih3 Q==;
X-CSE-ConnectionGUID: EbC1GsWZQP+M3gc0wM+nVg==
X-CSE-MsgGUID: IeUjsQtcTg+DyX/yculJ0A==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="68199675"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="68199675"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 09:55:37 -0700
X-CSE-ConnectionGUID: OUflu4Z+RF6IBIe1dBlLrA==
X-CSE-MsgGUID: LPieY9ZATMqgjVF9bYVJ4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="195659289"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.70])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 09:55:35 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 03/15] drm/i915/clockgating: pass display to for_each_pipe()
Date: Wed,  6 Aug 2025 19:55:04 +0300
Message-Id: <1abcd9b4429a25eb40c30691c876d3db089b1cf2.1754499175.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1754499174.git.jani.nikula@intel.com>
References: <cover.1754499174.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

Underneath, for_each_pipe() really expects struct intel_display. Switch
to it in preparation for removing the transitional __to_intel_display()
macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/intel_clock_gating.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
index f86a3629ae9e..b4dddd03eaf3 100644
--- a/drivers/gpu/drm/i915/intel_clock_gating.c
+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
@@ -132,9 +132,10 @@ static void ibx_init_clock_gating(struct drm_i915_private *i915)
 
 static void g4x_disable_trickle_feed(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = dev_priv->display;
 	enum pipe pipe;
 
-	for_each_pipe(dev_priv, pipe) {
+	for_each_pipe(display, pipe) {
 		intel_uncore_rmw(&dev_priv->uncore, DSPCNTR(dev_priv, pipe),
 				 0, DISP_TRICKLE_FEED_DISABLE);
 
@@ -218,7 +219,7 @@ static void cpt_init_clock_gating(struct drm_i915_private *i915)
 	/* The below fixes the weird display corruption, a few pixels shifted
 	 * downward, on (only) LVDS of some HP laptops with IVY.
 	 */
-	for_each_pipe(i915, pipe) {
+	for_each_pipe(display, pipe) {
 		val = intel_uncore_read(&i915->uncore, TRANS_CHICKEN2(pipe));
 		val |= TRANS_CHICKEN2_TIMING_OVERRIDE;
 		val &= ~TRANS_CHICKEN2_FDI_POLARITY_REVERSED;
@@ -229,7 +230,7 @@ static void cpt_init_clock_gating(struct drm_i915_private *i915)
 		intel_uncore_write(&i915->uncore, TRANS_CHICKEN2(pipe), val);
 	}
 	/* WADP0ClockGatingDisable */
-	for_each_pipe(i915, pipe) {
+	for_each_pipe(display, pipe) {
 		intel_uncore_write(&i915->uncore, TRANS_CHICKEN1(pipe),
 				   TRANS_CHICKEN1_DP0UNIT_GC_DISABLE);
 	}
@@ -421,6 +422,7 @@ static void skl_init_clock_gating(struct drm_i915_private *i915)
 
 static void bdw_init_clock_gating(struct drm_i915_private *i915)
 {
+	struct intel_display *display = i915->display;
 	enum pipe pipe;
 
 	/* WaFbcAsynchFlipDisableFbcQueue:hsw,bdw */
@@ -432,7 +434,7 @@ static void bdw_init_clock_gating(struct drm_i915_private *i915)
 	/* WaPsrDPAMaskVBlankInSRD:bdw */
 	intel_uncore_rmw(&i915->uncore, CHICKEN_PAR1_1, 0, HSW_MASK_VBL_TO_PIPE_IN_SRD);
 
-	for_each_pipe(i915, pipe) {
+	for_each_pipe(display, pipe) {
 		/* WaPsrDPRSUnmaskVBlankInSRD:bdw */
 		intel_uncore_rmw(&i915->uncore, CHICKEN_PIPESL_1(pipe),
 				 0, BDW_UNMASK_VBL_TO_REGS_IN_SRD);
@@ -468,6 +470,7 @@ static void bdw_init_clock_gating(struct drm_i915_private *i915)
 
 static void hsw_init_clock_gating(struct drm_i915_private *i915)
 {
+	struct intel_display *display = i915->display;
 	enum pipe pipe;
 
 	/* WaFbcAsynchFlipDisableFbcQueue:hsw,bdw */
@@ -476,7 +479,7 @@ static void hsw_init_clock_gating(struct drm_i915_private *i915)
 	/* WaPsrDPAMaskVBlankInSRD:hsw */
 	intel_uncore_rmw(&i915->uncore, CHICKEN_PAR1_1, 0, HSW_MASK_VBL_TO_PIPE_IN_SRD);
 
-	for_each_pipe(i915, pipe) {
+	for_each_pipe(display, pipe) {
 		/* WaPsrDPRSUnmaskVBlankInSRD:hsw */
 		intel_uncore_rmw(&i915->uncore, CHICKEN_PIPESL_1(pipe),
 				 0, HSW_UNMASK_VBL_TO_REGS_IN_SRD);
-- 
2.39.5

