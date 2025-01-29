Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED20A224E7
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2025 21:01:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E41BB10E8AC;
	Wed, 29 Jan 2025 20:01:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d/2yG5YG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9E0110E890;
 Wed, 29 Jan 2025 20:01:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738180892; x=1769716892;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=8METGeXp+hm/UiVDLku97jKLNGcJvcW5Fks0GLwshDc=;
 b=d/2yG5YGyRfMTbjt72QXJHLkEGEzQ6aAMZAbBgP9czyF2cBsa+jx5VLL
 heSTCiIjDeFoDr9p2vQ7u6bwJGWj5X/feBLXPcxMLQZRHWOtcWi9eMmET
 129hRvd7gBWSpOkagTw/wa+QOLX/06+kPDsIlGUZTDs/fY/MkxZvo79Hr
 tBJ7BFjVdgjhMZuY5QMXkuSiz8pePiUPLOXDrBFHmGlBRDIPD1Yu+jmTz
 0TOGaYNlFyivgC8HKMf8UQPccy9CqwX/Lhz5VS+5qhkIpGsqCICnZt6n0
 NLatQeahnknJRFSec11mXZul+R3bv3Qxo71duejqE8ZKlMVliij2WbWlG w==;
X-CSE-ConnectionGUID: fcyqt/hHQHuJh5MTHLayQA==
X-CSE-MsgGUID: 7f/T0o68Qe2Fahw1qNo8vg==
X-IronPort-AV: E=McAfee;i="6700,10204,11330"; a="38977687"
X-IronPort-AV: E=Sophos;i="6.13,244,1732608000"; d="scan'208";a="38977687"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 12:01:32 -0800
X-CSE-ConnectionGUID: p4ptXklnS/afuqZNaisxEA==
X-CSE-MsgGUID: wIsFIFC5RiSTFohubCm51g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="113750898"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 12:01:31 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH 05/17] drm/i915/ddi: Simplify the port enabling via DDI_BUF_CTL
Date: Wed, 29 Jan 2025 22:02:09 +0200
Message-ID: <20250129200221.2508101-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250129200221.2508101-1-imre.deak@intel.com>
References: <20250129200221.2508101-1-imre.deak@intel.com>
MIME-Version: 1.0
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

In the past intel_digital_port::dp.prepare_link_retrain() could be
called directly (vs. from a modeset) to retrain an enabled link. In that
case the port had to be first disabled and then re-enabled. That changed
with commit 2885d283cce5 ("drm/i915/dp: Retrain SST links via a modeset
commit"), after which the only way prepare_link_retrain() can be called
is from a modeset during link training when the port is still disabled.
Simplify things accordingly, assuming the disabled port state.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 23 ++++-------------------
 1 file changed, 4 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 6192c0d3c87a5..3138dc4034797 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3743,8 +3743,8 @@ static void mtl_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
 	 * necessary disable and enable port
 	 */
 	dp_tp_ctl = intel_de_read(display, dp_tp_ctl_reg(encoder, crtc_state));
-	if (dp_tp_ctl & DP_TP_CTL_ENABLE)
-		mtl_disable_ddi_buf(encoder, crtc_state);
+
+	drm_WARN_ON(display->drm, dp_tp_ctl & DP_TP_CTL_ENABLE);
 
 	/* 6.d Configure and enable DP_TP_CTL with link training pattern 1 selected */
 	dp_tp_ctl = DP_TP_CTL_ENABLE | DP_TP_CTL_LINK_TRAIN_PAT1;
@@ -3787,26 +3787,11 @@ static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
 	struct intel_encoder *encoder = &dig_port->base;
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	enum port port = encoder->port;
-	u32 dp_tp_ctl, ddi_buf_ctl;
-	bool wait = false;
+	u32 dp_tp_ctl;
 
 	dp_tp_ctl = intel_de_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
 
-	if (dp_tp_ctl & DP_TP_CTL_ENABLE) {
-		ddi_buf_ctl = intel_de_read(dev_priv, DDI_BUF_CTL(port));
-		if (ddi_buf_ctl & DDI_BUF_CTL_ENABLE) {
-			intel_de_write(dev_priv, DDI_BUF_CTL(port),
-				       ddi_buf_ctl & ~DDI_BUF_CTL_ENABLE);
-			wait = true;
-		}
-
-		dp_tp_ctl &= ~DP_TP_CTL_ENABLE;
-		intel_de_write(dev_priv, dp_tp_ctl_reg(encoder, crtc_state), dp_tp_ctl);
-		intel_de_posting_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
-
-		if (wait)
-			intel_wait_ddi_buf_idle(dev_priv, port);
-	}
+	drm_WARN_ON(&dev_priv->drm, dp_tp_ctl & DP_TP_CTL_ENABLE);
 
 	dp_tp_ctl = DP_TP_CTL_ENABLE | DP_TP_CTL_LINK_TRAIN_PAT1;
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST) ||
-- 
2.44.2

