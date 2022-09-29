Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCDAA5EEEAB
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Sep 2022 09:16:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43B8F10E9B0;
	Thu, 29 Sep 2022 07:16:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA97D10E919
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Sep 2022 07:15:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664435739; x=1695971739;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=8OhC/qzivFIjlwc0Gb8QLozjIjx45YZ1/U6Wt1s6XpU=;
 b=C+lbIx8oOVB0YMa3OIEgHIt5x0qghW03x8iqp7XyxZAvSJjr56eQebhR
 iL3DCSp0tOiLPqWsILpiGrW6IzdvYxcvT38XWx5kSixEVRhX+eoRbY9nP
 m8sEVPNo/d3SxzrrqmWRadtwDUFYsdxO1pYVUDT8VN/NuCMm6IwiFuw4c
 5j8LShLALAnHiQvVMepaHaDI8gNlyIwOmy7K5xJj2MdAQxDz3EBvgIN3x
 NQOrw+DpV4e3By5ZIXIq+87vPp8dViV/fcn2u5y1fJKvNXAWMlsNBckP+
 KtZD29765iz3+d2DUbO9VfN1xRMrld5usH0dTlTsYfaPXFNPRqxYSt8TL Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="288979106"
X-IronPort-AV: E=Sophos;i="5.93,354,1654585200"; d="scan'208";a="288979106"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 00:15:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="655441198"
X-IronPort-AV: E=Sophos;i="5.93,354,1654585200"; d="scan'208";a="655441198"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga001.jf.intel.com with SMTP; 29 Sep 2022 00:15:34 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 29 Sep 2022 10:15:34 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Sep 2022 10:15:15 +0300
Message-Id: <20220929071521.26612-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220929071521.26612-1-ville.syrjala@linux.intel.com>
References: <20220929071521.26612-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/10] drm/i915: Clean up
 intel_color_init_hooks()
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

Remove a bunch of pointless curly brackets and do
the s/dev_priv/i915/ while at it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 43 +++++++++++-----------
 1 file changed, 21 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index ce8a4be9b292..96687ec30b19 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -2219,30 +2219,29 @@ void intel_crtc_color_init(struct intel_crtc *crtc)
 				   INTEL_INFO(dev_priv)->display.color.gamma_lut_size);
 }
 
-void intel_color_init_hooks(struct drm_i915_private *dev_priv)
+void intel_color_init_hooks(struct drm_i915_private *i915)
 {
-	if (HAS_GMCH(dev_priv)) {
-		if (IS_CHERRYVIEW(dev_priv)) {
-			dev_priv->display.funcs.color = &chv_color_funcs;
-		} else if (DISPLAY_VER(dev_priv) >= 4) {
-			dev_priv->display.funcs.color = &i965_color_funcs;
-		} else {
-			dev_priv->display.funcs.color = &i9xx_color_funcs;
-		}
+	if (HAS_GMCH(i915)) {
+		if (IS_CHERRYVIEW(i915))
+			i915->display.funcs.color = &chv_color_funcs;
+		else if (DISPLAY_VER(i915) >= 4)
+			i915->display.funcs.color = &i965_color_funcs;
+		else
+			i915->display.funcs.color = &i9xx_color_funcs;
 	} else {
-		if (DISPLAY_VER(dev_priv) >= 11)
-			dev_priv->display.funcs.color = &icl_color_funcs;
-		else if (DISPLAY_VER(dev_priv) == 10)
-			dev_priv->display.funcs.color = &glk_color_funcs;
-		else if (DISPLAY_VER(dev_priv) == 9)
-			dev_priv->display.funcs.color = &skl_color_funcs;
-		else if (DISPLAY_VER(dev_priv) == 8)
-			dev_priv->display.funcs.color = &bdw_color_funcs;
-		else if (IS_HASWELL(dev_priv))
-			dev_priv->display.funcs.color = &hsw_color_funcs;
-		else if (DISPLAY_VER(dev_priv) == 7)
-			dev_priv->display.funcs.color = &ivb_color_funcs;
+		if (DISPLAY_VER(i915) >= 11)
+			i915->display.funcs.color = &icl_color_funcs;
+		else if (DISPLAY_VER(i915) == 10)
+			i915->display.funcs.color = &glk_color_funcs;
+		else if (DISPLAY_VER(i915) == 9)
+			i915->display.funcs.color = &skl_color_funcs;
+		else if (DISPLAY_VER(i915) == 8)
+			i915->display.funcs.color = &bdw_color_funcs;
+		else if (IS_HASWELL(i915))
+			i915->display.funcs.color = &hsw_color_funcs;
+		else if (DISPLAY_VER(i915) == 7)
+			i915->display.funcs.color = &ivb_color_funcs;
 		else
-			dev_priv->display.funcs.color = &ilk_color_funcs;
+			i915->display.funcs.color = &ilk_color_funcs;
 	}
 }
-- 
2.35.1

