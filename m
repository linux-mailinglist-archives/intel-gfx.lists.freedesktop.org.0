Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3425D6C4D69
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Mar 2023 15:21:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3760410E95C;
	Wed, 22 Mar 2023 14:21:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76D5D10E95C
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Mar 2023 14:21:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679494871; x=1711030871;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xeKa77ZH0vpEHRjrm5AWmT6dSjTieicIiaBaEu7BB5I=;
 b=EIFuXQPeWhChR9iRU+5fN1s8flElPIMZ7CnAOQhMsWXbgWxcDyE+vcdF
 Q8DcvOA8H3TjuzPIOCTAQEpX5MeJBNgr6+TxkkVaY6IRs7rM62PDRcehW
 e+aPoXu9Sb3GepM0FJ+Y0CiPE6/09ygtV0/Q8VP51eQllTxZv2B2s23bU
 d9+ZM8GFnb3AjeF2XzQrgI0/yv9nyJSToG8fx0TKfIWKl/IDRREXvdYZc
 cRCixuuTUYIfSel4imBxUyYBpWSrHefWH/IWAEh433KVV3PIvkEFNqGZT
 UzZ7C3rdNbnwRHgIpWZsN29rA5FynQc0n7Tn5YNNsu83brVUMpRmMEI6L w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="318868418"
X-IronPort-AV: E=Sophos;i="5.98,282,1673942400"; d="scan'208";a="318868418"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 07:21:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="825417158"
X-IronPort-AV: E=Sophos;i="5.98,282,1673942400"; d="scan'208";a="825417158"
Received: from unknown (HELO vgovind2-mobl3.tm.intel.com) ([10.237.50.35])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 07:21:09 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Mar 2023 16:20:51 +0200
Message-Id: <20230322142051.714161-3-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230322142051.714161-1-vinod.govindapillai@intel.com>
References: <20230322142051.714161-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915/reg: use the correct register
 to access SAGV block time
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

Wrong register address is used to read the SAG block time. Fix
the register address according to the bspec.

Bspec: 64608

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 74468ed9dc9d..2f73421c32c6 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7716,7 +7716,7 @@ enum skl_power_gate {
 #define  MTL_LATENCY_LEVEL_EVEN_MASK	REG_GENMASK(12, 0)
 #define  MTL_LATENCY_LEVEL_ODD_MASK	REG_GENMASK(28, 16)
 
-#define MTL_LATENCY_SAGV		_MMIO(0x4578b)
+#define MTL_LATENCY_SAGV		_MMIO(0x4578c)
 #define   MTL_LATENCY_QCLK_SAGV		REG_GENMASK(12, 0)
 
 #define MTL_MEM_SS_INFO_GLOBAL			_MMIO(0x45700)
-- 
2.34.1

