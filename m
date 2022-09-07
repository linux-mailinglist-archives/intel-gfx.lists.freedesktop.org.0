Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4409C5B0007
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Sep 2022 11:11:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFA6610E480;
	Wed,  7 Sep 2022 09:11:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5F0410E4D6
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Sep 2022 09:11:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662541871; x=1694077871;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zDsfbfbAlkvKg/L9K3PUc1AuEIvsUpTQWyOxtFXblQA=;
 b=Vz8LqQ62vBAsovbUKNIjhTa+LbYnsUzMpgYhWiY0o4QlE2dtkhiFajVD
 PdDaZDUUl/bhMR+dPFxTK9qnVu5iFmPpoqNZGHAP/gIfgTJt/wN3M5Svx
 W/DYq1KJjdWZqcqwNKySo+u+zjUPEZQ6Kt+F2VMTat+OZNsQJCAe3lC+V
 KPdDlqvmlENqZJEp+37uav3VF8TI15h4PSslK41cncNadAS15xEejgAeQ
 I+AnvxomxfN8c/ZfSn+zWdoJk8AnW1YI5/ZYSHlsxAe4f9If1hebsDwni
 kLBkK2wZdlM04RhhEQGeD4Dj/++ovSm3aF7CLhz/V+FwsRM0rOy9sPIM4 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10462"; a="279835398"
X-IronPort-AV: E=Sophos;i="5.93,296,1654585200"; d="scan'208";a="279835398"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 02:11:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,296,1654585200"; d="scan'208";a="703529590"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by FMSMGA003.fm.intel.com with SMTP; 07 Sep 2022 02:11:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 07 Sep 2022 12:11:07 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Sep 2022 12:10:43 +0300
Message-Id: <20220907091057.11572-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220907091057.11572-1-ville.syrjala@linux.intel.com>
References: <20220907091057.11572-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 03/17] drm/i915: Extract
 HAS_DOUBLE_BUFFERED_M_N()
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We have a couple of places that want to make distinction between
double buffered M/N registers vs. the split M1/N1+M2/N2 registers.
Add a helper for that.

v2: Turn into a HAS_ macro (Jani)

Reviewed-by: Jani Nikula <jani.nikula@intel.com> #v1
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 2 +-
 drivers/gpu/drm/i915/display/intel_dp.c      | 3 +--
 drivers/gpu/drm/i915/i915_drv.h              | 2 ++
 3 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 71b8b21b1345..d0efdf6123fd 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5770,7 +5770,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_I(lane_count);
 	PIPE_CONF_CHECK_X(lane_lat_optim_mask);
 
-	if (DISPLAY_VER(dev_priv) >= 9 || IS_BROADWELL(dev_priv)) {
+	if (HAS_DOUBLE_BUFFERED_M_N(dev_priv)) {
 		PIPE_CONF_CHECK_M_N_ALT(dp_m_n, dp_m2_n2);
 	} else {
 		PIPE_CONF_CHECK_M_N(dp_m_n);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index c19e99ee06b6..dd6fadf57f30 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1864,8 +1864,7 @@ intel_dp_compute_hdr_metadata_infoframe_sdp(struct intel_dp *intel_dp,
 static bool cpu_transcoder_has_drrs(struct drm_i915_private *i915,
 				    enum transcoder cpu_transcoder)
 {
-	/* M1/N1 is double buffered */
-	if (DISPLAY_VER(i915) >= 9 || IS_BROADWELL(i915))
+	if (HAS_DOUBLE_BUFFERED_M_N(i915))
 		return true;
 
 	return intel_cpu_transcoder_has_m2_n2(i915, cpu_transcoder);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index befb167b3c49..76aad81c014b 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -868,6 +868,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define HAS_DP_MST(dev_priv)	(INTEL_INFO(dev_priv)->display.has_dp_mst)
 #define HAS_DP20(dev_priv)	(IS_DG2(dev_priv) || DISPLAY_VER(dev_priv) >= 14)
 
+#define HAS_DOUBLE_BUFFERED_M_N(dev_priv)	(DISPLAY_VER(dev_priv) >= 9 || IS_BROADWELL(dev_priv))
+
 #define HAS_CDCLK_CRAWL(dev_priv)	 (INTEL_INFO(dev_priv)->display.has_cdclk_crawl)
 #define HAS_DDI(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_ddi)
 #define HAS_FPGA_DBG_UNCLAIMED(dev_priv) (INTEL_INFO(dev_priv)->display.has_fpga_dbg)
-- 
2.35.1

