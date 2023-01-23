Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D45D8677C3B
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Jan 2023 14:16:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D30110E490;
	Mon, 23 Jan 2023 13:16:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15C0B10E490
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Jan 2023 13:16:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674479775; x=1706015775;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4kTtzZ7GLFkBVMjKrzP0kUkK+mLhcbTRPkLlym5OKmY=;
 b=SDKWzsGqEtncIadydXCra/EibMiKPYE9stCuK8rp7PqWJ1xDXhXHKcDF
 iqBw99dgoTE8/1PIvMhQ+N5LU42/V2GoyRT+AR7Qk6pVC3I3wk4Z6GY/8
 zePXu0gI4FG41oY9Qt76lZuunoktroSnNe3YuKOyuwnZjo9wNTARXE8YN
 GehOdT5kO3GlR9ei09mkPyUqHm0p4bTgsyfN0uYV6pvnmN48YvLPAyYAs
 jFfOJqV0Tbj2Y99J/fc8phWyKnEhxWg4HZUmy62L8bwNi864bnYdgHEmL
 9Yqn9FL+qG7IaMOwa5zMGgjIukKOL5/PRYg6UxYkCTEATUWwJT7aCc4rY w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="390537617"
X-IronPort-AV: E=Sophos;i="5.97,239,1669104000"; d="scan'208";a="390537617"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 05:16:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="990400729"
X-IronPort-AV: E=Sophos;i="5.97,239,1669104000"; d="scan'208";a="990400729"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmsmga005.fm.intel.com with ESMTP; 23 Jan 2023 05:16:12 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Jan 2023 15:16:11 +0200
Message-Id: <20230123131611.2149-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Implement workaround for CDCLK PLL
 disable/enable
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

It was reported that we might get a hung and loss of register access in
some cases when CDCLK PLL is disabled and then enabled, while squashing
is enabled.
As a workaround it was proposed by HW team that SW should disable squashing
when CDCLK PLL is being reenabled.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 0c107a38f9d0..e338f288c9ac 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1801,6 +1801,13 @@ static bool cdclk_compute_crawl_and_squash_midpoint(struct drm_i915_private *i91
 	return true;
 }
 
+static bool pll_enable_wa_needed(struct drm_i915_private *dev_priv)
+{
+	return ((IS_DG2(dev_priv) || IS_METEORLAKE(dev_priv))
+		&& dev_priv->display.cdclk.hw.vco > 0
+		&& HAS_CDCLK_SQUASH(dev_priv));
+}
+
 static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
 			   const struct intel_cdclk_config *cdclk_config,
 			   enum pipe pipe)
@@ -1815,9 +1822,12 @@ static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
 	    !cdclk_pll_is_unknown(dev_priv->display.cdclk.hw.vco)) {
 		if (dev_priv->display.cdclk.hw.vco != vco)
 			adlp_cdclk_pll_crawl(dev_priv, vco);
-	} else if (DISPLAY_VER(dev_priv) >= 11)
+	} else if (DISPLAY_VER(dev_priv) >= 11) {
+		if (pll_enable_wa_needed(dev_priv))
+			dg2_cdclk_squash_program(dev_priv, 0);
+
 		icl_cdclk_pll_update(dev_priv, vco);
-	else
+	} else
 		bxt_cdclk_pll_update(dev_priv, vco);
 
 	waveform = cdclk_squash_waveform(dev_priv, cdclk);
-- 
2.37.3

