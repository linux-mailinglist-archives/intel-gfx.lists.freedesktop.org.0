Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 65B746C3F68
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Mar 2023 02:02:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5615810E195;
	Wed, 22 Mar 2023 01:02:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5D7C10E195
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Mar 2023 01:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679446919; x=1710982919;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7Zsrg4NaBvSHOzm4hHgIK5NZzylOr5PSLzK6v/OHWq4=;
 b=K8wIHgdO/4j+sJeBNqkszFonqW5KjVnlCO+WbB5XV0Hbpk076RZCxLxL
 MA8mng40YNRXeJvzhGNxt9fksBDEdonEMHUptRn9gtm2WK0PB35IbOPwv
 xHLeFsZ0SNBlTd6yfvtISMP0pgXwM7bwCtS0WE/dR0iM2dk2Yqh6E8nEh
 ZHnNkAFDs7DjldpTtnoMnj//GLQebxuecoBf3AzBLUjd3JWeeCQ4cvvuT
 D8GZpO373mGXMrY6QOh7Bfby/ppuoljm1eYqwJdtfpD8AbkFdRhr/ORJ2
 feItJ/VwP92I+cw7dXwWzfTJ05lXInzA6600ZTFiQvJyJKAwwqDDd+BgD A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="341452071"
X-IronPort-AV: E=Sophos;i="5.98,280,1673942400"; d="scan'208";a="341452071"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 18:01:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="712043968"
X-IronPort-AV: E=Sophos;i="5.98,280,1673942400"; d="scan'208";a="712043968"
Received: from sahalama-mobl1.amr.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.251.221.201])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 18:01:57 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Mar 2023 03:01:37 +0200
Message-Id: <20230322010138.663264-2-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230322010138.663264-1-vinod.govindapillai@intel.com>
References: <20230322010138.663264-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 1/2] drm/i915/reg: fix QGV points register
 access offsets
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

Wrong offsets are calculated to read QGV point registers. Fix it
to read from the correct registers.

Bspec: 64602

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index d22ffd7a32dc..ae8ba090c0f4 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7724,12 +7724,12 @@ enum skl_power_gate {
 #define   MTL_N_OF_POPULATED_CH_MASK		REG_GENMASK(7, 4)
 #define   MTL_DDR_TYPE_MASK			REG_GENMASK(3, 0)
 
-#define MTL_MEM_SS_INFO_QGV_POINT_LOW(point)	 _MMIO(0x45710 + (point) * 2)
+#define MTL_MEM_SS_INFO_QGV_POINT_LOW(point)	 _MMIO(0x45710 + (point) * 2 * 0x4)
 #define   MTL_TRCD_MASK			REG_GENMASK(31, 24)
 #define   MTL_TRP_MASK			REG_GENMASK(23, 16)
 #define   MTL_DCLK_MASK			REG_GENMASK(15, 0)
 
-#define MTL_MEM_SS_INFO_QGV_POINT_HIGH(point)	 _MMIO(0x45714 + (point) * 2)
+#define MTL_MEM_SS_INFO_QGV_POINT_HIGH(point)	 _MMIO(0x45714 + (point) * 2 * 0x4)
 #define   MTL_TRAS_MASK			REG_GENMASK(16, 8)
 #define   MTL_TRDPRE_MASK		REG_GENMASK(7, 0)
 
-- 
2.34.1

