Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B17A4C323D
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Feb 2022 17:53:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B10110E5B3;
	Thu, 24 Feb 2022 16:53:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14A3810E5B3
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Feb 2022 16:53:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645721603; x=1677257603;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=P3lzzn+RftSynpDKwJ6SOjCEo1bQ0SKr6Dx1uRM5KtM=;
 b=KbYsj/BYERWxZ5PM95Zp/I2UP7HDtWQ4c0R3VTjZKuo0Z28GUdJwkG3q
 NKeNlifOvBecRBitPxeJdj0RCYMqY8UEicTUFzMPCuoB6A30UuprOROm/
 gKuv6f3xbMMhcFQsNGVagY4FVfSa5DhuIGrdrzav1ejcRn9Zb2N4Cgg6X
 Exi4inPwuKfssYGlaA9+9UKxk30Mz6phJ5DqQyrHIbZAvM+bpjfd9cumT
 Mf0NDqkAR4rd6Y5C0J5pkE/IOmGyyBIXRdcQrCZ/l3keZ8AUCr3s7GWNb
 K79NKozvUQjXSvG6ner0U7NOpUpvl8vKPmJCQnOKzQeu6c+Aehv99sDaG Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="252475749"
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400"; d="scan'208";a="252475749"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2022 08:51:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400"; d="scan'208";a="684335516"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga001.fm.intel.com with SMTP; 24 Feb 2022 08:51:07 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 24 Feb 2022 18:51:06 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Feb 2022 18:51:00 +0200
Message-Id: <20220224165103.15682-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220224165103.15682-1-ville.syrjala@linux.intel.com>
References: <20220224165103.15682-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915: Remove locks around skl+ scaler
 programming
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

All the skl+ scaler registers are suitably confined to their own
cachelines so we don't need the uncore.lock to globally serialize
access to these registers. We actually already dropped some of this
in commit 14ad15296d1f ("drm/i915: Make skl+ universal plane
registers unlocked") as the plane scaler enabling/reconfiguration
became lockless. So let's complete that and remove the rest of
the locks from the scaler programming as well.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index c2e94118566b..ac67e9fbb713 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -412,7 +412,6 @@ void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
 	int x = dst->x1;
 	int y = dst->y1;
 	int hscale, vscale;
-	unsigned long irqflags;
 	int id;
 	u32 ps_ctrl;
 
@@ -434,8 +433,6 @@ void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
 	ps_ctrl = skl_scaler_get_filter_select(crtc_state->hw.scaling_filter, 0);
 	ps_ctrl |=  PS_SCALER_EN | scaler_state->scalers[id].mode;
 
-	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
-
 	skl_scaler_setup_filter(dev_priv, pipe, id, 0,
 				crtc_state->hw.scaling_filter);
 
@@ -449,8 +446,6 @@ void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
 			  x << 16 | y);
 	intel_de_write_fw(dev_priv, SKL_PS_WIN_SZ(pipe, id),
 			  width << 16 | height);
-
-	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
 }
 
 void
@@ -519,15 +514,10 @@ static void skl_detach_scaler(struct intel_crtc *crtc, int id)
 {
 	struct drm_device *dev = crtc->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
-	unsigned long irqflags;
-
-	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
 
 	intel_de_write_fw(dev_priv, SKL_PS_CTRL(crtc->pipe, id), 0);
 	intel_de_write_fw(dev_priv, SKL_PS_WIN_POS(crtc->pipe, id), 0);
 	intel_de_write_fw(dev_priv, SKL_PS_WIN_SZ(crtc->pipe, id), 0);
-
-	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
 }
 
 /*
-- 
2.34.1

