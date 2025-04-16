Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA1AAA8B04F
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Apr 2025 08:29:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7359B10E836;
	Wed, 16 Apr 2025 06:29:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lCE9D0YU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3174A10E835
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Apr 2025 06:29:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744784989; x=1776320989;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Pl2x/T6PKNfYhn51fVQX2JwhwmcRSN6HIcRfULhpzF0=;
 b=lCE9D0YUmU6t3PnAvKLUcnbhvefONQUZROfKAv7hC/qC71rgQtHtXX78
 sdjAYnMQ/yt5mhdF9l2Tn/FjiP+O3QfBp4W3amwC9rK2wwQztx5eRUIUu
 TjiBYH3H9OTsIx58yAcB00M+0yz56v8NLSRynETWncL6nRT3NwDp7dc1p
 2FKrYQqnA5siNvCnp6BcRFazUv4erHdGI8bDHsWAPST8hY0Nu5VNG/jnq
 K+ND+U/ytRwwzO8ybtMi68VX8rWtUq7V28iXsp1LSiPNf3GW2Iw7Ekp2d
 IwiMhenpMRw9sMM36//mzrGfSS9YErbg+FVfDW5hXnDc7ZrL6UBguqhm2 Q==;
X-CSE-ConnectionGUID: 6GApf1FaRhqiZSxe+5JiKQ==
X-CSE-MsgGUID: 9YB/x6AoRoO/v8q9WWVGJw==
X-IronPort-AV: E=McAfee;i="6700,10204,11404"; a="71710242"
X-IronPort-AV: E=Sophos;i="6.15,215,1739865600"; d="scan'208";a="71710242"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 23:29:49 -0700
X-CSE-ConnectionGUID: JXANON9fQ8qarLLmFtVc2w==
X-CSE-MsgGUID: YCjmA4D0Rza5G3zeBCnZZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,215,1739865600"; d="scan'208";a="130880175"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa007.jf.intel.com with ESMTP; 15 Apr 2025 23:29:47 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v1 2/8] drm/i915/dmc: Add pipe DMC DC balance registers
Date: Wed, 16 Apr 2025 11:57:31 +0530
Message-ID: <20250416062737.1766703-3-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250416062737.1766703-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250416062737.1766703-1-mitulkumar.ajitkumar.golani@intel.com>
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

Add pipe registers to access pipe DMC DC Balance registers.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc_regs.h | 37 +++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
index 1bf446f96a10..5ac409fbbc4e 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
@@ -103,4 +103,41 @@
 #define  DMC_WAKELOCK_CTL_REQ	 REG_BIT(31)
 #define  DMC_WAKELOCK_CTL_ACK	 REG_BIT(15)
 
+#define _PIPEDMC_DCB_CTL_A		0x5f1a0
+#define _PIPEDMC_DCB_CTL_B		0x5f5a0
+#define PIPEDMC_DCB_CTL(pipe)		_MMIO_PIPE((pipe), _PIPEDMC_DCB_CTL_A, _PIPEDMC_DCB_CTL_B)
+#define PIPEDMC_ADAPTIVE_DCB_ENABLE	REG_BIT(31)
+
+#define _PIPEDMC_DCB_VMIN_A		0x5f1a4
+#define _PIPEDMC_DCB_VMIN_B		0x5f5a4
+#define PIPEDMC_DCB_VMIN(pipe)		_MMIO_PIPE((pipe), _PIPEDMC_DCB_VMIN_A, _PIPEDMC_DCB_VMIN_B)
+
+#define _PIPEDMC_DCB_VMAX_A		0x5f1a8
+#define _PIPEDMC_DCB_VMAX_B		0x5f5a8
+#define PIPEDMC_DCB_VMAX(pipe)		_MMIO_PIPE((pipe), _PIPEDMC_DCB_VMAX_A, _PIPEDMC_DCB_VMAX_B)
+
+#define _PIPEDMC_DCB_MAX_INCREASE_A	0x5f1ac
+#define _PIPEDMC_DCB_MAX_INCREASE_B	0x5f5ac
+#define PIPEDMC_DCB_MAX_INCREASE(pipe)	_MMIO_PIPE((pipe), _PIPEDMC_DCB_MAX_INCREASE_A, _PIPEDMC_DCB_MAX_INCREASE_B)
+
+#define _PIPEDMC_DCB_MAX_DECREASE_A	0x5f1b0
+#define _PIPEDMC_DCB_MAX_DECREASE_B	0x5f5b0
+#define PIPEDMC_DCB_MAX_DECREASE(pipe)	_MMIO_PIPE((pipe), _PIPEDMC_DCB_MAX_DECREASE_A, _PIPEDMC_DCB_MAX_DECREASE_B)
+
+#define _PIPEDMC_DCB_GUARDBAND_A	0x5f1b4
+#define _PIPEDMC_DCB_GUARDBAND_B	0x5f5b4
+#define PIPEDMC_DCB_GUARDBAND(pipe)	_MMIO_PIPE((pipe), _PIPEDMC_DCB_GUARDBAND_A, _PIPEDMC_DCB_GUARDBAND_B)
+
+#define _PIPEDMC_DCB_SLOPE_A		0x5f1b8
+#define _PIPEDMC_DCB_SLOPE_B		0x5f5b8
+#define PIPEDMC_DCB_SLOPE(pipe)		_MMIO_PIPE((pipe), _PIPEDMC_DCB_SLOPE_A, _PIPEDMC_DCB_SLOPE_B)
+
+#define _PIPEDMC_DCB_VBLANK_A		0x5f1bc
+#define _PIPEDMC_DCB_VBLANK_B		0x5f5bc
+#define PIPEDMC_DCB_VBLANK(pipe)	_MMIO_PIPE((pipe), _PIPEDMC_DCB_VBLANK_A, _PIPEDMC_DCB_VBLANK_B)
+
+#define _PIPEDMC_DCB_DEBUG_A		0x5f1c0
+#define _PIPEDMC_DCB_DEBUG_B		0x5f5c0
+#define PIPEDMC_DCB_DEBUG(pipe)		_MMIO_PIPE((pipe), _PIPEDMC_DCB_DEBUG_A, _PIPEDMC_DCB_DEBUG_B)
+
 #endif /* __INTEL_DMC_REGS_H__ */
-- 
2.48.1

