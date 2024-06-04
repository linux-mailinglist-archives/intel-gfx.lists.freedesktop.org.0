Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73A308FB723
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:29:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E68510E4F6;
	Tue,  4 Jun 2024 15:29:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MlOfQpL/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D35510E4FE
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:29:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717514951; x=1749050951;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gTHqCwNqrA4FjQ8fXRNO6eR4BND718ZqBnEv9sxbl14=;
 b=MlOfQpL/0UbGkgnTUHGFsCLmykJlIrKhaECie5meuYSaRcdfssuK9atA
 uYFPYm2kxnKUSAWGQ+zQD90TtxkIGjSH9U4rsFhRpi6LhkX58Ctybr8O4
 PEJzk/Pwtaq6Izrd1HaMZmgVOm+nwvQFQCxp+xUPztTLJsCfCdAmjg2Rl
 9WwTX6MXyiRPIgKmIp42hRNI41YEB2tTo5pOtXnX325Nht0JBJ0nFiEKa
 UaSNyJ+qK9ArvYXgTTjFCUgRrn+F0T9PdpjSHZru6gXm4hwhmXcrjWImV
 VUl9i2fDTGUkGqbjj8TDideRj9dAk+8wisSMt3N72/v0Hb5miSAy30uAO w==;
X-CSE-ConnectionGUID: u2EG9Vp3QPSkhQejVTBtQg==
X-CSE-MsgGUID: SWLBXA56T1S8mdewGWxTIg==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="13949584"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="13949584"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:29:11 -0700
X-CSE-ConnectionGUID: v5O4+V4KRr2ggIxh1Ch1cw==
X-CSE-MsgGUID: V+Mcy5TaQa2FFx4uPxJ56g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="60465621"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:29:09 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 34/65] drm/i915: pass dev_priv explicitly to SWF1
Date: Tue,  4 Jun 2024 18:25:52 +0300
Message-Id: <cd31efc114325e61e357b0f8a1106f2eb7819fff.1717514638.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1717514638.git.jani.nikula@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Avoid the implicit dev_priv local variable use, and pass dev_priv
explicitly to the SWF1 register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h     |  2 +-
 drivers/gpu/drm/i915/i915_suspend.c | 18 ++++++++++++------
 2 files changed, 13 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 8b379ff60070..81f1b491d7af 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2291,7 +2291,7 @@
  * [30:32] all
  */
 #define SWF0(dev_priv, i)	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x70410 + (i) * 4)
-#define SWF1(i)	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x71410 + (i) * 4)
+#define SWF1(dev_priv, i)	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x71410 + (i) * 4)
 #define SWF3(i)	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x72414 + (i) * 4)
 #define SWF_ILK(i)	_MMIO(0x4F000 + (i) * 4)
 
diff --git a/drivers/gpu/drm/i915/i915_suspend.c b/drivers/gpu/drm/i915/i915_suspend.c
index ac8221ae97f3..8a71c1f52cb4 100644
--- a/drivers/gpu/drm/i915/i915_suspend.c
+++ b/drivers/gpu/drm/i915/i915_suspend.c
@@ -42,18 +42,21 @@ static void intel_save_swf(struct drm_i915_private *dev_priv)
 		for (i = 0; i < 7; i++) {
 			dev_priv->regfile.saveSWF0[i] = intel_de_read(dev_priv,
 								      SWF0(dev_priv, i));
-			dev_priv->regfile.saveSWF1[i] = intel_de_read(dev_priv, SWF1(i));
+			dev_priv->regfile.saveSWF1[i] = intel_de_read(dev_priv,
+								      SWF1(dev_priv, i));
 		}
 		for (i = 0; i < 3; i++)
 			dev_priv->regfile.saveSWF3[i] = intel_de_read(dev_priv, SWF3(i));
 	} else if (GRAPHICS_VER(dev_priv) == 2) {
 		for (i = 0; i < 7; i++)
-			dev_priv->regfile.saveSWF1[i] = intel_de_read(dev_priv, SWF1(i));
+			dev_priv->regfile.saveSWF1[i] = intel_de_read(dev_priv,
+								      SWF1(dev_priv, i));
 	} else if (HAS_GMCH(dev_priv)) {
 		for (i = 0; i < 16; i++) {
 			dev_priv->regfile.saveSWF0[i] = intel_de_read(dev_priv,
 								      SWF0(dev_priv, i));
-			dev_priv->regfile.saveSWF1[i] = intel_de_read(dev_priv, SWF1(i));
+			dev_priv->regfile.saveSWF1[i] = intel_de_read(dev_priv,
+								      SWF1(dev_priv, i));
 		}
 		for (i = 0; i < 3; i++)
 			dev_priv->regfile.saveSWF3[i] = intel_de_read(dev_priv, SWF3(i));
@@ -69,18 +72,21 @@ static void intel_restore_swf(struct drm_i915_private *dev_priv)
 		for (i = 0; i < 7; i++) {
 			intel_de_write(dev_priv, SWF0(dev_priv, i),
 				       dev_priv->regfile.saveSWF0[i]);
-			intel_de_write(dev_priv, SWF1(i), dev_priv->regfile.saveSWF1[i]);
+			intel_de_write(dev_priv, SWF1(dev_priv, i),
+				       dev_priv->regfile.saveSWF1[i]);
 		}
 		for (i = 0; i < 3; i++)
 			intel_de_write(dev_priv, SWF3(i), dev_priv->regfile.saveSWF3[i]);
 	} else if (GRAPHICS_VER(dev_priv) == 2) {
 		for (i = 0; i < 7; i++)
-			intel_de_write(dev_priv, SWF1(i), dev_priv->regfile.saveSWF1[i]);
+			intel_de_write(dev_priv, SWF1(dev_priv, i),
+				       dev_priv->regfile.saveSWF1[i]);
 	} else if (HAS_GMCH(dev_priv)) {
 		for (i = 0; i < 16; i++) {
 			intel_de_write(dev_priv, SWF0(dev_priv, i),
 				       dev_priv->regfile.saveSWF0[i]);
-			intel_de_write(dev_priv, SWF1(i), dev_priv->regfile.saveSWF1[i]);
+			intel_de_write(dev_priv, SWF1(dev_priv, i),
+				       dev_priv->regfile.saveSWF1[i]);
 		}
 		for (i = 0; i < 3; i++)
 			intel_de_write(dev_priv, SWF3(i), dev_priv->regfile.saveSWF3[i]);
-- 
2.39.2

