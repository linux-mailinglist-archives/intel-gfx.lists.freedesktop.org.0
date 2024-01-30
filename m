Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72341842261
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jan 2024 12:12:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A6C1112F8F;
	Tue, 30 Jan 2024 11:11:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B0F5112F8F
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jan 2024 11:11:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706613115; x=1738149115;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AbUMNG6d+nzhdDJS5E1BXSFc98FlxovmYOuFnXGL3R8=;
 b=UTism385eeUDMt0MjfGyhp1DvyAbHTH4RHdKd70Lce3RUwtmecqanHFt
 90Kl57nRZKjJST5KPP4vHAkeYCxlhbiPwccP148ftKNBwna00kigwq0Ru
 TiK/3bQcQSoVGLOBBDMTsUGgdNAnq1WLheKjnN29wwsahjetOdNtgU6N2
 2o+P82S31Gl7+OWuj7RAFaMa3iOLzJyuyilPOuGZQoxcnOe6Kl5SbhfnT
 p4Dk9Wz1/2B3vtqnrteMb/7OnrPK4T1tgpTpK0dGOtqMw9dFsXJ2bbcWJ
 csx+k775IQ+ZvI7Fc88mDqlMNuVbn2DJXWrGOwL6qxOHOt1xClL6+H3JU A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="402877199"
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; d="scan'208";a="402877199"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2024 03:11:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="858461258"
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; d="scan'208";a="858461258"
Received: from swilyman-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.41.112])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2024 03:11:53 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 4/4] drm/i915/alpm: Alpm aux wake configuration for lnl
Date: Tue, 30 Jan 2024 13:11:30 +0200
Message-Id: <20240130111130.3298779-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240130111130.3298779-1-jouni.hogander@intel.com>
References: <20240130111130.3298779-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Lunarlake has some configurations in ALPM_CTL register for legacy ALPM as
well. Write these.

Bspec: 71477

v2: move version check to lnl_alpm_configure

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 7aedda0ca2d2..72cadad09db5 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1554,6 +1554,21 @@ static void wm_optimization_wa(struct intel_dp *intel_dp,
 			     wa_16013835468_bit_get(intel_dp), 0);
 }
 
+static void lnl_alpm_configure(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
+	struct intel_psr *psr = &intel_dp->psr;
+
+	if (DISPLAY_VER(dev_priv) < 20)
+		return;
+
+	intel_de_write(dev_priv, ALPM_CTL(cpu_transcoder),
+		       ALPM_CTL_EXTENDED_FAST_WAKE_ENABLE |
+		       ALPM_CTL_ALPM_ENTRY_CHECK(psr->alpm_parameters.check_entry_lines) |
+		       ALPM_CTL_EXTENDED_FAST_WAKE_TIME(psr->alpm_parameters.fast_wake_lines));
+}
+
 static void intel_psr_enable_source(struct intel_dp *intel_dp,
 				    const struct intel_crtc_state *crtc_state)
 {
@@ -1619,6 +1634,8 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 			     intel_dp->psr.psr2_sel_fetch_enabled ?
 			     IGNORE_PSR2_HW_TRACKING : 0);
 
+	lnl_alpm_configure(intel_dp);
+
 	/*
 	 * Wa_16013835468
 	 * Wa_14015648006
-- 
2.34.1

