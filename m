Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A06B152790
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 09:30:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1B446E94F;
	Wed,  5 Feb 2020 08:29:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BFD66E94F
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Feb 2020 08:29:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Feb 2020 00:29:58 -0800
X-IronPort-AV: E=Sophos;i="5.70,405,1574150400"; d="scan'208";a="224578478"
Received: from mvollmer-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.51.53])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Feb 2020 00:29:56 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Feb 2020 10:29:59 +0200
Message-Id: <20200205082959.31317-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH] drm/i915/mst: fix pipe and vblank enable
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Commit 21fd23ac222f ("drm/i915: move pipe, pch and vblank enable to
encoders on DDI platforms") pushed pipe and vblank enable to encoders on
DDI platforms, however it missed the DP MST encoder. Fix it.

Fixes: 21fd23ac222f ("drm/i915: move pipe, pch and vblank enable to encoders on DDI platforms")
Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Reported-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index b8aee506d595..9cd59141953d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -491,6 +491,12 @@ static void intel_mst_enable_dp(struct intel_encoder *encoder,
 	struct intel_dp *intel_dp = &intel_dig_port->dp;
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
+	drm_WARN_ON(&dev_priv->drm, pipe_config->has_pch_encoder);
+
+	intel_enable_pipe(pipe_config);
+
+	intel_crtc_vblank_on(pipe_config);
+
 	DRM_DEBUG_KMS("active links %d\n", intel_dp->active_mst_links);
 
 	if (intel_de_wait_for_set(dev_priv, intel_dp->regs.dp_tp_status,
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
