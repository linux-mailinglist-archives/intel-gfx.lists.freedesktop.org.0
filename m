Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B43AD7494
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 16:50:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A59B10E885;
	Thu, 12 Jun 2025 14:50:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E+EsNSnW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 290EF10E885;
 Thu, 12 Jun 2025 14:50:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749739840; x=1781275840;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pNTQnl0LwC5YOKBcW89YwuiEtGX1yqQzu6rQSe04u4g=;
 b=E+EsNSnWCO+4CCRkXKcckWwkOkPIaSQ5eM2ZCERU/zYOyEndu0MKwSGa
 PqHG6BsAFqCO1zWU1UG8lNdAoB0LYdMy2K8SdSMoCZjOT6aZEvLtD+v93
 JBUOdMgQVCY1cUvLpkyxLYq0qJngDKBtLnZGbyUrUgaW44JLnny/j5VQh
 J1NkEXBdCmcg0w1SoSA48h0we8VAwz5YxN9IvAwkgML2jdsnC6SwHNq6l
 kgM+auKEURmqALzUv52PRYYqotf4CLTvYYratRAyvLoE5btsuKVJRJJL3
 TeDG7sCeYO6EL+8pTEYr/cAM0AfwzFED3roIg/6+eljGpzuk4qlJkFk0p A==;
X-CSE-ConnectionGUID: hdv1ARz4QZal2Abk/xr+9A==
X-CSE-MsgGUID: pLUw0Z67Re6Y1dRNZaM9iA==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="52066756"
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="52066756"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 07:50:40 -0700
X-CSE-ConnectionGUID: BgfgX+PuT8e0ECwfnpep/A==
X-CSE-MsgGUID: mP4GaNO0R96b5KDf20lCVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="152826225"
Received: from abityuts-desk.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.200])
 by orviesa005.jf.intel.com with SMTP; 12 Jun 2025 07:50:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 12 Jun 2025 17:50:36 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH 5/6] drm/i915/dsb: Move the DSB_PMCTRL* reset out of
 intel_dsb_finish()
Date: Thu, 12 Jun 2025 17:50:17 +0300
Message-ID: <20250612145018.8735-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250612145018.8735-1-ville.syrjala@linux.intel.com>
References: <20250612145018.8735-1-ville.syrjala@linux.intel.com>
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

When using the flip queue, due to the DMC vs. DSB register corruption
problem, we must not issue any register writes from the DSB after
unhalting the DMC. Currently we are doing just that by trying to
restore DSB_PMCTRL* back to a sane state from intel_dsb_finish().

Since the only place left that pokes at DSB_PMCTRL* is intel_dsb_chain()
we can just do DSB_PMCTRL_2/DSB_FORCE_DEWAKE reset in the same place.

The DSB_PMCTRL reset is trickier since we'd have to do it from the
chained DSB itself. But based on my earlier testing
DSB_PMCTRL/DSB_ENABLE_DEWAKE doesn't actually do anything if the DSB
isn't actually enabled, so we can omit the reset to keep things a bit
simpler. We do need to reset DSB_PMCTRL/DSB_ENABLE_DEWAKE before
tarting the DSB however, in case it was left enabled from a previous
use.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 23 +++++++++++------------
 1 file changed, 11 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 2f7bd8da1bf1..aaa2a4a52edc 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -628,18 +628,6 @@ void intel_dsb_gosub_finish(struct intel_dsb *dsb)
 
 void intel_dsb_finish(struct intel_dsb *dsb)
 {
-	struct intel_crtc *crtc = dsb->crtc;
-
-	/*
-	 * DSB_FORCE_DEWAKE remains active even after DSB is
-	 * disabled, so make sure to clear it (if set during
-	 * intel_dsb_commit()). And clear DSB_ENABLE_DEWAKE as
-	 * well for good measure.
-	 */
-	intel_dsb_reg_write(dsb, DSB_PMCTRL(crtc->pipe, dsb->id), 0);
-	intel_dsb_reg_write_masked(dsb, DSB_PMCTRL_2(crtc->pipe, dsb->id),
-				   DSB_FORCE_DEWAKE, 0);
-
 	intel_dsb_align_tail(dsb);
 
 	intel_dsb_buffer_flush_map(&dsb->dsb_buf);
@@ -780,6 +768,8 @@ static void _intel_dsb_chain(struct intel_atomic_state *state,
 		intel_dsb_reg_write(dsb, DSB_PMCTRL(pipe, chained_dsb->id),
 				    DSB_ENABLE_DEWAKE |
 				    DSB_SCANLINE_FOR_DEWAKE(hw_dewake_scanline));
+	} else {
+		intel_dsb_reg_write(dsb, DSB_PMCTRL(pipe, chained_dsb->id), 0);
 	}
 
 	intel_dsb_reg_write(dsb, DSB_HEAD(pipe, chained_dsb->id),
@@ -801,6 +791,13 @@ static void _intel_dsb_chain(struct intel_atomic_state *state,
 		intel_dsb_wait_scanline_out(state, dsb,
 					    dsb_dewake_scanline_start(state, crtc),
 					    dsb_dewake_scanline_end(state, crtc));
+
+		/*
+		 * DSB_FORCE_DEWAKE remains active even after DSB is
+		 * disabled, so make sure to clear it.
+		 */
+		intel_dsb_reg_write_masked(dsb, DSB_PMCTRL_2(crtc->pipe, dsb->id),
+					   DSB_FORCE_DEWAKE, 0);
 	}
 }
 
@@ -856,6 +853,8 @@ void intel_dsb_commit(struct intel_dsb *dsb)
 			  dsb_error_int_status(display) | DSB_PROG_INT_STATUS |
 			  dsb_error_int_en(display) | DSB_PROG_INT_EN);
 
+	intel_de_write_fw(display, DSB_PMCTRL(pipe, dsb->id), 0);
+
 	intel_de_write_fw(display, DSB_HEAD(pipe, dsb->id),
 			  intel_dsb_head(dsb));
 
-- 
2.49.0

