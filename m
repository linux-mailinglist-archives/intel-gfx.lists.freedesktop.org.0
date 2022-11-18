Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 439FD62F308
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Nov 2022 11:55:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BAE710E245;
	Fri, 18 Nov 2022 10:55:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D49E10E233
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Nov 2022 10:55:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668768931; x=1700304931;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=lnX42Cy91X1k3lS9R1PvdxDbDkkOhbl6W3h3VYtDF/Q=;
 b=UZ4rwGRm7c/ep9pMY3UyAPfchDuNzzgnBGTuqF7WA01fTrhZOtiSESRk
 Hnn7OUQr1dw1uHYlXdErCdHzoqnH5FmjvXBjDt+jGl/YVO8jF5gevB8/3
 aD0lZma9nsMcGl1N2/AT8pkMLMLTW8P5aNFafxY0hgmBKJaAjqIzC4b0K
 eA6Tu0HaUX769pHfUjKnaiaPmrM1McTKuOHYu8cYGX41BBTSLx1aB3YxX
 rw6rpqjkVhWcWXgtP91SQRN/JWPlrneArvWnrQj13aqY95Um8WV2uRWqT
 rhdSMVs75NYseuleKOw90yTSn/QQr+lZXaVlYua+kI4r8eD7wCfl2JPOp w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="310741706"
X-IronPort-AV: E=Sophos;i="5.96,174,1665471600"; d="scan'208";a="310741706"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2022 02:55:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="708994385"
X-IronPort-AV: E=Sophos;i="5.96,174,1665471600"; d="scan'208";a="708994385"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga004.fm.intel.com with SMTP; 18 Nov 2022 02:55:29 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 18 Nov 2022 12:55:28 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Nov 2022 12:55:17 +0200
Message-Id: <20221118105525.27254-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221118105525.27254-1-ville.syrjala@linux.intel.com>
References: <20221118105525.27254-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/9] drm/i915/dvo: Remove unused
 panel_wants_dither
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

intel_dvo.panel_wants_dither is only set but never used.
We can't do dithering on the gmch side anyway since the
dithering logic is part of the integrated LVDS port and
not available for other output types.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dvo.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index c86f9890754d..94dcc43876c9 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -118,8 +118,6 @@ struct intel_dvo {
 	struct intel_dvo_device dev;
 
 	struct intel_connector *attached_connector;
-
-	bool panel_wants_dither;
 };
 
 static struct intel_dvo *enc_to_dvo(struct intel_encoder *encoder)
@@ -531,8 +529,6 @@ void intel_dvo_init(struct drm_i915_private *dev_priv)
 							   intel_encoder);
 
 			intel_panel_init(intel_connector);
-
-			intel_dvo->panel_wants_dither = true;
 		}
 
 		return;
-- 
2.37.4

