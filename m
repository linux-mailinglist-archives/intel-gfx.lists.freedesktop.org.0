Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6DC7971915
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 14:16:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7698910E445;
	Mon,  9 Sep 2024 12:16:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MMmEhrno";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F0A610E47D;
 Mon,  9 Sep 2024 12:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725884159; x=1757420159;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eboPuAnq5zjA01sqWZetT3w5wdBPk+uBFFRurPE9brU=;
 b=MMmEhrnoHF1PTJVYpKrbBTF2uu/o90WWh5ruk3lsUblAYCVJDDSXh3kE
 V7XTsXFDkHceE5GDNccTn8PwLLXXh0hBUVZIrZfoP5EWMXMxSuCXcKb/3
 +ogMIPT+semUoRbrrROZ4iRW8jYpFd1Ls6gD158NtWaeonQjFhk/nRN5v
 pTGHRYjpQheBsPkYs0HMvQdGJ4pxTrRqOSpy4FZ0pg1x81/EQCHNK4KdH
 88jHBBqA/l29gY61DEtRIxNDOwaKbKLYNBtjgMewnddY4G5rtC0XMiisQ
 TgEeWoMPvZZG7BLwkCD0xMLa+puJSvM+6t7kLMLnX6vNAyqecwcJGQemq A==;
X-CSE-ConnectionGUID: 0BpBMA+JQi2w9Uc/JxaVmw==
X-CSE-MsgGUID: zToA5GVaRCyrzQNvoNg+Vg==
X-IronPort-AV: E=McAfee;i="6700,10204,11189"; a="27500873"
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; d="scan'208";a="27500873"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 05:15:59 -0700
X-CSE-ConnectionGUID: Eo+7jWLmRhCNc2BJBKspfg==
X-CSE-MsgGUID: uAPpfy23RKG3o1Zs/RCe5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; d="scan'208";a="67383672"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.176])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 05:15:57 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 2/8] drm/i915/pps: only touch the vlv_ members on VLV/CHV
Date: Mon,  9 Sep 2024 15:15:37 +0300
Message-Id: <8e2c63ae4a69f7ea8ca33ef500818f4ca680b468.1725883885.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1725883885.git.jani.nikula@intel.com>
References: <cover.1725883885.git.jani.nikula@intel.com>
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

While the struct intel_pps vlv_pps_pipe and vlv_active_pipe members are
only relevant for VLV/CHV, we still initialize them on all platforms and
check them on BXT/GLK. Wrap all access inside VLV/CHV checks for
consistency.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c  |  6 +++---
 drivers/gpu/drm/i915/display/intel_pps.c | 11 ++++++-----
 2 files changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index bc1ec9440a4d..7e36a7820fec 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6843,8 +6843,6 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 		return false;
 
 	intel_dp->reset_link_params = true;
-	intel_dp->pps.vlv_pps_pipe = INVALID_PIPE;
-	intel_dp->pps.vlv_active_pipe = INVALID_PIPE;
 
 	/* Preserve the current hw state. */
 	intel_dp->DP = intel_de_read(dev_priv, intel_dp->output_reg);
@@ -6871,8 +6869,10 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 	intel_dp_set_default_sink_rates(intel_dp);
 	intel_dp_set_default_max_sink_lane_count(intel_dp);
 
-	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
+	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
+		intel_dp->pps.vlv_pps_pipe = INVALID_PIPE;
 		intel_dp->pps.vlv_active_pipe = vlv_active_pipe(intel_dp);
+	}
 
 	intel_dp_aux_init(intel_dp);
 	intel_connector->dp.dsc_decompression_aux = &intel_dp->aux;
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index b7c73842ea16..2fb32ac1b7cf 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -472,16 +472,17 @@ void intel_pps_reset_all(struct intel_display *display)
 	for_each_intel_dp(display->drm, encoder) {
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
-		drm_WARN_ON(display->drm,
-			    intel_dp->pps.vlv_active_pipe != INVALID_PIPE);
+		if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
+			drm_WARN_ON(display->drm,
+				    intel_dp->pps.vlv_active_pipe != INVALID_PIPE);
 
 		if (encoder->type != INTEL_OUTPUT_EDP)
 			continue;
 
-		if (DISPLAY_VER(display) >= 9)
-			intel_dp->pps.pps_reset = true;
-		else
+		if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
 			intel_dp->pps.vlv_pps_pipe = INVALID_PIPE;
+		else
+			intel_dp->pps.pps_reset = true;
 	}
 }
 
-- 
2.39.2

