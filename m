Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E405C48543
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Nov 2025 18:28:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B52810E49E;
	Mon, 10 Nov 2025 17:28:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R2fvFfED";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBA8C10E49A;
 Mon, 10 Nov 2025 17:28:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762795729; x=1794331729;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UPRfPpKcofPH+Hqxqk9t1ghK6cvooaweRTz9Dwc2aWU=;
 b=R2fvFfEDbIO7Sa4isiGtnd8uqjoqr2IDTeqTtPaRm6hPTGkPfF/QYQ1T
 k05yTGzEWIKZTb1nj8CiFVGluoqvdpyAlyJQg+NkYJCETeRt1IhnGqBmY
 K6K2wba7+v0lPfx09vnDa0TEumqtlYhgKESjgVb9Yq8saXex07cOgvBAn
 ZAlfY/bt/cqnowjdfBbpQAQvXHSZrwHEDoyc4XSstQeOqytQFB5Vhksv1
 Z8WamrBm9J5SPkk6cWRT7pfo0JxRINiiRhwb1eJqmp0gkpYpTl8UoHPox
 S4D+46aa7knGaiNtpqR4A95reex2noaSGlD2ZaDnaxbflhKUu22r2cNSt g==;
X-CSE-ConnectionGUID: e9FW2CxKS+OXqXKSiLtaxw==
X-CSE-MsgGUID: JFStWvYWQVyrRcFu2Ts36Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="52407758"
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="52407758"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 09:28:49 -0800
X-CSE-ConnectionGUID: +tM4W57vSziGcFW55kOujw==
X-CSE-MsgGUID: 2PoSgykWRr2XqG2Y+JkFoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="188969895"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.30])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 09:28:47 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 11/16] drm/1915/dpio: Stop using intel_de_wait_fw_ms()
Date: Mon, 10 Nov 2025 19:27:50 +0200
Message-ID: <20251110172756.2132-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251110172756.2132-1-ville.syrjala@linux.intel.com>
References: <20251110172756.2132-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

_bxt_dpio_phy_init() doesn't us the _fw() register accessors
for anything else, so stop using them for the register polling
as well.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpio_phy.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
index 4d1b6e2b93dc..7b7a0461da36 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
@@ -427,8 +427,8 @@ static void _bxt_dpio_phy_init(struct intel_display *display, enum dpio_phy phy)
 	 * The flag should get set in 100us according to the HW team, but
 	 * use 1ms due to occasional timeouts observed with that.
 	 */
-	if (intel_de_wait_fw_ms(display, BXT_PORT_CL1CM_DW0(phy),
-				PHY_RESERVED | PHY_POWER_GOOD, PHY_POWER_GOOD, 1, NULL))
+	if (intel_de_wait_ms(display, BXT_PORT_CL1CM_DW0(phy),
+			     PHY_RESERVED | PHY_POWER_GOOD, PHY_POWER_GOOD, 1, NULL))
 		drm_err(display->drm, "timeout during PHY%d power on\n",
 			phy);
 
-- 
2.49.1

