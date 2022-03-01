Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B1BC4C918C
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Mar 2022 18:31:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F5E410E600;
	Tue,  1 Mar 2022 17:31:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FA3310E600
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Mar 2022 17:31:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646155902; x=1677691902;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=KTrEah3Pxfe6xdeg/HR5QFXSIFd0bexk2Byz/x3cZBU=;
 b=FlD5ax4Yke2VGspUUvXJcPkvWXSddX7x1SpZ9EKTTwG4iZTUPZ6e8CFi
 SIREMYZUPzWZDjdsdtOOmS3QSFughGvJWvLyb8QfsaCDNdwAqXcAmfIkP
 IhE4XMPhQGaUdoHwVPiDiU133hIa7dR8HXSS5UKQ1tN02WrzkVRvqBYyT
 M+1/8bQLkokz1bWx3JDpqaLpPpaXCSSQQtbzUXvzajXqI4yrzuY96glKA
 1w42MMtlgLswG6+w9QzJ9SaeCMT5iEv2RSDJ9SuZxV8JCGjHpD0iHwc/d
 jtTbI2EwHeN80GuzrLLsRC/0OhHqBDLQdS1NyoNLcvIKeu/f2aiDT3bDM w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10273"; a="236700807"
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="236700807"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2022 09:31:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="507882189"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga002.jf.intel.com with SMTP; 01 Mar 2022 09:31:39 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 01 Mar 2022 19:31:38 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Mar 2022 19:31:20 +0200
Message-Id: <20220301173128.6988-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220301173128.6988-1-ville.syrjala@linux.intel.com>
References: <20220301173128.6988-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/11] drm/i915: Clean up some struct/array
 initializers
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

Use the simple '= {}' form to initialize empty arrays/structs.
Also add some missing whitespace.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 4e06c8203aca..bc26ebacae12 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -832,7 +832,7 @@ hsw_ddi_calculate_wrpll(int clock /* in Hz */,
 {
 	u64 freq2k;
 	unsigned p, n2, r2;
-	struct hsw_wrpll_rnp best = { 0, 0, 0 };
+	struct hsw_wrpll_rnp best = {};
 	unsigned budget;
 
 	freq2k = clock / 100;
@@ -1567,8 +1567,8 @@ skl_ddi_calculate_wrpll(int clock /* in Hz */,
 static bool skl_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct skl_wrpll_params wrpll_params = {};
 	u32 ctrl1, cfgcr1, cfgcr2;
-	struct skl_wrpll_params wrpll_params = { 0, };
 
 	/*
 	 * See comment in intel_dpll_hw_state to understand why we always use 0
@@ -2095,13 +2095,13 @@ struct bxt_clk_div {
 
 /* pre-calculated values for DP linkrates */
 static const struct bxt_clk_div bxt_dp_clk_val[] = {
-	{162000, 4, 2, 32, 1677722, 1, 1},
-	{270000, 4, 1, 27,       0, 0, 1},
-	{540000, 2, 1, 27,       0, 0, 1},
-	{216000, 3, 2, 32, 1677722, 1, 1},
-	{243000, 4, 1, 24, 1258291, 1, 1},
-	{324000, 4, 1, 32, 1677722, 1, 1},
-	{432000, 3, 1, 32, 1677722, 1, 1}
+	{ 162000, 4, 2, 32, 1677722, 1, 1 },
+	{ 270000, 4, 1, 27,       0, 0, 1 },
+	{ 540000, 2, 1, 27,       0, 0, 1 },
+	{ 216000, 3, 2, 32, 1677722, 1, 1 },
+	{ 243000, 4, 1, 24, 1258291, 1, 1 },
+	{ 324000, 4, 1, 32, 1677722, 1, 1 },
+	{ 432000, 3, 1, 32, 1677722, 1, 1 }
 };
 
 static bool
-- 
2.34.1

