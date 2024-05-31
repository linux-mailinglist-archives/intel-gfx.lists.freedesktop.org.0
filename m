Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A43738D6100
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 13:54:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A21C10E00D;
	Fri, 31 May 2024 11:54:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GmUVf+MR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5952010E26D
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2024 11:54:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717156445; x=1748692445;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=U6snJ//pufM3VccbllJDcGDZVXHduenGdmaUoUOp3ow=;
 b=GmUVf+MR6vup7mSj2ZiWzvllU292uCR6XW/yq2JI24eXPYpGV6i1QHCr
 cVai3Ham7c3k7Keh4JoI+RfzQ5gVDllNRZy7ndkuFxanVQ7Zv0uB9HvOd
 hDYQ2RFfWBEFdqxReAywk59QjZE7YwsyN5xmSZYNUbt/3cXfDQ9xwJZEv
 YSiZYjNsI82uyDOgYwKdJwpH2rGOK/hxs8pO9ewlOa3qrqNulAu+mcx/K
 rFkXoyB018K9Pg7SAeWOAZnphuRbSydPWo6icy09Ld6JfrOHcHqbFJnbz
 GbM0fU60eNVSADbMpiZdEL6s1yMJvU1O1ByT43ORyONbV8IcTt35F2rxt A==;
X-CSE-ConnectionGUID: iEfUfz38StCzWC6WVasVPg==
X-CSE-MsgGUID: oSpgDbuhQKmBa9NCDIDZ+g==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="13864674"
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="13864674"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 04:54:04 -0700
X-CSE-ConnectionGUID: LnYjr6iMT8iGvI9Brk0njA==
X-CSE-MsgGUID: 9GSHGHsORA2biCUtv+ptfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="36135008"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 31 May 2024 04:54:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 31 May 2024 14:54:01 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 7/7] drm/i915: Protect CRC reg macro arguments for consistency
Date: Fri, 31 May 2024 14:53:42 +0300
Message-ID: <20240531115342.2763-8-ville.syrjala@linux.intel.com>
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

It's probably a good idea to start protecting all macro arguments
to avoid any cargo-cult mistakes when people go looking for examples
of how to define these things.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_pipe_crc_regs.h    | 26 +++++++++----------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h b/drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h
index 383910a785f6..4e65f51d34e6 100644
--- a/drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h
@@ -9,7 +9,7 @@
 #include "intel_display_reg_defs.h"
 
 #define _PIPE_CRC_CTL_A			0x60050
-#define PIPE_CRC_CTL(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_CTL_A)
+#define PIPE_CRC_CTL(dev_priv, pipe)		_MMIO_TRANS2((dev_priv), (pipe), _PIPE_CRC_CTL_A)
 #define   PIPE_CRC_ENABLE		REG_BIT(31)
 /* skl+ source selection */
 #define   PIPE_CRC_SOURCE_MASK_SKL	REG_GENMASK(30, 28)
@@ -76,19 +76,19 @@
 #define   PIPE_CRC_EXP_RES2_MASK	REG_BIT(22, 0) /* pre-ivb */
 
 #define _PIPE_CRC_RES_RED_A		0x60060
-#define PIPE_CRC_RES_RED(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_RED_A)
+#define PIPE_CRC_RES_RED(dev_priv, pipe)	_MMIO_TRANS2((dev_priv), (pipe), _PIPE_CRC_RES_RED_A)
 
 #define _PIPE_CRC_RES_GREEN_A		0x60064
-#define PIPE_CRC_RES_GREEN(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_GREEN_A)
+#define PIPE_CRC_RES_GREEN(dev_priv, pipe)	_MMIO_TRANS2((dev_priv), (pipe), _PIPE_CRC_RES_GREEN_A)
 
 #define _PIPE_CRC_RES_BLUE_A		0x60068
-#define PIPE_CRC_RES_BLUE(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_BLUE_A)
+#define PIPE_CRC_RES_BLUE(dev_priv, pipe)	_MMIO_TRANS2((dev_priv), (pipe), _PIPE_CRC_RES_BLUE_A)
 
 #define _PIPE_CRC_RES_RES1_A_I915	0x6006c /* i915+ */
-#define PIPE_CRC_RES_RES1_I915(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_RES1_A_I915)
+#define PIPE_CRC_RES_RES1_I915(dev_priv, pipe)	_MMIO_TRANS2((dev_priv), (pipe), _PIPE_CRC_RES_RES1_A_I915)
 
 #define _PIPE_CRC_RES_RES2_A_G4X	0x60080 /* g4x+ */
-#define PIPE_CRC_RES_RES2_G4X(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_RES2_A_G4X)
+#define PIPE_CRC_RES_RES2_G4X(dev_priv, pipe)	_MMIO_TRANS2((dev_priv), (pipe), _PIPE_CRC_RES_RES2_A_G4X)
 
 /* ivb */
 #define _PIPE_CRC_EXP_2_A_IVB		0x60054
@@ -117,36 +117,36 @@
 /* ivb */
 #define _PIPE_CRC_RES_1_A_IVB		0x60064
 #define _PIPE_CRC_RES_1_B_IVB		0x61064
-#define PIPE_CRC_RES_1_IVB(pipe)		_MMIO_PIPE(pipe, _PIPE_CRC_RES_1_A_IVB, _PIPE_CRC_RES_1_B_IVB)
+#define PIPE_CRC_RES_1_IVB(pipe)		_MMIO_PIPE((pipe), _PIPE_CRC_RES_1_A_IVB, _PIPE_CRC_RES_1_B_IVB)
 
 /* ivb */
 #define _PIPE_CRC_RES_2_A_IVB		0x60068
 #define _PIPE_CRC_RES_2_B_IVB		0x61068
-#define PIPE_CRC_RES_2_IVB(pipe)		_MMIO_PIPE(pipe, _PIPE_CRC_RES_2_A_IVB, _PIPE_CRC_RES_2_B_IVB)
+#define PIPE_CRC_RES_2_IVB(pipe)		_MMIO_PIPE((pipe), _PIPE_CRC_RES_2_A_IVB, _PIPE_CRC_RES_2_B_IVB)
 
 /* ivb */
 #define _PIPE_CRC_RES_3_A_IVB		0x6006c
 #define _PIPE_CRC_RES_3_B_IVB		0x6106c
-#define PIPE_CRC_RES_3_IVB(pipe)		_MMIO_PIPE(pipe, _PIPE_CRC_RES_3_A_IVB, _PIPE_CRC_RES_3_B_IVB)
+#define PIPE_CRC_RES_3_IVB(pipe)		_MMIO_PIPE((pipe), _PIPE_CRC_RES_3_A_IVB, _PIPE_CRC_RES_3_B_IVB)
 
 /* ivb */
 #define _PIPE_CRC_RES_4_A_IVB		0x60070
 #define _PIPE_CRC_RES_4_B_IVB		0x61070
-#define PIPE_CRC_RES_4_IVB(pipe)		_MMIO_PIPE(pipe, _PIPE_CRC_RES_4_A_IVB, _PIPE_CRC_RES_4_B_IVB)
+#define PIPE_CRC_RES_4_IVB(pipe)		_MMIO_PIPE((pipe), _PIPE_CRC_RES_4_A_IVB, _PIPE_CRC_RES_4_B_IVB)
 
 /* ivb */
 #define _PIPE_CRC_RES_5_A_IVB		0x60074
 #define _PIPE_CRC_RES_5_B_IVB		0x61074
-#define PIPE_CRC_RES_5_IVB(pipe)		_MMIO_PIPE(pipe, _PIPE_CRC_RES_5_A_IVB, _PIPE_CRC_RES_5_B_IVB)
+#define PIPE_CRC_RES_5_IVB(pipe)		_MMIO_PIPE((pipe), _PIPE_CRC_RES_5_A_IVB, _PIPE_CRC_RES_5_B_IVB)
 
 /* hsw+ */
 #define _PIPE_CRC_EXP_A_HSW		0x60054
 #define _PIPE_CRC_EXP_B_HSW		0x61054
-#define PIPE_CRC_EXP_HSW(pipe)			_MMIO_PIPE(pipe, _PIPE_CRC_EXP_A_HSW, _PIPE_CRC_EXP_B_HSW)
+#define PIPE_CRC_EXP_HSW(pipe)			_MMIO_PIPE((pipe), _PIPE_CRC_EXP_A_HSW, _PIPE_CRC_EXP_B_HSW)
 
 /* hsw+ */
 #define _PIPE_CRC_RES_A_HSW		0x60064
 #define _PIPE_CRC_RES_B_HSW		0x61064
-#define PIPE_CRC_RES_HSW(pipe)			_MMIO_PIPE(pipe, _PIPE_CRC_RES_A_HSW, _PIPE_CRC_RES_B_HSW)
+#define PIPE_CRC_RES_HSW(pipe)			_MMIO_PIPE((pipe), _PIPE_CRC_RES_A_HSW, _PIPE_CRC_RES_B_HSW)
 
 #endif /* __INTEL_PIPE_CRC_REGS_H__ */
-- 
2.44.1

