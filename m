Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 48F166C4D67
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Mar 2023 15:21:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 940BC10E95D;
	Wed, 22 Mar 2023 14:21:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAF3910E95C
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Mar 2023 14:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679494868; x=1711030868;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Fe99PFJfS4kZfeNqBqpw90ALKQO/Q0ZBI/hzDUB4jlc=;
 b=mf72B3a36WzRQr1w1i6myjrJFAalrWO59gthDkyUl5CpdpkELC6qjhzP
 Rs/hwnXWRhf2cNgVwiG1djK+nh5HNIXrx1psqIqVDUCOramBZyKRykOZ4
 6ldz0GW5jdHFR3MPuYqlcKODX+1NW7975HRvKRmP4a9pb0GryOos9TURN
 pFRXalZBXUCZ+AH6UMhpvWlTU9mY75r0ISgThCXIVQ/GGul+b6b5nTU7s
 pdmhBtHDVn0ZnwjCEQhZBPGUDA0cEmZqfkqHuFBmfLJWm8TEtplrCkXQP
 YH0KVfBFXl0KgAhrCLQ+a2NFC5n7YTFw2trcatEXv5YAWTqxsKjQpKab5 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="318868406"
X-IronPort-AV: E=Sophos;i="5.98,282,1673942400"; d="scan'208";a="318868406"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 07:21:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="825417114"
X-IronPort-AV: E=Sophos;i="5.98,282,1673942400"; d="scan'208";a="825417114"
Received: from unknown (HELO vgovind2-mobl3.tm.intel.com) ([10.237.50.35])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 07:21:06 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Mar 2023 16:20:50 +0200
Message-Id: <20230322142051.714161-2-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230322142051.714161-1-vinod.govindapillai@intel.com>
References: <20230322142051.714161-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915/reg: fix QGV points register
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

v2: Avoid magic number and better handling the second bitgroup

Bspec: 64602

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index d22ffd7a32dc..74468ed9dc9d 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7724,12 +7724,13 @@ enum skl_power_gate {
 #define   MTL_N_OF_POPULATED_CH_MASK		REG_GENMASK(7, 4)
 #define   MTL_DDR_TYPE_MASK			REG_GENMASK(3, 0)
 
-#define MTL_MEM_SS_INFO_QGV_POINT_LOW(point)	 _MMIO(0x45710 + (point) * 2)
+#define MTL_MEM_SS_INFO_QGV_POINT_OFFSET	0x45710
+#define MTL_MEM_SS_INFO_QGV_POINT_LOW(point)	_MMIO(MTL_MEM_SS_INFO_QGV_POINT_OFFSET + (point) * 2 * 0x4)
 #define   MTL_TRCD_MASK			REG_GENMASK(31, 24)
 #define   MTL_TRP_MASK			REG_GENMASK(23, 16)
 #define   MTL_DCLK_MASK			REG_GENMASK(15, 0)
 
-#define MTL_MEM_SS_INFO_QGV_POINT_HIGH(point)	 _MMIO(0x45714 + (point) * 2)
+#define MTL_MEM_SS_INFO_QGV_POINT_HIGH(point)	_MMIO(MTL_MEM_SS_INFO_QGV_POINT_OFFSET + 4 + (point) * 2 * 0x4)
 #define   MTL_TRAS_MASK			REG_GENMASK(16, 8)
 #define   MTL_TRDPRE_MASK		REG_GENMASK(7, 0)
 
-- 
2.34.1

