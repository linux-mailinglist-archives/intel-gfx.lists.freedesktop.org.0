Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F3198247A7
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 18:45:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0619210E520;
	Thu,  4 Jan 2024 17:45:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A498A10E51E
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jan 2024 17:45:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704390325; x=1735926325;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XjjfLJWD/a/RiAxmooViSs23gMvqaX+MUJeRBaBHG0A=;
 b=L7a9XURCtDaEwl7+xg0zaQ1xsLUiuinqr+kmL00Z7UY6DPX5zwRUxjmE
 f983a5Zm1J/2+HvCbQB51M9AZxb9S9tW27k4zaUJ2aOODkWk7zaRBvJgw
 FW0eegQK2i1lMU8jEV5lJPObtKmtXLs1UYcca4OoR5anYlxo1d62akzyE
 Lsz+sXYY6YY9rqhA5uJJLvRCE5eW+AQfLKNXJ0elwk8rFAiCagtq45flz
 W/1RpycNLq9v2g4kgDTtXIuCL1CYrFyA9oyuE5bOhhhFicQyf+NzRFh1b
 nEi1F2u++QK+URjF/qmDIi3ZF25ZGoZWsRWZj/xDVGQeS1VkN5e7myxjH A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="4093864"
X-IronPort-AV: E=Sophos;i="6.04,331,1695711600"; 
   d="scan'208";a="4093864"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 09:44:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="923988831"
X-IronPort-AV: E=Sophos;i="6.04,331,1695711600"; d="scan'208";a="923988831"
Received: from pdelarag-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.32])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 09:44:02 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/5] drm/i915/hdcp: use DISPLAY_VER instead of GRAPHICS_VER
Date: Thu,  4 Jan 2024 19:43:48 +0200
Message-Id: <20240104174350.823605-3-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240104174350.823605-1-jani.nikula@intel.com>
References: <20240104174350.823605-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Display code should not care about graphics version. While at it,
abstract the version check to a separate macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_hdcp_regs.h    | 28 ++++++++++---------
 1 file changed, 15 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_regs.h b/drivers/gpu/drm/i915/display/intel_hdcp_regs.h
index 8023c85c7fa0..a568a457e532 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_regs.h
@@ -8,6 +8,8 @@
 
 #include "intel_display_reg_defs.h"
 
+#define TRANS_HDCP(__i915)		(DISPLAY_VER(__i915) >= 12)
+
 /* HDCP Key Registers */
 #define HDCP_KEY_CONF			_MMIO(0x66c00)
 #define  HDCP_AKSV_SEND_TRIGGER		REG_BIT(31)
@@ -82,7 +84,7 @@
 #define TRANS_HDCP_CONF(trans)		_MMIO_TRANS(trans, _TRANSA_HDCP_CONF, \
 						    _TRANSB_HDCP_CONF)
 #define HDCP_CONF(dev_priv, trans, port) \
-					(GRAPHICS_VER(dev_priv) >= 12 ? \
+					(TRANS_HDCP(dev_priv) ? \
 					 TRANS_HDCP_CONF(trans) : \
 					 PORT_HDCP_CONF(port))
 
@@ -95,7 +97,7 @@
 						    _TRANSA_HDCP_ANINIT, \
 						    _TRANSB_HDCP_ANINIT)
 #define HDCP_ANINIT(dev_priv, trans, port) \
-					(GRAPHICS_VER(dev_priv) >= 12 ? \
+					(TRANS_HDCP(dev_priv) ? \
 					 TRANS_HDCP_ANINIT(trans) : \
 					 PORT_HDCP_ANINIT(port))
 
@@ -105,7 +107,7 @@
 #define TRANS_HDCP_ANLO(trans)		_MMIO_TRANS(trans, _TRANSA_HDCP_ANLO, \
 						    _TRANSB_HDCP_ANLO)
 #define HDCP_ANLO(dev_priv, trans, port) \
-					(GRAPHICS_VER(dev_priv) >= 12 ? \
+					(TRANS_HDCP(dev_priv) ? \
 					 TRANS_HDCP_ANLO(trans) : \
 					 PORT_HDCP_ANLO(port))
 
@@ -115,7 +117,7 @@
 #define TRANS_HDCP_ANHI(trans)		_MMIO_TRANS(trans, _TRANSA_HDCP_ANHI, \
 						    _TRANSB_HDCP_ANHI)
 #define HDCP_ANHI(dev_priv, trans, port) \
-					(GRAPHICS_VER(dev_priv) >= 12 ? \
+					(TRANS_HDCP(dev_priv) ? \
 					 TRANS_HDCP_ANHI(trans) : \
 					 PORT_HDCP_ANHI(port))
 
@@ -126,7 +128,7 @@
 						    _TRANSA_HDCP_BKSVLO, \
 						    _TRANSB_HDCP_BKSVLO)
 #define HDCP_BKSVLO(dev_priv, trans, port) \
-					(GRAPHICS_VER(dev_priv) >= 12 ? \
+					(TRANS_HDCP(dev_priv) ? \
 					 TRANS_HDCP_BKSVLO(trans) : \
 					 PORT_HDCP_BKSVLO(port))
 
@@ -137,7 +139,7 @@
 						    _TRANSA_HDCP_BKSVHI, \
 						    _TRANSB_HDCP_BKSVHI)
 #define HDCP_BKSVHI(dev_priv, trans, port) \
-					(GRAPHICS_VER(dev_priv) >= 12 ? \
+					(TRANS_HDCP(dev_priv) ? \
 					 TRANS_HDCP_BKSVHI(trans) : \
 					 PORT_HDCP_BKSVHI(port))
 
@@ -148,7 +150,7 @@
 						    _TRANSA_HDCP_RPRIME, \
 						    _TRANSB_HDCP_RPRIME)
 #define HDCP_RPRIME(dev_priv, trans, port) \
-					(GRAPHICS_VER(dev_priv) >= 12 ? \
+					(TRANS_HDCP(dev_priv) ? \
 					 TRANS_HDCP_RPRIME(trans) : \
 					 PORT_HDCP_RPRIME(port))
 
@@ -159,7 +161,7 @@
 						    _TRANSA_HDCP_STATUS, \
 						    _TRANSB_HDCP_STATUS)
 #define HDCP_STATUS(dev_priv, trans, port) \
-					(GRAPHICS_VER(dev_priv) >= 12 ? \
+					(TRANS_HDCP(dev_priv) ? \
 					 TRANS_HDCP_STATUS(trans) : \
 					 PORT_HDCP_STATUS(port))
 
@@ -200,7 +202,7 @@
 #define   AUTH_FORCE_CLR_INPUTCTR	REG_BIT(19)
 #define   AUTH_CLR_KEYS			REG_BIT(18)
 #define HDCP2_AUTH(dev_priv, trans, port) \
-					(GRAPHICS_VER(dev_priv) >= 12 ? \
+					(TRANS_HDCP(dev_priv) ? \
 					 TRANS_HDCP2_AUTH(trans) : \
 					 PORT_HDCP2_AUTH(port))
 
@@ -211,7 +213,7 @@
 						    _TRANSB_HDCP2_CTL)
 #define   CTL_LINK_ENCRYPTION_REQ	REG_BIT(31)
 #define HDCP2_CTL(dev_priv, trans, port) \
-					(GRAPHICS_VER(dev_priv) >= 12 ? \
+					(TRANS_HDCP(dev_priv) ? \
 					 TRANS_HDCP2_CTL(trans) : \
 					 PORT_HDCP2_CTL(port))
 
@@ -225,7 +227,7 @@
 #define   LINK_AUTH_STATUS		REG_BIT(21)
 #define   LINK_ENCRYPTION_STATUS	REG_BIT(20)
 #define HDCP2_STATUS(dev_priv, trans, port) \
-					(GRAPHICS_VER(dev_priv) >= 12 ? \
+					(TRANS_HDCP(dev_priv) ? \
 					 TRANS_HDCP2_STATUS(trans) : \
 					 PORT_HDCP2_STATUS(port))
 
@@ -247,7 +249,7 @@
 #define   STREAM_ENCRYPTION_STATUS	REG_BIT(31)
 #define   STREAM_TYPE_STATUS		REG_BIT(30)
 #define HDCP2_STREAM_STATUS(dev_priv, trans, port) \
-					(GRAPHICS_VER(dev_priv) >= 12 ? \
+					(TRANS_HDCP(dev_priv) ? \
 					 TRANS_HDCP2_STREAM_STATUS(trans) : \
 					 PIPE_HDCP2_STREAM_STATUS(pipe))
 
@@ -263,7 +265,7 @@
 						    _TRANSB_HDCP2_AUTH_STREAM)
 #define   AUTH_STREAM_TYPE		REG_BIT(31)
 #define HDCP2_AUTH_STREAM(dev_priv, trans, port) \
-					(GRAPHICS_VER(dev_priv) >= 12 ? \
+					(TRANS_HDCP(dev_priv) ? \
 					 TRANS_HDCP2_AUTH_STREAM(trans) : \
 					 PORT_HDCP2_AUTH_STREAM(port))
 
-- 
2.39.2

