Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 53B84561EBC
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jun 2022 17:06:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8494611B630;
	Thu, 30 Jun 2022 15:06:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F85211B380
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jun 2022 15:06:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656601567; x=1688137567;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=l36lT6ehgiE24ToA7jNioTB21XFc8m7YVsl3wZKS4Vo=;
 b=DtFiQl9WeCvHnSXxPH8bCf7S/CcYS/1TdlfUtRl0apehD+m7CJXuj03x
 VUrZeu7ER9p6UbUQ87egT6YtQeQXIIpgIpOPksFqAp3elsTaKf+YZItEW
 tIXP7xNslU3yRJOu5WpOq7CMndlLS9Mz5hJRe9gsdG1C7cy1nhTkRMpbg
 zyTLpdlGtOWXWlCBe0unDZPrgkWUoYyehomN8cDBAE7fSu2pTL6I5UcWV
 NKOy8FQ6Oy2OFBhXJBdOgo8Q/euLgVn1RVx9bH0aMkcYd7TXT/eTRvT0j
 Wbz8qY/rcB1EifZ7za0PSh3g3RPJVLFJS/cG74csOlnFLvTEeW1vp4Be+ g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="368687197"
X-IronPort-AV: E=Sophos;i="5.92,234,1650956400"; d="scan'208";a="368687197"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 08:06:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,234,1650956400"; d="scan'208";a="565880827"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.161])
 by orsmga006.jf.intel.com with SMTP; 30 Jun 2022 08:06:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 30 Jun 2022 18:06:03 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Jun 2022 18:05:58 +0300
Message-Id: <20220630150600.24611-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220630150600.24611-1-ville.syrjala@linux.intel.com>
References: <20220630150600.24611-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Use short PCH names consistently
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

The comments regarding PCH compatibility use long vs.
short names inconsistently. Just use short names always.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_pch.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pch.c b/drivers/gpu/drm/i915/intel_pch.c
index e2b2bbdc0714..94446cac6605 100644
--- a/drivers/gpu/drm/i915/intel_pch.c
+++ b/drivers/gpu/drm/i915/intel_pch.c
@@ -25,7 +25,7 @@ intel_pch_type(const struct drm_i915_private *dev_priv, unsigned short id)
 		drm_dbg_kms(&dev_priv->drm, "Found PantherPoint PCH\n");
 		drm_WARN_ON(&dev_priv->drm,
 			    GRAPHICS_VER(dev_priv) != 6 && !IS_IVYBRIDGE(dev_priv));
-		/* PantherPoint is CPT compatible */
+		/* PPT is CPT compatible */
 		return PCH_CPT;
 	case INTEL_PCH_LPT_DEVICE_ID_TYPE:
 		drm_dbg_kms(&dev_priv->drm, "Found LynxPoint PCH\n");
@@ -47,7 +47,7 @@ intel_pch_type(const struct drm_i915_private *dev_priv, unsigned short id)
 			    !IS_HASWELL(dev_priv) && !IS_BROADWELL(dev_priv));
 		drm_WARN_ON(&dev_priv->drm,
 			    IS_HSW_ULT(dev_priv) || IS_BDW_ULT(dev_priv));
-		/* WildcatPoint is LPT compatible */
+		/* WPT is LPT compatible */
 		return PCH_LPT;
 	case INTEL_PCH_WPT_LP_DEVICE_ID_TYPE:
 		drm_dbg_kms(&dev_priv->drm, "Found WildcatPoint LP PCH\n");
@@ -55,7 +55,7 @@ intel_pch_type(const struct drm_i915_private *dev_priv, unsigned short id)
 			    !IS_HASWELL(dev_priv) && !IS_BROADWELL(dev_priv));
 		drm_WARN_ON(&dev_priv->drm,
 			    !IS_HSW_ULT(dev_priv) && !IS_BDW_ULT(dev_priv));
-		/* WildcatPoint is LPT compatible */
+		/* WPT is LPT compatible */
 		return PCH_LPT;
 	case INTEL_PCH_SPT_DEVICE_ID_TYPE:
 		drm_dbg_kms(&dev_priv->drm, "Found SunrisePoint PCH\n");
@@ -99,14 +99,14 @@ intel_pch_type(const struct drm_i915_private *dev_priv, unsigned short id)
 			    !IS_COFFEELAKE(dev_priv) &&
 			    !IS_COMETLAKE(dev_priv) &&
 			    !IS_ROCKETLAKE(dev_priv));
-		/* CometPoint is CNP Compatible */
+		/* CMP is CNP compatible */
 		return PCH_CNP;
 	case INTEL_PCH_CMP_V_DEVICE_ID_TYPE:
 		drm_dbg_kms(&dev_priv->drm, "Found Comet Lake V PCH (CMP-V)\n");
 		drm_WARN_ON(&dev_priv->drm,
 			    !IS_COFFEELAKE(dev_priv) &&
 			    !IS_COMETLAKE(dev_priv));
-		/* Comet Lake V PCH is based on KBP, which is SPT compatible */
+		/* CMP-V is based on KBP, which is SPT compatible */
 		return PCH_SPT;
 	case INTEL_PCH_ICP_DEVICE_ID_TYPE:
 	case INTEL_PCH_ICP2_DEVICE_ID_TYPE:
-- 
2.35.1

