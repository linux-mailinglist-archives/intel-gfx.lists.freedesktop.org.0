Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3CD2549EAB
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jun 2022 22:14:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27DB210F827;
	Mon, 13 Jun 2022 20:14:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4392810F827
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jun 2022 20:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655151294; x=1686687294;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wcrg5kfG8MZqGU8hkMI9sKsFAm5BOCs7khKirmV/rHY=;
 b=DHR6YQr/ozK4/VBtkt70xSWs+wRJjn0vSDeWZUJ/beClnqZu5qSOEmwp
 /PpdWWPGU5m7ztcHNTHzDSs6DJP7i4O9jSrfrUyZfKYauDDsBOpLA+yyE
 h0EjxMmXk+2OdOqmIsva+3sFgL5XNSnN6m+ARfUVJR9WIeKJhMtYmDbfA
 uwJxYC2N/lnzIDJv4KYn/O1BGKmKiUoDe3jGRtpjfF3c51uA+aTEBXljL
 fOmeTdHHcgehQn4yvhES1GUBiH7RSTeYtD7DulupCKo8ORXDAB7T1297Y
 lfbuJCQtgLgwOHNnYRN4BUPVai7Z5Zf2LW8QCigXp5z5WSnCQJNLk4URs Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10377"; a="277175572"
X-IronPort-AV: E=Sophos;i="5.91,297,1647327600"; d="scan'208";a="277175572"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2022 13:14:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,297,1647327600"; d="scan'208";a="611931676"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by orsmga008.jf.intel.com with SMTP; 13 Jun 2022 13:14:40 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 13 Jun 2022 23:14:39 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Jun 2022 23:14:39 +0300
Message-Id: <20220613201439.23341-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Implement w/a 22010492432 for adl-s
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
Cc: stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

adl-s needs the combo PLL DCO fraction w/a as well.
Get us slightly more accurate clock out of the PLL.

Cc: stable@vger.kernel.org
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 64708e874b13..982e5b945680 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -2459,7 +2459,7 @@ static void icl_wrpll_params_populate(struct skl_wrpll_params *params,
 }
 
 /*
- * Display WA #22010492432: ehl, tgl, adl-p
+ * Display WA #22010492432: ehl, tgl, adl-s, adl-p
  * Program half of the nominal DCO divider fraction value.
  */
 static bool
@@ -2467,7 +2467,7 @@ ehl_combo_pll_div_frac_wa_needed(struct drm_i915_private *i915)
 {
 	return ((IS_PLATFORM(i915, INTEL_ELKHARTLAKE) &&
 		 IS_JSL_EHL_DISPLAY_STEP(i915, STEP_B0, STEP_FOREVER)) ||
-		 IS_TIGERLAKE(i915) || IS_ALDERLAKE_P(i915)) &&
+		 IS_TIGERLAKE(i915) || IS_ALDERLAKE_S(i915) || IS_ALDERLAKE_P(i915)) &&
 		 i915->dpll.ref_clks.nssc == 38400;
 }
 
-- 
2.35.1

