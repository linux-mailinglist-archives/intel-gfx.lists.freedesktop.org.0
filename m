Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0FBF8D60FC
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 13:54:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5895B10E4B8;
	Fri, 31 May 2024 11:53:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EGc3Xj+l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71D0710E4B8
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2024 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717156434; x=1748692434;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=FhtZbImVPwUrxgnYPFiYhUD1O5b8m3S+SkrjRgiu10c=;
 b=EGc3Xj+lAKuJUOu32/XeSkJM1Z5UdvJVStiZHgg32zM8QYPZzsBt+Xlo
 WOCiyJnLnF98MKH42vAMG3DndtlO2GTO2LbUeUb6Ow5KzaUDX1/ojxgML
 vWvMkygCG0ZLO+y3YQVsn+eCMb4yikzKdcMQQ7MjCZzGukY8HjoRQvTaz
 0ShWiN5TA9o2OwE0ic4khltdZ1lnxtnckqN2xGBKilm3OWD0SEGIM/b/S
 iQTUI3NuCOV0Jo7vUZZdZqY/a8rlTLaDHtCitU8oM87W4J4dPw/+LBaHk
 8c64dJOr8lwceh/HO/mqvtXtezqCgxqx7xzSnU+7umPxOG+cW4VhJTrCZ g==;
X-CSE-ConnectionGUID: KCqTgiULSIa9YAjgYpp1vw==
X-CSE-MsgGUID: u1+tamxKSXap0E6MOaUbww==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="13864658"
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="13864658"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 04:53:53 -0700
X-CSE-ConnectionGUID: Inc9VYKUR5eyJeBwtC1zdw==
X-CSE-MsgGUID: owVmcwHRRMurcGbh0be76w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="36134999"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 31 May 2024 04:53:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 31 May 2024 14:53:50 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/7] drm/i915: Regroup pipe CRC regs
Date: Fri, 31 May 2024 14:53:38 +0300
Message-ID: <20240531115342.2763-4-ville.syrjala@linux.intel.com>
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

Put all the definitions related to a single pipe CRC register
in one place, instead of the current approach where things are
spread all over the place.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_pipe_crc_regs.h    | 43 ++++++++++---------
 1 file changed, 23 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h b/drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h
index 66520c97bf1e..a1217a4d6f2e 100644
--- a/drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h
@@ -8,8 +8,8 @@
 
 #include "intel_display_reg_defs.h"
 
-/* Pipe A CRC regs */
 #define _PIPE_CRC_CTL_A			0x60050
+#define PIPE_CRC_CTL(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_CTL_A)
 #define   PIPE_CRC_ENABLE		REG_BIT(31)
 /* skl+ source selection */
 #define   PIPE_CRC_SOURCE_MASK_SKL	REG_GENMASK(30, 28)
@@ -57,36 +57,39 @@
 /* gen2 doesn't have source selection bits */
 #define   PIPE_CRC_INCLUDE_BORDER_I8XX	REG_BIT(30)
 
-#define _PIPE_CRC_RES_1_A_IVB		0x60064
-#define _PIPE_CRC_RES_2_A_IVB		0x60068
-#define _PIPE_CRC_RES_3_A_IVB		0x6006c
-#define _PIPE_CRC_RES_4_A_IVB		0x60070
-#define _PIPE_CRC_RES_5_A_IVB		0x60074
-
 #define _PIPE_CRC_RES_RED_A		0x60060
+#define PIPE_CRC_RES_RED(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_RED_A)
+
 #define _PIPE_CRC_RES_GREEN_A		0x60064
+#define PIPE_CRC_RES_GREEN(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_GREEN_A)
+
 #define _PIPE_CRC_RES_BLUE_A		0x60068
+#define PIPE_CRC_RES_BLUE(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_BLUE_A)
+
 #define _PIPE_CRC_RES_RES1_A_I915	0x6006c
+#define PIPE_CRC_RES_RES1_I915(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_RES1_A_I915)
+
 #define _PIPE_CRC_RES_RES2_A_G4X	0x60080
+#define PIPE_CRC_RES_RES2_G4X(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_RES2_A_G4X)
 
-/* Pipe B CRC regs */
+#define _PIPE_CRC_RES_1_A_IVB		0x60064
 #define _PIPE_CRC_RES_1_B_IVB		0x61064
-#define _PIPE_CRC_RES_2_B_IVB		0x61068
-#define _PIPE_CRC_RES_3_B_IVB		0x6106c
-#define _PIPE_CRC_RES_4_B_IVB		0x61070
-#define _PIPE_CRC_RES_5_B_IVB		0x61074
-
-#define PIPE_CRC_CTL(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_CTL_A)
 #define PIPE_CRC_RES_1_IVB(pipe)		_MMIO_PIPE(pipe, _PIPE_CRC_RES_1_A_IVB, _PIPE_CRC_RES_1_B_IVB)
+
+#define _PIPE_CRC_RES_2_A_IVB		0x60068
+#define _PIPE_CRC_RES_2_B_IVB		0x61068
 #define PIPE_CRC_RES_2_IVB(pipe)		_MMIO_PIPE(pipe, _PIPE_CRC_RES_2_A_IVB, _PIPE_CRC_RES_2_B_IVB)
+
+#define _PIPE_CRC_RES_3_A_IVB		0x6006c
+#define _PIPE_CRC_RES_3_B_IVB		0x6106c
 #define PIPE_CRC_RES_3_IVB(pipe)		_MMIO_PIPE(pipe, _PIPE_CRC_RES_3_A_IVB, _PIPE_CRC_RES_3_B_IVB)
+
+#define _PIPE_CRC_RES_4_A_IVB		0x60070
+#define _PIPE_CRC_RES_4_B_IVB		0x61070
 #define PIPE_CRC_RES_4_IVB(pipe)		_MMIO_PIPE(pipe, _PIPE_CRC_RES_4_A_IVB, _PIPE_CRC_RES_4_B_IVB)
+
+#define _PIPE_CRC_RES_5_A_IVB		0x60074
+#define _PIPE_CRC_RES_5_B_IVB		0x61074
 #define PIPE_CRC_RES_5_IVB(pipe)		_MMIO_PIPE(pipe, _PIPE_CRC_RES_5_A_IVB, _PIPE_CRC_RES_5_B_IVB)
 
-#define PIPE_CRC_RES_RED(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_RED_A)
-#define PIPE_CRC_RES_GREEN(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_GREEN_A)
-#define PIPE_CRC_RES_BLUE(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_BLUE_A)
-#define PIPE_CRC_RES_RES1_I915(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_RES1_A_I915)
-#define PIPE_CRC_RES_RES2_G4X(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_RES2_A_G4X)
-
 #endif /* __INTEL_PIPE_CRC_REGS_H__ */
-- 
2.44.1

