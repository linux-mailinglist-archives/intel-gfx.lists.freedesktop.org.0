Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE343596E50
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Aug 2022 14:20:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 226EB8FB6C;
	Wed, 17 Aug 2022 12:20:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9F1E8FB4A
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Aug 2022 12:19:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660738794; x=1692274794;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MDOffE8OTrpzJ0mw5U5aKN+iSiLYPQ7oXyCkwiC14Qk=;
 b=P/2ORx/5zcjmTzD3H4/PFbHh9l8VPZn+v4Kbu7l5lC1ZXKDqPwAXo52V
 GQCg0t2t6bv8yOLl2cGgazyTOfTCphg83pVM1OeSF836hBGCVpuWthrO2
 3t4Cy1DX7EdTxI6UA4X1E2J2VSlHd6In00JF+mTP/lKLkWgmaSei9mA51
 Q/0r2YFQGrATexRuMESjI9gitE3xJm9wJJlUmDbI0fWG3Qr2WaZkv3Xs2
 1azKCzfC2IXjFui6Gd8ZD4MdFWrNN2MpfRh00tt/suUGfXIDT1074Iehx
 O1i6mq2JQLzauKaqJTyZDHDgTpODffZUmf/Cu9wJ6I8k5tY5Og5oROK5Q g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10441"; a="293754095"
X-IronPort-AV: E=Sophos;i="5.93,243,1654585200"; d="scan'208";a="293754095"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2022 05:19:53 -0700
X-IronPort-AV: E=Sophos;i="5.93,243,1654585200"; d="scan'208";a="667591672"
Received: from sbammi-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.49.167])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2022 05:19:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Aug 2022 15:19:48 +0300
Message-Id: <20220817121948.180655-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/mtl: Meteorlake and later support DP
 2.0
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Meteorlake and newer platforms support DP 2.0.

Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 086bbe8945d6..b4733c5a01da 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1255,7 +1255,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define HAS_IPS(dev_priv)	(IS_HSW_ULT(dev_priv) || IS_BROADWELL(dev_priv))
 
 #define HAS_DP_MST(dev_priv)	(INTEL_INFO(dev_priv)->display.has_dp_mst)
-#define HAS_DP20(dev_priv)	(IS_DG2(dev_priv))
+#define HAS_DP20(dev_priv)	(IS_DG2(dev_priv) || DISPLAY_VER(dev_priv) >= 14)
 
 #define HAS_CDCLK_CRAWL(dev_priv)	 (INTEL_INFO(dev_priv)->display.has_cdclk_crawl)
 #define HAS_DDI(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_ddi)
-- 
2.34.1

