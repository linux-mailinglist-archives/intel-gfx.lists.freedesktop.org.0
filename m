Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1382514B64A
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 15:04:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 477566EE59;
	Tue, 28 Jan 2020 14:04:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E97F56EE56
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 14:03:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jan 2020 06:03:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,374,1574150400"; d="scan'208";a="429334473"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by fmsmga006.fm.intel.com with ESMTP; 28 Jan 2020 06:03:54 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Jan 2020 19:24:25 +0530
Message-Id: <20200128135425.14596-5-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200128135425.14596-1-anshuman.gupta@intel.com>
References: <20200128135425.14596-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: Add HDCP2.2 capable debug print
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Few CI panel claims to support HDCP 2.2 but at CI
HDCP IGT test execution these panels are not detecting
as HDCP 2.2 supported panels. Adding HDCP 2.2 version
print will be useful in such cases.

CC: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c   | 2 ++
 drivers/gpu/drm/i915/display/intel_hdmi.c | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 991f343579ef..22a3c3e9ade2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6449,6 +6449,8 @@ int intel_dp_hdcp2_capable(struct intel_digital_port *intel_dig_port,
 	if (ret != HDCP_2_2_RXCAPS_LEN)
 		return ret >= 0 ? -EIO : ret;
 
+	DRM_DEBUG_KMS("HDCP 2.2 RxCaps VERSION 0x%x\n", rx_caps[0]);
+
 	if (rx_caps[0] == HDCP_2_2_RX_CAPS_VERSION_VAL &&
 	    HDCP_2_2_DP_HDCP_CAPABLE(rx_caps[2]))
 		*capable = true;
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 685589064d10..a7af0be83397 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1701,6 +1701,8 @@ int intel_hdmi_hdcp2_capable(struct intel_digital_port *intel_dig_port,
 	*capable = false;
 	ret = intel_hdmi_hdcp_read(intel_dig_port, HDCP_2_2_HDMI_REG_VER_OFFSET,
 				   &hdcp2_version, sizeof(hdcp2_version));
+	DRM_DEBUG_KMS("HDCP2Version 0%x\n", hdcp2_version);
+
 	if (!ret && hdcp2_version & HDCP_2_2_HDMI_SUPPORT_MASK)
 		*capable = true;
 
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
