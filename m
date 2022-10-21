Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D4F296080DC
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 23:40:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DE9C10E4DC;
	Fri, 21 Oct 2022 21:39:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7077110E08D
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 21:39:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666388382; x=1697924382;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kd+TSOSEnEEtpjBD87O2G803M8dIxwjCN1IKmC6qLkw=;
 b=XskuEZytfq9TBhihILyruEWJSjcqDbrvMSlYyiuu8YC75NPrb3ersaZb
 qn3nh+JRnzxuZXHcGQOvKvZMZkzmuagWAsLHym08cifj2ki4lwkGjzDrl
 EY5yAyY5inQhpQ7kdofz6X3dY71MYOouwesb8bXoLmFXgQ2mkIW9j7mkN
 iPzs/VWLKwnHt/dUJFr5td1ut+bEoIEXrNISdE3o7EqrEPyRrC53m0W7q
 I/LefBFn3BrWUIzwNExiD9Qx/zpmW7VU4SkwllOXmR7kZfTM3MJhnwu7C
 P17YADpsOxFCsNlOZRPXVQZQYVjvjWtYiasyTCF5x+fNu7x37v/U7c4SA w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="308795361"
X-IronPort-AV: E=Sophos;i="5.95,203,1661842800"; d="scan'208";a="308795361"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 14:39:42 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="699511270"
X-IronPort-AV: E=Sophos;i="5.95,203,1661842800"; d="scan'208";a="699511270"
Received: from anushasr-mobl7.jf.intel.com ([10.24.14.105])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 14:39:41 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Oct 2022 14:39:48 -0700
Message-Id: <20221021213948.516041-5-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221021213948.516041-1-anusha.srivatsa@intel.com>
References: <20221021213948.516041-1-anusha.srivatsa@intel.com>
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

No functional change. Introduce dg2_cdclk_squash_program and
move squash_ctl register programming bits to this.

v2: s/dg2_cdclk_squash_programming/dg2_cdclk_squash_program (Jani)

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 23 +++++++++++++---------
 1 file changed, 14 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 3893779e0c23..e21cd0fbe29a 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1705,6 +1705,18 @@ static void bxt_cdclk_pll_update(struct drm_i915_private *i915, int vco)
 
 }
 
+static void dg2_cdclk_squash_program(struct drm_i915_private *i915,
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
+		dg2_cdclk_squash_program(dev_priv, waveform);
 
 	val = bxt_cdclk_cd2x_div_sel(dev_priv, clock, vco) |
 		bxt_cdclk_cd2x_pipe(dev_priv, pipe) |
-- 
2.25.1

