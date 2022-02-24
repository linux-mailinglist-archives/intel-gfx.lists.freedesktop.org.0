Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B306C4C2CE2
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Feb 2022 14:21:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27DA310E125;
	Thu, 24 Feb 2022 13:21:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED2DA10E15F
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Feb 2022 13:21:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645708906; x=1677244906;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qCU3VzVNPJpo2SWOoaZcbyhqEj/3h0GpSl8xDla+NkQ=;
 b=lAe2lma7CR6/cA6kYKfpha6oHYIUQX9QpxbhUzmIs2nTAV/khTgbOJWj
 xPW7kCX66VX83TrLNEUOMOLaOL31g2C1BYTENGPXG7O8+U+u/NzKQ6Vky
 YUiMNW9Pbuhhm0G6FfUBlhOoSBPPfMahCqRZt2LoGZuu44x79a49kKyza
 w4WSERvv2/NKKUzRFwxsvv9iUWJKzPOkL5rb3PojL6ghSBTJWSCaMynEk
 LpCRd9EsxW/Jk7mmt4CBi4ZOyzRhEDxFC01puC3bHA+FdxmIBxEA0tZco
 iuHR7EPhTLlo0uyIKxbQdi4c0ArVaxdU4vHxfinK4WAd/1YBQePgRpJvm Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10267"; a="232206851"
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400"; d="scan'208";a="232206851"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2022 05:21:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400"; d="scan'208";a="574209011"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga001.jf.intel.com with SMTP; 24 Feb 2022 05:21:43 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 24 Feb 2022 15:21:42 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Feb 2022 15:21:42 +0200
Message-Id: <20220224132142.12927-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: s/JSP2/ICP2/ PCH
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

This JSP2 PCH actually seems to to be some special Apple
specific ICP variant rather than a JSP. Make it so. Or at
least all the references to it seem to be some Apple ICL
machines. Didn't manage to find these PCI IDs in any
public chipset docs unfortunately.

The only thing we're losing here with this JSP->ICP change
is Wa_14011294188, but based on the HSD that isn't actually
needed on any ICP based design (including JSP), only TGP
based stuff (including MCC) really need it. The documented
w/a just never made that distinction because Windows didn't
want to differentiate between JSP and MCC (not sure how
they handle hpd/ddc/etc. then though...).

Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Vivek Kasireddy <vivek.kasireddy@intel.com>
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4226
Fixes: 943682e3bd19 ("drm/i915: Introduce Jasper Lake PCH")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_pch.c | 2 +-
 drivers/gpu/drm/i915/intel_pch.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pch.c b/drivers/gpu/drm/i915/intel_pch.c
index 4f7a61d5502e..4cce044efde2 100644
--- a/drivers/gpu/drm/i915/intel_pch.c
+++ b/drivers/gpu/drm/i915/intel_pch.c
@@ -108,6 +108,7 @@ intel_pch_type(const struct drm_i915_private *dev_priv, unsigned short id)
 		/* Comet Lake V PCH is based on KBP, which is SPT compatible */
 		return PCH_SPT;
 	case INTEL_PCH_ICP_DEVICE_ID_TYPE:
+	case INTEL_PCH_ICP2_DEVICE_ID_TYPE:
 		drm_dbg_kms(&dev_priv->drm, "Found Ice Lake PCH\n");
 		drm_WARN_ON(&dev_priv->drm, !IS_ICELAKE(dev_priv));
 		return PCH_ICP;
@@ -123,7 +124,6 @@ intel_pch_type(const struct drm_i915_private *dev_priv, unsigned short id)
 			    !IS_GEN9_BC(dev_priv));
 		return PCH_TGP;
 	case INTEL_PCH_JSP_DEVICE_ID_TYPE:
-	case INTEL_PCH_JSP2_DEVICE_ID_TYPE:
 		drm_dbg_kms(&dev_priv->drm, "Found Jasper Lake PCH\n");
 		drm_WARN_ON(&dev_priv->drm, !IS_JSL_EHL(dev_priv));
 		return PCH_JSP;
diff --git a/drivers/gpu/drm/i915/intel_pch.h b/drivers/gpu/drm/i915/intel_pch.h
index 6fd20408f7bf..b7a8cf409d48 100644
--- a/drivers/gpu/drm/i915/intel_pch.h
+++ b/drivers/gpu/drm/i915/intel_pch.h
@@ -50,11 +50,11 @@ enum intel_pch {
 #define INTEL_PCH_CMP2_DEVICE_ID_TYPE		0x0680
 #define INTEL_PCH_CMP_V_DEVICE_ID_TYPE		0xA380
 #define INTEL_PCH_ICP_DEVICE_ID_TYPE		0x3480
+#define INTEL_PCH_ICP2_DEVICE_ID_TYPE		0x3880
 #define INTEL_PCH_MCC_DEVICE_ID_TYPE		0x4B00
 #define INTEL_PCH_TGP_DEVICE_ID_TYPE		0xA080
 #define INTEL_PCH_TGP2_DEVICE_ID_TYPE		0x4380
 #define INTEL_PCH_JSP_DEVICE_ID_TYPE		0x4D80
-#define INTEL_PCH_JSP2_DEVICE_ID_TYPE		0x3880
 #define INTEL_PCH_ADP_DEVICE_ID_TYPE		0x7A80
 #define INTEL_PCH_ADP2_DEVICE_ID_TYPE		0x5180
 #define INTEL_PCH_ADP3_DEVICE_ID_TYPE		0x7A00
-- 
2.34.1

