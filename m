Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E2DBC387422
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 10:34:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07DB46E85F;
	Tue, 18 May 2021 08:34:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29CA66E85F
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 May 2021 08:34:08 +0000 (UTC)
IronPort-SDR: Qxy6MuVnQiYZtKKpQgefB39faxDN0I39LprlH65312YnBLboyuwf/7nBGUjA9PHsL1ezlDbcYf
 YgD3vFTu3HEw==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="200712120"
X-IronPort-AV: E=Sophos;i="5.82,309,1613462400"; d="scan'208";a="200712120"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 01:34:07 -0700
IronPort-SDR: w34OJ+enVzMZvvN37wbKbHb/ax7axRxVf2uxcaQK4Wu9yMuutMhYa242fKcyHpgJRzGYCfKzdJ
 kydD/htvMjgw==
X-IronPort-AV: E=Sophos;i="5.82,309,1613462400"; d="scan'208";a="472848700"
Received: from lmrad-mobl.ger.corp.intel.com (HELO localhost) ([10.252.52.115])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 01:34:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 May 2021 11:34:00 +0300
Message-Id: <20210518083400.24874-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH] drm/i915/reg: replace BIT() usage with REG_BIT()
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

REG_BIT() was provided to specify bits as u32 and have them statically
checked, while BIT() is unsigned long with no checks. Replace the uses
that have crept in.

Cc: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 100 ++++++++++++++++----------------
 1 file changed, 50 insertions(+), 50 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 089b5a59bed3..06ebe72e569d 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4078,9 +4078,9 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
  * Logical Context regs
  */
 #define CCID(base)			_MMIO((base) + 0x180)
-#define   CCID_EN			BIT(0)
-#define   CCID_EXTENDED_STATE_RESTORE	BIT(2)
-#define   CCID_EXTENDED_STATE_SAVE	BIT(3)
+#define   CCID_EN			REG_BIT(0)
+#define   CCID_EXTENDED_STATE_RESTORE	REG_BIT(2)
+#define   CCID_EXTENDED_STATE_SAVE	REG_BIT(3)
 /*
  * Notes on SNB/IVB/VLV context size:
  * - Power context is saved elsewhere (LLC or stolen)
@@ -9037,9 +9037,9 @@ enum {
 #define  FORCEWAKE_ACK_MEDIA_VEBOX_GEN11(n)	_MMIO(0x0D70 + (n) * 4)
 #define  FORCEWAKE_ACK_RENDER_GEN9		_MMIO(0x0D84)
 #define  FORCEWAKE_ACK_GT_GEN9			_MMIO(0x130044)
-#define   FORCEWAKE_KERNEL			BIT(0)
-#define   FORCEWAKE_USER			BIT(1)
-#define   FORCEWAKE_KERNEL_FALLBACK		BIT(15)
+#define   FORCEWAKE_KERNEL			REG_BIT(0)
+#define   FORCEWAKE_USER			REG_BIT(1)
+#define   FORCEWAKE_KERNEL_FALLBACK		REG_BIT(15)
 #define  FORCEWAKE_MT_ACK			_MMIO(0x130040)
 #define  ECOBUS					_MMIO(0xa180)
 #define    FORCEWAKE_MT_ENABLE			(1 << 5)
@@ -9753,30 +9753,30 @@ enum skl_power_gate {
 
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
@@ -9787,10 +9787,10 @@ enum skl_power_gate {
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
@@ -9829,7 +9829,7 @@ enum skl_power_gate {
 					 TRANS_HDCP_CONF(trans) : \
 					 PORT_HDCP_CONF(port))
 
-#define  HDCP_CONF_CAPTURE_AN		BIT(0)
+#define  HDCP_CONF_CAPTURE_AN		REG_BIT(0)
 #define  HDCP_CONF_AUTH_AND_ENC		(BIT(1) | BIT(0))
 #define PORT_HDCP_ANINIT(port)		_PORT_HDCP_AUTHENC(port, 0x4)
 #define _TRANSA_HDCP_ANINIT		0x66404
@@ -9906,16 +9906,16 @@ enum skl_power_gate {
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
@@ -9938,10 +9938,10 @@ enum skl_power_gate {
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
 					(INTEL_GEN(dev_priv) >= 12 ? \
 					 TRANS_HDCP2_AUTH(trans) : \
@@ -9952,7 +9952,7 @@ enum skl_power_gate {
 #define _TRANSB_HDCP2_CTL		0x665B0
 #define TRANS_HDCP2_CTL(trans)		_MMIO_TRANS(trans, _TRANSA_HDCP2_CTL, \
 						    _TRANSB_HDCP2_CTL)
-#define   CTL_LINK_ENCRYPTION_REQ	BIT(31)
+#define   CTL_LINK_ENCRYPTION_REQ	REG_BIT(31)
 #define HDCP2_CTL(dev_priv, trans, port) \
 					(INTEL_GEN(dev_priv) >= 12 ? \
 					 TRANS_HDCP2_CTL(trans) : \
@@ -9964,9 +9964,9 @@ enum skl_power_gate {
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
 					(INTEL_GEN(dev_priv) >= 12 ? \
 					 TRANS_HDCP2_STATUS(trans) : \
@@ -9987,8 +9987,8 @@ enum skl_power_gate {
 #define TRANS_HDCP2_STREAM_STATUS(trans)	_MMIO_TRANS(trans, \
 						    _TRANSA_HDCP2_STREAM_STATUS, \
 						    _TRANSB_HDCP2_STREAM_STATUS)
-#define   STREAM_ENCRYPTION_STATUS	BIT(31)
-#define   STREAM_TYPE_STATUS		BIT(30)
+#define   STREAM_ENCRYPTION_STATUS	REG_BIT(31)
+#define   STREAM_TYPE_STATUS		REG_BIT(30)
 #define HDCP2_STREAM_STATUS(dev_priv, trans, port) \
 					(INTEL_GEN(dev_priv) >= 12 ? \
 					 TRANS_HDCP2_STREAM_STATUS(trans) : \
@@ -10004,7 +10004,7 @@ enum skl_power_gate {
 #define TRANS_HDCP2_AUTH_STREAM(trans)	_MMIO_TRANS(trans, \
 						    _TRANSA_HDCP2_AUTH_STREAM, \
 						    _TRANSB_HDCP2_AUTH_STREAM)
-#define   AUTH_STREAM_TYPE		BIT(31)
+#define   AUTH_STREAM_TYPE		REG_BIT(31)
 #define HDCP2_AUTH_STREAM(dev_priv, trans, port) \
 					(INTEL_GEN(dev_priv) >= 12 ? \
 					 TRANS_HDCP2_AUTH_STREAM(trans) : \
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
