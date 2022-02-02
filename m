Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F5A4A6FC0
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Feb 2022 12:16:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 271EA10E844;
	Wed,  2 Feb 2022 11:16:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACEC610E844
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Feb 2022 11:16:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643800589; x=1675336589;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=z8AQQa895RQrEHT6Fg+O3Kxi6F/nUH7hDgjdLsOAqGs=;
 b=UzhX11XBPwxVmF71mYD7Cl3wpVGCoL4AM9AsgGlWnD1tesbwXOSvHjvf
 rB2tO/iLo3niEEcOUt3T+2Xdy5/sEVOLDbJbvG+RI19kvXFngpSPoYmb2
 thx2A+jhz9zFQ2aCjreSfjpBI/mUSIhgvO6q9ab3SuzYlyaOouFHKsrT4
 1E5v9EDr5NcP3AG0ZVXGjUI5XqLJgeAKHmDkaT0u/TvpB9TPvAx3Q3YCS
 BylAozKmsXYM2OT7OdKvDSzXnLAWW29iQC2lIJequz4R40zzfDpNmQkDC
 es8vcfvwhh1spb3f58UM6Zy+u/822txIxrJpazQD5aju4vfWOY7bN5lR6 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10245"; a="227862859"
X-IronPort-AV: E=Sophos;i="5.88,336,1635231600"; d="scan'208";a="227862859"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 03:16:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,336,1635231600"; d="scan'208";a="620115027"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by FMSMGA003.fm.intel.com with SMTP; 02 Feb 2022 03:16:27 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 02 Feb 2022 13:16:26 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Feb 2022 13:16:16 +0200
Message-Id: <20220202111616.1579-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220202111616.1579-1-ville.syrjala@linux.intel.com>
References: <20220202111616.1579-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: Drop pointless i830 PIPECONF read
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

Reading the PIPECONF enable bit out from the hardware
in i9xx_set_pipeconf() on i830 is pointless as the bit should
always be set since we keep both pipes constantly running on
i830. Drop the pointless read and just always keep the bit set.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 05713b64d4bc..9e318341a498 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3347,13 +3347,11 @@ static void i9xx_set_pipeconf(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	u32 pipeconf;
-
-	pipeconf = 0;
+	u32 pipeconf = 0;
 
 	/* we keep both pipes enabled on 830 */
 	if (IS_I830(dev_priv))
-		pipeconf |= intel_de_read(dev_priv, PIPECONF(crtc->pipe)) & PIPECONF_ENABLE;
+		pipeconf |= PIPECONF_ENABLE;
 
 	if (crtc_state->double_wide)
 		pipeconf |= PIPECONF_DOUBLE_WIDE;
-- 
2.34.1

