Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BE15606C74
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 02:21:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E92A10E4E6;
	Fri, 21 Oct 2022 00:21:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4288710E55E
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 00:20:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666311628; x=1697847628;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=S5B8e7jqhWjJ0Qb+nCH6UpBWpCALKZHrTu2XaB7fmIo=;
 b=Uea13D3kPvLB7Jd0RoKnRemqQVL9hrNLTyB6CUEi4zlKp0UieUiAqauY
 O6dFlRU/2QcjFarLGEU1xdfuiYWC8YYaoxZMJuMLFUmftRlQ7goEj/ulW
 YSVOTLGDJZdHCEKUtnsKxPIXxGMPsOWGaDnn7MyJ2xcBW4iNS2SQI17iE
 Bgrd5RweTVIucRXLoXyKB3VQi3RN8Pl6P3l1f3w/b+IyrbVkQJ65PXaNG
 8EmivKk6WMcAT1t90gDGRHUKvdRJXxWDefBdaqFcrTpel3o5fA4DUm3lj
 35MxAiHeH0tts12VXI0ATnPowQuQ/zvWmc12yFqqRBYrsuFPFwLMhKELK w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="307971591"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="307971591"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 17:20:28 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="805232164"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="805232164"
Received: from aclausch-mobl.amr.corp.intel.com (HELO
 anushasr-mobl7.intel.com) ([10.212.253.196])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 17:20:27 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Oct 2022 17:20:24 -0700
Message-Id: <20221021002024.390052-5-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221021002024.390052-1-anusha.srivatsa@intel.com>
References: <20221021002024.390052-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/display: Move squash_ctl register
 programming to its own function
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
Cc: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

No functional change. Introduce dg2_cdclk_squash_programming and
move squash_ctl register programming bits to this.

Cc: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 23 +++++++++++++---------
 1 file changed, 14 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 8701796788e3..b692186c8f02 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1705,6 +1705,18 @@ static void bxt_cdclk_pll(struct drm_i915_private *i915, int vco)
 
 }
 
+static void dg2_cdclk_squash_programming(struct drm_i915_private *i915,
+					 u16 waveform)
+{
+	u32 squash_ctl = 0;
+
+	if (waveform)
+		squash_ctl = CDCLK_SQUASH_ENABLE |
+			     CDCLK_SQUASH_WINDOW_SIZE(0xf) | waveform;
+
+	intel_de_write(i915, CDCLK_SQUASH_CTL, squash_ctl);
+}
+
 static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 			  const struct intel_cdclk_config *cdclk_config,
 			  enum pipe pipe)
@@ -1752,15 +1764,8 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 	else
 		clock = cdclk;
 
-	if (HAS_CDCLK_SQUASH(dev_priv)) {
-		u32 squash_ctl = 0;
-
-		if (waveform)
-			squash_ctl = CDCLK_SQUASH_ENABLE |
-				CDCLK_SQUASH_WINDOW_SIZE(0xf) | waveform;
-
-		intel_de_write(dev_priv, CDCLK_SQUASH_CTL, squash_ctl);
-	}
+	if (HAS_CDCLK_SQUASH(dev_priv))
+		dg2_cdclk_squash_programming(dev_priv, waveform);
 
 	val = bxt_cdclk_cd2x_div_sel(dev_priv, clock, vco) |
 		bxt_cdclk_cd2x_pipe(dev_priv, pipe) |
-- 
2.25.1

