Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2929F2D5406
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 07:41:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 219616EA09;
	Thu, 10 Dec 2020 06:41:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96E1B6EA0D;
 Thu, 10 Dec 2020 06:41:11 +0000 (UTC)
IronPort-SDR: 4taKvR3ejWsy12mCYfowh+CHlG0SvL5SsARu0xYWE4qD6OVHd4gjRmlHNeU8H5D4U9cbf3w3m3
 rdxb09FHIHKA==
X-IronPort-AV: E=McAfee;i="6000,8403,9830"; a="174322261"
X-IronPort-AV: E=Sophos;i="5.78,407,1599548400"; d="scan'208";a="174322261"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2020 22:41:11 -0800
IronPort-SDR: vEFmNBsUnPckYPPFFfo05pT59knT5XX+fYVpTTyw7c3Y7N3f0USDOsf8INUHXzJ+DKJ9YOWbPK
 NdOZbxjZOC7g==
X-IronPort-AV: E=Sophos;i="5.78,407,1599548400"; d="scan'208";a="318854514"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.178])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2020 22:41:08 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 10 Dec 2020 11:56:38 +0530
Message-Id: <20201210062640.11783-17-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201210062640.11783-1-anshuman.gupta@intel.com>
References: <20201210062640.11783-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 16/18] drm/i915/hdcp: Add HDCP 2.2 stream
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
