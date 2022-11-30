Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B3C3D63CFD8
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Nov 2022 08:46:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EE7E10E41C;
	Wed, 30 Nov 2022 07:46:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F089010E41A
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Nov 2022 07:45:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669794345; x=1701330345;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JrllMEZyt3Ib81YdFDuFqlMmjCsNQQKlm083IcMAi7o=;
 b=XUNbQxORch1w51XWAdo2LXnoiUs5UA0FJ2jHJtQsqb2B/ugVlRMKM8LS
 nJZSXQSGpCHEvqskIzfffCiBCkPObTDryHfdHykI9SuFNSYt3zb/QOG/G
 305GQK8aeBjZFoW3tpgL/tyQiUZ+YcLMuAVu5vXf/Lqtmp/yeKLBbW9j7
 pUaqzVcrXDRBqw5RQcd/tvNk1nwZZiSpaAo1Fsg7r62+FmaFep76HJ4+D
 Tac7HxUyHZpWTNuAFTu0rxT4yVpKd7BkajuqIk7ozr0nSseHhGi5LEX/c
 d001xE2Zg3gCyfMvFgK+WwwtsE/Ru2dqyczTFdFFhlE43mguPg+sl1a9Z g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="401610676"
X-IronPort-AV: E=Sophos;i="5.96,205,1665471600"; d="scan'208";a="401610676"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2022 23:45:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="973003877"
X-IronPort-AV: E=Sophos;i="5.96,205,1665471600"; d="scan'208";a="973003877"
Received: from chaitanya.iind.intel.com ([10.190.239.113])
 by fmsmga005.fm.intel.com with ESMTP; 29 Nov 2022 23:45:43 -0800
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Nov 2022 13:16:16 +0530
Message-Id: <20221130074617.1619099-2-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221130074617.1619099-1-chaitanya.kumar.borah@intel.com>
References: <20221130074617.1619099-1-chaitanya.kumar.borah@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 1/2] drm/i915: Add RPL-U CDCLK table
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

A new step of 480MHz has been added on SKUs that have a RPL-U
device id. Add a new table which include this new CDCLK step.

BSpec: 55409

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 39 ++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 0c107a38f9d0..9bfeb1abba47 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -180,6 +180,18 @@ static void i85x_get_cdclk(struct drm_i915_private *dev_priv,
 	}
 }
 
+static bool is_rplu(struct drm_i915_private *dev_priv)
+{
+	switch (INTEL_DEVID(dev_priv)) {
+	case 0xA7A1:
+	case 0xA721:
+	case 0xA7A9:
+		return true;
+	default:
+		return false;
+	}
+}
+
 static void i915gm_get_cdclk(struct drm_i915_private *dev_priv,
 			     struct intel_cdclk_config *cdclk_config)
 {
@@ -1329,6 +1341,27 @@ static const struct intel_cdclk_vals adlp_cdclk_table[] = {
 	{}
 };
 
+static const struct intel_cdclk_vals rplu_cdclk_table[] = {
+	{ .refclk = 19200, .cdclk = 172800, .divider = 3, .ratio = 27 },
+	{ .refclk = 19200, .cdclk = 192000, .divider = 2, .ratio = 20 },
+	{ .refclk = 19200, .cdclk = 480000, .divider = 2, .ratio = 50 },
+	{ .refclk = 19200, .cdclk = 556800, .divider = 2, .ratio = 58 },
+	{ .refclk = 19200, .cdclk = 652800, .divider = 2, .ratio = 68 },
+
+	{ .refclk = 24000, .cdclk = 176000, .divider = 3, .ratio = 22 },
+	{ .refclk = 24000, .cdclk = 192000, .divider = 2, .ratio = 16 },
+	{ .refclk = 24000, .cdclk = 480000, .divider = 2, .ratio = 40 },
+	{ .refclk = 24000, .cdclk = 552000, .divider = 2, .ratio = 46 },
+	{ .refclk = 24400, .cdclk = 648000, .divider = 2, .ratio = 54 },
+
+	{ .refclk = 38400, .cdclk = 179200, .divider = 3, .ratio = 14 },
+	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 10 },
+	{ .refclk = 38400, .cdclk = 480000, .divider = 2, .ratio = 25 },
+	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29 },
+	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34 },
+	{}
+};
+
 static const struct intel_cdclk_vals dg2_cdclk_table[] = {
 	{ .refclk = 38400, .cdclk = 163200, .divider = 2, .ratio = 34, .waveform = 0x8888 },
 	{ .refclk = 38400, .cdclk = 204000, .divider = 2, .ratio = 34, .waveform = 0x9248 },
@@ -3353,6 +3386,12 @@ void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
 		/* Wa_22011320316:adl-p[a0] */
 		if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
 			dev_priv->display.cdclk.table = adlp_a_step_cdclk_table;
+		/*
+		 * BSpec: 55409
+		 * 480 MHz supported on SKUs that have a RPL-U Device ID
+		 */
+		else if (is_rplu(dev_priv))
+			dev_priv->cdclk.table = rplu_cdclk_table;
 		else
 			dev_priv->display.cdclk.table = adlp_cdclk_table;
 	} else if (IS_ROCKETLAKE(dev_priv)) {
-- 
2.25.1

