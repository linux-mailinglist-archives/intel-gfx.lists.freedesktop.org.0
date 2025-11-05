Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BAD18C35F8B
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 15:08:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 555CF10E75F;
	Wed,  5 Nov 2025 14:08:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="npwhRmPr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E9CF10E760;
 Wed,  5 Nov 2025 14:08:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762351712; x=1793887712;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Q6wiMefhFBnV2e83h2mR/iZlovxRh7lC6+oS1wV9rfY=;
 b=npwhRmPr3nM9yYACkypdvLreVcxHJgHeE2UAp4wUBr9Owx1Mw6QBZoto
 wBE+CxTTUPrWhn/sHeew1UQU8y/hB6Q8Y62Z2WFue00m+a2ySBusDik7T
 Y/p755xdeKpyiiGVRC6IjY/LaIupx9ZRHpwd4KK7x1wVqhBpE8Y28q263
 W3z8Wnp6V51mPr8yfamUfcyEvNynshL4XbUBwDJQkaRxHBLfzc0KlXlvP
 1CWWyavOQRNs5AkKbr3E0Xg1SsXjWmU9raFsCUQ46HFrWRq+R68V6AzgX
 w1NBs8LnLKZpH2xCYSNKH9wCUNzruFev2PEo+/mXgy0z7zPyuL6iUSiax A==;
X-CSE-ConnectionGUID: mOLdbYM7R/+gSoqhPzpq/A==
X-CSE-MsgGUID: vsrdN+vZQ36OaPvodQOWZw==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="64348288"
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="64348288"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 06:08:17 -0800
X-CSE-ConnectionGUID: y8zt/ottRmmScyROMLknPw==
X-CSE-MsgGUID: MYZK9g0tTjyV48a8TUgN8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="191562959"
Received: from rfrazer-mobl3.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.124.221.150])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 06:08:16 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: gustavo.sousa@intel.com
Subject: [CI 05/17] drm/i915/xe3p_lpd: Expand bifield masks dbuf blocks fields
Date: Wed,  5 Nov 2025 11:06:54 -0300
Message-ID: <20251105140651.71713-24-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251105140651.71713-19-gustavo.sousa@intel.com>
References: <20251105140651.71713-19-gustavo.sousa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Link: https://patch.msgid.link/20251103-xe3p_lpd-basic-enabling-v3-5-00e87b510ae7@intel.com
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 .../gpu/drm/i915/display/skl_universal_plane_regs.h  | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
index 7c944d3ca855..6f815b231340 100644
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

