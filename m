Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 455EF6B13E8
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Mar 2023 22:33:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F30FF10E71F;
	Wed,  8 Mar 2023 21:33:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B21AF10E71E
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Mar 2023 21:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678311179; x=1709847179;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZoI1PjNuPPuI/0oYChrx0wlHzDKLHxhE3d2+LhCQQTA=;
 b=P7zeM2ExGkN00OkqbUYqgiosf298PR/dTLN6Gcs65C+lyJREyd2Qw/K7
 XPyJTYVbmYthE7ixvRQae0Jesr2au/2Md3OAx5xLtsXXx1IdpXRvzpMhL
 xcnMq51fRQP1bqK7srLTXgUkUl9W89TKPFSGItHAAl4Gwj9gG6S9qMAJC
 GbvLfilhcVxkmYQbIUVASobuI8LFuOgvvTgLQhEft7Ze1OT1VIiclcg3W
 iYMaOI/1Gv8Bgcbs5e0SX0DreMknykh4KFewFBMTv76CTjIaBMpTa2Rfq
 5v5idyxxH/2QS1fzPR7twTA41o7wr68P9MrZAVsBLk38S0aYWmUWuLGEW A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="338617141"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="338617141"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 13:32:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="677141829"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="677141829"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 08 Mar 2023 13:26:28 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 08 Mar 2023 23:26:27 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Mar 2023 23:26:26 +0200
Message-Id: <20230308212627.7601-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915: Don't switch to TPS1 when
 disabling DP_TP_CTL
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

AFAICS Bspec has never asked us to switch to TPS1 when *disabling*
DP_TP_CTL. Let's stop doing that in case it confuses something.
We do have to switch before we *enable* DP_TP_CTL, but that
is already being handled correctly.

v2: Do the same for FDI
v3: Rebase

Reviewed-by: Imre Deak <imre.deak@intel.com> #v1
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 6 ++----
 drivers/gpu/drm/i915/display/intel_fdi.c | 4 +---
 2 files changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 0950bcfea4c0..c531fee888a4 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2618,8 +2618,7 @@ static void intel_disable_ddi_buf(struct intel_encoder *encoder,
 
 	if (intel_crtc_has_dp_encoder(crtc_state))
 		intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
-			     DP_TP_CTL_ENABLE | DP_TP_CTL_LINK_TRAIN_MASK,
-			     DP_TP_CTL_LINK_TRAIN_PAT1);
+			     DP_TP_CTL_ENABLE, 0);
 
 	/* Disable FEC in DP Sink */
 	intel_ddi_disable_fec_state(encoder, crtc_state);
@@ -3140,8 +3139,7 @@ static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
 			wait = true;
 		}
 
-		dp_tp_ctl &= ~(DP_TP_CTL_ENABLE | DP_TP_CTL_LINK_TRAIN_MASK);
-		dp_tp_ctl |= DP_TP_CTL_LINK_TRAIN_PAT1;
+		dp_tp_ctl &= ~DP_TP_CTL_ENABLE;
 		intel_de_write(dev_priv, dp_tp_ctl_reg(encoder, crtc_state), dp_tp_ctl);
 		intel_de_posting_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
 
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index f55b4893c00f..c08c26a321b3 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -845,9 +845,7 @@ void hsw_fdi_link_train(struct intel_encoder *encoder,
 		intel_de_posting_read(dev_priv, DDI_BUF_CTL(PORT_E));
 
 		/* Disable DP_TP_CTL and FDI_RX_CTL and retry */
-		intel_de_rmw(dev_priv, DP_TP_CTL(PORT_E),
-			     DP_TP_CTL_ENABLE | DP_TP_CTL_LINK_TRAIN_MASK,
-			     DP_TP_CTL_LINK_TRAIN_PAT1);
+		intel_de_rmw(dev_priv, DP_TP_CTL(PORT_E), DP_TP_CTL_ENABLE, 0);
 		intel_de_posting_read(dev_priv, DP_TP_CTL(PORT_E));
 
 		intel_wait_ddi_buf_idle(dev_priv, PORT_E);
-- 
2.39.2

