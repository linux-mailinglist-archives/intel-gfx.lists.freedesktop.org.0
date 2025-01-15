Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98CFBA12EFE
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 00:09:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 068D910E850;
	Wed, 15 Jan 2025 23:09:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M+Q7dLTK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E55110E84D;
 Wed, 15 Jan 2025 23:09:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736982544; x=1768518544;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Rnz9k0h1jbJK+biULTVBrZXQu/5xhmvTz8hM7cG6+BY=;
 b=M+Q7dLTKdr5Iwob3KAls6JU9H7Ziwp7BPNe4DNf7L97VmBjCn0ZBbmGd
 DllOPn27N5Y8WlZef9POH55UKP+5gLH1DevvpMyWKmOeMuu3ztHmufnuB
 a/jg5dCMQMga4PPD3gfG//uEFb0F6+x1IA2awAYtt7ux1S2c8kMARa7o2
 8eZzBrG3PuQ/zypXquANzsb/BHVdwzWotPK3IiXbTpZE2wZ+pQ1DfwHY8
 znUjBliBoyfKEPWOzYPiyDPrTsVEViXDxAnCCNFNYtiaLFAaBM/vIwcnL
 GWQ0iG+Nm1YNFNCY8JnGJHWfhk6ljwBAreasSXFEEmSbC0zeXVRNBrOBt A==;
X-CSE-ConnectionGUID: Kf9jKlFZTLCZ3wWUJo7INg==
X-CSE-MsgGUID: yGcHu9I9QHOD8QBmIgm68w==
X-IronPort-AV: E=McAfee;i="6700,10204,11316"; a="47926915"
X-IronPort-AV: E=Sophos;i="6.13,207,1732608000"; d="scan'208";a="47926915"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2025 15:09:03 -0800
X-CSE-ConnectionGUID: iBiuIpQWR9aE6lu0w3AHnw==
X-CSE-MsgGUID: du0c937gQuyI3YXsZmVFuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="136147982"
Received: from cataylo2-desk.jf.intel.com ([10.165.21.140])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2025 15:09:03 -0800
From: Clint Taylor <clinton.a.taylor@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH] drm/i915/display: HDMI C10 PLL entry for 265250 MHz
Date: Wed, 15 Jan 2025 15:08:59 -0800
Message-Id: <20250115230859.2410966-1-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.25.1
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

Add PLL values for 265.250MHz pixel clock to support recent 3440x1440
monitors.

Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index e768dc6a15b3..c5ea8202a455 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -1620,6 +1620,16 @@ static const struct intel_c10pll_state mtl_c10_hdmi_262750 = {
 	.pll[15] = 0x09, .pll[16] = 0x09, .pll[17] = 0xCF, .pll[18] = 0x84, .pll[19] = 0x23,
 };
 
+static const struct intel_c10pll_state mtl_c10_hdmi_265250 = {
+	.clock = 265250,
+	.tx = 0x10,
+	.cmn = 0x1,
+	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x6A, .pll[3] = 0x00, .pll[4] = 0x00,
+	.pll[5] = 0x00, .pll[6] = 0x00, .pll[7] = 0x00, .pll[8] = 0x20, .pll[9] = 0xFF,
+	.pll[10] = 0xFF, .pll[11] = 0x55, .pll[12] = 0x13, .pll[13] = 0x55, .pll[14] = 0x55,
+	.pll[15] = 0x09, .pll[16] = 0x08, .pll[17] = 0x0F, .pll[18] = 0x85, .pll[19] = 0x23,
+};
+
 static const struct intel_c10pll_state mtl_c10_hdmi_268500 = {
 	.clock = 268500,
 	.tx = 0x10,
@@ -1728,6 +1738,7 @@ static const struct intel_c10pll_state * const mtl_c10_hdmi_tables[] = {
 	&mtl_c10_hdmi_209800,
 	&mtl_c10_hdmi_241500,
 	&mtl_c10_hdmi_262750,
+	&mtl_c10_hdmi_265250,
 	&mtl_c10_hdmi_268500,
 	&mtl_c10_hdmi_296703,
 	&mtl_c10_hdmi_297000,
-- 
2.25.1

