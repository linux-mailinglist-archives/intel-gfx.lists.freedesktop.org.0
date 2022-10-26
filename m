Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 653F760DEA9
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 12:12:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8BAE10E4AC;
	Wed, 26 Oct 2022 10:12:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52A8310E26A
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 10:11:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666779109; x=1698315109;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=nqoz5xcsHHOIrQ6MOKBN9Bls25Dv+d7ciWN7gchklvU=;
 b=KheVr9g93RiRPxcO2Sb6kKGOf702j4DFBaNa3+SehKQ3Wx/bgDYbxG+s
 PiBXK0ygw4gwHo/HcrohOV5ffZGqDASosyH7g1kmtURPQwophseNF0ONX
 B0K96SnjVaXDrh2nZ417FrgjruGVf+vKgOVIPN/Rml9E2lg+79G2auZwq
 n3PfEQKvikSnNJt7Q2Os2FlmasnDj/i0lEUHJp3EbLq5BUfW+/hCHCrC5
 0ZU1Phu0V4uUuLteqAEiFuN6ji/VTkQWvyKhsG+hV9tN7oHqcJ4f6l6P6
 Bd4XbFNL4x6MSYBZE2v14At+hdjWie7KUJVKN/9SHIC9MFJSe/aK2y7fP g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="394222266"
X-IronPort-AV: E=Sophos;i="5.95,214,1661842800"; d="scan'208";a="394222266"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 03:11:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="695305908"
X-IronPort-AV: E=Sophos;i="5.95,214,1661842800"; d="scan'208";a="695305908"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga008.fm.intel.com with SMTP; 26 Oct 2022 03:11:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Oct 2022 13:11:46 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Oct 2022 13:11:30 +0300
Message-Id: <20221026101134.20865-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221026101134.20865-1-ville.syrjala@linux.intel.com>
References: <20221026101134.20865-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/8] drm/i915/sdvo: Simplify output setup debugs
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

Get rid of this funny byte based dumping of invalid output
flags and just dump it as a single hex numbers. Also do that
early since all the rest is going to get skipped anyway of
the thing is zero.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_sdvo.c | 25 ++++++++++-------------
 1 file changed, 11 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 1eaaa7ec580e..d432f70001b7 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -199,7 +199,7 @@ to_intel_sdvo_connector(struct drm_connector *connector)
 	container_of((conn_state), struct intel_sdvo_connector_state, base.base)
 
 static bool
-intel_sdvo_output_setup(struct intel_sdvo *intel_sdvo, u16 flags);
+intel_sdvo_output_setup(struct intel_sdvo *intel_sdvo);
 static bool
 intel_sdvo_tv_create_property(struct intel_sdvo *intel_sdvo,
 			      struct intel_sdvo_connector *intel_sdvo_connector,
@@ -2937,11 +2937,18 @@ static u16 intel_sdvo_filter_output_flags(u16 flags)
 }
 
 static bool
-intel_sdvo_output_setup(struct intel_sdvo *intel_sdvo, u16 flags)
+intel_sdvo_output_setup(struct intel_sdvo *intel_sdvo)
 {
 	struct drm_i915_private *i915 = to_i915(intel_sdvo->base.base.dev);
+	u16 flags;
 
-	flags = intel_sdvo_filter_output_flags(flags);
+	flags = intel_sdvo_filter_output_flags(intel_sdvo->caps.output_flags);
+
+	if (flags == 0) {
+		DRM_DEBUG_KMS("%s: Unknown SDVO output type (0x%04x)\n",
+			      SDVO_NAME(intel_sdvo), intel_sdvo->caps.output_flags);
+		return false;
+	}
 
 	intel_sdvo->controlled_output = flags;
 
@@ -2984,15 +2991,6 @@ intel_sdvo_output_setup(struct intel_sdvo *intel_sdvo, u16 flags)
 		if (!intel_sdvo_lvds_init(intel_sdvo, 1))
 			return false;
 
-	if (flags == 0) {
-		unsigned char bytes[2];
-
-		memcpy(bytes, &intel_sdvo->caps.output_flags, 2);
-		DRM_DEBUG_KMS("%s: Unknown SDVO output type (0x%02x%02x)\n",
-			      SDVO_NAME(intel_sdvo),
-			      bytes[0], bytes[1]);
-		return false;
-	}
 	intel_sdvo->base.pipe_mask = ~0;
 
 	return true;
@@ -3368,8 +3366,7 @@ bool intel_sdvo_init(struct drm_i915_private *dev_priv,
 	intel_sdvo->colorimetry_cap =
 		intel_sdvo_get_colorimetry_cap(intel_sdvo);
 
-	if (intel_sdvo_output_setup(intel_sdvo,
-				    intel_sdvo->caps.output_flags) != true) {
+	if (!intel_sdvo_output_setup(intel_sdvo)) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "SDVO output failed to setup on %s\n",
 			    SDVO_NAME(intel_sdvo));
-- 
2.37.4

