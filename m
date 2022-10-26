Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 05D7F60DEAA
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 12:12:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8729D10E4AF;
	Wed, 26 Oct 2022 10:12:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C3ED10E492
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 10:11:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666779112; x=1698315112;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=3m/jb3otJkYIpBQH1R1j+cCKaySSvvmqwSAU3Du02rE=;
 b=Kh78+PrDwvgRFRONyxDskB4j9ab5wChH3pGWFrMktsANmuGbda+qefkl
 r6EhkMRjIJZLJCenbOSBWisGlkac+tw9Hk1Lyw2yolgd1Bn3zbcBnz6/1
 SgN4crrY1wb2D2OK10V0CpdwcFn5jD4DI3+yZONowPnfMDw0tDcOaIvCK
 lChAMF0zQ9SJsszid0wHfJptHP7MqngcdzRdU7dji5Tk/RdmAbjOSnF7t
 H80R8bE0SnUtQebwK+unTg6EwN69k2ZcuEqM4cPWrO/VlSl7Cn6MML5uU
 1j8GWC2DU6Bj21VDv+DSmU5ZmimsRTa1adi0Zbf+K2iwHZk6xm/EsW8bP A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="394222270"
X-IronPort-AV: E=Sophos;i="5.95,214,1661842800"; d="scan'208";a="394222270"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 03:11:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="695305937"
X-IronPort-AV: E=Sophos;i="5.95,214,1661842800"; d="scan'208";a="695305937"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga008.fm.intel.com with SMTP; 26 Oct 2022 03:11:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Oct 2022 13:11:49 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Oct 2022 13:11:31 +0300
Message-Id: <20221026101134.20865-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221026101134.20865-1-ville.syrjala@linux.intel.com>
References: <20221026101134.20865-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/8] drm/i915/sdvo: Don't add DDC modes for LVDS
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

Stop enumerating the DDC modes for SDVO LVDS outputs (outside
the initial fixed mode setup). intel_panel_mode_valid() will
just reject most of them anyway, and any left over are entirely
pointless as they'll match the fixed mode hdisp+vdisp+vrefresh
so no user visible effect from using them instead of the fixed
mode.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_sdvo.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index d432f70001b7..d7943f9a96e7 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -2290,17 +2290,12 @@ static int intel_sdvo_get_tv_modes(struct drm_connector *connector)
 
 static int intel_sdvo_get_lvds_modes(struct drm_connector *connector)
 {
-	struct intel_sdvo *intel_sdvo = intel_attached_sdvo(to_intel_connector(connector));
 	struct drm_i915_private *dev_priv = to_i915(connector->dev);
-	int num_modes = 0;
 
 	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s]\n",
 		    connector->base.id, connector->name);
 
-	num_modes += intel_panel_get_modes(to_intel_connector(connector));
-	num_modes += intel_ddc_get_modes(connector, &intel_sdvo->ddc);
-
-	return num_modes;
+	return intel_panel_get_modes(to_intel_connector(connector));
 }
 
 static int intel_sdvo_get_modes(struct drm_connector *connector)
-- 
2.37.4

