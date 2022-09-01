Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 71DC05A95B4
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Sep 2022 13:29:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6002110E56D;
	Thu,  1 Sep 2022 11:29:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 202B110E56D
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Sep 2022 11:29:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662031765; x=1693567765;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kk6DtzD/ltqGMHAYli+Hfltg0nhzjgQNowRis81D9LU=;
 b=XqswccK4dECa2Lh392ljoHRX4JXVDgXLXMQgQLSN03V8KA4sbjQf0g70
 lRnf9KtR7FKi4w9AaUvMdAfrNCBtEXhBZrHSvEfnly//eRbDib0rGbLGg
 RiGKHy/ATtNWsKyY2UONGjztDApcPNOLbvauciq9Nn/o3Ujct0ZFADwsy
 17jro5k6D6mpL55j31k2+t355RX5JqAYXZbUOzEll0GfZqZ4zQD6TJq8b
 sDXGRN1401eu/rS2YSg1Rd/TciTHeq79KDmgqXh6+HwFaWElpdsGaX+vW
 LjyRoWE242RLAxKq3lU6z5ZLAY0vxa+B+BVQq/tYdx4GC8yXg3Z6Uc8Ca g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10456"; a="275436766"
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="275436766"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2022 04:29:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="673808195"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmsmga008.fm.intel.com with ESMTP; 01 Sep 2022 04:29:22 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Sep 2022 14:30:11 +0300
Message-Id: <20220901113011.12080-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Start using REG_BIT* macros
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

Lets start to use REG_BIT* macros, instead of (x << 0) like expressions.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 5e6239864c35..d82f14979fdf 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7077,16 +7077,16 @@ enum skl_power_gate {
 
 /* CDCLK_CTL */
 #define CDCLK_CTL			_MMIO(0x46000)
-#define  CDCLK_FREQ_SEL_MASK		(3 << 26)
-#define  CDCLK_FREQ_450_432		(0 << 26)
-#define  CDCLK_FREQ_540			(1 << 26)
-#define  CDCLK_FREQ_337_308		(2 << 26)
-#define  CDCLK_FREQ_675_617		(3 << 26)
-#define  BXT_CDCLK_CD2X_DIV_SEL_MASK	(3 << 22)
-#define  BXT_CDCLK_CD2X_DIV_SEL_1	(0 << 22)
-#define  BXT_CDCLK_CD2X_DIV_SEL_1_5	(1 << 22)
-#define  BXT_CDCLK_CD2X_DIV_SEL_2	(2 << 22)
-#define  BXT_CDCLK_CD2X_DIV_SEL_4	(3 << 22)
+#define  CDCLK_FREQ_SEL_MASK		REG_GENMASK(27, 26)
+#define  CDCLK_FREQ_450_432		REG_FIELD_PREP(CDCLK_FREQ_SEL_MASK, 0)
+#define  CDCLK_FREQ_540		REG_FIELD_PREP(CDCLK_FREQ_SEL_MASK, 1)
+#define  CDCLK_FREQ_337_308		REG_FIELD_PREP(CDCLK_FREQ_SEL_MASK, 2)
+#define  CDCLK_FREQ_675_617		REG_FIELD_PREP(CDCLK_FREQ_SEL_MASK, 3)
+#define  BXT_CDCLK_CD2X_DIV_SEL_MASK	REG_GENMASK(23, 22)
+#define  BXT_CDCLK_CD2X_DIV_SEL_1	REG_FIELD_PREP(BXT_CDCLK_CD2X_DIV_SEL_MASK, 0)
+#define  BXT_CDCLK_CD2X_DIV_SEL_1_5	REG_FIELD_PREP(BXT_CDCLK_CD2X_DIV_SEL_MASK, 1)
+#define  BXT_CDCLK_CD2X_DIV_SEL_2	REG_FIELD_PREP(BXT_CDCLK_CD2X_DIV_SEL_MASK, 2)
+#define  BXT_CDCLK_CD2X_DIV_SEL_4	REG_FIELD_PREP(BXT_CDCLK_CD2X_DIV_SEL_MASK, 3)
 #define  BXT_CDCLK_CD2X_PIPE(pipe)	((pipe) << 20)
 #define  CDCLK_DIVMUX_CD_OVERRIDE	(1 << 19)
 #define  BXT_CDCLK_CD2X_PIPE_NONE	BXT_CDCLK_CD2X_PIPE(3)
-- 
2.37.3

