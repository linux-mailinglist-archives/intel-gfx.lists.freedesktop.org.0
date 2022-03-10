Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F2A4D3E69
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Mar 2022 01:48:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AF9210E602;
	Thu, 10 Mar 2022 00:48:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F7AF10E5F0
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Mar 2022 00:48:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646873309; x=1678409309;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ZZynxukvQWMAXWE93/QaGlLKBgtsyhCBT7IvW77TPnE=;
 b=aSy9tQfd/BbiHjqsJUBRxAd1C2y2fs/2q/pmSK5T4oEytLkftPTglMO/
 H2cv/LfWnKgOlDHKFH47mdA92GNsOMAvYpKIZU4fG9wOccgy8ef8QjuBu
 F1HQFdPIzUWooy0x9wngSW42LIFktH0451CM+1XaZPfGb3utCC8gyS6J+
 Hg6BbGojWdnF5nI465E+JZKAJUCds0pUYHxGQfR8C2dnFCn22w6z6kvzh
 hh52V/V4hUbq0M8odmwgzeW4Lq2JcpVERbQOz+wVpdVtWW4YZRBOUIwP5
 duCL/m5gh40dyhbxKSy+HDVoOS7G0YRTrgcneSUV4tFmjTRs2sKmTZshN Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="253956426"
X-IronPort-AV: E=Sophos;i="5.90,169,1643702400"; d="scan'208";a="253956426"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 16:48:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,169,1643702400"; d="scan'208";a="554374780"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga008.jf.intel.com with SMTP; 09 Mar 2022 16:48:26 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Mar 2022 02:48:25 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Mar 2022 02:47:57 +0200
Message-Id: <20220310004802.16310-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220310004802.16310-1-ville.syrjala@linux.intel.com>
References: <20220310004802.16310-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/13] drm/i915: Rename PIPECONF refresh select
 bits
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Rename the PIPECONF refresh rate select bits to be
less cryptic. Also nothing eDP specific about these as they
also select between FP0 vs. FP1 for the DPLL and thus can be
used to change the refresh rate on other output types as well.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_drrs.c | 4 ++--
 drivers/gpu/drm/i915/i915_reg.h           | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 3979ceaaf651..c97b5dee8cae 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -111,9 +111,9 @@ intel_drrs_set_refresh_rate_pipeconf(const struct intel_crtc_state *crtc_state,
 	u32 val, bit;
 
 	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
-		bit = PIPECONF_EDP_RR_MODE_SWITCH_VLV;
+		bit = PIPECONF_REFRESH_RATE_ALT_VLV;
 	else
-		bit = PIPECONF_EDP_RR_MODE_SWITCH;
+		bit = PIPECONF_REFRESH_RATE_ALT_ILK;
 
 	val = intel_de_read(dev_priv, PIPECONF(cpu_transcoder));
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index c106fb23e245..f66309a7566f 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3705,11 +3705,11 @@
 #define   PIPECONF_INTERLACE_IF_ID_ILK		REG_FIELD_PREP(PIPECONF_INTERLACE_MASK_ILK, 3)
 #define   PIPECONF_INTERLACE_IF_ID_DBL_ILK	REG_FIELD_PREP(PIPECONF_INTERLACE_MASK_ILK, 4) /* ilk/snb only */
 #define   PIPECONF_INTERLACE_PF_ID_DBL_ILK	REG_FIELD_PREP(PIPECONF_INTERLACE_MASK_ILK, 5) /* ilk/snb only */
-#define   PIPECONF_EDP_RR_MODE_SWITCH		REG_BIT(20)
+#define   PIPECONF_REFRESH_RATE_ALT_ILK		REG_BIT(20)
 #define   PIPECONF_MSA_TIMING_DELAY_MASK	REG_GENMASK(19, 18) /* ilk/snb/ivb */
 #define   PIPECONF_MSA_TIMING_DELAY(x)		REG_FIELD_PREP(PIPECONF_MSA_TIMING_DELAY_MASK, (x))
 #define   PIPECONF_CXSR_DOWNCLOCK		REG_BIT(16)
-#define   PIPECONF_EDP_RR_MODE_SWITCH_VLV	REG_BIT(14)
+#define   PIPECONF_REFRESH_RATE_ALT_VLV		REG_BIT(14)
 #define   PIPECONF_COLOR_RANGE_SELECT		REG_BIT(13)
 #define   PIPECONF_OUTPUT_COLORSPACE_MASK	REG_GENMASK(12, 11) /* ilk-ivb */
 #define   PIPECONF_OUTPUT_COLORSPACE_RGB	REG_FIELD_PREP(PIPECONF_OUTPUT_COLORSPACE_MASK, 0) /* ilk-ivb */
-- 
2.34.1

