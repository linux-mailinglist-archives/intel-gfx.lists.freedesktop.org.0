Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 183FC60DFB6
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 13:39:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B28310E4BD;
	Wed, 26 Oct 2022 11:39:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E2D710E34E
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 11:39:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666784352; x=1698320352;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=7ojgzD6hwVhlgMrcV9Esj0rIqEvhTSEzf0krrNGJ9GA=;
 b=bgyWZDom0dN9Q7xcM8tZbnSQZ3jH7KqvFA67m7AP+EVC58yGrIFInA7C
 jdB5venjOIS2SmaLwbqqwIoVsd1cfvWrGpeAA89ImZ7EMlXgt+5jHTE6S
 byseA7wNihnZvfg/IVpn3S2uDCgQHTxhioG5srLjFfXV8KXwUUG1UgEKv
 tsdh8WuBFNsu/6PN8K9xu1wX6zpSqsGsjfXxL87ePnNlkZInWzgO1+ynu
 /Aa4fr1UK8/rw+saw40Ul62nCHv/y7rPWDybkiFhARI9FbIyk9Q1m4UH+
 2dOWdfj7DK0pcMPj+fxjwRzFngqYvzS/l8ZMfYwh9lEen0hnWsDM0VssY A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="309614194"
X-IronPort-AV: E=Sophos;i="5.95,214,1661842800"; d="scan'208";a="309614194"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 04:39:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="663164334"
X-IronPort-AV: E=Sophos;i="5.95,214,1661842800"; d="scan'208";a="663164334"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga008.jf.intel.com with SMTP; 26 Oct 2022 04:39:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Oct 2022 14:39:09 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Oct 2022 14:38:56 +0300
Message-Id: <20221026113906.10551-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221026113906.10551-1-ville.syrjala@linux.intel.com>
References: <20221026113906.10551-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/11] drm/i915: Use sizeof(variable) instead
 sizeof(type)
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

Use sizeof(variable) instead of sizeof(type) in the hopes of
less chance of screwing things up.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 4bb113c39f4b..92cc43d5bad6 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -565,7 +565,7 @@ create_linear_lut(struct drm_i915_private *i915, int lut_size)
 	int i;
 
 	blob = drm_property_create_blob(&i915->drm,
-					sizeof(struct drm_color_lut) * lut_size,
+					sizeof(lut[0]) * lut_size,
 					NULL);
 	if (IS_ERR(blob))
 		return blob;
@@ -1895,7 +1895,7 @@ static struct drm_property_blob *i9xx_read_lut_8(struct intel_crtc *crtc)
 	int i;
 
 	blob = drm_property_create_blob(&dev_priv->drm,
-					sizeof(struct drm_color_lut) * LEGACY_LUT_LENGTH,
+					sizeof(lut[0]) * LEGACY_LUT_LENGTH,
 					NULL);
 	if (IS_ERR(blob))
 		return NULL;
@@ -1930,7 +1930,7 @@ static struct drm_property_blob *i965_read_lut_10p6(struct intel_crtc *crtc)
 	struct drm_color_lut *lut;
 
 	blob = drm_property_create_blob(&dev_priv->drm,
-					sizeof(struct drm_color_lut) * lut_size,
+					sizeof(lut[0]) * lut_size,
 					NULL);
 	if (IS_ERR(blob))
 		return NULL;
@@ -1973,7 +1973,7 @@ static struct drm_property_blob *chv_read_cgm_gamma(struct intel_crtc *crtc)
 	struct drm_color_lut *lut;
 
 	blob = drm_property_create_blob(&dev_priv->drm,
-					sizeof(struct drm_color_lut) * lut_size,
+					sizeof(lut[0]) * lut_size,
 					NULL);
 	if (IS_ERR(blob))
 		return NULL;
@@ -2009,7 +2009,7 @@ static struct drm_property_blob *ilk_read_lut_8(struct intel_crtc *crtc)
 	int i;
 
 	blob = drm_property_create_blob(&dev_priv->drm,
-					sizeof(struct drm_color_lut) * LEGACY_LUT_LENGTH,
+					sizeof(lut[0]) * LEGACY_LUT_LENGTH,
 					NULL);
 	if (IS_ERR(blob))
 		return NULL;
@@ -2034,7 +2034,7 @@ static struct drm_property_blob *ilk_read_lut_10(struct intel_crtc *crtc)
 	struct drm_color_lut *lut;
 
 	blob = drm_property_create_blob(&dev_priv->drm,
-					sizeof(struct drm_color_lut) * lut_size,
+					sizeof(lut[0]) * lut_size,
 					NULL);
 	if (IS_ERR(blob))
 		return NULL;
@@ -2087,7 +2087,7 @@ static struct drm_property_blob *bdw_read_lut_10(struct intel_crtc *crtc,
 	drm_WARN_ON(&dev_priv->drm, lut_size != hw_lut_size);
 
 	blob = drm_property_create_blob(&dev_priv->drm,
-					sizeof(struct drm_color_lut) * lut_size,
+					sizeof(lut[0]) * lut_size,
 					NULL);
 	if (IS_ERR(blob))
 		return NULL;
@@ -2138,7 +2138,7 @@ icl_read_lut_multi_segment(struct intel_crtc *crtc)
 	struct drm_color_lut *lut;
 
 	blob = drm_property_create_blob(&dev_priv->drm,
-					sizeof(struct drm_color_lut) * lut_size,
+					sizeof(lut[0]) * lut_size,
 					NULL);
 	if (IS_ERR(blob))
 		return NULL;
-- 
2.37.4

