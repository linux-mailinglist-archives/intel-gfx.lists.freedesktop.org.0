Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7179A9BCDC0
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2024 14:26:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1099E10E5A2;
	Tue,  5 Nov 2024 13:26:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k2+uh3zk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5080A10E5A2
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Nov 2024 13:26:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730813176; x=1762349176;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5hGTKYedDoB2qeGJM0Qftf2jnQEmJNjNmMDb/Dthhqg=;
 b=k2+uh3zkffBX47mY7uxsq3NNoPhcO+QsWenzCbvvUqRHLUjhoJrykvZM
 4FCPJugDaC+c+2GR+JPCfP1GZgOUcA+Jz6hs+8aXHNq6zev5o7lQvF70e
 zRSn5Kg3CkCiso6EVMsozLw4jX/VYiPIDtM1j37QwBzFDpX0FEcCNOq5a
 jKRYP8ZY4t+DsXeSn5KuSgHxTHo/HqwbcTnOLazjgBA3CIvCU/M7npIRE
 dkCuHL9gTrN3VmypPgfKCmYQ0J3vZkOSoe43A4BJxteRMueIa34xrAHUE
 H9h5F51/tNBhDII5+DjcdFsSeGut01pVbyZcAPGtqB9PSBXKBXZXJUtpr Q==;
X-CSE-ConnectionGUID: IRO4V4vjQl2uN1IIk4l0UQ==
X-CSE-MsgGUID: vINRPkwFSMKI7jvlTIdvFA==
X-IronPort-AV: E=McAfee;i="6700,10204,11246"; a="30781798"
X-IronPort-AV: E=Sophos;i="6.11,260,1725346800"; d="scan'208";a="30781798"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2024 05:26:16 -0800
X-CSE-ConnectionGUID: CztfU1ExRcKLl/o0s0Kpgw==
X-CSE-MsgGUID: l50nYiLeRiacQu0sD71YVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,260,1725346800"; d="scan'208";a="114810982"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by fmviesa001.fm.intel.com with ESMTP; 05 Nov 2024 05:26:14 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, gustavo.sousa@intel.com, raag.jadav@intel.com,
 Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v5 2/2] drm/i915/display: Use struct intel_display instead of
 struct drm_i915_private
Date: Tue,  5 Nov 2024 15:17:32 +0200
Message-ID: <20241105131732.331436-3-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241105131732.331436-1-mika.kahola@intel.com>
References: <20241105131732.331436-1-mika.kahola@intel.com>
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

v2: Drop tc_to_intel_display() helper funtion (Jani)

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index e40d55f4c0c4..d78f57190f3c 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -1039,9 +1039,9 @@ static void wa_14020908590(struct intel_display *display, bool enable)
 
 static void __xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port *tc, bool enable)
 {
-	struct drm_i915_private *i915 = tc_to_i915(tc);
+	struct intel_display *display = to_intel_display(tc->dig_port);
 	enum port port = tc->dig_port->base.port;
-	i915_reg_t reg = XELPDP_PORT_BUF_CTL1(i915, port);
+	i915_reg_t reg = XELPDP_PORT_BUF_CTL1(display, port);
 	u32 val;
 
 	assert_tc_cold_blocked(tc);
@@ -1050,15 +1050,15 @@ static void __xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port *tc, bool ena
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

