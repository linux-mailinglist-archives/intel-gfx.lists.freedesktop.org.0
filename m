Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 448C64D6780
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 18:24:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78F2B10E609;
	Fri, 11 Mar 2022 17:24:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEE0B10E609
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Mar 2022 17:24:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647019477; x=1678555477;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Sdr0uWuUjGDeG8lNOaRcwFPbQ2pBzMJx4LQODcMgYqQ=;
 b=AR9QV236UbKkSrkzurd54cdkMiRTztKwJxZ0TPf1FNRV8aHPRE+CE5Bv
 ymcZyz9S3n1gA+K05Xajr55sj+mCLg7xV66sy9lH1/+6EmJ75wcvvm5Ra
 K2yUkUr2RdIRHfVx/88WeA/hcrwwjRKWC2HQcyY1rISymJZN/gxr8/zeZ
 0CP0fwAyouv0vq9l88/8dCyON4jce2m+v9TO0QcEaA435vzFuadS86zq0
 jPQ/Z+WKuxc/nLcezSnWfERLrdTZR/mpR+izWYsc4teMhxdywXAGL+OvQ
 bdgGqoCSmPznF2mkkOhh9Vfd21Kg9h7ZUbcqqjNPyek+S1AcOon+qcFP0 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10283"; a="318835949"
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="318835949"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 09:24:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="555386329"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga008.jf.intel.com with SMTP; 11 Mar 2022 09:24:35 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Mar 2022 19:24:34 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Mar 2022 19:24:14 +0200
Message-Id: <20220311172428.14685-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220311172428.14685-1-ville.syrjala@linux.intel.com>
References: <20220311172428.14685-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 02/16] drm/i915/sdvo: Passt the requesed mode
 to intel_sdvo_create_preferred_input_timing()
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

We want to stop using connector->panel.fixed_mode directtly.
In order to look it up in the future we'll need to have the
requested mode around, so pass that in fully (instead of just
passing bits of it).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_sdvo.c | 18 +++++++-----------
 1 file changed, 7 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 76e1188b01d4..129f6619c3a1 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -783,24 +783,22 @@ static bool intel_sdvo_get_input_timing(struct intel_sdvo *intel_sdvo,
 static bool
 intel_sdvo_create_preferred_input_timing(struct intel_sdvo *intel_sdvo,
 					 struct intel_sdvo_connector *intel_sdvo_connector,
-					 u16 clock,
-					 u16 width,
-					 u16 height)
+					 const struct drm_display_mode *mode)
 {
 	struct intel_sdvo_preferred_input_timing_args args;
 
 	memset(&args, 0, sizeof(args));
-	args.clock = clock;
-	args.width = width;
-	args.height = height;
+	args.clock = mode->clock / 10;
+	args.width = mode->hdisplay;
+	args.height = mode->vdisplay;
 	args.interlace = 0;
 
 	if (IS_LVDS(intel_sdvo_connector)) {
 		const struct drm_display_mode *fixed_mode =
 			intel_sdvo_connector->base.panel.fixed_mode;
 
-		if (fixed_mode->hdisplay != width ||
-		    fixed_mode->vdisplay != height)
+		if (fixed_mode->hdisplay != args.width ||
+		    fixed_mode->vdisplay != args.height)
 			args.scaled = 1;
 	}
 
@@ -1236,9 +1234,7 @@ intel_sdvo_get_preferred_input_mode(struct intel_sdvo *intel_sdvo,
 
 	if (!intel_sdvo_create_preferred_input_timing(intel_sdvo,
 						      intel_sdvo_connector,
-						      mode->clock / 10,
-						      mode->hdisplay,
-						      mode->vdisplay))
+						      mode))
 		return false;
 
 	if (!intel_sdvo_get_preferred_input_timing(intel_sdvo,
-- 
2.34.1

