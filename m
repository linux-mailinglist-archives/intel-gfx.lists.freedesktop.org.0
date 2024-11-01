Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ED4C9B9256
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2024 14:48:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E902A10E9C1;
	Fri,  1 Nov 2024 13:48:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mfNmRQwa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D714010E9C0
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Nov 2024 13:48:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730468890; x=1762004890;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lDCkM0GCjnqN7TF6mXgSEnBsQpg+HX2bOUDmSmD3wtI=;
 b=mfNmRQwaHto4gfHy0N2pCaiNhIRJ2I/nZHVBtsCgNX6eM7bqpcrS7e3B
 s9zUJNK6GDCpTOwVyLwgHWQ2DJ4gQuv7S3K7AQNqTmdZctpKSkH3CL7in
 I8RYGP5ptqePUt8f4+4f71U6jbw7U3vaaNChxitwiiFw+NDs4RTHkaaCq
 c3NFwZcNVxvqiNGP5+OgP/EUD9ha06ApZgmAV4dUil9oHxqCt4CGvTnFa
 ibpRMgF7DlS1hX9oMZBVKHnNwq8gYxOm0F8km2ScCfMFjQpf/PiftoMYY
 WabqhA77pXsU0UH0YAoaREtBRkhVh4Uq0TmhNCA9HJ7At2ZlNu/271WAG g==;
X-CSE-ConnectionGUID: sMckA2y7RKqb0JgqvpF3fA==
X-CSE-MsgGUID: BB2efMKpTWGAs8M0qOAjqg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="52800116"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="52800116"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2024 06:48:10 -0700
X-CSE-ConnectionGUID: 7T9OTc+8R0ybEFW3jaQplg==
X-CSE-MsgGUID: 640fIhUxTdeY6bynBp+NOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,249,1725346800"; d="scan'208";a="113750926"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orviesa002.jf.intel.com with ESMTP; 01 Nov 2024 06:48:08 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, gustavo.sousa@intel.com, raag.jadav@intel.com,
 Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v4 2/2] drm/i915/display: Use struct intel_display instead of
 struct drm_i915_private
Date: Fri,  1 Nov 2024 15:39:24 +0200
Message-ID: <20241101133924.245817-3-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241101133924.245817-1-mika.kahola@intel.com>
References: <20241101133924.245817-1-mika.kahola@intel.com>
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
index e40d55f4c0c4..385c838ee996 100644
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
@@ -1039,9 +1044,9 @@ static void wa_14020908590(struct intel_display *display, bool enable)
 
 static void __xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port *tc, bool enable)
 {
-	struct drm_i915_private *i915 = tc_to_i915(tc);
+	struct intel_display *display = tc_to_intel_display(tc);
 	enum port port = tc->dig_port->base.port;
-	i915_reg_t reg = XELPDP_PORT_BUF_CTL1(i915, port);
+	i915_reg_t reg = XELPDP_PORT_BUF_CTL1(display, port);
 	u32 val;
 
 	assert_tc_cold_blocked(tc);
@@ -1050,15 +1055,15 @@ static void __xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port *tc, bool ena
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

