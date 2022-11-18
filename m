Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E3C362F312
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Nov 2022 11:56:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F2D410E6FE;
	Fri, 18 Nov 2022 10:56:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8F0D10E6FE
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Nov 2022 10:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668768959; x=1700304959;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=vWEDA58neJKH7wcNheO7bcFjNKiKReo/gOzRQIkIVOk=;
 b=kSd0IQcWOZoaJgRBd3x7PRI9PATL/7UFn6VyVZ4bNbTAT+JwinVLzV5t
 eltaZxFcOyb1myNu7Z0309RUYFR/PPle0JK/S02UNruqgXSy4FLZ9fR4z
 a6NaUv1Pu8ip6Rst8M/p9CSZ6goXz7wMt7dio7S7PMBQxZuM8ZnPOmKnJ
 q4RYM7yBVXM+7MVeyMLZqHSecDUehPcFkztV1PxErC/AMfeZpKzAJwZwg
 l7Jz4r+XiXWmal76t7z3cA0e5CxOzLSH1L3Ccf4moGaTBewc4SNhlweTs
 zAX/2ojYO6TH8z7nxZved0e7jdXZnHOlY4suURn7pJcfH3sZDLIdo/GuK A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="310741737"
X-IronPort-AV: E=Sophos;i="5.96,174,1665471600"; d="scan'208";a="310741737"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2022 02:55:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="708994397"
X-IronPort-AV: E=Sophos;i="5.96,174,1665471600"; d="scan'208";a="708994397"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga004.fm.intel.com with SMTP; 18 Nov 2022 02:55:40 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 18 Nov 2022 12:55:39 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Nov 2022 12:55:21 +0200
Message-Id: <20221118105525.27254-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221118105525.27254-1-ville.syrjala@linux.intel.com>
References: <20221118105525.27254-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/9] drm/i915/dvo: Eliminate useless 'port'
 variable
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

Reorder the drm_encoder_init() vs. encoder->port
assignment so that we don't need the extra 'port'
variable.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dvo.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index 9ce3b4ec6a4d..87ee913cf89b 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -453,7 +453,6 @@ void intel_dvo_init(struct drm_i915_private *dev_priv)
 		bool dvoinit;
 		enum pipe pipe;
 		u32 dpll[I915_MAX_PIPES];
-		enum port port;
 
 		/*
 		 * Allow the I2C driver info to specify the GPIO to be used in
@@ -506,21 +505,20 @@ void intel_dvo_init(struct drm_i915_private *dev_priv)
 		if (!dvoinit)
 			continue;
 
-		port = intel_dvo_port(dvo->dvo_reg);
-		drm_encoder_init(&dev_priv->drm, &intel_encoder->base,
-				 &intel_dvo_enc_funcs,
-				 intel_dvo_encoder_type(dvo),
-				 "DVO %c", port_name(port));
-
 		intel_encoder->type = INTEL_OUTPUT_DVO;
 		intel_encoder->power_domain = POWER_DOMAIN_PORT_OTHER;
-		intel_encoder->port = port;
+		intel_encoder->port = intel_dvo_port(dvo->dvo_reg);
 		intel_encoder->pipe_mask = ~0;
 
 		if (dvo->type != INTEL_DVO_CHIP_LVDS)
 			intel_encoder->cloneable = BIT(INTEL_OUTPUT_ANALOG) |
 				BIT(INTEL_OUTPUT_DVO);
 
+		drm_encoder_init(&dev_priv->drm, &intel_encoder->base,
+				 &intel_dvo_enc_funcs,
+				 intel_dvo_encoder_type(dvo),
+				 "DVO %c", port_name(intel_encoder->port));
+
 		if (dvo->type == INTEL_DVO_CHIP_TMDS)
 			intel_connector->polled = DRM_CONNECTOR_POLL_CONNECT |
 				DRM_CONNECTOR_POLL_DISCONNECT;
-- 
2.37.4

