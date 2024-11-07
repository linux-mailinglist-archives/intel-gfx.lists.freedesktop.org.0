Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A9349C0FCC
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 21:33:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27CFD10E8E1;
	Thu,  7 Nov 2024 20:33:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="exigxw8a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5EA410E8E1;
 Thu,  7 Nov 2024 20:33:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731011590; x=1762547590;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OXYVKSaPqf6G5rsUccGlDN3THqKeS5jUVLP6PU2P5TU=;
 b=exigxw8ao2pfSMThE7vRO3ujt15rnp69+Jj8e+iJvf52z8QvX9RLiNJp
 Ls1cD4sxuXMtrUfwz1yImsLCB0or/zdpu188vSQnW1QuCkVaToxU3Tj1v
 bIP6K4LuIsq49tCKkseV4IbEu2LhwSa7iQZw+ZqaaFjq2dFApPHwHIYLE
 V2dv5jWayj2x9o75vcpmNCOZ/BAgRv3mhSOlMfopkNc6FcJQLs9wFnDeI
 ttrpshZGcZi4nRw2N0Xn2s8lgQKG3SR6WdMZYxMs7KtlOsy6EBMF2zuBE
 x7YZBFtnWj75BH3N9ZFIHTfTRuVMHe5ohK29D119scHB42KINSSDkw/r9 A==;
X-CSE-ConnectionGUID: WSt01bSASLeybNpL8VnOjQ==
X-CSE-MsgGUID: 9hsH1RJQQpujCB8NdxGOUA==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="30298105"
X-IronPort-AV: E=Sophos;i="6.12,136,1728975600"; d="scan'208";a="30298105"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 12:33:10 -0800
X-CSE-ConnectionGUID: 2gDG/z+ASgizzpxWd3MO4Q==
X-CSE-MsgGUID: ZStRQbYqSWWPeNZ6m/h1Ww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,136,1728975600"; d="scan'208";a="108493882"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.233])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 12:33:08 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, imre.deak@intel.com, ville.syrjala@linux.intel.com
Subject: [PATCH 8/8] drm/i915/dp: add comments about hooks called from MST
 stream encoders
Date: Thu,  7 Nov 2024 22:32:21 +0200
Message-Id: <80f8682fbc304ccf673af20abe562ce5aedb9219.1731011435.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1731011435.git.jani.nikula@intel.com>
References: <cover.1731011435.git.jani.nikula@intel.com>
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

It would be best to have self-explanatory code, but lacking that, add
some comments about the way the DDI encoder hooks get called from DP MST
stream encoders.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 51 ++++++++++++++++++------
 1 file changed, 38 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index c973b70185cf..9965d7603d6c 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2920,6 +2920,24 @@ static void intel_ddi_pre_enable_hdmi(struct intel_atomic_state *state,
 				 crtc_state, conn_state);
 }
 
+/*
+ * Note: Also called from the ->pre_enable of the first active MST stream
+ * encoder on its primary encoder.
+ *
+ * When called from DP MST code:
+ *
+ * - conn_state will be NULL
+ *
+ * - encoder will be the primary encoder (i.e. mst->primary)
+ *
+ * - the main connector associated with this port won't be active or linked to a
+ *   crtc
+ *
+ * - crtc_state will be the state of the first stream to be activated on this
+ *   port, and it may not be the same stream that will be deactivated last, but
+ *   each stream should have a state that is identical when it comes to the DP
+ *   link parameteres
+ */
 static void intel_ddi_pre_enable(struct intel_atomic_state *state,
 				 struct intel_encoder *encoder,
 				 const struct intel_crtc_state *crtc_state,
@@ -2929,19 +2947,6 @@ static void intel_ddi_pre_enable(struct intel_atomic_state *state,
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 
-	/*
-	 * When called from DP MST code:
-	 * - conn_state will be NULL
-	 * - encoder will be the main encoder (ie. mst->primary)
-	 * - the main connector associated with this port
-	 *   won't be active or linked to a crtc
-	 * - crtc_state will be the state of the first stream to
-	 *   be activated on this port, and it may not be the same
-	 *   stream that will be deactivated last, but each stream
-	 *   should have a state that is identical when it comes to
-	 *   the DP link parameteres
-	 */
-
 	drm_WARN_ON(&dev_priv->drm, crtc_state->has_pch_encoder);
 
 	intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, true);
@@ -3191,6 +3196,11 @@ static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
 	}
 }
 
+/*
+ * Note: Also called from the ->post_disable of the last active MST stream
+ * encoder on its primary encoder. See also the comment for
+ * intel_ddi_pre_enable().
+ */
 static void intel_ddi_post_disable(struct intel_atomic_state *state,
 				   struct intel_encoder *encoder,
 				   const struct intel_crtc_state *old_crtc_state,
@@ -3221,6 +3231,11 @@ static void intel_ddi_post_disable(struct intel_atomic_state *state,
 					  old_conn_state);
 }
 
+/*
+ * Note: Also called from the ->post_pll_disable of the last active MST stream
+ * encoder on its primary encoder. See also the comment for
+ * intel_ddi_pre_enable().
+ */
 static void intel_ddi_post_pll_disable(struct intel_atomic_state *state,
 				       struct intel_encoder *encoder,
 				       const struct intel_crtc_state *old_crtc_state,
@@ -3558,6 +3573,11 @@ void intel_ddi_update_active_dpll(struct intel_atomic_state *state,
 		intel_update_active_dpll(state, pipe_crtc, encoder);
 }
 
+/*
+ * Note: Also called from the ->pre_pll_enable of the first active MST stream
+ * encoder on its primary encoder. See also the comment for
+ * intel_ddi_pre_enable().
+ */
 static void
 intel_ddi_pre_pll_enable(struct intel_atomic_state *state,
 			 struct intel_encoder *encoder,
@@ -3996,6 +4016,11 @@ static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
 	}
 }
 
+/*
+ * Note: Also called from the ->get_config of the MST stream encoders on their
+ * primary encoder, via the platform specific hooks here. See also the comment
+ * for intel_ddi_pre_enable().
+ */
 static void intel_ddi_get_config(struct intel_encoder *encoder,
 				 struct intel_crtc_state *pipe_config)
 {
-- 
2.39.5

