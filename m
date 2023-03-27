Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 446AE6C9BFA
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Mar 2023 09:28:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B446010E23B;
	Mon, 27 Mar 2023 07:28:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32DAA10E23B
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Mar 2023 07:28:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679902082; x=1711438082;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qFhC1UGtukvu2jUxX8lVcTnvB2+kagvcqBdzpUWGQpk=;
 b=BEJ+SAv6vJpJjg38m5fH1ocP9kFL1jetG30bG37wD1I5Kma6iBPktUuV
 mYnHz5JzbRnLt8+HOouhBEfcb+/+rxVpNtILvpdmAPsQuh/gfVE/p3xce
 duJqIOUvLXX+u5+w690h3zfpQY1bthpQXxM14/wK4mYJg2CsRvQJyo8lV
 Rdp2Tjo0+uOdNA0gObdjWFT+DXNe2IHQiqnKANqXR3TpwD1Kwh/l7bD7P
 1wsqqDXMqFjBroVMJWTgVBaGS0QmlZoGbks0cEv4iUcLucvyN4HH1fCxR
 uOLpxP3S02bq+AiyRDpQx2LxrAWmwtWYF0ygIGvFxoVRWbZeJ8Dbrfo7o w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="426461496"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="426461496"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 00:28:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="807378136"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="807378136"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orsmga004.jf.intel.com with ESMTP; 27 Mar 2023 00:28:00 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Mar 2023 12:50:09 +0530
Message-Id: <20230327072009.1340-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Program pipe A PIPE_MISC_A
 bit 9 Pixel Extension to 0
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
Cc: Jigar Bhatt <jigar.bhatt@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Jigar Bhatt <jigar.bhatt@intel.com>

Due to RTL bug FBC cannot be enabled when pipe is programed in Pixel
Extension mode of Zero Extend. This caused 1 bit change in pixel value
in compressed vs uncompressed frame which comes up as a flicker.
WA for D13 is to always used MSB Extend for Pixel extension.

WA: 16015082434

Signed-off-by: Jigar Bhatt <jigar.bhatt@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 +++-
 drivers/gpu/drm/i915/i915_reg.h              | 1 +
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 5a386c7c0bc9..7006c1cb09f7 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3374,8 +3374,10 @@ static void bdw_set_pipe_misc(const struct intel_crtc_state *crtc_state)
 	if (DISPLAY_VER(dev_priv) >= 11 && is_hdr_mode(crtc_state))
 		val |= PIPE_MISC_HDR_MODE_PRECISION;
 
-	if (DISPLAY_VER(dev_priv) >= 12)
+	if (DISPLAY_VER(dev_priv) >= 12) {
 		val |= PIPE_MISC_PIXEL_ROUNDING_TRUNC;
+		val &= ~(PIPEMISC_PIXEL_EXTENSION_ZERO_EXTEND);
+	}
 
 	intel_de_write(dev_priv, PIPE_MISC(crtc->pipe), val);
 }
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index d22ffd7a32dc..dcad60b5f50e 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3501,6 +3501,7 @@
 #define   PIPE_MISC_YUV420_MODE_FULL_BLEND	REG_BIT(26) /* glk+ */
 #define   PIPE_MISC_HDR_MODE_PRECISION		REG_BIT(23) /* icl+ */
 #define   PIPE_MISC_OUTPUT_COLORSPACE_YUV	REG_BIT(11)
+#define   PIPEMISC_PIXEL_EXTENSION_ZERO_EXTEND	REG_BIT(9)
 #define   PIPE_MISC_PIXEL_ROUNDING_TRUNC		REG_BIT(8) /* tgl+ */
 /*
  * For Display < 13, Bits 5-7 of PIPE MISC represent DITHER BPC with
-- 
2.29.0

