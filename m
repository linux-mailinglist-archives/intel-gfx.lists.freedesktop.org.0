Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88BFD2F0E1B
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Jan 2021 09:27:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3973C6E05C;
	Mon, 11 Jan 2021 08:27:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 361636E05A;
 Mon, 11 Jan 2021 08:27:10 +0000 (UTC)
IronPort-SDR: tbLqZ1Vo7/dG4cKKdjb1QksqkvA88OK7MhtlBLe6taT44Et6MDx1QvP231SZYN1jQ0oxhL8hIY
 fvsX39jPpfkg==
X-IronPort-AV: E=McAfee;i="6000,8403,9860"; a="177046240"
X-IronPort-AV: E=Sophos;i="5.79,338,1602572400"; d="scan'208";a="177046240"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2021 00:27:10 -0800
IronPort-SDR: vbo4UudCdTLDm7cloQNf478OrPLIoceyNnWfgOPV2cXrqiZRbMI2H92Yr8/Wy6Zf3Bx8i3NmIK
 E0DyMGbx7uZA==
X-IronPort-AV: E=Sophos;i="5.79,338,1602572400"; d="scan'208";a="464094090"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.179])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2021 00:27:06 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon, 11 Jan 2021 13:41:17 +0530
Message-Id: <20210111081120.28417-17-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210111081120.28417-1-anshuman.gupta@intel.com>
References: <20210111081120.28417-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v9 16/19] drm/i915/hdcp: Add HDCP 2.2 stream
 register
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
Cc: jani.nikula@intel.com, seanpaul@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add HDCP 2.2 DP MST HDCP2_STREAM_STATUS
and HDCP2_AUTH_STREAM register in i915_reg header.

B.Spec: 21780
B.Spec: 14410
B.Spec: 50573

v2
- Modified naming convention of HDCP2_STREAM_STATUS
  for pre-gen12 platforms inline with B.Spec.

Cc: Ramalingam C <ramalingam.c@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Reviewed-by: Ramalingam C <ramalingam.c@intel.com>
Tested-by: Karthik B S <karthik.b.s@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 39 +++++++++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index b448e507d41e..cade0a7a97b2 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -9873,6 +9873,7 @@ enum skl_power_gate {
 					  _PORTD_HDCP2_BASE, \
 					  _PORTE_HDCP2_BASE, \
 					  _PORTF_HDCP2_BASE) + (x))
+
 #define PORT_HDCP2_AUTH(port)		_PORT_HDCP2_BASE(port, 0x98)
 #define _TRANSA_HDCP2_AUTH		0x66498
 #define _TRANSB_HDCP2_AUTH		0x66598
@@ -9912,6 +9913,44 @@ enum skl_power_gate {
 					 TRANS_HDCP2_STATUS(trans) : \
 					 PORT_HDCP2_STATUS(port))
 
+#define _PIPEA_HDCP2_STREAM_STATUS	0x668C0
+#define _PIPEB_HDCP2_STREAM_STATUS	0x665C0
+#define _PIPEC_HDCP2_STREAM_STATUS	0x666C0
+#define _PIPED_HDCP2_STREAM_STATUS	0x667C0
+#define PIPE_HDCP2_STREAM_STATUS(pipe)		_MMIO(_PICK((pipe), \
+						      _PIPEA_HDCP2_STREAM_STATUS, \
+						      _PIPEB_HDCP2_STREAM_STATUS, \
+						      _PIPEC_HDCP2_STREAM_STATUS, \
+						      _PIPED_HDCP2_STREAM_STATUS))
+
+#define _TRANSA_HDCP2_STREAM_STATUS		0x664C0
+#define _TRANSB_HDCP2_STREAM_STATUS		0x665C0
+#define TRANS_HDCP2_STREAM_STATUS(trans)	_MMIO_TRANS(trans, \
+						    _TRANSA_HDCP2_STREAM_STATUS, \
+						    _TRANSB_HDCP2_STREAM_STATUS)
+#define   STREAM_ENCRYPTION_STATUS	BIT(31)
+#define   STREAM_TYPE_STATUS		BIT(30)
+#define HDCP2_STREAM_STATUS(dev_priv, trans, port) \
+					(INTEL_GEN(dev_priv) >= 12 ? \
+					 TRANS_HDCP2_STREAM_STATUS(trans) : \
+					 PIPE_HDCP2_STREAM_STATUS(pipe))
+
+#define _PORTA_HDCP2_AUTH_STREAM		0x66F00
+#define _PORTB_HDCP2_AUTH_STREAM		0x66F04
+#define PORT_HDCP2_AUTH_STREAM(port)	_MMIO_PORT(port, \
+						   _PORTA_HDCP2_AUTH_STREAM, \
+						   _PORTB_HDCP2_AUTH_STREAM)
+#define _TRANSA_HDCP2_AUTH_STREAM		0x66F00
+#define _TRANSB_HDCP2_AUTH_STREAM		0x66F04
+#define TRANS_HDCP2_AUTH_STREAM(trans)	_MMIO_TRANS(trans, \
+						    _TRANSA_HDCP2_AUTH_STREAM, \
+						    _TRANSB_HDCP2_AUTH_STREAM)
+#define   AUTH_STREAM_TYPE		BIT(31)
+#define HDCP2_AUTH_STREAM(dev_priv, trans, port) \
+					(INTEL_GEN(dev_priv) >= 12 ? \
+					 TRANS_HDCP2_AUTH_STREAM(trans) : \
+					 PORT_HDCP2_AUTH_STREAM(port))
+
 /* Per-pipe DDI Function Control */
 #define _TRANS_DDI_FUNC_CTL_A		0x60400
 #define _TRANS_DDI_FUNC_CTL_B		0x61400
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
