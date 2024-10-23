Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33BE49AD6EC
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 23:47:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F20810E87F;
	Wed, 23 Oct 2024 21:47:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ixg7KLZx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D0AC10E86E;
 Wed, 23 Oct 2024 21:47:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729720027; x=1761256027;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=GSxllgmS4sQ982qLfOZvLua7AhH/XPwpaNu84o2d9bI=;
 b=Ixg7KLZxf93BK7eNa8o72Ny1g8jf1c1SG/yWZ73jxYaoZveOirHHKcKy
 GZcagg4J+vw71Eg5SnZGYAwN9kLoCPFcHA/r7+q8hGosOU9x2PJ8IbCVp
 GTq7tGIVp9O9uyEU2Xzpf8o1JOcNFNs+rBw93+7lw0arfLX6WI0fVDfrM
 yIk+OYa0pgMJZ767xF9b8XQgCsoMg2Kn2EKM2xAuoLAfMJ3mlA2bqGVao
 sXxGKcjN/hPg5v7ECEkVxmGAtMIA90O26jOQW3C+jFru8wMb5/Gf5EMOA
 2+xcq2b5XzFNgcQAY3E9Ss+4VTMkkwQ1ovfXTpjoruQZW9OLTbznWddZO w==;
X-CSE-ConnectionGUID: kfKQllP3RTCX3AfewBqq6w==
X-CSE-MsgGUID: xSQLNqM6R5S1iliHkNZogQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="54732010"
X-IronPort-AV: E=Sophos;i="6.11,227,1725346800"; d="scan'208";a="54732010"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 14:47:06 -0700
X-CSE-ConnectionGUID: A1PcMXw1QMSuNDT6tXx6gQ==
X-CSE-MsgGUID: jJpo4mRGQEWhxVl9TnjBOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,227,1725346800"; d="scan'208";a="80809809"
Received: from cataylo2-desk.jf.intel.com ([10.165.21.140])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 14:47:05 -0700
From: Clint Taylor <clinton.a.taylor@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v2 12/12] drm/i915/xe3lpd: Power request asserting/deasserting
Date: Wed, 23 Oct 2024 14:47:01 -0700
Message-Id: <20241023214701.963830-13-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241023214701.963830-1-clinton.a.taylor@intel.com>
References: <20241023214701.963830-1-clinton.a.taylor@intel.com>
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
index 2743a2dd0a3d..d2775a32bf18 100644
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

