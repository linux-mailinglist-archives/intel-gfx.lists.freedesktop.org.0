Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D2E8C63A88
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 11:59:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B12710E34A;
	Mon, 17 Nov 2025 10:59:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y5+YexLF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DEEA10E34A;
 Mon, 17 Nov 2025 10:59:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763377151; x=1794913151;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=C+wmQjO1S4lZGHETWXcUfPNqQ1iEp3S+AXnyVZ/H1f8=;
 b=Y5+YexLFLUYmX2NQPteKFqvvdR+XxetANCE17nUjNTdDvBixfyjtjagB
 /a5Fal39uA1b24lDyNN2tIvtAkbZq1w+xzH9Rob28b1qSbILgUCdAKQ9P
 HskKlrMnM/DlVIvOylemUJFZzg0r3keuDXwPrEUOhP0z9lDtXc10pewZE
 verYOvtb40IHR44cq5mfA8LEFaOS1Zjk22h/aFMobkoo3TsQukWnb2HRw
 9mDO1YE0us/T7ZmbT1UNruWUPoTADfC7o2bGqwSI1hih5tce3v/1QWa14
 aKr66XFLct/62dYGuOK3sNv/g62GQlP8ZxcesFG1Of9rB2u4+X0D/11sq Q==;
X-CSE-ConnectionGUID: V1CScBbFQFC8SGxs0JCCRQ==
X-CSE-MsgGUID: NfAXo8LOSQaUNSpcZYIkEw==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="76475346"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="76475346"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 02:59:10 -0800
X-CSE-ConnectionGUID: PJXdbI9HQaWstPb+F+XvRg==
X-CSE-MsgGUID: +nqHIzmXR4KXi0D8A5rQGg==
X-ExtLoop1: 1
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa003.fm.intel.com with ESMTP; 17 Nov 2025 02:59:08 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>, Mika Kahola <mika.kahola@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2 07/32] drm/i915/cx0: Add macro to get DDI port width from a
 register value
Date: Mon, 17 Nov 2025 12:45:37 +0200
Message-Id: <20251117104602.2363671-8-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251117104602.2363671-1-mika.kahola@intel.com>
References: <20251117104602.2363671-1-mika.kahola@intel.com>
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
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
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

