Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7798BF9757
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 02:31:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 575D910E667;
	Wed, 22 Oct 2025 00:31:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LszdjYhk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 223EA10E667;
 Wed, 22 Oct 2025 00:31:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761093081; x=1792629081;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=M9U4bwVEYqm54NN0l8dt14HLPYd7GCBtHN/P2KTbbbg=;
 b=LszdjYhkNP3pBHEdZttmKken5aDKRe+qdPrdhh4SwZZwpZDZXdavlRJo
 c51XzQMQOtJ9dJ7Ft50pK+hT0itpnrTvRBELBQivj2QOm34y2H8T1UKHX
 /8JxLL1ToaJk3M24Cm3hQemofl1D6EJfst2IM8m7Hw1DDrFqBOiJsBYJ8
 bNbdvJUHsUUE0DUmKI0AunRVAUdQkNOG1Lefa9uSCqr4CGhzW3bewKfJf
 H3gYIY+22Qp/vImFt+effyJO82qb6RHdP6ejTAWYFLxU1ViiL0KOaOPtJ
 zgSrMcJR2pfV9HWV5ZMXqCdVS4VNVEgvVXtVi18IEiaRG6k8r+CFJbJkD Q==;
X-CSE-ConnectionGUID: xzPKVpmUQySdFvBIoHSK/A==
X-CSE-MsgGUID: MxA3JSYSR2Cfhhy+GEShbg==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="85855712"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="85855712"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 17:31:21 -0700
X-CSE-ConnectionGUID: aBBLiYegS16VYIm7DVMwwg==
X-CSE-MsgGUID: CBAsCcunSHmoCj45hVctvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="188132299"
Received: from gpacheco-mobl.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.221.26])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 17:31:17 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Tue, 21 Oct 2025 21:28:31 -0300
Subject: [PATCH v2 06/32] drm/i915/xe3p_lpd: Expand bifield masks dbuf
 blocks fields
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251021-xe3p_lpd-basic-enabling-v2-6-10eae6d655b8@intel.com>
References: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
In-Reply-To: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, 
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>, 
 Gustavo Sousa <gustavo.sousa@intel.com>, 
 =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>, 
 Juha-pekka Heikkila <juha-pekka.heikkila@intel.com>, 
 Luca Coelho <luciano.coelho@intel.com>, 
 Lucas De Marchi <lucas.demarchi@intel.com>, 
 Matt Atwood <matthew.s.atwood@intel.com>, 
 Matt Roper <matthew.d.roper@intel.com>, 
 Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>, 
 Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>, 
 Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
X-Mailer: b4 0.15-dev
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

From: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>

On Xe3p_LPD, the dbuf blocks fields of different registers are now
documented as 13-bit fields. The dbuf isn't really large enough to need
the 13th bit, but let's go ahead and update the definition now just in
case some new display IP in future ends up needing the larger size. The
extra bit is an unused bit in previous display versions, so we can
safely just extend the existing definition.

Bspec: 69847, 69880, 72053
Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane_regs.h | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
index ca9fdfbbe57c..479bb3f7f92b 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
@@ -324,7 +324,7 @@
 #define   PLANE_WM_IGNORE_LINES			REG_BIT(30)
 #define   PLANE_WM_AUTO_MIN_ALLOC_EN		REG_BIT(29)
 #define   PLANE_WM_LINES_MASK			REG_GENMASK(26, 14)
-#define   PLANE_WM_BLOCKS_MASK			REG_GENMASK(11, 0)
+#define   PLANE_WM_BLOCKS_MASK			REG_GENMASK(12, 0)
 
 #define _PLANE_WM_SAGV_1_A			0x70258
 #define _PLANE_WM_SAGV_1_B			0x71258
@@ -375,10 +375,10 @@
 							_PLANE_BUF_CFG_1_A, _PLANE_BUF_CFG_1_B, \
 							_PLANE_BUF_CFG_2_A, _PLANE_BUF_CFG_2_B)
 
-/* skl+: 10 bits, icl+ 11 bits, adlp+ 12 bits */
-#define   PLANE_BUF_END_MASK			REG_GENMASK(27, 16)
+/* skl+: 10 bits, icl+ 11 bits, adlp+ 12 bits, xe3p_lpd 13 bits */
+#define   PLANE_BUF_END_MASK			REG_GENMASK(28, 16)
 #define   PLANE_BUF_END(end)			REG_FIELD_PREP(PLANE_BUF_END_MASK, (end))
-#define   PLANE_BUF_START_MASK			REG_GENMASK(11, 0)
+#define   PLANE_BUF_START_MASK			REG_GENMASK(12, 0)
 #define   PLANE_BUF_START(start)		REG_FIELD_PREP(PLANE_BUF_START_MASK, (start))
 
 #define _PLANE_MIN_BUF_CFG_1_A			0x70274
@@ -389,9 +389,9 @@
 							_PLANE_MIN_BUF_CFG_1_A, _PLANE_MIN_BUF_CFG_1_B, \
 							_PLANE_MIN_BUF_CFG_2_A, _PLANE_MIN_BUF_CFG_2_B)
 #define	  PLANE_AUTO_MIN_DBUF_EN		REG_BIT(31)
-#define	  PLANE_MIN_DBUF_BLOCKS_MASK		REG_GENMASK(27, 16)
+#define	  PLANE_MIN_DBUF_BLOCKS_MASK		REG_GENMASK(28, 16)
 #define	  PLANE_MIN_DBUF_BLOCKS(val)		REG_FIELD_PREP(PLANE_MIN_DBUF_BLOCKS_MASK, (val))
-#define	  PLANE_INTERIM_DBUF_BLOCKS_MASK	REG_GENMASK(11, 0)
+#define	  PLANE_INTERIM_DBUF_BLOCKS_MASK	REG_GENMASK(12, 0)
 #define	  PLANE_INTERIM_DBUF_BLOCKS(val)	REG_FIELD_PREP(PLANE_INTERIM_DBUF_BLOCKS_MASK, (val))
 
 /* tgl+ */

-- 
2.51.0

