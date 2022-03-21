Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71E0C4E30EE
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Mar 2022 20:50:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9972110E489;
	Mon, 21 Mar 2022 19:50:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA8AB10E48B
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Mar 2022 19:50:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647892212; x=1679428212;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=+lddCcCaahAlyowoNDglp7JYbLFNXPXYJ623qbC6kVk=;
 b=Cfw8iWOhEmhGghH8V+3HKsloG1n1T+WFc2gRp4byj3B7/Bbm3jnlhwjV
 4q9v3XAdGXvXdmbecC+Vh/XjylQ4GnUs1rUQGYhi5UUxLTPRfB9maDLh6
 gcUMna7for2fyyAOdErIX8gzkaZKdsS5VbDZIgmXkH3iT5wawZ05wRkRc
 p5X7Q380rCNpkFRQTm/iR+XL06Q5mBWjKR0YC11J4nn/TJRf9XBi5UiSe
 z2ijRdzTGCALzFNW0y2NiWKyja7R1PWGMvoglSx22nAC5/DDbDudc1+F6
 b91h8dZV5OhWPEAo4CjvBgXG4iK+OHN4Fabc1+Dfbh5nXxgu+v8EqyyEz A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10293"; a="257354402"
X-IronPort-AV: E=Sophos;i="5.90,199,1643702400"; d="scan'208";a="257354402"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 12:50:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,199,1643702400"; d="scan'208";a="636763405"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by FMSMGA003.fm.intel.com with SMTP; 21 Mar 2022 12:50:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 21 Mar 2022 21:50:09 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Mar 2022 21:50:04 +0200
Message-Id: <20220321195006.775-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220321195006.775-1-ville.syrjala@linux.intel.com>
References: <20220321195006.775-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Program i830 DPLL FP register
 later
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

Follow the new i9xx DPLL FP register programming sequence
introduced in commit 62d66b218386 ("drm/i915: Fold
i9xx_set_pll_dividers() into i9xx_enable_pll()") in the
i830 "power well" code as well. Just for consistency.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b54a799197d5..e595ffa8325e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -9874,9 +9874,6 @@ void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
 		PLL_REF_INPUT_DREFCLK |
 		DPLL_VCO_ENABLE;
 
-	intel_de_write(dev_priv, FP0(pipe), fp);
-	intel_de_write(dev_priv, FP1(pipe), fp);
-
 	intel_de_write(dev_priv, HTOTAL(pipe), (640 - 1) | ((800 - 1) << 16));
 	intel_de_write(dev_priv, HBLANK(pipe), (640 - 1) | ((800 - 1) << 16));
 	intel_de_write(dev_priv, HSYNC(pipe), (656 - 1) | ((752 - 1) << 16));
@@ -9885,6 +9882,9 @@ void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
 	intel_de_write(dev_priv, VSYNC(pipe), (490 - 1) | ((492 - 1) << 16));
 	intel_de_write(dev_priv, PIPESRC(pipe), ((640 - 1) << 16) | (480 - 1));
 
+	intel_de_write(dev_priv, FP0(pipe), fp);
+	intel_de_write(dev_priv, FP1(pipe), fp);
+
 	/*
 	 * Apparently we need to have VGA mode enabled prior to changing
 	 * the P1/P2 dividers. Otherwise the DPLL will keep using the old
-- 
2.34.1

