Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45F509156FA
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2024 21:11:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F06910E562;
	Mon, 24 Jun 2024 19:11:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MMUfCI+3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A25A10E54D
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2024 19:11:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719256261; x=1750792261;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=0RPY5F20KfoXzQFkiGusMSMUEJTTEnuMF4mf+BkDkg8=;
 b=MMUfCI+3JeEV/25ybN1wMQp9HU4QdOHPI7/Pe+eoQ/ZimoF/MTXp1cn+
 Y2FhFhXTU2lSrxM6rYawurOpicCUm3CaIbTQkDP3QaBg39hsd2pnBJQhb
 +BE/I0Ic9a4sgdFXWLn/GO8PGhcaiS8NROy2MKWh35A1T2BQFGCWnPORz
 g+KTvrtsGuO6GG0jdr9tCvc5hF41QIx0YvAxgrHwI82X1bClRtZryM4no
 epLxdxkIZeFBh67W6wdz7U19ixojEZZcVXPM0vjPDFMHoNaPCoEMcFX/v
 fakgBrh/40CyMQyoOEaBp80g1F0BqkmGMuGvBGYhTxpL7CFKvE52Bq3at Q==;
X-CSE-ConnectionGUID: r+gallCxTR2HlCEdI6g/lQ==
X-CSE-MsgGUID: +CLTNl+jSgudbPfLTqpxSQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11113"; a="16374197"
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="16374197"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2024 12:10:58 -0700
X-CSE-ConnectionGUID: 3cT9TZYmTL+oclX84ZQqaA==
X-CSE-MsgGUID: Wzel9H/MS32FWueH8HEQhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="43371974"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 24 Jun 2024 12:10:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Jun 2024 22:10:55 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 08/14] drm/i915/dsb: Precompute DSB_CHICKEN
Date: Mon, 24 Jun 2024 22:10:26 +0300
Message-ID: <20240624191032.27333-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
References: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
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

Adjust the code that determines the correct DSB_CHICKEN value
to be usable for use within DSB commands themselves. Ie.
precompute it based on our knowledge of what the hardware state
(VRR vs. not mainly) will be at the time of the commit.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index b362a3050c7f..81937908c798 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -43,6 +43,7 @@ struct intel_dsb {
 	 */
 	unsigned int ins_start_offset;
 
+	u32 chicken;
 	int hw_dewake_scanline;
 };
 
@@ -149,9 +150,10 @@ static int dsb_scanline_to_hw(struct intel_atomic_state *state,
 	return (scanline + vtotal - intel_crtc_scanline_offset(crtc_state)) % vtotal;
 }
 
-static u32 dsb_chicken(struct intel_crtc *crtc)
+static u32 dsb_chicken(struct intel_atomic_state *state,
+		       struct intel_crtc *crtc)
 {
-	if (crtc->mode_flags & I915_MODE_FLAG_VRR)
+	if (pre_commit_is_vrr_active(state, crtc))
 		return DSB_SKIP_WAITS_EN |
 			DSB_CTRL_WAIT_SAFE_WINDOW |
 			DSB_CTRL_NO_WAIT_VBLANK |
@@ -449,7 +451,7 @@ static void _intel_dsb_commit(struct intel_dsb *dsb, u32 ctrl,
 			  ctrl | DSB_ENABLE);
 
 	intel_de_write_fw(display, DSB_CHICKEN(pipe, dsb->id),
-			  dsb_chicken(crtc));
+			  dsb->chicken);
 
 	intel_de_write_fw(display, DSB_INTERRUPT(pipe, dsb->id),
 			  dsb_error_int_status(display) | DSB_PROG_INT_STATUS |
@@ -580,6 +582,7 @@ struct intel_dsb *intel_dsb_prepare(struct intel_atomic_state *state,
 	dsb->free_pos = 0;
 	dsb->ins_start_offset = 0;
 
+	dsb->chicken = dsb_chicken(state, crtc);
 	dsb->hw_dewake_scanline =
 		dsb_scanline_to_hw(state, crtc, dsb_dewake_scanline(state, crtc));
 
-- 
2.44.2

