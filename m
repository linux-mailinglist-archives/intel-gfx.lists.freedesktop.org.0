Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3BBDC2D6CF
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 18:19:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A9A910E456;
	Mon,  3 Nov 2025 17:19:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lNRJrfmp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED58210E207;
 Mon,  3 Nov 2025 17:19:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762190393; x=1793726393;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=dtck163JmCZAxhCxfg7Bb/DKUuANbRlPR+xhTuqiFpg=;
 b=lNRJrfmpXIkkfGeq6RFM64vaQZX1ypVzv/XTE5BFlpmpTDcbWkKIYz+a
 NS26tb9yWMRNPR2HPtbasoPJtVdok1dA8RsPi5zYytKWoSnA7bj40FedQ
 F9fF6qP87vqh3XQ+n9DOTMIEuA89l3df8NO5gie93PFGQDmfqCKH0aK6K
 K+Pp5U0qDyQXzj+ofObcrZ543VsZvqf3UuEUolZpmqG1PTw3O/MIGdArR
 JI9eNne9h7DJvRjTy8ffHXzNjW+X3JHzBE8o+tJi6W70dwob/ba8Rrnhg
 +XrOiKObXdx4rMUUHtaHyOtT6dMUDcAwMYWtfMAbQVy6sp6pkeItO7dU9 w==;
X-CSE-ConnectionGUID: rXsySDS9SQGMUyTiBWkiDQ==
X-CSE-MsgGUID: Fc36VqGGRsGsboPqJL0rgA==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="64309975"
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="64309975"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:19:52 -0800
X-CSE-ConnectionGUID: o69TfhM4SKyYEzk7YfaDVw==
X-CSE-MsgGUID: 1RKfooq0QBOGXjzOkNQpzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="186606264"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO [192.168.1.16])
 ([10.124.220.223])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:19:49 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Mon, 03 Nov 2025 14:17:56 -0300
Subject: [PATCH v3 05/29] drm/i915/xe3p_lpd: Expand bifield masks dbuf
 blocks fields
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251103-xe3p_lpd-basic-enabling-v3-5-00e87b510ae7@intel.com>
References: <20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com>
In-Reply-To: <20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com>
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

