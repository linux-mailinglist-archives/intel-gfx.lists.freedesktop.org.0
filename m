Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45532BDC4C0
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 05:17:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5C3C10E6E1;
	Wed, 15 Oct 2025 03:17:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DcYObKl3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1209110E6E1;
 Wed, 15 Oct 2025 03:17:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760498233; x=1792034233;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=aF3H82R2Q1k6pD0lGmshz/ei0ObmIkgbAXjFes2AfxU=;
 b=DcYObKl3n8mnCOuW5q1c2GiL6u2ai2Cqo49whqp4FWHbsfl4LYWTwAPd
 cMuu7JiZfBNloqTLTtZX0bvcp5mEs/l4IAoJgbIpisjMOkcTa/raXvW7Y
 PIlIsLxA2ixpX26hjdA9C4EOCQg/IONhdAMIJeOnIQ0xLqumJEVhs/ae2
 HS2hxlcoplrUR/5q3c08xXJjoGCAmgee8sIe1U43xZsmvoS3yTT40Z/pa
 dXg6EWlWjMcGlDZ3igQMQYk3LuOInCI9x3/B0m3MJawl7nn8PKURODNWn
 iR6DCHndytWHxJLe5H1TCprXYQT2p+84vEcjnXikzSrBT1HTEdIkE4hw5 w==;
X-CSE-ConnectionGUID: w/t0Qw1nTUGJ0Qs6CTYEbA==
X-CSE-MsgGUID: dtNzVx7lRrmYH/uvRvptlA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62577182"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62577182"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:17:12 -0700
X-CSE-ConnectionGUID: nCQzDDPrStip/os5Cq3DHg==
X-CSE-MsgGUID: hzTvEL41T76vQ31lnSUBAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="186302555"
Received: from smoehrl-linux.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.222.185])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:17:07 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Wed, 15 Oct 2025 00:15:07 -0300
Subject: [PATCH 07/32] drm/i915/xe3p_lpd: Expand bifield masks dbuf blocks
 fields
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251015-xe3p_lpd-basic-enabling-v1-7-d2d1e26520aa@intel.com>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
In-Reply-To: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
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
 Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>, 
 Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>
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

