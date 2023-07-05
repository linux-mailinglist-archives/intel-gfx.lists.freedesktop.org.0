Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7DE8748EC6
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jul 2023 22:21:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21B5810E3C6;
	Wed,  5 Jul 2023 20:21:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 027E210E3C6
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jul 2023 20:21:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688588504; x=1720124504;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=U5bMgYToyxy1UdVm/TnO+pxIp51IPq/vg7eG2Pfjg0w=;
 b=VRqSzctLNeHcMm0OM3Mnvuk+j1zFEkKq3S8VMG7bahePSmU1rwhHRjDN
 AC084e3qInTF1OizRhq5C20peF4zpFv9DGFhvbrIMprAvZPK09E1WGTDf
 oCaVSvPdIjcn03Z++fgr78uMdCID2Jnx9qXIZEjLEmlUXMveOi09Bgt37
 aWvGgcoPf4DU67X3HYayIsUlNoKETGWRDxGfT0wewuLVNju/UvlGCFeOP
 wVGCWBOg1MlChKCjkCIfDF03pRU1JvZw6wM0lR6lJGtRYR7jJ8sM8Y5GT
 ax9Akp6AlVNUgh2D735WTLW25PlAC+KbAguSuxDiKVAiRX7brK+cpmJKu w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="353269052"
X-IronPort-AV: E=Sophos;i="6.01,184,1684825200"; d="scan'208";a="353269052"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2023 13:21:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="754491116"
X-IronPort-AV: E=Sophos;i="6.01,184,1684825200"; d="scan'208";a="754491116"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga001.jf.intel.com with SMTP; 05 Jul 2023 13:21:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 05 Jul 2023 23:21:41 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Jul 2023 23:21:15 +0300
Message-Id: <20230705202122.17915-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230705202122.17915-1-ville.syrjala@linux.intel.com>
References: <20230705202122.17915-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/13] drm/i915/sdvo: Pick the TV dotclock from
 adjusted_mode
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

port_clock is what the encoder/dpll code is supposed to calculate,
it is not the input clock. Use the dotclock as the target we're
trying to achieve instead.

TODO: the SDVO TV clocking is a mess atm and needs further work

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_sdvo.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 76eed11e9fed..75a8e5583358 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -1272,7 +1272,7 @@ intel_sdvo_get_preferred_input_mode(struct intel_sdvo *intel_sdvo,
 static void i9xx_adjust_sdvo_tv_clock(struct intel_crtc_state *pipe_config)
 {
 	struct drm_i915_private *dev_priv = to_i915(pipe_config->uapi.crtc->dev);
-	unsigned dotclock = pipe_config->port_clock;
+	unsigned int dotclock = pipe_config->hw.adjusted_mode.crtc_clock;
 	struct dpll *clock = &pipe_config->dpll;
 
 	/*
-- 
2.39.3

