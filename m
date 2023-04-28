Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C516F14D1
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Apr 2023 11:59:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1422510ECB8;
	Fri, 28 Apr 2023 09:59:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C44310ECB0
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Apr 2023 09:59:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682675985; x=1714211985;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rbpMj8CfRaa3wn+EurDsq4q/3M5mGa/9jlkW2TXx07A=;
 b=KIqeECEULLeVq51cWvBrG8ovLQJ5VToOzOWTQm0UvC/MXx9z3EoWqmuy
 5CmAgN6/iTksxR1uOEGQ46mikp3O+FXaHTH2atGc4AVLrZc/8YZFUDcJh
 lbsUoYxi74rdV7qqOc/u9pcmDjnCcBN+SRkGpiWaT6KtoWLTrqasdWcVQ
 SPJZHsbkA198hwL6G1R1TV+g7AxdRzvLa3ivCRfkD7WyTgtGdFRde/IY3
 WdvWcIQL8Ji6BNIhSJCH4ikEbMNXZ4LLCFuugaqiF4mTiPQc74W5kxVcG
 qJYOUg8lfMlagE/mHrkoTpK+Ua6RQPy0hkCVN9Zr1YKQsxT7D8VoOxLgp A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="375698140"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="375698140"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 02:59:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="725295746"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="725295746"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga008.jf.intel.com with ESMTP; 28 Apr 2023 02:59:43 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Apr 2023 12:54:26 +0300
Message-Id: <20230428095433.4109054-7-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230428095433.4109054-1-mika.kahola@intel.com>
References: <20230428095433.4109054-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 06/13] drm/i915/mtl: For DP2.0 10G and 20G
 rates use MPLLA
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

Use MPLLA for DP2.0 rates 10G and 20G, when ssc is enabled.

v2: Fix typo in commit message (Animesh)

Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 5409be0d5812..63d63c23647e 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2349,8 +2349,11 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
 		val |= XELPDP_DDI_CLOCK_SELECT(XELPDP_DDI_CLOCK_SELECT_MAXPCLK);
 
 	/* TODO: HDMI FRL */
-	/* TODO: DP2.0 10G and 20G rates enable MPLLA*/
-	val |= crtc_state->cx0pll_state.ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
+	/* DP2.0 10G and 20G rates enable MPLLA*/
+	if (crtc_state->port_clock == 1000000 || crtc_state->port_clock == 2000000)
+		val |= crtc_state->cx0pll_state.ssc_enabled ? XELPDP_SSC_ENABLE_PLLA : 0;
+	else
+		val |= crtc_state->cx0pll_state.ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
 
 	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
 		     XELPDP_LANE1_PHY_CLOCK_SELECT | XELPDP_FORWARD_CLOCK_UNGATE |
-- 
2.34.1

