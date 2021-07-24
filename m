Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79DDB3D43CB
	for <lists+intel-gfx@lfdr.de>; Sat, 24 Jul 2021 02:12:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 238026FD4F;
	Sat, 24 Jul 2021 00:11:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B5746FD2C;
 Sat, 24 Jul 2021 00:11:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10054"; a="191563464"
X-IronPort-AV: E=Sophos;i="5.84,265,1620716400"; d="scan'208";a="191563464"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2021 17:11:34 -0700
X-IronPort-AV: E=Sophos;i="5.84,265,1620716400"; d="scan'208";a="434270033"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2021 17:11:33 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Jul 2021 17:11:05 -0700
Message-Id: <20210724001114.249295-22-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210724001114.249295-1-lucas.demarchi@intel.com>
References: <20210724001114.249295-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 21/30] drm/i915: remove explicit CNL handling
 from intel_pch.c
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Remove references for CNL from pch detection.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/intel_pch.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pch.c b/drivers/gpu/drm/i915/intel_pch.c
index cc44164e242b..d1d4b97b86f5 100644
--- a/drivers/gpu/drm/i915/intel_pch.c
+++ b/drivers/gpu/drm/i915/intel_pch.c
@@ -81,7 +81,6 @@ intel_pch_type(const struct drm_i915_private *dev_priv, unsigned short id)
 	case INTEL_PCH_CNP_DEVICE_ID_TYPE:
 		drm_dbg_kms(&dev_priv->drm, "Found Cannon Lake PCH (CNP)\n");
 		drm_WARN_ON(&dev_priv->drm,
-			    !IS_CANNONLAKE(dev_priv) &&
 			    !IS_COFFEELAKE(dev_priv) &&
 			    !IS_COMETLAKE(dev_priv));
 		return PCH_CNP;
@@ -89,7 +88,6 @@ intel_pch_type(const struct drm_i915_private *dev_priv, unsigned short id)
 		drm_dbg_kms(&dev_priv->drm,
 			    "Found Cannon Lake LP PCH (CNP-LP)\n");
 		drm_WARN_ON(&dev_priv->drm,
-			    !IS_CANNONLAKE(dev_priv) &&
 			    !IS_COFFEELAKE(dev_priv) &&
 			    !IS_COMETLAKE(dev_priv));
 		return PCH_CNP;
@@ -171,8 +169,7 @@ intel_virt_detect_pch(const struct drm_i915_private *dev_priv,
 		id = INTEL_PCH_MCC_DEVICE_ID_TYPE;
 	else if (IS_ICELAKE(dev_priv))
 		id = INTEL_PCH_ICP_DEVICE_ID_TYPE;
-	else if (IS_CANNONLAKE(dev_priv) ||
-		 IS_COFFEELAKE(dev_priv) ||
+	else if (IS_COFFEELAKE(dev_priv) ||
 		 IS_COMETLAKE(dev_priv))
 		id = INTEL_PCH_CNP_DEVICE_ID_TYPE;
 	else if (IS_KABYLAKE(dev_priv) || IS_SKYLAKE(dev_priv))
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
