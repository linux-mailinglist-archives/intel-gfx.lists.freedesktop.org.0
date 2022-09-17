Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF985BB510
	for <lists+intel-gfx@lfdr.de>; Sat, 17 Sep 2022 02:45:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B262F10E0BC;
	Sat, 17 Sep 2022 00:45:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCD4A10E028
 for <intel-gfx@lists.freedesktop.org>; Sat, 17 Sep 2022 00:44:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663375465; x=1694911465;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cZvuia7A9HKlvE2KLXWlDDdTo3DRQr/kmdMXh9FAIOw=;
 b=oDU8i5yNUwB+sWcjAUfgP9iRVQzNLocdv4pZjQ1YGdR4iC7NyE6cSMDL
 NPDG164NyBYy3D7bjeO2XLtdTWQCbgy/uX+WqwDpFeypEJisXYWazyHpW
 UpmZ87CWAiifkr5Dpf8H5Js2le9U/3TmAoobkUBfsdOSafwHl9qmzrIlK
 34/hcqcWtfXTQzJHP8i6u1yNlWGBWLlGY8bCjSjwj0vrkVqoe0CCkPRGG
 RxHrU1rrgo9rMInoRm8WbGqYo0J2ubVQa/EVNT5Ys3qS70YlcFN1bX1SS
 J4WciFIvcSNd4LUAqtD0rZGhZ0IZd6p488UG81xBH5PzDrdi3j8J2Xmjl g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10472"; a="278835738"
X-IronPort-AV: E=Sophos;i="5.93,321,1654585200"; d="scan'208";a="278835738"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 17:44:25 -0700
X-IronPort-AV: E=Sophos;i="5.93,321,1654585200"; d="scan'208";a="743519280"
Received: from cgros-mobl.amr.corp.intel.com (HELO anushasr-mobl7.intel.com)
 ([10.209.28.3])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 17:44:25 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Sep 2022 17:43:59 -0700
Message-Id: <20220917004404.414981-2-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220917004404.414981-1-anusha.srivatsa@intel.com>
References: <20220917004404.414981-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/6] drm/i915/display Add dg2_prog_squash_ctl()
 helper
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

Modularising steps and moving them out of
bxt_set_cdclk().

Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 23 +++++++++++++---------
 1 file changed, 14 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index ed05070b7307..220d32adbd12 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1689,6 +1689,18 @@ static u32 cdclk_squash_waveform(struct drm_i915_private *dev_priv,
 	return 0xffff;
 }
 
+static void dg2_prog_squash_ctl(struct drm_i915_private *i915, u16 waveform)
+{
+	u32 squash_ctl = 0;
+
+	if (waveform) {
+		squash_ctl |= CDCLK_SQUASH_ENABLE;
+		squash_ctl |= CDCLK_SQUASH_WINDOW_SIZE(0xf) | waveform;
+	}
+
+	intel_de_write(i915, CDCLK_SQUASH_CTL, squash_ctl);
+}
+
 static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 			  const struct intel_cdclk_config *cdclk_config,
 			  enum pipe pipe)
@@ -1747,15 +1759,8 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 	else
 		clock = cdclk;
 
-	if (has_cdclk_squasher(dev_priv)) {
-		u32 squash_ctl = 0;
-
-		if (waveform)
-			squash_ctl = CDCLK_SQUASH_ENABLE |
-				CDCLK_SQUASH_WINDOW_SIZE(0xf) | waveform;
-
-		intel_de_write(dev_priv, CDCLK_SQUASH_CTL, squash_ctl);
-	}
+	if (has_cdclk_squasher(dev_priv))
+		dg2_prog_squash_ctl(dev_priv, waveform);
 
 	val = bxt_cdclk_cd2x_div_sel(dev_priv, clock, vco) |
 		bxt_cdclk_cd2x_pipe(dev_priv, pipe) |
-- 
2.25.1

