Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD48BAFAD8
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 10:38:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB20210E6C4;
	Wed,  1 Oct 2025 08:38:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iov5N33I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D36E10E6AD;
 Wed,  1 Oct 2025 08:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759307934; x=1790843934;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rd7JiO3mU8WpLXs52eGjsY0yRe+f6uVytpR4XsSHBGc=;
 b=iov5N33IO25/OE7v8rMgYWg6MywqSEOHI64eiJl6SaQwQPl7Kuk8fLYY
 4buNW6fhW57Psv3UmQ6C0msoIhPRoEu1pMxnCWS22sZTGoI57mgl9swtY
 spAPjOOQWwJKqOJksd1UlLJJLwYLL9XIc3cLqZhBs/K2a2WtOtDcYIqr2
 2SHZaEvfUupOo4J4SmKB3epPP8VA8Bwr7iRVH9hfJbxVonCIxbVDcRDBh
 bChGpXvfRtbIPMgxwgBXFFZ6z6s79rDwrp+Ek3rxP+C62I9NtSb15p2KJ
 mxj9Wp4R7QBrVvb59jEYjF1qvBAymI/pNSqNT7pboVxcXn1MGqLVNvK55 Q==;
X-CSE-ConnectionGUID: 3FXDDxHRQKWDHD65Uq3u8A==
X-CSE-MsgGUID: E3/65ECnSnu0BXtqw13fEw==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="61742741"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="61742741"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 01:38:53 -0700
X-CSE-ConnectionGUID: mIBHXoF4T6ajJAen/NLgFw==
X-CSE-MsgGUID: 1+EKlO6vTq6fZ0QO8lXtvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="179142568"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa008.fm.intel.com with ESMTP; 01 Oct 2025 01:38:51 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>
Subject: [RFC PATCH 14/39] drm/i915/display: Add macro to get DDI port width
 from a register value
Date: Wed,  1 Oct 2025 11:28:14 +0300
Message-Id: <20251001082839.2585559-15-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251001082839.2585559-1-mika.kahola@intel.com>
References: <20251001082839.2585559-1-mika.kahola@intel.com>
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

