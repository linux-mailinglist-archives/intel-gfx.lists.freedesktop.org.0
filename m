Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98E278B37D9
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Apr 2024 15:03:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07239112393;
	Fri, 26 Apr 2024 13:03:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Fn5NkD/C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C36B8112392;
 Fri, 26 Apr 2024 13:03:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714136624; x=1745672624;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=V6zD260wh9ELDPEQpJ6joA7xN8TZ7pTZMdF44cql6lg=;
 b=Fn5NkD/CK7x4FGljc/3oMvCv15b1w6v9r8ffMPjLq/DFnF9AkLBlFNbl
 eCNoJyYbYB9/EpvNfYLjNohY3dvmGcRtlJuwy4r/1d94fFRIvNZkYTLl5
 PbAr+RqNRzXsXohRKfvEoX4RK5T0d+XHqXd/Gty6RCufMQLFcQvVjBVp4
 xRVp85LZHYggHlVTkSJxFACeB/yZotdSDlsR433BntDOx1gQ4fNxYpW2p
 3ORIAXmC6kjOPKIG5ccmjgNv07lBF13rbXkkCQUawfRKdpi3K4HwGwhye
 PrrGx/qLhquFUTQoSGoPYWc0ChxdUaP/3m3CdfWfREKpckPKzWsI5Gn+6 g==;
X-CSE-ConnectionGUID: Lbg+Lf7vTh6KBYVImlya6g==
X-CSE-MsgGUID: MSUgsuRYSMm6upKXnIROqw==
X-IronPort-AV: E=McAfee;i="6600,9927,11056"; a="10084161"
X-IronPort-AV: E=Sophos;i="6.07,232,1708416000"; d="scan'208";a="10084161"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2024 06:03:44 -0700
X-CSE-ConnectionGUID: 9B4FMQAAT8e1NAgtvFfD+Q==
X-CSE-MsgGUID: M0y87ipgSjiZ0ik3VNckoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,232,1708416000"; d="scan'208";a="25435905"
Received: from dgarbuz-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.145])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2024 06:03:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 002/123] drm/i915: pass dev_priv explicitly to DPLL_MD
Date: Fri, 26 Apr 2024 16:01:27 +0300
Message-Id: <901c6fc9f09b157b35b46fcfe5e8a15df4555738.1714136165.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1714136165.git.jani.nikula@intel.com>
References: <cover.1714136165.git.jani.nikula@intel.com>
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
explicitly to the DPLL_MD register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll.c | 18 +++++++++++-------
 drivers/gpu/drm/i915/i915_reg.h           |  2 +-
 2 files changed, 12 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index ccd299e31e95..3f29316da5e6 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -397,7 +397,8 @@ void i9xx_dpll_get_hw_state(struct intel_crtc *crtc,
 		if (IS_CHERRYVIEW(dev_priv) && crtc->pipe != PIPE_A)
 			tmp = dev_priv->display.state.chv_dpll_md[crtc->pipe];
 		else
-			tmp = intel_de_read(dev_priv, DPLL_MD(crtc->pipe));
+			tmp = intel_de_read(dev_priv,
+					    DPLL_MD(dev_priv, crtc->pipe));
 
 		hw_state->dpll_md = tmp;
 	}
@@ -1849,7 +1850,8 @@ void i9xx_enable_pll(const struct intel_crtc_state *crtc_state)
 	udelay(150);
 
 	if (DISPLAY_VER(dev_priv) >= 4) {
-		intel_de_write(dev_priv, DPLL_MD(pipe), hw_state->dpll_md);
+		intel_de_write(dev_priv, DPLL_MD(dev_priv, pipe),
+			       hw_state->dpll_md);
 	} else {
 		/* The pixel multiplier can only be updated once the
 		 * DPLL is enabled and the clocks are stable.
@@ -2023,8 +2025,8 @@ void vlv_enable_pll(const struct intel_crtc_state *crtc_state)
 		_vlv_enable_pll(crtc_state);
 	}
 
-	intel_de_write(dev_priv, DPLL_MD(pipe), hw_state->dpll_md);
-	intel_de_posting_read(dev_priv, DPLL_MD(pipe));
+	intel_de_write(dev_priv, DPLL_MD(dev_priv, pipe), hw_state->dpll_md);
+	intel_de_posting_read(dev_priv, DPLL_MD(dev_priv, pipe));
 }
 
 static void chv_prepare_pll(const struct intel_crtc_state *crtc_state)
@@ -2183,7 +2185,8 @@ void chv_enable_pll(const struct intel_crtc_state *crtc_state)
 		 * the value from DPLLBMD to either pipe B or C.
 		 */
 		intel_de_write(dev_priv, CBR4_VLV, CBR_DPLLBMD_PIPE(pipe));
-		intel_de_write(dev_priv, DPLL_MD(PIPE_B), hw_state->dpll_md);
+		intel_de_write(dev_priv, DPLL_MD(dev_priv, PIPE_B),
+			       hw_state->dpll_md);
 		intel_de_write(dev_priv, CBR4_VLV, 0);
 		dev_priv->display.state.chv_dpll_md[pipe] = hw_state->dpll_md;
 
@@ -2195,8 +2198,9 @@ void chv_enable_pll(const struct intel_crtc_state *crtc_state)
 			    (intel_de_read(dev_priv, DPLL(dev_priv, PIPE_B)) &
 			     DPLL_VGA_MODE_DIS) == 0);
 	} else {
-		intel_de_write(dev_priv, DPLL_MD(pipe), hw_state->dpll_md);
-		intel_de_posting_read(dev_priv, DPLL_MD(pipe));
+		intel_de_write(dev_priv, DPLL_MD(dev_priv, pipe),
+			       hw_state->dpll_md);
+		intel_de_posting_read(dev_priv, DPLL_MD(dev_priv, pipe));
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 2f34069b05b0..744698a9c107 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1250,7 +1250,7 @@
 #define _DPLL_A_MD		0x601c
 #define _DPLL_B_MD		0x6020
 #define _CHV_DPLL_C_MD		0x603c
-#define DPLL_MD(pipe)		_MMIO_BASE_PIPE3(DISPLAY_MMIO_BASE(dev_priv), \
+#define DPLL_MD(dev_priv, pipe)		_MMIO_BASE_PIPE3(DISPLAY_MMIO_BASE(dev_priv), \
 						 (pipe), _DPLL_A_MD, _DPLL_B_MD, _CHV_DPLL_C_MD)
 
 /*
-- 
2.39.2

