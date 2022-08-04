Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C6AEB589A3A
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Aug 2022 11:59:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9E3A917AC;
	Thu,  4 Aug 2022 09:59:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E079512B45C
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Aug 2022 09:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659607139; x=1691143139;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uqEAssDkrRhnTRSUQmTblBID3l9qynXp7+d4iqEEs1g=;
 b=AoORooc/KILYobFAQPjrlRzNXNQRzwiiCxAVm5ufPxvBbMZGpwkezf8s
 JRo1MvoxQk0jmSeTHvAU8hT7bKGRU1cypYvzsXx7UOfa5G58TUxTOg/Y2
 W7zx6nnz5TQuZPb98GexEsicGS5R/XiGQ4D+0L6qi+ViOqwkk1cHYYAyK
 bnp76jw2iUoWJSET4BGvVHWxslMtGMonsD5yZ/5Z3AxXVq8d/Tp1mFqU+
 68bZTzT2cKbYN7E8Q6RVlcg3H0TJ21egETW2jz4Yqc9SgMW84qvOLLg+O
 kIrmsO4WA8iftjpMcEOWuVOg9kbQOp8t/ALCKTX0LUYAXKMS6hKwjk4Db A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10428"; a="290669589"
X-IronPort-AV: E=Sophos;i="5.93,215,1654585200"; d="scan'208";a="290669589"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2022 02:58:47 -0700
X-IronPort-AV: E=Sophos;i="5.93,215,1654585200"; d="scan'208";a="631520410"
Received: from wujunyox-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.59.120])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2022 02:58:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Aug 2022 12:58:35 +0300
Message-Id: <d28b9b9fef4f496bdaaad5503dd8e0027f167518.1659607033.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1659607033.git.jani.nikula@intel.com>
References: <cover.1659607033.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/hdcp: replace BIT() with REG_BIT()
 in register definitions
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

Registers contents are supposed to be defined using REG_BIT() to ensure
they're u32 and the shift is within bounds.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_hdcp_regs.h    | 90 +++++++++----------
 1 file changed, 45 insertions(+), 45 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_regs.h b/drivers/gpu/drm/i915/display/intel_hdcp_regs.h
index cbeab64e69d2..2a3733e8966c 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_regs.h
@@ -10,30 +10,30 @@
 
 /* HDCP Key Registers */
 #define HDCP_KEY_CONF			_MMIO(0x66c00)
-#define  HDCP_AKSV_SEND_TRIGGER		BIT(31)
-#define  HDCP_CLEAR_KEYS_TRIGGER	BIT(30)
-#define  HDCP_KEY_LOAD_TRIGGER		BIT(8)
+#define  HDCP_AKSV_SEND_TRIGGER		REG_BIT(31)
+#define  HDCP_CLEAR_KEYS_TRIGGER	REG_BIT(30)
+#define  HDCP_KEY_LOAD_TRIGGER		REG_BIT(8)
 #define HDCP_KEY_STATUS			_MMIO(0x66c04)
-#define  HDCP_FUSE_IN_PROGRESS		BIT(7)
-#define  HDCP_FUSE_ERROR		BIT(6)
-#define  HDCP_FUSE_DONE			BIT(5)
-#define  HDCP_KEY_LOAD_STATUS		BIT(1)
-#define  HDCP_KEY_LOAD_DONE		BIT(0)
+#define  HDCP_FUSE_IN_PROGRESS		REG_BIT(7)
+#define  HDCP_FUSE_ERROR		REG_BIT(6)
+#define  HDCP_FUSE_DONE			REG_BIT(5)
+#define  HDCP_KEY_LOAD_STATUS		REG_BIT(1)
+#define  HDCP_KEY_LOAD_DONE		REG_BIT(0)
 #define HDCP_AKSV_LO			_MMIO(0x66c10)
 #define HDCP_AKSV_HI			_MMIO(0x66c14)
 
 /* HDCP Repeater Registers */
 #define HDCP_REP_CTL			_MMIO(0x66d00)
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
+#define  HDCP_TRANSA_REP_PRESENT	REG_BIT(31)
+#define  HDCP_TRANSB_REP_PRESENT	REG_BIT(30)
+#define  HDCP_TRANSC_REP_PRESENT	REG_BIT(29)
+#define  HDCP_TRANSD_REP_PRESENT	REG_BIT(28)
+#define  HDCP_DDIB_REP_PRESENT		REG_BIT(30)
+#define  HDCP_DDIA_REP_PRESENT		REG_BIT(29)
+#define  HDCP_DDIC_REP_PRESENT		REG_BIT(28)
+#define  HDCP_DDID_REP_PRESENT		REG_BIT(27)
+#define  HDCP_DDIF_REP_PRESENT		REG_BIT(26)
+#define  HDCP_DDIE_REP_PRESENT		REG_BIT(25)
 #define  HDCP_TRANSA_SHA1_M0		(1 << 20)
 #define  HDCP_TRANSB_SHA1_M0		(2 << 20)
 #define  HDCP_TRANSC_SHA1_M0		(3 << 20)
@@ -44,10 +44,10 @@
 #define  HDCP_DDID_SHA1_M0		(4 << 20)
 #define  HDCP_DDIF_SHA1_M0		(5 << 20)
 #define  HDCP_DDIE_SHA1_M0		(6 << 20) /* Bspec says 5? */
-#define  HDCP_SHA1_BUSY			BIT(16)
-#define  HDCP_SHA1_READY		BIT(17)
-#define  HDCP_SHA1_COMPLETE		BIT(18)
-#define  HDCP_SHA1_V_MATCH		BIT(19)
+#define  HDCP_SHA1_BUSY			REG_BIT(16)
+#define  HDCP_SHA1_READY		REG_BIT(17)
+#define  HDCP_SHA1_COMPLETE		REG_BIT(18)
+#define  HDCP_SHA1_V_MATCH		REG_BIT(19)
 #define  HDCP_SHA1_TEXT_32		(1 << 1)
 #define  HDCP_SHA1_COMPLETE_HASH	(2 << 1)
 #define  HDCP_SHA1_TEXT_24		(4 << 1)
@@ -86,8 +86,8 @@
 					 TRANS_HDCP_CONF(trans) : \
 					 PORT_HDCP_CONF(port))
 
-#define  HDCP_CONF_CAPTURE_AN		BIT(0)
-#define  HDCP_CONF_AUTH_AND_ENC		(BIT(1) | BIT(0))
+#define  HDCP_CONF_CAPTURE_AN		REG_BIT(0)
+#define  HDCP_CONF_AUTH_AND_ENC		(REG_BIT(1) | REG_BIT(0))
 #define PORT_HDCP_ANINIT(port)		_PORT_HDCP_AUTHENC(port, 0x4)
 #define _TRANSA_HDCP_ANINIT		0x66404
 #define _TRANSB_HDCP_ANINIT		0x66504
@@ -163,16 +163,16 @@
 					 TRANS_HDCP_STATUS(trans) : \
 					 PORT_HDCP_STATUS(port))
 
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
+#define  HDCP_STATUS_STREAM_A_ENC	REG_BIT(31)
+#define  HDCP_STATUS_STREAM_B_ENC	REG_BIT(30)
+#define  HDCP_STATUS_STREAM_C_ENC	REG_BIT(29)
+#define  HDCP_STATUS_STREAM_D_ENC	REG_BIT(28)
+#define  HDCP_STATUS_AUTH		REG_BIT(21)
+#define  HDCP_STATUS_ENC		REG_BIT(20)
+#define  HDCP_STATUS_RI_MATCH		REG_BIT(19)
+#define  HDCP_STATUS_R0_READY		REG_BIT(18)
+#define  HDCP_STATUS_AN_READY		REG_BIT(17)
+#define  HDCP_STATUS_CIPHER		REG_BIT(16)
 #define  HDCP_STATUS_FRAME_CNT(x)	(((x) >> 8) & 0xff)
 
 /* HDCP2.2 Registers */
@@ -195,10 +195,10 @@
 #define _TRANSB_HDCP2_AUTH		0x66598
 #define TRANS_HDCP2_AUTH(trans)		_MMIO_TRANS(trans, _TRANSA_HDCP2_AUTH, \
 						    _TRANSB_HDCP2_AUTH)
-#define   AUTH_LINK_AUTHENTICATED	BIT(31)
-#define   AUTH_LINK_TYPE		BIT(30)
-#define   AUTH_FORCE_CLR_INPUTCTR	BIT(19)
-#define   AUTH_CLR_KEYS			BIT(18)
+#define   AUTH_LINK_AUTHENTICATED	REG_BIT(31)
+#define   AUTH_LINK_TYPE		REG_BIT(30)
+#define   AUTH_FORCE_CLR_INPUTCTR	REG_BIT(19)
+#define   AUTH_CLR_KEYS			REG_BIT(18)
 #define HDCP2_AUTH(dev_priv, trans, port) \
 					(GRAPHICS_VER(dev_priv) >= 12 ? \
 					 TRANS_HDCP2_AUTH(trans) : \
@@ -209,7 +209,7 @@
 #define _TRANSB_HDCP2_CTL		0x665B0
 #define TRANS_HDCP2_CTL(trans)		_MMIO_TRANS(trans, _TRANSA_HDCP2_CTL, \
 						    _TRANSB_HDCP2_CTL)
-#define   CTL_LINK_ENCRYPTION_REQ	BIT(31)
+#define   CTL_LINK_ENCRYPTION_REQ	REG_BIT(31)
 #define HDCP2_CTL(dev_priv, trans, port) \
 					(GRAPHICS_VER(dev_priv) >= 12 ? \
 					 TRANS_HDCP2_CTL(trans) : \
@@ -221,9 +221,9 @@
 #define TRANS_HDCP2_STATUS(trans)	_MMIO_TRANS(trans, \
 						    _TRANSA_HDCP2_STATUS, \
 						    _TRANSB_HDCP2_STATUS)
-#define   LINK_TYPE_STATUS		BIT(22)
-#define   LINK_AUTH_STATUS		BIT(21)
-#define   LINK_ENCRYPTION_STATUS	BIT(20)
+#define   LINK_TYPE_STATUS		REG_BIT(22)
+#define   LINK_AUTH_STATUS		REG_BIT(21)
+#define   LINK_ENCRYPTION_STATUS	REG_BIT(20)
 #define HDCP2_STATUS(dev_priv, trans, port) \
 					(GRAPHICS_VER(dev_priv) >= 12 ? \
 					 TRANS_HDCP2_STATUS(trans) : \
@@ -244,8 +244,8 @@
 #define TRANS_HDCP2_STREAM_STATUS(trans)	_MMIO_TRANS(trans, \
 						    _TRANSA_HDCP2_STREAM_STATUS, \
 						    _TRANSB_HDCP2_STREAM_STATUS)
-#define   STREAM_ENCRYPTION_STATUS	BIT(31)
-#define   STREAM_TYPE_STATUS		BIT(30)
+#define   STREAM_ENCRYPTION_STATUS	REG_BIT(31)
+#define   STREAM_TYPE_STATUS		REG_BIT(30)
 #define HDCP2_STREAM_STATUS(dev_priv, trans, port) \
 					(GRAPHICS_VER(dev_priv) >= 12 ? \
 					 TRANS_HDCP2_STREAM_STATUS(trans) : \
@@ -261,7 +261,7 @@
 #define TRANS_HDCP2_AUTH_STREAM(trans)	_MMIO_TRANS(trans, \
 						    _TRANSA_HDCP2_AUTH_STREAM, \
 						    _TRANSB_HDCP2_AUTH_STREAM)
-#define   AUTH_STREAM_TYPE		BIT(31)
+#define   AUTH_STREAM_TYPE		REG_BIT(31)
 #define HDCP2_AUTH_STREAM(dev_priv, trans, port) \
 					(GRAPHICS_VER(dev_priv) >= 12 ? \
 					 TRANS_HDCP2_AUTH_STREAM(trans) : \
-- 
2.30.2

