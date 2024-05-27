Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD8718CFE9E
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2024 13:11:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3739910E895;
	Mon, 27 May 2024 11:11:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZuUBk2xu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 756AF10ED86
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2024 11:11:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716808281; x=1748344281;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=09Zz79/PCqzaURe0JWvJwW6lENyywQIZzeyJEdqvw/s=;
 b=ZuUBk2xuuHSRaX8CxT6f24zYpo8bPVmyzDwc5ZFiXcT8Zb08pNxXOkK/
 YXTG+n/CqXT9uaiSxhEcvvb7HAaRwkTiAlFYgQj+uMRE2WSqc4te9+kIs
 f+klMBwPslsUhieuhGwedlx1NJou6DaceOajz/6wnixnfXeNoy9KdDmML
 k2HSE2Q1TfGAxGnxFYfEHOG1ycSjIAUOCk6Nu1jmrpRJftpWmWPYwCWPl
 zlO9ZMQ0eqT1LVD5H/k/VYkUzshNaF1pes3OnPQHiFgnvMw53QTX1mRrD
 z+N5KBcKLERlC3WeNJcZTd4sJpCUd3g0hRMLzQ0BtRdz7ke+FL97GRIKu Q==;
X-CSE-ConnectionGUID: krB/7ZjIRv2sG33s3ZHx9Q==
X-CSE-MsgGUID: GsSEDgtwQHiN8U/PHCgRHw==
X-IronPort-AV: E=McAfee;i="6600,9927,11084"; a="24246622"
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="24246622"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 04:11:08 -0700
X-CSE-ConnectionGUID: ne0n/qciQ72VdG8dL2BN8g==
X-CSE-MsgGUID: obw8JriRRhuo+GsOnYvKXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="72152917"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.200])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 04:11:07 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 02/11] drm/i915: pass dev_priv explicitly to HSW_TVIDEO_DIP_GCP
Date: Mon, 27 May 2024 14:10:44 +0300
Message-Id: <36f0b90f07c7aa78e88fadb375359df39ecd0a77.1716808214.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1716808214.git.jani.nikula@intel.com>
References: <cover.1716808214.git.jani.nikula@intel.com>
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
explicitly to the HSW_TVIDEO_DIP_GCP register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c   | 4 ++--
 drivers/gpu/drm/i915/i915_reg.h             | 2 +-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c | 6 +++---
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 4557acdd8b3c..18a95d7f2771 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -986,7 +986,7 @@ static bool intel_hdmi_set_gcp_infoframe(struct intel_encoder *encoder,
 		return false;
 
 	if (HAS_DDI(dev_priv))
-		reg = HSW_TVIDEO_DIP_GCP(crtc_state->cpu_transcoder);
+		reg = HSW_TVIDEO_DIP_GCP(dev_priv, crtc_state->cpu_transcoder);
 	else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
 		reg = VLV_TVIDEO_DIP_GCP(crtc->pipe);
 	else if (HAS_PCH_SPLIT(dev_priv))
@@ -1011,7 +1011,7 @@ void intel_hdmi_read_gcp_infoframe(struct intel_encoder *encoder,
 		return;
 
 	if (HAS_DDI(dev_priv))
-		reg = HSW_TVIDEO_DIP_GCP(crtc_state->cpu_transcoder);
+		reg = HSW_TVIDEO_DIP_GCP(dev_priv, crtc_state->cpu_transcoder);
 	else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
 		reg = VLV_TVIDEO_DIP_GCP(crtc->pipe);
 	else if (HAS_PCH_SPLIT(dev_priv))
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 0331fdd61f33..ff520171ac16 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3476,7 +3476,7 @@
 #define _ICL_VIDEO_DIP_PPS_ECC_B	0x613D4
 
 #define HSW_TVIDEO_DIP_CTL(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_CTL_A)
-#define HSW_TVIDEO_DIP_GCP(trans)		_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_GCP_A)
+#define HSW_TVIDEO_DIP_GCP(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_GCP_A)
 #define HSW_TVIDEO_DIP_AVI_DATA(trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_AVI_DATA_A + (i) * 4)
 #define HSW_TVIDEO_DIP_VS_DATA(trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_VS_DATA_A + (i) * 4)
 #define HSW_TVIDEO_DIP_SPD_DATA(trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_SPD_DATA_A + (i) * 4)
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 027cd273d775..349578cc0fc8 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -1235,9 +1235,9 @@ static int iterate_bxt_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(BXT_DSI_PLL_ENABLE);
 	MMIO_D(GEN9_CLKGATE_DIS_0);
 	MMIO_D(GEN9_CLKGATE_DIS_4);
-	MMIO_D(HSW_TVIDEO_DIP_GCP(TRANSCODER_A));
-	MMIO_D(HSW_TVIDEO_DIP_GCP(TRANSCODER_B));
-	MMIO_D(HSW_TVIDEO_DIP_GCP(TRANSCODER_C));
+	MMIO_D(HSW_TVIDEO_DIP_GCP(dev_priv, TRANSCODER_A));
+	MMIO_D(HSW_TVIDEO_DIP_GCP(dev_priv, TRANSCODER_B));
+	MMIO_D(HSW_TVIDEO_DIP_GCP(dev_priv, TRANSCODER_C));
 	MMIO_D(RC6_CTX_BASE);
 	MMIO_D(GEN8_PUSHBUS_CONTROL);
 	MMIO_D(GEN8_PUSHBUS_ENABLE);
-- 
2.39.2

