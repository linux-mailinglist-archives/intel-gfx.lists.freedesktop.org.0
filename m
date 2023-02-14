Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C7D69651E
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Feb 2023 14:44:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5985A10E1CE;
	Tue, 14 Feb 2023 13:44:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 450B910E1CE
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Feb 2023 13:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676382238; x=1707918238;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=pheA9WE0QONzrOXmwzaP5ndUCTVe2nXo6Ky+9PudEVw=;
 b=mnAimuaFwhB2ajEv0vOK4HO8jO2GrkckE3C1/QjFSGvcLkc8gKxiFe5L
 OJbnLp6+PxNwe17NShY4LjrJookGM4KIXfw/6ToHFU+VPiyTj9EWPq73e
 PGfJep4QtKJ06oJnpsqaNvnf1YcZfcE7/9yyTh6auiRrHR6z2HFJlADx8
 uDfmMpkW1zjtQXftVR3dSPcDLUpoQmWOtX/2/ic07uX6X5IYD383GPxK3
 3ZFTWwvAWutB+JXMAHJVLFYxy5CmVegVXxW8tx7KbquGywGycyeEatM1H
 8UWEpIB9BcPuuMlXmfThdWNAmrnwBFe/n5Wch6Y6421+gPqZaFJ/erzBW g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="311518965"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="311518965"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 05:43:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="699540398"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="699540398"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga008.jf.intel.com with SMTP; 14 Feb 2023 05:43:55 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Feb 2023 15:43:54 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Feb 2023 15:43:48 +0200
Message-Id: <20230214134348.11020-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230214134348.11020-1-ville.syrjala@linux.intel.com>
References: <20230214134348.11020-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: Fix idle pattern enabling
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

Currently we are always switching to the idle pattern after the
link training, but we don't always wait for the minimum number
of idle patterns sent. That doesn't look to be what Bspec
asks of us.

According to bspec what we should do is switch to idle pattern
and wait for it only in DP1.4 MST cases. In all other cases we
should apparently do neither.

What confuses matters further is that the port sync SST sequence
asks us to "stay in idle pattern". But if we never switched to it
how can we stay in it? This still needs further clarificaiton.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 20 +++++++++-----------
 1 file changed, 9 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 4af2ba2dfcad..a3466b71d18a 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3219,24 +3219,22 @@ static void intel_ddi_set_idle_link_train(struct intel_dp *intel_dp,
 {
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	enum port port = encoder->port;
 	u32 val;
 
+	/*
+	 * FIXME DP modeset sequence says to switch to idle pattern
+	 * only for DP1.4 MST cases, but port sync SST sequence asks
+	 * us to "stay in Idle Pattern", implying that we should
+	 * switch to it earlier. Which is it?
+	 */
+	if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST))
+		return;
+
 	val = intel_de_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
 	val &= ~DP_TP_CTL_LINK_TRAIN_MASK;
 	val |= DP_TP_CTL_LINK_TRAIN_IDLE;
 	intel_de_write(dev_priv, dp_tp_ctl_reg(encoder, crtc_state), val);
 
-	/*
-	 * Until TGL on PORT_A we can have only eDP in SST mode. There the only
-	 * reason we need to set idle transmission mode is to work around a HW
-	 * issue where we enable the pipe while not in idle link-training mode.
-	 * In this case there is requirement to wait for a minimum number of
-	 * idle patterns to be sent.
-	 */
-	if (port == PORT_A && DISPLAY_VER(dev_priv) < 12)
-		return;
-
 	if (intel_de_wait_for_set(dev_priv,
 				  dp_tp_status_reg(encoder, crtc_state),
 				  DP_TP_STATUS_IDLE_DONE, 1))
-- 
2.39.1

