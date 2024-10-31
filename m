Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CBA09B79FD
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2024 12:49:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9996910E864;
	Thu, 31 Oct 2024 11:49:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ePk8PNwo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C17410E863
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2024 11:49:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730375352; x=1761911352;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9m1Cx1BGC9bNTzo+TTuXCSoBhK39q+TDmKSmj8E4cYI=;
 b=ePk8PNwo8UXTw+7krHdgnKljJNHp/88qj3S99NMm2XJBoF/Js8BbL+r+
 WV+KmX0Unuh7xSFCGj0Fo9kDENxI0MsGiZZGYTNvZj34dksnY2Pq7bFld
 RfsQnBoCQYtk1rtVFwzN011XcECM6l3ZxclAPJMRxpUzZ7C9cdhN8+UQM
 2S8y1e/o/HtUL1a7lGz3C9fnjHb1f/CFgSMPTy8aVCEDyrRNYduAfJHad
 fGKLWg7fnpv4TCMNwuNh2NdcPH5MwnbVi1qv8ZeyKR/TU1+aS7o9ipxZC
 K2sp+p7AbWbtShLLYl3mvUPJgs7g9H893EyRwmRy5SK9kAEd0m0jfHK2R g==;
X-CSE-ConnectionGUID: eVpdqswlQXSsNbsVTfXYPw==
X-CSE-MsgGUID: QsBfSx1WQguDHCgTol7jHw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="40654017"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="40654017"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 04:49:12 -0700
X-CSE-ConnectionGUID: YX8+rcGSQpack0XK+RwY9A==
X-CSE-MsgGUID: HNUkVi9oTciey9TpK+QCag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="113451939"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by fmviesa001.fm.intel.com with ESMTP; 31 Oct 2024 04:49:11 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: raag.jadav@intel.com, gustavo.sousa@intel.com, jani.nikula@linux.intel.com,
 Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v3 2/2] drm/i915/display: Use struct intel_display instead of
 struct drm_i915_private
Date: Thu, 31 Oct 2024 13:40:27 +0200
Message-ID: <20241031114027.225217-3-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241031114027.225217-1-mika.kahola@intel.com>
References: <20241031114027.225217-1-mika.kahola@intel.com>
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

Let's start using struct intel_display instead of struct drm_i915_private
when introducing new code. No functional changes.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index dab2ac7ec0dd..bb40d76fc9ec 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -97,6 +97,11 @@ static struct drm_i915_private *tc_to_i915(struct intel_tc_port *tc)
 	return to_i915(tc->dig_port->base.base.dev);
 }
 
+static struct intel_display *tc_to_intel_display(struct intel_tc_port *tc)
+{
+	return to_intel_display(tc->dig_port->base.base.dev);
+}
+
 static bool intel_tc_port_in_mode(struct intel_digital_port *dig_port,
 				  enum tc_port_mode mode)
 {
@@ -1040,9 +1045,9 @@ static void wa_14020908590(struct intel_display *display,
 
 static void __xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port *tc, bool enable)
 {
-	struct drm_i915_private *i915 = tc_to_i915(tc);
+	struct intel_display *display = tc_to_intel_display(tc);
 	enum port port = tc->dig_port->base.port;
-	i915_reg_t reg = XELPDP_PORT_BUF_CTL1(i915, port);
+	i915_reg_t reg = XELPDP_PORT_BUF_CTL1(display, port);
 	u32 val;
 
 	assert_tc_cold_blocked(tc);
@@ -1051,15 +1056,15 @@ static void __xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port *tc, bool ena
 	 * Gfx driver WA 14020908590 for PTL tcss_rxdetect_clkswb_req/ack
 	 * handshake violation when pwwreq= 0->1 during TC7/10 entry
 	 */
-	if (DISPLAY_VER(i915) == 30)
-		wa_14020908590(&i915->display, enable);
+	if (DISPLAY_VER(display) == 30)
+		wa_14020908590(display, enable);
 
-	val = intel_de_read(i915, reg);
+	val = intel_de_read(display, reg);
 	if (enable)
 		val |= XELPDP_TCSS_POWER_REQUEST;
 	else
 		val &= ~XELPDP_TCSS_POWER_REQUEST;
-	intel_de_write(i915, reg, val);
+	intel_de_write(display, reg, val);
 }
 
 static bool xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port *tc, bool enable)
-- 
2.43.0

