Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6C48D60FF
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 13:54:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EA6510E3A2;
	Fri, 31 May 2024 11:54:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XaBbGA9/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95E4210E00D
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2024 11:54:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717156442; x=1748692442;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=sIBC7gq5lgQ97lmB4XenmWXLs4QSR1PfS8AbOQOa+V8=;
 b=XaBbGA9/9iEJuLhGn/gUNBm+eWCuuWeP2txy4xgCj49dkhC0jnodKwnJ
 ykF9wcaMnw8hEJW7HNav/BHy0mG3EVu6/HXV45zdTaRRa2JjxWrxKWOuM
 4n90/cLjcphTIr9i1ZDa/bsKRZnmHhAvDx0GGDvZPX4HR1RTuVXFsYr4d
 BuMTq0wuKP1k5iYclu1uOM05zedFuMx37b51F8Sd8GIdN7dP+kOLPtrdj
 4tMK7cXeRp8FNUvTOnTtv9iLS/HTXItxfEZBu8qXSqAKN+K4XWKzRBgqc
 wC1KlZHAwciDiHcqLJFST3+gm+NWFve0c9M6EMmGFw4R1BxLiA1Ksx0YY w==;
X-CSE-ConnectionGUID: EB5b7YYgRHWtO3GweZeOJw==
X-CSE-MsgGUID: aOI6EkVtTQ2C5ShRnz6/CQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="13864670"
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="13864670"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 04:54:02 -0700
X-CSE-ConnectionGUID: 8SGtFjnfRpu9RB0hhkGIDg==
X-CSE-MsgGUID: lsfdGkbyR1i6BF2n9UAt+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="36135007"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 31 May 2024 04:53:59 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 31 May 2024 14:53:58 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 6/7] drm/i915: Define the PIPE_CRC_EXP registers
Date: Fri, 31 May 2024 14:53:41 +0300
Message-ID: <20240531115342.2763-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.1
In-Reply-To: <20240531115342.2763-1-ville.syrjala@linux.intel.com>
References: <20240531115342.2763-1-ville.syrjala@linux.intel.com>
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

I need a scratch register which fill the following requirements:
- can be accessed via DSB
- all the bits can be read/written
- no serious side effects

So far the only thing I could think of is the "expected CRC"
register. Add the definition so I can use it.

While I only need the hsw+ variant currently, let's define the
older variants as well for completeness.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_pipe_crc_regs.h    | 47 +++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h b/drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h
index 4f4bf51e1940..383910a785f6 100644
--- a/drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h
@@ -56,6 +56,24 @@
 #define   PIPE_CRC_SOURCE_DP_C_G4X	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_I9XX, 7)
 /* gen2 doesn't have source selection bits */
 #define   PIPE_CRC_INCLUDE_BORDER_I8XX	REG_BIT(30)
+#define   PIPE_CRC_EXP_RED_MASK		REG_BIT(22, 0) /* pre-ivb */
+#define   PIPE_CRC_EXP_1_MASK_IVB	REG_BIT(22, 0) /* ivb */
+
+#define _PIPE_CRC_EXP_GREEN_A		0x60054
+#define PIPE_CRC_EXP_GREEN(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_EXP_GREEN_A)
+#define   PIPE_CRC_EXP_GREEN_MASK	REG_BIT(22, 0) /* pre-ivb */
+
+#define _PIPE_CRC_EXP_BLUE_A		0x60058
+#define PIPE_CRC_EXP_BLUE(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_EXP_BLUE_A)
+#define   PIPE_CRC_EXP_BLUE_MASK	REG_BIT(22, 0) /* pre-ivb */
+
+#define _PIPE_CRC_EXP_RES1_A_I915	0x6005c /* i915+ */
+#define PIPE_CRC_EXP_RES1_I915(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_EXP_RES1_A_I915)
+#define   PIPE_CRC_EXP_RES1_MASK	REG_BIT(22, 0) /* pre-ivb */
+
+#define _PIPE_CRC_EXP_RES2_A_G4X	0x60080 /* g4x+ */
+#define PIPE_CRC_EXP_RES2_G4X(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_EXP_RES2_A_G4X)
+#define   PIPE_CRC_EXP_RES2_MASK	REG_BIT(22, 0) /* pre-ivb */
 
 #define _PIPE_CRC_RES_RED_A		0x60060
 #define PIPE_CRC_RES_RED(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_RED_A)
@@ -72,6 +90,30 @@
 #define _PIPE_CRC_RES_RES2_A_G4X	0x60080 /* g4x+ */
 #define PIPE_CRC_RES_RES2_G4X(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_RES2_A_G4X)
 
+/* ivb */
+#define _PIPE_CRC_EXP_2_A_IVB		0x60054
+#define _PIPE_CRC_EXP_2_B_IVB		0x61054
+#define PIPE_CRC_EXP_2_IVB(pipe)		_MMIO_PIPE(pipe, _PIPE_CRC_EXP_2_A_IVB, _PIPE_CRC_EXP_2_B_IVB)
+#define   PIPE_CRC_EXP_2_MASK_IVB	REG_BIT(22, 0) /* ivb */
+
+/* ivb */
+#define _PIPE_CRC_EXP_3_A_IVB		0x60058
+#define _PIPE_CRC_EXP_3_B_IVB		0x61058
+#define PIPE_CRC_EXP_3_IVB(pipe)		_MMIO_PIPE(pipe, _PIPE_CRC_EXP_3_A_IVB, _PIPE_CRC_EXP_3_B_IVB)
+#define   PIPE_CRC_EXP_3_MASK_IVB	REG_BIT(22, 0) /* ivb */
+
+/* ivb */
+#define _PIPE_CRC_EXP_4_A_IVB		0x6005c
+#define _PIPE_CRC_EXP_4_B_IVB		0x6105c
+#define PIPE_CRC_EXP_4_IVB(pipe)		_MMIO_PIPE(pipe, _PIPE_CRC_EXP_2_A_IVB, _PIPE_CRC_EXP_2_B_IVB)
+#define   PIPE_CRC_EXP_4_MASK_IVB	REG_BIT(22, 0) /* ivb */
+
+/* ivb */
+#define _PIPE_CRC_EXP_5_A_IVB		0x60060
+#define _PIPE_CRC_EXP_5_B_IVB		0x61060
+#define PIPE_CRC_EXP_5_IVB(pipe)		_MMIO_PIPE(pipe, _PIPE_CRC_EXP_2_A_IVB, _PIPE_CRC_EXP_2_B_IVB)
+#define   PIPE_CRC_EXP_5_MASK_IVB	REG_BIT(22, 0) /* ivb */
+
 /* ivb */
 #define _PIPE_CRC_RES_1_A_IVB		0x60064
 #define _PIPE_CRC_RES_1_B_IVB		0x61064
@@ -97,6 +139,11 @@
 #define _PIPE_CRC_RES_5_B_IVB		0x61074
 #define PIPE_CRC_RES_5_IVB(pipe)		_MMIO_PIPE(pipe, _PIPE_CRC_RES_5_A_IVB, _PIPE_CRC_RES_5_B_IVB)
 
+/* hsw+ */
+#define _PIPE_CRC_EXP_A_HSW		0x60054
+#define _PIPE_CRC_EXP_B_HSW		0x61054
+#define PIPE_CRC_EXP_HSW(pipe)			_MMIO_PIPE(pipe, _PIPE_CRC_EXP_A_HSW, _PIPE_CRC_EXP_B_HSW)
+
 /* hsw+ */
 #define _PIPE_CRC_RES_A_HSW		0x60064
 #define _PIPE_CRC_RES_B_HSW		0x61064
-- 
2.44.1

