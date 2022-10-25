Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6374460D725
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 00:31:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BB0B10E1A0;
	Tue, 25 Oct 2022 22:31:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 965EF10E17C
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Oct 2022 22:30:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666737031; x=1698273031;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=51hKRi3nm1F+iyjzC5MKJbP/6j99/1VQkOwMZwGeWCo=;
 b=MFJuKaepItiV/rQUdE08Pit6USUIg4GltB8u0M5Yad0iCabbWpdlHUMc
 T/DDdjf/mMgRCIcDZRAU2sIZWbr9SkD/d/MMMJTX9LnI9spnODH4U/Buc
 IXeep40i3lH9vVfxCenIN4DOKU8/pdusFzm8QZcQz6TQvjFUHKcUlBv2Z
 kt2FQBOreSTYzSYbw9LQCrtDaMbw3A/0rTEPed9hgzfNaT2om1Ov5DFJD
 JK9g5KS7V/J1CEEGmi5gB2H07xkrSppVDoC8b/xpCJSsPJfMviq0yGoP1
 Uaj57M8q6aTwTGQPj6JE61FHaE2qOs5H2LMORVTGLPdKG40BR5ISHimeb Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="305421442"
X-IronPort-AV: E=Sophos;i="5.95,213,1661842800"; d="scan'208";a="305421442"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 15:30:30 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="665072916"
X-IronPort-AV: E=Sophos;i="5.95,213,1661842800"; d="scan'208";a="665072916"
Received: from anushasr-mobl7.jf.intel.com ([10.24.14.105])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 15:30:29 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Oct 2022 15:30:42 -0700
Message-Id: <20221025223042.138810-4-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221025223042.138810-1-anusha.srivatsa@intel.com>
References: <20221025223042.138810-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 4/4] drm/i915/display: Move squash_ctl register
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

No functional change. Introduce dg2_cdclk_squash_program and
move squash_ctl register programming bits to this.

v2: s/dg2_cdclk_squash_programming/dg2_cdclk_squash_program (Jani)

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
Reviewed-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 23 +++++++++++++---------
 1 file changed, 14 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 9cd02b85ee51..eada931cb1c8 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1704,6 +1704,18 @@ static void bxt_cdclk_pll_update(struct drm_i915_private *i915, int vco)
 		bxt_de_pll_enable(i915, vco);
 }
 
+static void dg2_cdclk_squash_program(struct drm_i915_private *i915,
+				     u16 waveform)
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
@@ -1751,15 +1763,8 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
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

