Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2495E9AF572
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 00:31:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF5E110E9AA;
	Thu, 24 Oct 2024 22:31:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IHYmWOiK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 534C010E9AA;
 Thu, 24 Oct 2024 22:31:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729809095; x=1761345095;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=wir1OW34CDvY4sYHiQf10SnfJmQ3srInYnvu7N8Izh4=;
 b=IHYmWOiK2zhFKd6gGUPqjRxWFivt8wgQWGyNSf7EGLrGMaJOzo6ym7lM
 7gOfNiUCe1SgdVmY5r+BSyGVDTvnVRc7oPoojbmYT8iiSZlI0CPLYHSdy
 ZdwMjTTdLfYRIsNLVyewCIHPX6ZpK2JRiob7p/cr5WD93RCeWXqtDRU32
 YVnTAd6BbqPhgtHzXtZ+tuuCLUY+2HOzMow936Si1MHw9U2PbASU5Fvou
 Sk4R+vmG1xdMrUihGikbwamVFKgJJqn+rXh7MZTEzsvcetlp3EMcrtNec
 AA8jz4Lhc7TasSP45vHJral3677EdmkWd54GE9Mx7kCTY/01El+T3aYU1 w==;
X-CSE-ConnectionGUID: AWs5ySBmQHm6JL15BFthBg==
X-CSE-MsgGUID: l6CBCWDgSYWTWpfQG5yHJg==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="46950814"
X-IronPort-AV: E=Sophos;i="6.11,230,1725346800"; d="scan'208";a="46950814"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 15:31:20 -0700
X-CSE-ConnectionGUID: oLK0BH45S6qIprkuFlegIg==
X-CSE-MsgGUID: 0SZjqF6LQzm8VNg2f9jLzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,230,1725346800"; d="scan'208";a="80838680"
Received: from cataylo2-desk.jf.intel.com ([10.165.21.140])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 15:31:20 -0700
From: Clint Taylor <clinton.a.taylor@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v4 11/11] drm/i915/xe3lpd: Power request asserting/deasserting
Date: Thu, 24 Oct 2024 15:31:14 -0700
Message-Id: <20241024223114.785209-12-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241024223114.785209-1-clinton.a.taylor@intel.com>
References: <20241024223114.785209-1-clinton.a.taylor@intel.com>
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

From: Mika Kahola <mika.kahola@intel.com>

There is a HW issue that arises when there are race conditions
between TCSS entering/exiting TC7 or TC10 states while the
driver is asserting/deasserting TCSS power request. As a
workaround, Display driver will implement a mailbox sequence
to ensure that the TCSS is in TC0 when TCSS power request is
asserted/deasserted.

The sequence is the following

1. Read mailbox command status and wait until run/busy bit is
   clear
2. Write mailbox data value '1' for power request asserting
   and '0' for power request deasserting
3. Write mailbox command run/busy bit and command value with 0x1
4. Read mailbox command and wait until run/busy bit is clear
   before continuing power request.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
Signed-off-by: Clint Taylor <Clinton.A.Taylor@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 40 +++++++++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h         |  7 +++++
 2 files changed, 47 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 6f2ee7dbc43b..7d9f87db381c 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -1013,6 +1013,39 @@ xelpdp_tc_phy_wait_for_tcss_power(struct intel_tc_port *tc, bool enabled)
 	return true;
 }
 
+static bool xelpdp_tc_phy_wait_for_tcss_ready(struct drm_i915_private *i915,
+					      bool enable)
+{
+	if (DISPLAY_VER(i915) < 30)
+		return true;
+
+	/* check if mailbox is running busy */
+	if (intel_de_wait_for_clear(i915, TCSS_DISP_MAILBOX_IN_CMD,
+				    TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY, 10)) {
+		drm_dbg_kms(&i915->drm,
+			    "timeout waiting for TCSS mailbox run/busy bit to clear\n");
+		return false;
+	}
+
+	if (enable)
+		intel_de_write(i915, TCSS_DISP_MAILBOX_IN_DATA, 1);
+	else
+		intel_de_write(i915, TCSS_DISP_MAILBOX_IN_DATA, 0);
+
+	intel_de_write(i915, TCSS_DISP_MAILBOX_IN_CMD,
+		       TCSS_DISP_MAILBOX_IN_CMD_DATA(1));
+
+	/* wait to clear mailbox running busy bit before continuing */
+	if (intel_de_wait_for_clear(i915, TCSS_DISP_MAILBOX_IN_CMD,
+				    TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY, 10)) {
+		drm_dbg_kms(&i915->drm,
+			    "timeout waiting for TCSS mailbox run/busy bit to clear\n");
+		return false;
+	}
+
+	return true;
+}
+
 static void __xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port *tc, bool enable)
 {
 	struct drm_i915_private *i915 = tc_to_i915(tc);
@@ -1022,6 +1055,13 @@ static void __xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port *tc, bool ena
 
 	assert_tc_cold_blocked(tc);
 
+	/*
+	 * Gfx driver workaround for PTL tcss_rxdetect_clkswb_req/ack handshake
+	 * violation when pwwreq= 0->1 during TC7/10 entry
+	 */
+	drm_WARN_ON(&i915->drm,
+		    !xelpdp_tc_phy_wait_for_tcss_ready(i915, enable));
+
 	val = intel_de_read(i915, reg);
 	if (enable)
 		val |= XELPDP_TCSS_POWER_REQUEST;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 8d758947f301..452325c7f427 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4539,6 +4539,13 @@ enum skl_power_gate {
 #define  TCSS_DDI_STATUS_HPD_LIVE_STATUS_TBT	REG_BIT(1)
 #define  TCSS_DDI_STATUS_HPD_LIVE_STATUS_ALT	REG_BIT(0)
 
+#define TCSS_DISP_MAILBOX_IN_CMD		_MMIO(0x161300)
+#define   TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY	REG_BIT(31)
+#define   TCSS_DISP_MAILBOX_IN_CMD_CMD_MASK	REG_GENMASK(7, 0)
+#define   TCSS_DISP_MAILBOX_IN_CMD_DATA(x)	TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY | \
+						REG_FIELD_PREP(TCSS_DISP_MAILBOX_IN_CMD_CMD_MASK, (x))
+#define TCSS_DISP_MAILBOX_IN_DATA		_MMIO(0x161304)
+
 #define PRIMARY_SPI_TRIGGER			_MMIO(0x102040)
 #define PRIMARY_SPI_ADDRESS			_MMIO(0x102080)
 #define PRIMARY_SPI_REGIONID			_MMIO(0x102084)
-- 
2.25.1

