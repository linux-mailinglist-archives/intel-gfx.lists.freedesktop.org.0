Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 098AB3D7047
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jul 2021 09:19:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38DBC733F0;
	Tue, 27 Jul 2021 07:19:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5783A6EB22
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jul 2021 07:19:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10057"; a="191982349"
X-IronPort-AV: E=Sophos;i="5.84,272,1620716400"; d="scan'208";a="191982349"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2021 00:19:04 -0700
X-IronPort-AV: E=Sophos;i="5.84,272,1620716400"; d="scan'208";a="505378919"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2021 00:19:03 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Jul 2021 00:18:36 -0700
Message-Id: <20210727071845.841554-19-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210727071845.841554-1-lucas.demarchi@intel.com>
References: <20210727071845.841554-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 19/28] drm/i915: remove explicit CNL handling from
 intel_pch.c
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Remove references for CNL from pch detection.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
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
