Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB3566EF507
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 15:06:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31EBC10E98E;
	Wed, 26 Apr 2023 13:06:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6066310E98E
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Apr 2023 13:06:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682514395; x=1714050395;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iPiGQURjquVk9DiEIXo1Oj7lPsM1npJIkpSCr77khzk=;
 b=bfP4vwXYGca04GvIFAfCe+z0QRKPAGs5aUCYPAnAe2zFbPbNQx3IAs2s
 STN1DAeCz1PyHg5VmBc/1GMqs0UNRd8bB5iEeFalMxaUaYE/l7gRf8OEU
 APuWwi/USBYtkF50XvHwY8jAWUBFxpEo3DRt8xpaz8UGfJJSRXNPd/cpA
 bGfoExDA9u9vfoMYovuBQS8ElLvgBD1lFh+zdaK43/nOEnhZeGMRSIVcF
 uUSHru3CHa2ruMIJ1mZh+htsTZ0T/kcPcofh64x30M4JGr6TeVt8KeRvR
 DjNSPtROrU1dM7aRpbz+h6zD3oSigAU4JDTZBh30itMNntbdJZio0zqxW w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="336013930"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; 
 d="scan'208,223";a="336013930"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 06:06:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="1023612117"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; 
 d="scan'208,223";a="1023612117"
Received: from aeherrer-mobl2.amr.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.249.37.76])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 06:06:32 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Apr 2023 16:06:13 +0300
Message-Id: <20230426130619.1227635-3-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230426130619.1227635-1-vinod.govindapillai@intel.com>
References: <20230426130619.1227635-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/8] drm/i915: update the QGV point frequency
 calculations
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From MTL onwwards, pcode locks the QGV point based on peak BW of
the intended QGV point passed by the driver. So the peak BW
calculation must match the value expected by the pcode. Update
the calculations as per the Bspec.

Bspec: 64636

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index ab405c48ca3a..25ae4e5834d3 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -182,7 +182,7 @@ static int mtl_read_qgv_point_info(struct drm_i915_private *dev_priv,
 	val2 = intel_uncore_read(&dev_priv->uncore,
 				 MTL_MEM_SS_INFO_QGV_POINT_HIGH(point));
 	dclk = REG_FIELD_GET(MTL_DCLK_MASK, val);
-	sp->dclk = DIV_ROUND_UP((16667 * dclk), 1000);
+	sp->dclk = (16667 * dclk + 500) / 1000;
 	sp->t_rp = REG_FIELD_GET(MTL_TRP_MASK, val);
 	sp->t_rcd = REG_FIELD_GET(MTL_TRCD_MASK, val);
 
-- 
2.34.1

