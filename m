Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AC244D3E65
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Mar 2022 01:48:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C216D10E5BF;
	Thu, 10 Mar 2022 00:48:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E41BE10E5BF
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Mar 2022 00:48:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646873299; x=1678409299;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=adwFEo7KvhoMAtt7nM6tZk93B47FCl+skFDADOAyPHg=;
 b=d3T8HlSh6OSMlZShuKt9lP2WgcaRvKdCFngxMsfrMMhknNyn6kaHWwWV
 xKgNxYxi5SODCLCl0GmqptaVi2l1Prq0DD402MiTKYuiymKAhkjPpbh7I
 sbTmJM9azDSnGafK+uUmABZiZGmVVquAWw0lvaOUYG9ZS7XOceAKCnig+
 4UiG/IoPMN0XaYLvRZx2fzQS60uZzPH97JY4DBS29fZ3PFoVPsD3UFaQR
 cGJr0uZwpKY3dLflNpwqg+6/XXp/Fx2mHdHM8XTVwcWWGNVEchLM8oBhD
 rN2Jm/W+lLQLxS3S5nzsIvEoOUrzUZPWsrS1zJXeRvHj8HjJ0jfA6JaSl A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="255313213"
X-IronPort-AV: E=Sophos;i="5.90,169,1643702400"; d="scan'208";a="255313213"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 16:48:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,169,1643702400"; d="scan'208";a="642359087"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga002.fm.intel.com with SMTP; 09 Mar 2022 16:48:17 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Mar 2022 02:48:17 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Mar 2022 02:47:54 +0200
Message-Id: <20220310004802.16310-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220310004802.16310-1-ville.syrjala@linux.intel.com>
References: <20220310004802.16310-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/13] drm/i915: Program MSA timing delay on
 ilk/snb/ivb
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

Grab the DRRS MSA timing delay value from the VBT
and program things accordingly. Only ilk/snb/ivb have
this so presumably on hsw+ we don't need it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c       | 8 ++++++--
 drivers/gpu/drm/i915/display/intel_display_types.h | 1 +
 drivers/gpu/drm/i915/display/intel_drrs.c          | 3 +++
 drivers/gpu/drm/i915/i915_reg.h                    | 2 ++
 4 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 54db81c2cce6..b7c418677372 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3577,6 +3577,7 @@ static void ilk_set_pipeconf(const struct intel_crtc_state *crtc_state)
 	val |= PIPECONF_GAMMA_MODE(crtc_state->gamma_mode);
 
 	val |= PIPECONF_FRAME_START_DELAY(crtc_state->framestart_delay - 1);
+	val |= PIPECONF_MSA_TIMING_DELAY(crtc_state->msa_timing_delay);
 
 	intel_de_write(dev_priv, PIPECONF(pipe), val);
 	intel_de_posting_read(dev_priv, PIPECONF(pipe));
@@ -3865,6 +3866,8 @@ static bool ilk_get_pipe_config(struct intel_crtc *crtc,
 
 	pipe_config->framestart_delay = REG_FIELD_GET(PIPECONF_FRAME_START_DELAY_MASK, tmp) + 1;
 
+	pipe_config->msa_timing_delay = REG_FIELD_GET(PIPECONF_MSA_TIMING_DELAY_MASK, tmp);
+
 	pipe_config->csc_mode = intel_de_read(dev_priv,
 					      PIPE_CSC_MODE(crtc->pipe));
 
@@ -5345,8 +5348,8 @@ static void intel_dump_pipe_config(const struct intel_crtc_state *pipe_config,
 				      &pipe_config->dp_m2_n2);
 	}
 
-	drm_dbg_kms(&dev_priv->drm, "framestart delay: %d\n",
-		    pipe_config->framestart_delay);
+	drm_dbg_kms(&dev_priv->drm, "framestart delay: %d, MSA timing delay: %d\n",
+		    pipe_config->framestart_delay, pipe_config->msa_timing_delay);
 
 	drm_dbg_kms(&dev_priv->drm,
 		    "audio: %i, infoframes: %i, infoframes enabled: 0x%x\n",
@@ -6243,6 +6246,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_X(output_types);
 
 	PIPE_CONF_CHECK_I(framestart_delay);
+	PIPE_CONF_CHECK_I(msa_timing_delay);
 
 	PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_hdisplay);
 	PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_htotal);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 5e8d7394a394..86b2fa675124 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1155,6 +1155,7 @@ struct intel_crtc_state {
 	u8 update_planes;
 
 	u8 framestart_delay; /* 1-4 */
+	u8 msa_timing_delay; /* 0-3 */
 
 	struct {
 		u32 enable;
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 17bedecbd7b2..5b3711fe0674 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -83,6 +83,9 @@ intel_drrs_compute_config(struct intel_dp *intel_dp,
 		return;
 	}
 
+	if (IS_IRONLAKE(i915) || IS_SANDYBRIDGE(i915) || IS_IVYBRIDGE(i915))
+		pipe_config->msa_timing_delay = i915->vbt.edp.drrs_msa_timing_delay;
+
 	pipe_config->has_drrs = true;
 
 	pixel_clock = connector->panel.downclock_mode->clock;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 70484f6f2b8b..c106fb23e245 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3706,6 +3706,8 @@
 #define   PIPECONF_INTERLACE_IF_ID_DBL_ILK	REG_FIELD_PREP(PIPECONF_INTERLACE_MASK_ILK, 4) /* ilk/snb only */
 #define   PIPECONF_INTERLACE_PF_ID_DBL_ILK	REG_FIELD_PREP(PIPECONF_INTERLACE_MASK_ILK, 5) /* ilk/snb only */
 #define   PIPECONF_EDP_RR_MODE_SWITCH		REG_BIT(20)
+#define   PIPECONF_MSA_TIMING_DELAY_MASK	REG_GENMASK(19, 18) /* ilk/snb/ivb */
+#define   PIPECONF_MSA_TIMING_DELAY(x)		REG_FIELD_PREP(PIPECONF_MSA_TIMING_DELAY_MASK, (x))
 #define   PIPECONF_CXSR_DOWNCLOCK		REG_BIT(16)
 #define   PIPECONF_EDP_RR_MODE_SWITCH_VLV	REG_BIT(14)
 #define   PIPECONF_COLOR_RANGE_SELECT		REG_BIT(13)
-- 
2.34.1

