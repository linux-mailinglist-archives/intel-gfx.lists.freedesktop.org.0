Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B45B5AD2099
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Jun 2025 16:11:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B98810E3C4;
	Mon,  9 Jun 2025 14:11:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HxuiL5wm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E1ED10E3AE;
 Mon,  9 Jun 2025 14:11:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749478267; x=1781014267;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oEdGcLX3IrklkUkSRxR3a1bUN4Zc7cl/aPVjDTdYtKw=;
 b=HxuiL5wmr5NNmRBtbdr3leqtEWTfvUah/eHKatT68U4u7NhUH93BpcIa
 dIf/GvgQhLODDI7XISzM8FPsd/hs+/E4/WYO//25kcZ5WQoG5ibZOwUVP
 Eq2fRxMNaj1tmT9G1U1haQyaNdaN8UeuyPX1rlPsHcjiDDj+YYMirOFwf
 vQ4MfZA/pX9AIifmZucvqFK6rmN3QjilB//0HMH43On4BnxrZBGJikm9W
 uGE4Y1qCil1IT5cfx4OlVdU3ejfH+5PiSZbU/q5hRsPyIWjgFtlbK/JkI
 5nxHB1PCE1i07QYxNuwHVJpZjT+nSmr+U0HKcvS/bOoTANTm5PXvSCc/k Q==;
X-CSE-ConnectionGUID: etoFi2kxQTya1+4sdZqOJw==
X-CSE-MsgGUID: E0gytNbfSsqYyG8LkHrBtA==
X-IronPort-AV: E=McAfee;i="6800,10657,11459"; a="55360726"
X-IronPort-AV: E=Sophos;i="6.16,222,1744095600"; d="scan'208";a="55360726"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 07:11:07 -0700
X-CSE-ConnectionGUID: MBLAu+ZbRPmVvCuXLmMcMg==
X-CSE-MsgGUID: /PiXWBItRRKO7fdRgyYnKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,222,1744095600"; d="scan'208";a="151765593"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.99])
 by orviesa005.jf.intel.com with SMTP; 09 Jun 2025 07:11:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 09 Jun 2025 17:11:03 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v4 05/21] drm/i915/dsb: Move the DSB_PMCTRL* reset out of
 intel_dsb_finish()
Date: Mon,  9 Jun 2025 17:10:30 +0300
Message-ID: <20250609141046.6244-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250609141046.6244-1-ville.syrjala@linux.intel.com>
References: <20250609141046.6244-1-ville.syrjala@linux.intel.com>
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
unhalting the DMC. Currently we are doign just that by trying to
restore DSB_PMCTRL* back to a sane state from intel_dsb_finish().

Since the only place left that pokes at DSB_PMCTRL* is intel_dsb_chain()
we can just do DSB_PMCTRL_2/DSB_FORCE_DEWAKE reset in the same place.

The DSB_PMCTRL reset is trickier since we'd have to do it from the
chained DSB itself. But based on my earlier testing
DSB_PMCTRL/DSB_ENABLE_DEWAKE doesn't actually do anything if the DSB
isn't actually enabled, so we can omit the reset to keep things a bit
simpler. We do need to reset DSB_PMCTRL/DSB_ENABLE_DEWAKE before
starting the DSB however, in case it was left enabled from a previous
use.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 23 +++++++++++------------
 1 file changed, 11 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 200555a9e94b..6fdd324615e2 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -629,18 +629,6 @@ void intel_dsb_gosub_finish(struct intel_dsb *dsb)
 
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
@@ -781,6 +769,8 @@ static void _intel_dsb_chain(struct intel_atomic_state *state,
 		intel_dsb_reg_write(dsb, DSB_PMCTRL(pipe, chained_dsb->id),
 				    DSB_ENABLE_DEWAKE |
 				    DSB_SCANLINE_FOR_DEWAKE(hw_dewake_scanline));
+	} else {
+		intel_dsb_reg_write(dsb, DSB_PMCTRL(pipe, chained_dsb->id), 0);
 	}
 
 	intel_dsb_reg_write(dsb, DSB_HEAD(pipe, chained_dsb->id),
@@ -802,6 +792,13 @@ static void _intel_dsb_chain(struct intel_atomic_state *state,
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
 
@@ -857,6 +854,8 @@ void intel_dsb_commit(struct intel_dsb *dsb)
 			  dsb_error_int_status(display) | DSB_PROG_INT_STATUS |
 			  dsb_error_int_en(display) | DSB_PROG_INT_EN);
 
+	intel_de_write_fw(display, DSB_PMCTRL(pipe, dsb->id), 0);
+
 	intel_de_write_fw(display, DSB_HEAD(pipe, dsb->id),
 			  intel_dsb_head(dsb));
 
-- 
2.49.0

