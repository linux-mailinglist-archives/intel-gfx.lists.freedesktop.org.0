Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF90C8FCA36
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2024 13:18:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CC8910E75F;
	Wed,  5 Jun 2024 11:18:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="laXFdP3i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 170F310E74A
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2024 11:18:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717586321; x=1749122321;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=mVkCJ7wSJ5tfYRBfR9YOHUjZrXsaeGxItTZY7ZLHHt4=;
 b=laXFdP3i44gyGA6waQyG3t4ZSLWE8UUET7x9x4RTX6tsBWz/0Gl+aMz4
 tkQ/UFAhBVL+UgQppFSvmzOP6FLogfr0KgONvnBkroqmd4UR2KTZmDt31
 IimEH/EVJqsXL4qGu9arbsrW6QWS8jGEIiCoagbRhoJl6FXdczMaSTVzP
 cYiQiORxBb6dsnb/R55eiwCaG07jM7nQx2yhNH4fJvS/3OpUbV8+s0yK0
 F5vc5gRSuv9vv6Trj6zhzotSm0JvTwv99WjF0Kl7jQ2tgIILyQLXP9kvt
 M+MYCmrnxNIvBaSU3/JZevn+EnaU2VpJJmUMsD59AxWNuzNVZxNeEBXJS g==;
X-CSE-ConnectionGUID: ur4UCEwhRMCB+RuVNydosQ==
X-CSE-MsgGUID: fCiIWMxgTBao+9WyKxkzOg==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="11920177"
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="11920177"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 04:18:41 -0700
X-CSE-ConnectionGUID: Xmk0KcekQ4CaLRcI5P2TBg==
X-CSE-MsgGUID: QkupMS94RtGaBJ6QKqb++Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="37566104"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 05 Jun 2024 04:18:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 05 Jun 2024 14:18:38 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/7] drm/i915: Document bdw+ pipe interrupt bits
Date: Wed,  5 Jun 2024 14:18:27 +0300
Message-ID: <20240605111832.21373-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.1
In-Reply-To: <20240605111832.21373-1-ville.syrjala@linux.intel.com>
References: <20240605111832.21373-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Sprinkle some notes indicating which platforms have which
pipe interrupt bits.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 42 ++++++++++++++++-----------------
 1 file changed, 21 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 6b77de060e33..2d0751fb9591 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2625,30 +2625,30 @@
 #define  GEN8_PIPE_FIFO_UNDERRUN	REG_BIT(31)
 #define  GEN8_PIPE_CDCLK_CRC_ERROR	REG_BIT(29)
 #define  GEN8_PIPE_CDCLK_CRC_DONE	REG_BIT(28)
-#define  XELPD_PIPE_SOFT_UNDERRUN	REG_BIT(22)
-#define  XELPD_PIPE_HARD_UNDERRUN	REG_BIT(21)
-#define  GEN12_PIPE_VBLANK_UNMOD	REG_BIT(19)
-#define  GEN8_PIPE_CURSOR_FAULT		REG_BIT(10)
-#define  GEN8_PIPE_SPRITE_FAULT		REG_BIT(9)
-#define  GEN8_PIPE_PRIMARY_FAULT	REG_BIT(8)
-#define  GEN8_PIPE_SPRITE_FLIP_DONE	REG_BIT(5)
-#define  GEN8_PIPE_PRIMARY_FLIP_DONE	REG_BIT(4)
+#define  XELPD_PIPE_SOFT_UNDERRUN	REG_BIT(22) /* adl/dg2+ */
+#define  XELPD_PIPE_HARD_UNDERRUN	REG_BIT(21) /* adl/dg2+ */
+#define  GEN12_PIPE_VBLANK_UNMOD	REG_BIT(19) /* tgl+ */
+#define  GEN8_PIPE_CURSOR_FAULT		REG_BIT(10) /* bdw */
+#define  GEN8_PIPE_SPRITE_FAULT		REG_BIT(9) /* bdw */
+#define  GEN8_PIPE_PRIMARY_FAULT	REG_BIT(8) /* bdw */
+#define  GEN8_PIPE_SPRITE_FLIP_DONE	REG_BIT(5) /* bdw */
+#define  GEN8_PIPE_PRIMARY_FLIP_DONE	REG_BIT(4) /* bdw */
 #define  GEN8_PIPE_SCAN_LINE_EVENT	REG_BIT(2)
 #define  GEN8_PIPE_VSYNC		REG_BIT(1)
 #define  GEN8_PIPE_VBLANK		REG_BIT(0)
-#define  GEN9_PIPE_CURSOR_FAULT		REG_BIT(11)
-#define  GEN11_PIPE_PLANE7_FAULT	REG_BIT(22)
-#define  GEN11_PIPE_PLANE6_FAULT	REG_BIT(21)
-#define  GEN11_PIPE_PLANE5_FAULT	REG_BIT(20)
-#define  GEN9_PIPE_PLANE4_FAULT		REG_BIT(10)
-#define  GEN9_PIPE_PLANE3_FAULT		REG_BIT(9)
-#define  GEN9_PIPE_PLANE2_FAULT		REG_BIT(8)
-#define  GEN9_PIPE_PLANE1_FAULT		REG_BIT(7)
-#define  GEN9_PIPE_PLANE4_FLIP_DONE	REG_BIT(6)
-#define  GEN9_PIPE_PLANE3_FLIP_DONE	REG_BIT(5)
-#define  GEN9_PIPE_PLANE2_FLIP_DONE	REG_BIT(4)
-#define  GEN9_PIPE_PLANE1_FLIP_DONE	REG_BIT(3)
-#define  GEN9_PIPE_PLANE_FLIP_DONE(p)	REG_BIT(3 + (p))
+#define  GEN9_PIPE_CURSOR_FAULT		REG_BIT(11) /* skl+ */
+#define  GEN11_PIPE_PLANE7_FAULT	REG_BIT(22) /* icl/tgl */
+#define  GEN11_PIPE_PLANE6_FAULT	REG_BIT(21) /* icl/tgl */
+#define  GEN11_PIPE_PLANE5_FAULT	REG_BIT(20) /* icl+ */
+#define  GEN9_PIPE_PLANE4_FAULT		REG_BIT(10) /* skl+ */
+#define  GEN9_PIPE_PLANE3_FAULT		REG_BIT(9) /* skl+ */
+#define  GEN9_PIPE_PLANE2_FAULT		REG_BIT(8) /* skl+ */
+#define  GEN9_PIPE_PLANE1_FAULT		REG_BIT(7) /* skl+ */
+#define  GEN9_PIPE_PLANE4_FLIP_DONE	REG_BIT(6) /* skl+ */
+#define  GEN9_PIPE_PLANE3_FLIP_DONE	REG_BIT(5) /* skl+ */
+#define  GEN9_PIPE_PLANE2_FLIP_DONE	REG_BIT(4) /* skl+ */
+#define  GEN9_PIPE_PLANE1_FLIP_DONE	REG_BIT(3) /* skl+ */
+#define  GEN9_PIPE_PLANE_FLIP_DONE(p)	REG_BIT(3 + (p)) /* skl+ */
 #define GEN8_DE_PIPE_IRQ_FAULT_ERRORS \
 	(GEN8_PIPE_CURSOR_FAULT | \
 	 GEN8_PIPE_SPRITE_FAULT | \
-- 
2.44.1

