Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B6D552B8E0
	for <lists+intel-gfx@lfdr.de>; Wed, 18 May 2022 13:33:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA7B389DD3;
	Wed, 18 May 2022 11:33:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F2D88922F
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 May 2022 11:33:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652873605; x=1684409605;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=meOkkwbpThdrMzcW5uVNAl7EsJMHv8duySpo/19eyY0=;
 b=kWLKdaa5u0xM68MEDCqlXV51wZ6VU20xVX7cebw8XBjJ11ZEVEV0cNgu
 0N00WXY5OeOdEX0zCD1ckK9fHXaPvT2f7C+51v15Ubk0S9yT2x5juCmO9
 YrqcHdPap1toFAZD3+dY6YAJtd68s1UnbScYT0UZHZCTt7BPe3L86HrAb
 0/ES1tSH3+9LR6Y1G3OoHJCwyUnhz0lJfiX95yqploFdT6C66q0l6T3HO
 VAQvqqy/Lac8VWXZ4dSYW25MBEtGTR83UvriDR87tMaq1BRdTG/e9OMYo
 pabom4+Xrl06idL8BhrVtuHDtVolwbm5YhJO3K/jssZNoC3UlDIkiTlc5 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10350"; a="270452575"
X-IronPort-AV: E=Sophos;i="5.91,234,1647327600"; d="scan'208";a="270452575"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2022 04:33:23 -0700
X-IronPort-AV: E=Sophos;i="5.91,234,1647327600"; d="scan'208";a="545409962"
Received: from jwasiuki-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.133.47])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2022 04:33:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 May 2022 14:33:14 +0300
Message-Id: <20220518113315.1305027-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/reg: fix undefined behavior due to
 shift overflowing the constant
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
Cc: jani.nikula@intel.com, Borislav Petkov <bp@suse.de>,
 Randy Dunlap <rdunlap@infradead.org>, Ruiqi GONG <gongruiqi1@huawei.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Use REG_GENMASK() and REG_FIELD_PREP() to avoid errors due to
-fsanitize=shift.

References: https://lore.kernel.org/r/20220405151517.29753-12-bp@alien8.de
Reported-by: Borislav Petkov <bp@suse.de>
Reported-by: Ruiqi GONG <gongruiqi1@huawei.com>
Cc: Randy Dunlap <rdunlap@infradead.org>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 32 ++++++++++++++++----------------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 321a08281a3f..dff3f88d8090 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7607,25 +7607,25 @@ enum skl_power_gate {
 #define _PORT_CLK_SEL_A			0x46100
 #define _PORT_CLK_SEL_B			0x46104
 #define PORT_CLK_SEL(port) _MMIO_PORT(port, _PORT_CLK_SEL_A, _PORT_CLK_SEL_B)
-#define  PORT_CLK_SEL_LCPLL_2700	(0 << 29)
-#define  PORT_CLK_SEL_LCPLL_1350	(1 << 29)
-#define  PORT_CLK_SEL_LCPLL_810		(2 << 29)
-#define  PORT_CLK_SEL_SPLL		(3 << 29)
-#define  PORT_CLK_SEL_WRPLL(pll)	(((pll) + 4) << 29)
-#define  PORT_CLK_SEL_WRPLL1		(4 << 29)
-#define  PORT_CLK_SEL_WRPLL2		(5 << 29)
-#define  PORT_CLK_SEL_NONE		(7 << 29)
-#define  PORT_CLK_SEL_MASK		(7 << 29)
+#define  PORT_CLK_SEL_MASK		REG_GENMASK(31, 29)
+#define  PORT_CLK_SEL_LCPLL_2700	REG_FIELD_PREP(PORT_CLK_SEL_MASK, 0)
+#define  PORT_CLK_SEL_LCPLL_1350	REG_FIELD_PREP(PORT_CLK_SEL_MASK, 1)
+#define  PORT_CLK_SEL_LCPLL_810		REG_FIELD_PREP(PORT_CLK_SEL_MASK, 2)
+#define  PORT_CLK_SEL_SPLL		REG_FIELD_PREP(PORT_CLK_SEL_MASK, 3)
+#define  PORT_CLK_SEL_WRPLL(pll)	REG_FIELD_PREP(PORT_CLK_SEL_MASK, 4 + (pll))
+#define  PORT_CLK_SEL_WRPLL1		REG_FIELD_PREP(PORT_CLK_SEL_MASK, 4)
+#define  PORT_CLK_SEL_WRPLL2		REG_FIELD_PREP(PORT_CLK_SEL_MASK, 5)
+#define  PORT_CLK_SEL_NONE		REG_FIELD_PREP(PORT_CLK_SEL_MASK, 7)
 
 /* On ICL+ this is the same as PORT_CLK_SEL, but all bits change. */
 #define DDI_CLK_SEL(port)		PORT_CLK_SEL(port)
-#define  DDI_CLK_SEL_NONE		(0x0 << 28)
-#define  DDI_CLK_SEL_MG			(0x8 << 28)
-#define  DDI_CLK_SEL_TBT_162		(0xC << 28)
-#define  DDI_CLK_SEL_TBT_270		(0xD << 28)
-#define  DDI_CLK_SEL_TBT_540		(0xE << 28)
-#define  DDI_CLK_SEL_TBT_810		(0xF << 28)
-#define  DDI_CLK_SEL_MASK		(0xF << 28)
+#define  DDI_CLK_SEL_MASK		REG_GENMASK(31, 28)
+#define  DDI_CLK_SEL_NONE		REG_FIELD_PREP(DDI_CLK_SEL_MASK, 0x0)
+#define  DDI_CLK_SEL_MG			REG_FIELD_PREP(DDI_CLK_SEL_MASK, 0x8)
+#define  DDI_CLK_SEL_TBT_162		REG_FIELD_PREP(DDI_CLK_SEL_MASK, 0xC)
+#define  DDI_CLK_SEL_TBT_270		REG_FIELD_PREP(DDI_CLK_SEL_MASK, 0xD)
+#define  DDI_CLK_SEL_TBT_540		REG_FIELD_PREP(DDI_CLK_SEL_MASK, 0xE)
+#define  DDI_CLK_SEL_TBT_810		REG_FIELD_PREP(DDI_CLK_SEL_MASK, 0xF)
 
 /* Transcoder clock selection */
 #define _TRANS_CLK_SEL_A		0x46140
-- 
2.30.2

