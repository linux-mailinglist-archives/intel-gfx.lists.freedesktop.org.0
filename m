Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06B40A565CA
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 11:52:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7523710EB4D;
	Fri,  7 Mar 2025 10:52:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AIY7GEC4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6443F10EB52;
 Fri,  7 Mar 2025 10:52:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741344775; x=1772880775;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=R07NatXvhtjELYeQFieH/tA0zob43xYkjUsLbMlBDN0=;
 b=AIY7GEC4p77sdZPKvkWawAmd6TST6u+8WPjMBr/ZOFyDfeSKuZwyPbQO
 hZgXaacjMXgBzluIPQujmWFDjSKxQbLncK2DPMXeYZpx0hMpj4YB9UZM7
 JOKx4OCeOo+UtvVkqiyonKf5wLCB8Fr0R9idUo0jrUOnTE8P4WIC1zvm0
 GNNVEa+JVErP3UaVdwBWYP8DAs/lCXfSyIBSTkEUXe6St/7Ux6j/Jew0p
 YxsX5fJ9rx/zcRHiyxfOF20fvOM/5QZZfbc2oFG3liImevnOxUUhnsvvo
 HFEJ5TzDrCvcb/LEcorH3Hde8A65X0TzlauWziSZN/NFUpb2j4aDYgcdn g==;
X-CSE-ConnectionGUID: VcskwHIMTCytuFyKf78ekQ==
X-CSE-MsgGUID: R682Sh9dQTCSLBOGhVtiJg==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="42301649"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="42301649"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 02:52:55 -0800
X-CSE-ConnectionGUID: mwas2cDkSfKvPcH1pL1nww==
X-CSE-MsgGUID: j6IijIrwSvWW6KN99OPFxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="123481579"
Received: from mlehtone-mobl.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.100])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 02:52:54 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [RFC PATCH 04/11] drm/i915/dmc: Add PIPEDMC_BLOCK_PKGC_SW definitions
Date: Fri,  7 Mar 2025 12:52:30 +0200
Message-ID: <20250307105237.2909849-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250307105237.2909849-1-jouni.hogander@intel.com>
References: <20250307105237.2909849-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

We need PIPEDMC_BLOCK_PKGC_SW definitions to implement workaround for
underrun on idle PSR HW issue (Wa_16025596647). Add PIPEDMC_BLOCK_PKGC_SW
register definitions.

Bspec: 71265

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc_regs.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
index 2f1e3cb1a247..e16ea3f16ed8 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
@@ -27,6 +27,14 @@
 						   _MTL_PIPEDMC_EVT_CTL_4_A, \
 						   _MTL_PIPEDMC_EVT_CTL_4_B)
 
+#define PIPEDMC_BLOCK_PKGC_SW_A	0x5f1d0
+#define PIPEDMC_BLOCK_PKGC_SW_B	0x5F5d0
+#define PIPEDMC_BLOCK_PKGC_SW(pipe)				_MMIO_PIPE(pipe, \
+									   PIPEDMC_BLOCK_PKGC_SW_A, \
+									   PIPEDMC_BLOCK_PKGC_SW_B)
+#define PIPEDMC_BLOCK_PKGC_SW_BLOCK_PKGC_ALWAYS			BIT(31)
+#define PIPEDMC_BLOCK_PKGC_SW_BLOCK_PKGC_UNTIL_NEXT_FRAMESTART	BIT(15)
+
 #define _ADLP_PIPEDMC_REG_MMIO_BASE_A	0x5f000
 #define _TGL_PIPEDMC_REG_MMIO_BASE_A	0x92000
 
-- 
2.43.0

