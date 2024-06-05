Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DCF68FCA35
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2024 13:18:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7F3A10E748;
	Wed,  5 Jun 2024 11:18:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LHLuaoAD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47EF610E59F
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2024 11:18:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717586318; x=1749122318;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=/WqPNDBofw22ZA9ZX3IoQVJhfu3Vj/Q0wAxpJ13/ZFw=;
 b=LHLuaoADlQxSMPYNhxinUzoy3YZEw4/JqSFjNgeK8lkUCapxUpJIQ/G1
 k5IqHfVFwOpVHJS5UHqBafggz31XrDdS112H8QEQI2sE6C8EwlwmV5+Qo
 aoEkoy9m0fdG4cucswTCpqv4IrGOFlepMB2G81WGNJkSS9LdmoEA4BY6y
 JVrv9DFzTXulXY3qCwxTCA/lZsBn3j5DR5Hq0WUIJjCLuPCqXm31rD6Mv
 JHMYk2HYJyMRDCae6BCuerv73NvU1cdF3opq4NhPWWxTvipp7+Sz4uo3a
 /rVP+KmRYQ9ZJ+JDC1SNx1yeQqY644g9EwaLmG5PqzoThECsHoV2RA9st w==;
X-CSE-ConnectionGUID: z+qTV49OQ+a/mUHcHSNgiA==
X-CSE-MsgGUID: 4bCwOWNFQ7uStTsmyxgHGg==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="11920176"
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="11920176"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 04:18:38 -0700
X-CSE-ConnectionGUID: 9dj1129uQ9Ov+tlURVISpw==
X-CSE-MsgGUID: Ii5dv3vTSmyyNRsCBKtRuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="37566100"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 05 Jun 2024 04:18:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 05 Jun 2024 14:18:35 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/7] drm/i915: Use REG_BIT() for bdw+ pipe interrupts
Date: Wed,  5 Jun 2024 14:18:26 +0300
Message-ID: <20240605111832.21373-2-ville.syrjala@linux.intel.com>
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

Replace the hand rolled (1<<n) with the modern REG_BIT()
approach for the bdw+ pipe interrupt bits.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 54 ++++++++++++++++-----------------
 1 file changed, 27 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 0569a23b83b2..6b77de060e33 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2622,33 +2622,33 @@
 #define GEN8_DE_PIPE_IMR(pipe) _MMIO(0x44404 + (0x10 * (pipe)))
 #define GEN8_DE_PIPE_IIR(pipe) _MMIO(0x44408 + (0x10 * (pipe)))
 #define GEN8_DE_PIPE_IER(pipe) _MMIO(0x4440c + (0x10 * (pipe)))
-#define  GEN8_PIPE_FIFO_UNDERRUN	(1 << 31)
-#define  GEN8_PIPE_CDCLK_CRC_ERROR	(1 << 29)
-#define  GEN8_PIPE_CDCLK_CRC_DONE	(1 << 28)
-#define  XELPD_PIPE_SOFT_UNDERRUN	(1 << 22)
-#define  XELPD_PIPE_HARD_UNDERRUN	(1 << 21)
-#define  GEN12_PIPE_VBLANK_UNMOD	(1 << 19)
-#define  GEN8_PIPE_CURSOR_FAULT		(1 << 10)
-#define  GEN8_PIPE_SPRITE_FAULT		(1 << 9)
-#define  GEN8_PIPE_PRIMARY_FAULT	(1 << 8)
-#define  GEN8_PIPE_SPRITE_FLIP_DONE	(1 << 5)
-#define  GEN8_PIPE_PRIMARY_FLIP_DONE	(1 << 4)
-#define  GEN8_PIPE_SCAN_LINE_EVENT	(1 << 2)
-#define  GEN8_PIPE_VSYNC		(1 << 1)
-#define  GEN8_PIPE_VBLANK		(1 << 0)
-#define  GEN9_PIPE_CURSOR_FAULT		(1 << 11)
-#define  GEN11_PIPE_PLANE7_FAULT	(1 << 22)
-#define  GEN11_PIPE_PLANE6_FAULT	(1 << 21)
-#define  GEN11_PIPE_PLANE5_FAULT	(1 << 20)
-#define  GEN9_PIPE_PLANE4_FAULT		(1 << 10)
-#define  GEN9_PIPE_PLANE3_FAULT		(1 << 9)
-#define  GEN9_PIPE_PLANE2_FAULT		(1 << 8)
-#define  GEN9_PIPE_PLANE1_FAULT		(1 << 7)
-#define  GEN9_PIPE_PLANE4_FLIP_DONE	(1 << 6)
-#define  GEN9_PIPE_PLANE3_FLIP_DONE	(1 << 5)
-#define  GEN9_PIPE_PLANE2_FLIP_DONE	(1 << 4)
-#define  GEN9_PIPE_PLANE1_FLIP_DONE	(1 << 3)
-#define  GEN9_PIPE_PLANE_FLIP_DONE(p)	(1 << (3 + (p)))
+#define  GEN8_PIPE_FIFO_UNDERRUN	REG_BIT(31)
+#define  GEN8_PIPE_CDCLK_CRC_ERROR	REG_BIT(29)
+#define  GEN8_PIPE_CDCLK_CRC_DONE	REG_BIT(28)
+#define  XELPD_PIPE_SOFT_UNDERRUN	REG_BIT(22)
+#define  XELPD_PIPE_HARD_UNDERRUN	REG_BIT(21)
+#define  GEN12_PIPE_VBLANK_UNMOD	REG_BIT(19)
+#define  GEN8_PIPE_CURSOR_FAULT		REG_BIT(10)
+#define  GEN8_PIPE_SPRITE_FAULT		REG_BIT(9)
+#define  GEN8_PIPE_PRIMARY_FAULT	REG_BIT(8)
+#define  GEN8_PIPE_SPRITE_FLIP_DONE	REG_BIT(5)
+#define  GEN8_PIPE_PRIMARY_FLIP_DONE	REG_BIT(4)
+#define  GEN8_PIPE_SCAN_LINE_EVENT	REG_BIT(2)
+#define  GEN8_PIPE_VSYNC		REG_BIT(1)
+#define  GEN8_PIPE_VBLANK		REG_BIT(0)
+#define  GEN9_PIPE_CURSOR_FAULT		REG_BIT(11)
+#define  GEN11_PIPE_PLANE7_FAULT	REG_BIT(22)
+#define  GEN11_PIPE_PLANE6_FAULT	REG_BIT(21)
+#define  GEN11_PIPE_PLANE5_FAULT	REG_BIT(20)
+#define  GEN9_PIPE_PLANE4_FAULT		REG_BIT(10)
+#define  GEN9_PIPE_PLANE3_FAULT		REG_BIT(9)
+#define  GEN9_PIPE_PLANE2_FAULT		REG_BIT(8)
+#define  GEN9_PIPE_PLANE1_FAULT		REG_BIT(7)
+#define  GEN9_PIPE_PLANE4_FLIP_DONE	REG_BIT(6)
+#define  GEN9_PIPE_PLANE3_FLIP_DONE	REG_BIT(5)
+#define  GEN9_PIPE_PLANE2_FLIP_DONE	REG_BIT(4)
+#define  GEN9_PIPE_PLANE1_FLIP_DONE	REG_BIT(3)
+#define  GEN9_PIPE_PLANE_FLIP_DONE(p)	REG_BIT(3 + (p))
 #define GEN8_DE_PIPE_IRQ_FAULT_ERRORS \
 	(GEN8_PIPE_CURSOR_FAULT | \
 	 GEN8_PIPE_SPRITE_FAULT | \
-- 
2.44.1

