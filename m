Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 634D1C24941
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Oct 2025 11:48:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0E8810EB61;
	Fri, 31 Oct 2025 10:48:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Awv1jG2C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B070210EB52;
 Fri, 31 Oct 2025 10:47:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761907671; x=1793443671;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EuneLhGwxEKG8g5BYbAMToszcq6XQuWjt7iOgE0NivQ=;
 b=Awv1jG2CjkrQWWbrzOYC3vz9A0m4X+zo0wZNYVy6P6J+bRstOu2rXTrQ
 e7DD4UAzihs2ae2U1MVM/yE+54Pn2/c32GfGEDyhFZft/RnddXQMk7ATk
 pOTsjKsXbgj84HwbL+UVBrPf/JtCgh4NgH0u9GfoeKoXUWATBauEIQM9B
 XbJS3oeFJ/UU/u0r8VlU9GoUtQcHJgbSsLVGfywrKwTe0R1fGLqBFbZS8
 j3o2ngAAthBMqpRt0m5DRnZ9Ow/SjnPFrSPaz03+Lw4W5V4146a282eXN
 3EGLhFTYtVdoaSikEFMYT5IVR5B5MnIRAfokrlEQTTXC/JAMtcyW25nKN g==;
X-CSE-ConnectionGUID: 52107SikQbysaiHm4Z926A==
X-CSE-MsgGUID: ee40ixJOSfq7tvAbByG5+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="64217554"
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="64217554"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 03:47:50 -0700
X-CSE-ConnectionGUID: AxNDklRLSVqe/8rzY0P0XQ==
X-CSE-MsgGUID: KhL+EX6qQ+i2qxuKMrCBzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="223441323"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa001.jf.intel.com with ESMTP; 31 Oct 2025 03:47:49 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>,
	Mika Kahola <mika.kahola@intel.com>
Subject: [CI 07/32] drm/i915/display: Add macro to get DDI port width from a
 register value
Date: Fri, 31 Oct 2025 12:35:24 +0200
Message-Id: <20251031103549.173208-8-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251031103549.173208-1-mika.kahola@intel.com>
References: <20251031103549.173208-1-mika.kahola@intel.com>
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

From: Imre Deak <imre.deak@intel.com>

A follow-up change will need to retrieve the DDI port field from the
register value, add a macro for this. Make things symmetric with setting
the field in the register.

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_regs.h | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index 9d71e26a4fa2..c14d3caa73a7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -2349,8 +2349,13 @@ enum skl_power_gate {
 #define  DDI_BUF_CTL_TC_PHY_OWNERSHIP		REG_BIT(6)
 #define  DDI_A_4_LANES				REG_BIT(4)
 #define  DDI_PORT_WIDTH_MASK			REG_GENMASK(3, 1)
+#define  DDI_PORT_WIDTH_ENCODE(width)		((width) == 3 ? 4 : (width) - 1)
+#define  DDI_PORT_WIDTH_DECODE(regval)		((regval) == 4 ? 3 : (regval) + 1)
 #define  DDI_PORT_WIDTH(width)			REG_FIELD_PREP(DDI_PORT_WIDTH_MASK, \
-							       ((width) == 3 ? 4 : (width) - 1))
+							       DDI_PORT_WIDTH_ENCODE(width))
+#define  DDI_PORT_WIDTH_GET(regval)		DDI_PORT_WIDTH_DECODE(REG_FIELD_GET(DDI_PORT_WIDTH_MASK, \
+										    (regval)))
+
 #define  DDI_PORT_WIDTH_SHIFT			1
 #define  DDI_INIT_DISPLAY_DETECTED		REG_BIT(0)
 
-- 
2.34.1

