Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 86BD554B707
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jun 2022 18:58:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41A0410E958;
	Tue, 14 Jun 2022 16:58:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 164E710E958
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jun 2022 16:58:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655225927; x=1686761927;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IzMoZrMYYI9p668dDIR97JhCkhyGiyE++R8tC3GzHac=;
 b=nnyKe8Hg625Sny/ndKlxkLXrRq5+4F2m+5NL4cwWvvwfxhN/wokFpPkN
 tHsR5O0MEFNkhPbjCDng/x6KlzTFcwyZ3vRocmVt4i3ahw4s0jY8fvUV8
 2YMrGqhR4Fb3dRO2IqGGXyaWZ/NfQNlFF9e5QK3IYnzcJrsQGJ+u1y3+p
 eK8MUcFU/km+2AFSsXng3q/JVMqJ7SaKXiaaloRyWfOmxjRD/alEJj+Q1
 PIbrtqWpCUzwTyE36hH1UHaKD3PH3gR7nTw1OixhLc4LUKJgq4+989FZO
 Pricv6spkThGGNp9FAN7O4WrMQYxKxyRbyxxtzHdjnYJB/zv30xaW8UCW A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10378"; a="259132204"
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; d="scan'208";a="259132204"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2022 09:58:46 -0700
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; d="scan'208";a="640477510"
Received: from nncongwa-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.32.178])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2022 09:58:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jun 2022 19:58:23 +0300
Message-Id: <20220614165823.1250348-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/hdcp: split out hdcp registers to a
 separate file
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reduce the bloat of i915_reg.h.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c  |   1 +
 drivers/gpu/drm/i915/display/intel_hdcp.c     |   1 +
 .../gpu/drm/i915/display/intel_hdcp_regs.h    | 270 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   1 +
 drivers/gpu/drm/i915/i915_reg.h               | 259 -----------------
 5 files changed, 273 insertions(+), 259 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_hdcp_regs.h

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index a7640dbcf00e..88689124c013 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -17,6 +17,7 @@
 #include "intel_dp.h"
 #include "intel_dp_hdcp.h"
 #include "intel_hdcp.h"
+#include "intel_hdcp_regs.h"
 
 static unsigned int transcoder_to_stream_enc_status(enum transcoder cpu_transcoder)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 8ea66a2e1b09..c5e9e86bb4cb 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -23,6 +23,7 @@
 #include "intel_display_power_well.h"
 #include "intel_display_types.h"
 #include "intel_hdcp.h"
+#include "intel_hdcp_regs.h"
 #include "intel_pcode.h"
 
 #define KEY_LOAD_TRIES	5
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_regs.h b/drivers/gpu/drm/i915/display/intel_hdcp_regs.h
new file mode 100644
index 000000000000..cbeab64e69d2
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_regs.h
@@ -0,0 +1,270 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#ifndef __INTEL_HDCP_REGS_H__
+#define __INTEL_HDCP_REGS_H__
+
+#include "i915_reg_defs.h"
+
+/* HDCP Key Registers */
+#define HDCP_KEY_CONF			_MMIO(0x66c00)
+#define  HDCP_AKSV_SEND_TRIGGER		BIT(31)
+#define  HDCP_CLEAR_KEYS_TRIGGER	BIT(30)
+#define  HDCP_KEY_LOAD_TRIGGER		BIT(8)
+#define HDCP_KEY_STATUS			_MMIO(0x66c04)
+#define  HDCP_FUSE_IN_PROGRESS		BIT(7)
+#define  HDCP_FUSE_ERROR		BIT(6)
+#define  HDCP_FUSE_DONE			BIT(5)
+#define  HDCP_KEY_LOAD_STATUS		BIT(1)
+#define  HDCP_KEY_LOAD_DONE		BIT(0)
+#define HDCP_AKSV_LO			_MMIO(0x66c10)
+#define HDCP_AKSV_HI			_MMIO(0x66c14)
+
+/* HDCP Repeater Registers */
+#define HDCP_REP_CTL			_MMIO(0x66d00)
+#define  HDCP_TRANSA_REP_PRESENT	BIT(31)
+#define  HDCP_TRANSB_REP_PRESENT	BIT(30)
+#define  HDCP_TRANSC_REP_PRESENT	BIT(29)
+#define  HDCP_TRANSD_REP_PRESENT	BIT(28)
+#define  HDCP_DDIB_REP_PRESENT		BIT(30)
+#define  HDCP_DDIA_REP_PRESENT		BIT(29)
+#define  HDCP_DDIC_REP_PRESENT		BIT(28)
+#define  HDCP_DDID_REP_PRESENT		BIT(27)
+#define  HDCP_DDIF_REP_PRESENT		BIT(26)
+#define  HDCP_DDIE_REP_PRESENT		BIT(25)
+#define  HDCP_TRANSA_SHA1_M0		(1 << 20)
+#define  HDCP_TRANSB_SHA1_M0		(2 << 20)
+#define  HDCP_TRANSC_SHA1_M0		(3 << 20)
+#define  HDCP_TRANSD_SHA1_M0		(4 << 20)
+#define  HDCP_DDIB_SHA1_M0		(1 << 20)
+#define  HDCP_DDIA_SHA1_M0		(2 << 20)
+#define  HDCP_DDIC_SHA1_M0		(3 << 20)
+#define  HDCP_DDID_SHA1_M0		(4 << 20)
+#define  HDCP_DDIF_SHA1_M0		(5 << 20)
+#define  HDCP_DDIE_SHA1_M0		(6 << 20) /* Bspec says 5? */
+#define  HDCP_SHA1_BUSY			BIT(16)
+#define  HDCP_SHA1_READY		BIT(17)
+#define  HDCP_SHA1_COMPLETE		BIT(18)
+#define  HDCP_SHA1_V_MATCH		BIT(19)
+#define  HDCP_SHA1_TEXT_32		(1 << 1)
+#define  HDCP_SHA1_COMPLETE_HASH	(2 << 1)
+#define  HDCP_SHA1_TEXT_24		(4 << 1)
+#define  HDCP_SHA1_TEXT_16		(5 << 1)
+#define  HDCP_SHA1_TEXT_8		(6 << 1)
+#define  HDCP_SHA1_TEXT_0		(7 << 1)
+#define HDCP_SHA_V_PRIME_H0		_MMIO(0x66d04)
+#define HDCP_SHA_V_PRIME_H1		_MMIO(0x66d08)
+#define HDCP_SHA_V_PRIME_H2		_MMIO(0x66d0C)
+#define HDCP_SHA_V_PRIME_H3		_MMIO(0x66d10)
+#define HDCP_SHA_V_PRIME_H4		_MMIO(0x66d14)
+#define HDCP_SHA_V_PRIME(h)		_MMIO((0x66d04 + (h) * 4))
+#define HDCP_SHA_TEXT			_MMIO(0x66d18)
+
+/* HDCP Auth Registers */
+#define _PORTA_HDCP_AUTHENC		0x66800
+#define _PORTB_HDCP_AUTHENC		0x66500
+#define _PORTC_HDCP_AUTHENC		0x66600
+#define _PORTD_HDCP_AUTHENC		0x66700
+#define _PORTE_HDCP_AUTHENC		0x66A00
+#define _PORTF_HDCP_AUTHENC		0x66900
+#define _PORT_HDCP_AUTHENC(port, x)	_MMIO(_PICK(port, \
+					  _PORTA_HDCP_AUTHENC, \
+					  _PORTB_HDCP_AUTHENC, \
+					  _PORTC_HDCP_AUTHENC, \
+					  _PORTD_HDCP_AUTHENC, \
+					  _PORTE_HDCP_AUTHENC, \
+					  _PORTF_HDCP_AUTHENC) + (x))
+#define PORT_HDCP_CONF(port)		_PORT_HDCP_AUTHENC(port, 0x0)
+#define _TRANSA_HDCP_CONF		0x66400
+#define _TRANSB_HDCP_CONF		0x66500
+#define TRANS_HDCP_CONF(trans)		_MMIO_TRANS(trans, _TRANSA_HDCP_CONF, \
+						    _TRANSB_HDCP_CONF)
+#define HDCP_CONF(dev_priv, trans, port) \
+					(GRAPHICS_VER(dev_priv) >= 12 ? \
+					 TRANS_HDCP_CONF(trans) : \
+					 PORT_HDCP_CONF(port))
+
+#define  HDCP_CONF_CAPTURE_AN		BIT(0)
+#define  HDCP_CONF_AUTH_AND_ENC		(BIT(1) | BIT(0))
+#define PORT_HDCP_ANINIT(port)		_PORT_HDCP_AUTHENC(port, 0x4)
+#define _TRANSA_HDCP_ANINIT		0x66404
+#define _TRANSB_HDCP_ANINIT		0x66504
+#define TRANS_HDCP_ANINIT(trans)	_MMIO_TRANS(trans, \
+						    _TRANSA_HDCP_ANINIT, \
+						    _TRANSB_HDCP_ANINIT)
+#define HDCP_ANINIT(dev_priv, trans, port) \
+					(GRAPHICS_VER(dev_priv) >= 12 ? \
+					 TRANS_HDCP_ANINIT(trans) : \
+					 PORT_HDCP_ANINIT(port))
+
+#define PORT_HDCP_ANLO(port)		_PORT_HDCP_AUTHENC(port, 0x8)
+#define _TRANSA_HDCP_ANLO		0x66408
+#define _TRANSB_HDCP_ANLO		0x66508
+#define TRANS_HDCP_ANLO(trans)		_MMIO_TRANS(trans, _TRANSA_HDCP_ANLO, \
+						    _TRANSB_HDCP_ANLO)
+#define HDCP_ANLO(dev_priv, trans, port) \
+					(GRAPHICS_VER(dev_priv) >= 12 ? \
+					 TRANS_HDCP_ANLO(trans) : \
+					 PORT_HDCP_ANLO(port))
+
+#define PORT_HDCP_ANHI(port)		_PORT_HDCP_AUTHENC(port, 0xC)
+#define _TRANSA_HDCP_ANHI		0x6640C
+#define _TRANSB_HDCP_ANHI		0x6650C
+#define TRANS_HDCP_ANHI(trans)		_MMIO_TRANS(trans, _TRANSA_HDCP_ANHI, \
+						    _TRANSB_HDCP_ANHI)
+#define HDCP_ANHI(dev_priv, trans, port) \
+					(GRAPHICS_VER(dev_priv) >= 12 ? \
+					 TRANS_HDCP_ANHI(trans) : \
+					 PORT_HDCP_ANHI(port))
+
+#define PORT_HDCP_BKSVLO(port)		_PORT_HDCP_AUTHENC(port, 0x10)
+#define _TRANSA_HDCP_BKSVLO		0x66410
+#define _TRANSB_HDCP_BKSVLO		0x66510
+#define TRANS_HDCP_BKSVLO(trans)	_MMIO_TRANS(trans, \
+						    _TRANSA_HDCP_BKSVLO, \
+						    _TRANSB_HDCP_BKSVLO)
+#define HDCP_BKSVLO(dev_priv, trans, port) \
+					(GRAPHICS_VER(dev_priv) >= 12 ? \
+					 TRANS_HDCP_BKSVLO(trans) : \
+					 PORT_HDCP_BKSVLO(port))
+
+#define PORT_HDCP_BKSVHI(port)		_PORT_HDCP_AUTHENC(port, 0x14)
+#define _TRANSA_HDCP_BKSVHI		0x66414
+#define _TRANSB_HDCP_BKSVHI		0x66514
+#define TRANS_HDCP_BKSVHI(trans)	_MMIO_TRANS(trans, \
+						    _TRANSA_HDCP_BKSVHI, \
+						    _TRANSB_HDCP_BKSVHI)
+#define HDCP_BKSVHI(dev_priv, trans, port) \
+					(GRAPHICS_VER(dev_priv) >= 12 ? \
+					 TRANS_HDCP_BKSVHI(trans) : \
+					 PORT_HDCP_BKSVHI(port))
+
+#define PORT_HDCP_RPRIME(port)		_PORT_HDCP_AUTHENC(port, 0x18)
+#define _TRANSA_HDCP_RPRIME		0x66418
+#define _TRANSB_HDCP_RPRIME		0x66518
+#define TRANS_HDCP_RPRIME(trans)	_MMIO_TRANS(trans, \
+						    _TRANSA_HDCP_RPRIME, \
+						    _TRANSB_HDCP_RPRIME)
+#define HDCP_RPRIME(dev_priv, trans, port) \
+					(GRAPHICS_VER(dev_priv) >= 12 ? \
+					 TRANS_HDCP_RPRIME(trans) : \
+					 PORT_HDCP_RPRIME(port))
+
+#define PORT_HDCP_STATUS(port)		_PORT_HDCP_AUTHENC(port, 0x1C)
+#define _TRANSA_HDCP_STATUS		0x6641C
+#define _TRANSB_HDCP_STATUS		0x6651C
+#define TRANS_HDCP_STATUS(trans)	_MMIO_TRANS(trans, \
+						    _TRANSA_HDCP_STATUS, \
+						    _TRANSB_HDCP_STATUS)
+#define HDCP_STATUS(dev_priv, trans, port) \
+					(GRAPHICS_VER(dev_priv) >= 12 ? \
+					 TRANS_HDCP_STATUS(trans) : \
+					 PORT_HDCP_STATUS(port))
+
+#define  HDCP_STATUS_STREAM_A_ENC	BIT(31)
+#define  HDCP_STATUS_STREAM_B_ENC	BIT(30)
+#define  HDCP_STATUS_STREAM_C_ENC	BIT(29)
+#define  HDCP_STATUS_STREAM_D_ENC	BIT(28)
+#define  HDCP_STATUS_AUTH		BIT(21)
+#define  HDCP_STATUS_ENC		BIT(20)
+#define  HDCP_STATUS_RI_MATCH		BIT(19)
+#define  HDCP_STATUS_R0_READY		BIT(18)
+#define  HDCP_STATUS_AN_READY		BIT(17)
+#define  HDCP_STATUS_CIPHER		BIT(16)
+#define  HDCP_STATUS_FRAME_CNT(x)	(((x) >> 8) & 0xff)
+
+/* HDCP2.2 Registers */
+#define _PORTA_HDCP2_BASE		0x66800
+#define _PORTB_HDCP2_BASE		0x66500
+#define _PORTC_HDCP2_BASE		0x66600
+#define _PORTD_HDCP2_BASE		0x66700
+#define _PORTE_HDCP2_BASE		0x66A00
+#define _PORTF_HDCP2_BASE		0x66900
+#define _PORT_HDCP2_BASE(port, x)	_MMIO(_PICK((port), \
+					  _PORTA_HDCP2_BASE, \
+					  _PORTB_HDCP2_BASE, \
+					  _PORTC_HDCP2_BASE, \
+					  _PORTD_HDCP2_BASE, \
+					  _PORTE_HDCP2_BASE, \
+					  _PORTF_HDCP2_BASE) + (x))
+
+#define PORT_HDCP2_AUTH(port)		_PORT_HDCP2_BASE(port, 0x98)
+#define _TRANSA_HDCP2_AUTH		0x66498
+#define _TRANSB_HDCP2_AUTH		0x66598
+#define TRANS_HDCP2_AUTH(trans)		_MMIO_TRANS(trans, _TRANSA_HDCP2_AUTH, \
+						    _TRANSB_HDCP2_AUTH)
+#define   AUTH_LINK_AUTHENTICATED	BIT(31)
+#define   AUTH_LINK_TYPE		BIT(30)
+#define   AUTH_FORCE_CLR_INPUTCTR	BIT(19)
+#define   AUTH_CLR_KEYS			BIT(18)
+#define HDCP2_AUTH(dev_priv, trans, port) \
+					(GRAPHICS_VER(dev_priv) >= 12 ? \
+					 TRANS_HDCP2_AUTH(trans) : \
+					 PORT_HDCP2_AUTH(port))
+
+#define PORT_HDCP2_CTL(port)		_PORT_HDCP2_BASE(port, 0xB0)
+#define _TRANSA_HDCP2_CTL		0x664B0
+#define _TRANSB_HDCP2_CTL		0x665B0
+#define TRANS_HDCP2_CTL(trans)		_MMIO_TRANS(trans, _TRANSA_HDCP2_CTL, \
+						    _TRANSB_HDCP2_CTL)
+#define   CTL_LINK_ENCRYPTION_REQ	BIT(31)
+#define HDCP2_CTL(dev_priv, trans, port) \
+					(GRAPHICS_VER(dev_priv) >= 12 ? \
+					 TRANS_HDCP2_CTL(trans) : \
+					 PORT_HDCP2_CTL(port))
+
+#define PORT_HDCP2_STATUS(port)		_PORT_HDCP2_BASE(port, 0xB4)
+#define _TRANSA_HDCP2_STATUS		0x664B4
+#define _TRANSB_HDCP2_STATUS		0x665B4
+#define TRANS_HDCP2_STATUS(trans)	_MMIO_TRANS(trans, \
+						    _TRANSA_HDCP2_STATUS, \
+						    _TRANSB_HDCP2_STATUS)
+#define   LINK_TYPE_STATUS		BIT(22)
+#define   LINK_AUTH_STATUS		BIT(21)
+#define   LINK_ENCRYPTION_STATUS	BIT(20)
+#define HDCP2_STATUS(dev_priv, trans, port) \
+					(GRAPHICS_VER(dev_priv) >= 12 ? \
+					 TRANS_HDCP2_STATUS(trans) : \
+					 PORT_HDCP2_STATUS(port))
+
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
+					(GRAPHICS_VER(dev_priv) >= 12 ? \
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
+					(GRAPHICS_VER(dev_priv) >= 12 ? \
+					 TRANS_HDCP2_AUTH_STREAM(trans) : \
+					 PORT_HDCP2_AUTH_STREAM(port))
+
+#endif /* __INTEL_HDCP_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 1ae09431f53a..d163777edfcb 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -50,6 +50,7 @@
 #include "intel_dp.h"
 #include "intel_gmbus.h"
 #include "intel_hdcp.h"
+#include "intel_hdcp_regs.h"
 #include "intel_hdmi.h"
 #include "intel_lspcon.h"
 #include "intel_panel.h"
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 932bd6aa4a0a..eba539e73c91 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -6938,265 +6938,6 @@ enum skl_power_gate {
 #define   ICL_AUX_ANAOVRD1_LDO_BYPASS	(1 << 7)
 #define   ICL_AUX_ANAOVRD1_ENABLE	(1 << 0)
 
-/* HDCP Key Registers */
-#define HDCP_KEY_CONF			_MMIO(0x66c00)
-#define  HDCP_AKSV_SEND_TRIGGER		BIT(31)
-#define  HDCP_CLEAR_KEYS_TRIGGER	BIT(30)
-#define  HDCP_KEY_LOAD_TRIGGER		BIT(8)
-#define HDCP_KEY_STATUS			_MMIO(0x66c04)
-#define  HDCP_FUSE_IN_PROGRESS		BIT(7)
-#define  HDCP_FUSE_ERROR		BIT(6)
-#define  HDCP_FUSE_DONE			BIT(5)
-#define  HDCP_KEY_LOAD_STATUS		BIT(1)
-#define  HDCP_KEY_LOAD_DONE		BIT(0)
-#define HDCP_AKSV_LO			_MMIO(0x66c10)
-#define HDCP_AKSV_HI			_MMIO(0x66c14)
-
-/* HDCP Repeater Registers */
-#define HDCP_REP_CTL			_MMIO(0x66d00)
-#define  HDCP_TRANSA_REP_PRESENT	BIT(31)
-#define  HDCP_TRANSB_REP_PRESENT	BIT(30)
-#define  HDCP_TRANSC_REP_PRESENT	BIT(29)
-#define  HDCP_TRANSD_REP_PRESENT	BIT(28)
-#define  HDCP_DDIB_REP_PRESENT		BIT(30)
-#define  HDCP_DDIA_REP_PRESENT		BIT(29)
-#define  HDCP_DDIC_REP_PRESENT		BIT(28)
-#define  HDCP_DDID_REP_PRESENT		BIT(27)
-#define  HDCP_DDIF_REP_PRESENT		BIT(26)
-#define  HDCP_DDIE_REP_PRESENT		BIT(25)
-#define  HDCP_TRANSA_SHA1_M0		(1 << 20)
-#define  HDCP_TRANSB_SHA1_M0		(2 << 20)
-#define  HDCP_TRANSC_SHA1_M0		(3 << 20)
-#define  HDCP_TRANSD_SHA1_M0		(4 << 20)
-#define  HDCP_DDIB_SHA1_M0		(1 << 20)
-#define  HDCP_DDIA_SHA1_M0		(2 << 20)
-#define  HDCP_DDIC_SHA1_M0		(3 << 20)
-#define  HDCP_DDID_SHA1_M0		(4 << 20)
-#define  HDCP_DDIF_SHA1_M0		(5 << 20)
-#define  HDCP_DDIE_SHA1_M0		(6 << 20) /* Bspec says 5? */
-#define  HDCP_SHA1_BUSY			BIT(16)
-#define  HDCP_SHA1_READY		BIT(17)
-#define  HDCP_SHA1_COMPLETE		BIT(18)
-#define  HDCP_SHA1_V_MATCH		BIT(19)
-#define  HDCP_SHA1_TEXT_32		(1 << 1)
-#define  HDCP_SHA1_COMPLETE_HASH	(2 << 1)
-#define  HDCP_SHA1_TEXT_24		(4 << 1)
-#define  HDCP_SHA1_TEXT_16		(5 << 1)
-#define  HDCP_SHA1_TEXT_8		(6 << 1)
-#define  HDCP_SHA1_TEXT_0		(7 << 1)
-#define HDCP_SHA_V_PRIME_H0		_MMIO(0x66d04)
-#define HDCP_SHA_V_PRIME_H1		_MMIO(0x66d08)
-#define HDCP_SHA_V_PRIME_H2		_MMIO(0x66d0C)
-#define HDCP_SHA_V_PRIME_H3		_MMIO(0x66d10)
-#define HDCP_SHA_V_PRIME_H4		_MMIO(0x66d14)
-#define HDCP_SHA_V_PRIME(h)		_MMIO((0x66d04 + (h) * 4))
-#define HDCP_SHA_TEXT			_MMIO(0x66d18)
-
-/* HDCP Auth Registers */
-#define _PORTA_HDCP_AUTHENC		0x66800
-#define _PORTB_HDCP_AUTHENC		0x66500
-#define _PORTC_HDCP_AUTHENC		0x66600
-#define _PORTD_HDCP_AUTHENC		0x66700
-#define _PORTE_HDCP_AUTHENC		0x66A00
-#define _PORTF_HDCP_AUTHENC		0x66900
-#define _PORT_HDCP_AUTHENC(port, x)	_MMIO(_PICK(port, \
-					  _PORTA_HDCP_AUTHENC, \
-					  _PORTB_HDCP_AUTHENC, \
-					  _PORTC_HDCP_AUTHENC, \
-					  _PORTD_HDCP_AUTHENC, \
-					  _PORTE_HDCP_AUTHENC, \
-					  _PORTF_HDCP_AUTHENC) + (x))
-#define PORT_HDCP_CONF(port)		_PORT_HDCP_AUTHENC(port, 0x0)
-#define _TRANSA_HDCP_CONF		0x66400
-#define _TRANSB_HDCP_CONF		0x66500
-#define TRANS_HDCP_CONF(trans)		_MMIO_TRANS(trans, _TRANSA_HDCP_CONF, \
-						    _TRANSB_HDCP_CONF)
-#define HDCP_CONF(dev_priv, trans, port) \
-					(GRAPHICS_VER(dev_priv) >= 12 ? \
-					 TRANS_HDCP_CONF(trans) : \
-					 PORT_HDCP_CONF(port))
-
-#define  HDCP_CONF_CAPTURE_AN		BIT(0)
-#define  HDCP_CONF_AUTH_AND_ENC		(BIT(1) | BIT(0))
-#define PORT_HDCP_ANINIT(port)		_PORT_HDCP_AUTHENC(port, 0x4)
-#define _TRANSA_HDCP_ANINIT		0x66404
-#define _TRANSB_HDCP_ANINIT		0x66504
-#define TRANS_HDCP_ANINIT(trans)	_MMIO_TRANS(trans, \
-						    _TRANSA_HDCP_ANINIT, \
-						    _TRANSB_HDCP_ANINIT)
-#define HDCP_ANINIT(dev_priv, trans, port) \
-					(GRAPHICS_VER(dev_priv) >= 12 ? \
-					 TRANS_HDCP_ANINIT(trans) : \
-					 PORT_HDCP_ANINIT(port))
-
-#define PORT_HDCP_ANLO(port)		_PORT_HDCP_AUTHENC(port, 0x8)
-#define _TRANSA_HDCP_ANLO		0x66408
-#define _TRANSB_HDCP_ANLO		0x66508
-#define TRANS_HDCP_ANLO(trans)		_MMIO_TRANS(trans, _TRANSA_HDCP_ANLO, \
-						    _TRANSB_HDCP_ANLO)
-#define HDCP_ANLO(dev_priv, trans, port) \
-					(GRAPHICS_VER(dev_priv) >= 12 ? \
-					 TRANS_HDCP_ANLO(trans) : \
-					 PORT_HDCP_ANLO(port))
-
-#define PORT_HDCP_ANHI(port)		_PORT_HDCP_AUTHENC(port, 0xC)
-#define _TRANSA_HDCP_ANHI		0x6640C
-#define _TRANSB_HDCP_ANHI		0x6650C
-#define TRANS_HDCP_ANHI(trans)		_MMIO_TRANS(trans, _TRANSA_HDCP_ANHI, \
-						    _TRANSB_HDCP_ANHI)
-#define HDCP_ANHI(dev_priv, trans, port) \
-					(GRAPHICS_VER(dev_priv) >= 12 ? \
-					 TRANS_HDCP_ANHI(trans) : \
-					 PORT_HDCP_ANHI(port))
-
-#define PORT_HDCP_BKSVLO(port)		_PORT_HDCP_AUTHENC(port, 0x10)
-#define _TRANSA_HDCP_BKSVLO		0x66410
-#define _TRANSB_HDCP_BKSVLO		0x66510
-#define TRANS_HDCP_BKSVLO(trans)	_MMIO_TRANS(trans, \
-						    _TRANSA_HDCP_BKSVLO, \
-						    _TRANSB_HDCP_BKSVLO)
-#define HDCP_BKSVLO(dev_priv, trans, port) \
-					(GRAPHICS_VER(dev_priv) >= 12 ? \
-					 TRANS_HDCP_BKSVLO(trans) : \
-					 PORT_HDCP_BKSVLO(port))
-
-#define PORT_HDCP_BKSVHI(port)		_PORT_HDCP_AUTHENC(port, 0x14)
-#define _TRANSA_HDCP_BKSVHI		0x66414
-#define _TRANSB_HDCP_BKSVHI		0x66514
-#define TRANS_HDCP_BKSVHI(trans)	_MMIO_TRANS(trans, \
-						    _TRANSA_HDCP_BKSVHI, \
-						    _TRANSB_HDCP_BKSVHI)
-#define HDCP_BKSVHI(dev_priv, trans, port) \
-					(GRAPHICS_VER(dev_priv) >= 12 ? \
-					 TRANS_HDCP_BKSVHI(trans) : \
-					 PORT_HDCP_BKSVHI(port))
-
-#define PORT_HDCP_RPRIME(port)		_PORT_HDCP_AUTHENC(port, 0x18)
-#define _TRANSA_HDCP_RPRIME		0x66418
-#define _TRANSB_HDCP_RPRIME		0x66518
-#define TRANS_HDCP_RPRIME(trans)	_MMIO_TRANS(trans, \
-						    _TRANSA_HDCP_RPRIME, \
-						    _TRANSB_HDCP_RPRIME)
-#define HDCP_RPRIME(dev_priv, trans, port) \
-					(GRAPHICS_VER(dev_priv) >= 12 ? \
-					 TRANS_HDCP_RPRIME(trans) : \
-					 PORT_HDCP_RPRIME(port))
-
-#define PORT_HDCP_STATUS(port)		_PORT_HDCP_AUTHENC(port, 0x1C)
-#define _TRANSA_HDCP_STATUS		0x6641C
-#define _TRANSB_HDCP_STATUS		0x6651C
-#define TRANS_HDCP_STATUS(trans)	_MMIO_TRANS(trans, \
-						    _TRANSA_HDCP_STATUS, \
-						    _TRANSB_HDCP_STATUS)
-#define HDCP_STATUS(dev_priv, trans, port) \
-					(GRAPHICS_VER(dev_priv) >= 12 ? \
-					 TRANS_HDCP_STATUS(trans) : \
-					 PORT_HDCP_STATUS(port))
-
-#define  HDCP_STATUS_STREAM_A_ENC	BIT(31)
-#define  HDCP_STATUS_STREAM_B_ENC	BIT(30)
-#define  HDCP_STATUS_STREAM_C_ENC	BIT(29)
-#define  HDCP_STATUS_STREAM_D_ENC	BIT(28)
-#define  HDCP_STATUS_AUTH		BIT(21)
-#define  HDCP_STATUS_ENC		BIT(20)
-#define  HDCP_STATUS_RI_MATCH		BIT(19)
-#define  HDCP_STATUS_R0_READY		BIT(18)
-#define  HDCP_STATUS_AN_READY		BIT(17)
-#define  HDCP_STATUS_CIPHER		BIT(16)
-#define  HDCP_STATUS_FRAME_CNT(x)	(((x) >> 8) & 0xff)
-
-/* HDCP2.2 Registers */
-#define _PORTA_HDCP2_BASE		0x66800
-#define _PORTB_HDCP2_BASE		0x66500
-#define _PORTC_HDCP2_BASE		0x66600
-#define _PORTD_HDCP2_BASE		0x66700
-#define _PORTE_HDCP2_BASE		0x66A00
-#define _PORTF_HDCP2_BASE		0x66900
-#define _PORT_HDCP2_BASE(port, x)	_MMIO(_PICK((port), \
-					  _PORTA_HDCP2_BASE, \
-					  _PORTB_HDCP2_BASE, \
-					  _PORTC_HDCP2_BASE, \
-					  _PORTD_HDCP2_BASE, \
-					  _PORTE_HDCP2_BASE, \
-					  _PORTF_HDCP2_BASE) + (x))
-
-#define PORT_HDCP2_AUTH(port)		_PORT_HDCP2_BASE(port, 0x98)
-#define _TRANSA_HDCP2_AUTH		0x66498
-#define _TRANSB_HDCP2_AUTH		0x66598
-#define TRANS_HDCP2_AUTH(trans)		_MMIO_TRANS(trans, _TRANSA_HDCP2_AUTH, \
-						    _TRANSB_HDCP2_AUTH)
-#define   AUTH_LINK_AUTHENTICATED	BIT(31)
-#define   AUTH_LINK_TYPE		BIT(30)
-#define   AUTH_FORCE_CLR_INPUTCTR	BIT(19)
-#define   AUTH_CLR_KEYS			BIT(18)
-#define HDCP2_AUTH(dev_priv, trans, port) \
-					(GRAPHICS_VER(dev_priv) >= 12 ? \
-					 TRANS_HDCP2_AUTH(trans) : \
-					 PORT_HDCP2_AUTH(port))
-
-#define PORT_HDCP2_CTL(port)		_PORT_HDCP2_BASE(port, 0xB0)
-#define _TRANSA_HDCP2_CTL		0x664B0
-#define _TRANSB_HDCP2_CTL		0x665B0
-#define TRANS_HDCP2_CTL(trans)		_MMIO_TRANS(trans, _TRANSA_HDCP2_CTL, \
-						    _TRANSB_HDCP2_CTL)
-#define   CTL_LINK_ENCRYPTION_REQ	BIT(31)
-#define HDCP2_CTL(dev_priv, trans, port) \
-					(GRAPHICS_VER(dev_priv) >= 12 ? \
-					 TRANS_HDCP2_CTL(trans) : \
-					 PORT_HDCP2_CTL(port))
-
-#define PORT_HDCP2_STATUS(port)		_PORT_HDCP2_BASE(port, 0xB4)
-#define _TRANSA_HDCP2_STATUS		0x664B4
-#define _TRANSB_HDCP2_STATUS		0x665B4
-#define TRANS_HDCP2_STATUS(trans)	_MMIO_TRANS(trans, \
-						    _TRANSA_HDCP2_STATUS, \
-						    _TRANSB_HDCP2_STATUS)
-#define   LINK_TYPE_STATUS		BIT(22)
-#define   LINK_AUTH_STATUS		BIT(21)
-#define   LINK_ENCRYPTION_STATUS	BIT(20)
-#define HDCP2_STATUS(dev_priv, trans, port) \
-					(GRAPHICS_VER(dev_priv) >= 12 ? \
-					 TRANS_HDCP2_STATUS(trans) : \
-					 PORT_HDCP2_STATUS(port))
-
-#define _PIPEA_HDCP2_STREAM_STATUS	0x668C0
-#define _PIPEB_HDCP2_STREAM_STATUS	0x665C0
-#define _PIPEC_HDCP2_STREAM_STATUS	0x666C0
-#define _PIPED_HDCP2_STREAM_STATUS	0x667C0
-#define PIPE_HDCP2_STREAM_STATUS(pipe)		_MMIO(_PICK((pipe), \
-						      _PIPEA_HDCP2_STREAM_STATUS, \
-						      _PIPEB_HDCP2_STREAM_STATUS, \
-						      _PIPEC_HDCP2_STREAM_STATUS, \
-						      _PIPED_HDCP2_STREAM_STATUS))
-
-#define _TRANSA_HDCP2_STREAM_STATUS		0x664C0
-#define _TRANSB_HDCP2_STREAM_STATUS		0x665C0
-#define TRANS_HDCP2_STREAM_STATUS(trans)	_MMIO_TRANS(trans, \
-						    _TRANSA_HDCP2_STREAM_STATUS, \
-						    _TRANSB_HDCP2_STREAM_STATUS)
-#define   STREAM_ENCRYPTION_STATUS	BIT(31)
-#define   STREAM_TYPE_STATUS		BIT(30)
-#define HDCP2_STREAM_STATUS(dev_priv, trans, port) \
-					(GRAPHICS_VER(dev_priv) >= 12 ? \
-					 TRANS_HDCP2_STREAM_STATUS(trans) : \
-					 PIPE_HDCP2_STREAM_STATUS(pipe))
-
-#define _PORTA_HDCP2_AUTH_STREAM		0x66F00
-#define _PORTB_HDCP2_AUTH_STREAM		0x66F04
-#define PORT_HDCP2_AUTH_STREAM(port)	_MMIO_PORT(port, \
-						   _PORTA_HDCP2_AUTH_STREAM, \
-						   _PORTB_HDCP2_AUTH_STREAM)
-#define _TRANSA_HDCP2_AUTH_STREAM		0x66F00
-#define _TRANSB_HDCP2_AUTH_STREAM		0x66F04
-#define TRANS_HDCP2_AUTH_STREAM(trans)	_MMIO_TRANS(trans, \
-						    _TRANSA_HDCP2_AUTH_STREAM, \
-						    _TRANSB_HDCP2_AUTH_STREAM)
-#define   AUTH_STREAM_TYPE		BIT(31)
-#define HDCP2_AUTH_STREAM(dev_priv, trans, port) \
-					(GRAPHICS_VER(dev_priv) >= 12 ? \
-					 TRANS_HDCP2_AUTH_STREAM(trans) : \
-					 PORT_HDCP2_AUTH_STREAM(port))
-
 /* Per-pipe DDI Function Control */
 #define _TRANS_DDI_FUNC_CTL_A		0x60400
 #define _TRANS_DDI_FUNC_CTL_B		0x61400
-- 
2.30.2

