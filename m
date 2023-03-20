Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 94CC86C22CB
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 21:34:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CD2010E670;
	Mon, 20 Mar 2023 20:34:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 867E510E670
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 20:34:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679344444; x=1710880444;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8YQ9fouMRWDAEaCW0iOVHUeWrwNfNufiPrVSApnTMAY=;
 b=lf1xB560ZHH3QYAQQ0Y+q4Qim2nIYZQ2FNVv6G/jS77jhZ2jolke6CfT
 B8XtEHRaufu4sLVdmn1YR973MBYZfA4+JP/KjMYq4XsCy3fdXpTo/MewK
 vYQejII76cHLzw98jhwOA2glOw6jukhdCTUcQJExT654qgB6caUYPSHw8
 AcgUIKsI0MheNTJp7/Y6gi2o/Ur4BYA8kT5A623zlFwYuuVKIZnrriN2O
 RqbGV/pILYzqwlfj7CzIfjwpxVySeopHTZ7bq9TRpedcAe2KKOlnkFXKi
 41rhh043/YNWREjNFa/Wkc2ikpZT4P9PFY2jBdmHb/gQa+t8gxNUg0NvB Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="327148266"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; d="scan'208";a="327148266"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 13:34:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="770339170"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; d="scan'208";a="770339170"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by FMSMGA003.fm.intel.com with SMTP; 20 Mar 2023 13:34:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Mar 2023 22:34:01 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Mar 2023 22:33:49 +0200
Message-Id: <20230320203352.19515-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230320203352.19515-1-ville.syrjala@linux.intel.com>
References: <20230320203352.19515-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/6] drm/i915/vrr: Make delayed vblank
 operational in VRR mode on adl/dg2
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

On adl/dg2 a chicken bit needs to be set for TRANS_SET_CONTENXT_LATENCY
to take effect in VRR mode. Can't really think of a reason why we'd
ever disable that chicken bit, so let's just always set it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 8 ++++++++
 drivers/gpu/drm/i915/i915_reg.h          | 3 +--
 2 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 6d749de71058..348a7cc8e620 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -173,6 +173,14 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
+	/*
+	 * TRANS_SET_CONTEXT_LATENCY with VRR enabled
+	 * requires this chicken bit on ADL/DG2.
+	 */
+	if (DISPLAY_VER(dev_priv) == 13)
+		intel_de_rmw(dev_priv, CHICKEN_TRANS(cpu_transcoder),
+			     0, PIPE_VBLANK_WITH_DELAY);
+
 	if (!crtc_state->vrr.enable)
 		return;
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index d22ffd7a32dc..09740f7295eb 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -5544,13 +5544,12 @@
 					    [TRANSCODER_B] = _CHICKEN_TRANS_B, \
 					    [TRANSCODER_C] = _CHICKEN_TRANS_C, \
 					    [TRANSCODER_D] = _CHICKEN_TRANS_D))
-
 #define _MTL_CHICKEN_TRANS_A	0x604e0
 #define _MTL_CHICKEN_TRANS_B	0x614e0
 #define MTL_CHICKEN_TRANS(trans)	_MMIO_TRANS((trans), \
 						    _MTL_CHICKEN_TRANS_A, \
 						    _MTL_CHICKEN_TRANS_B)
-
+#define  PIPE_VBLANK_WITH_DELAY		REG_BIT(31) /* ADL/DG2 */
 #define  HSW_FRAME_START_DELAY_MASK	REG_GENMASK(28, 27)
 #define  HSW_FRAME_START_DELAY(x)	REG_FIELD_PREP(HSW_FRAME_START_DELAY_MASK, x)
 #define  VSC_DATA_SEL_SOFTWARE_CONTROL	REG_BIT(25) /* GLK */
-- 
2.39.2

