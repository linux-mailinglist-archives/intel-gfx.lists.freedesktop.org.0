Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 01904706529
	for <lists+intel-gfx@lfdr.de>; Wed, 17 May 2023 12:28:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA60010E3EC;
	Wed, 17 May 2023 10:28:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com
 [IPv6:2a00:1450:4864:20::230])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F78910E3E3
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 May 2023 10:28:14 +0000 (UTC)
Received: by mail-lj1-x230.google.com with SMTP id
 38308e7fff4ca-2ad714536cfso5367881fa.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 May 2023 03:28:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1684319291; x=1686911291;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=LXzqr/RToWqdSBilcBzB6Tyuh1xIOzUWMTLtgk6Ssoc=;
 b=mE1NzfWZzoNX/xLbGKZM4/5pql+E4KYr2vpcbXq5zhBpQtnBsZwPMldHVs4zDqNWxr
 emrjyP/3To2PtIAGSw0uvnmykuoNKL6wrgs2n+Rfqo7A6NCaojEfDuKjaL66OUoO7MO/
 J+57HT3cbScziL3jrsH4KCzCXLwBndh11DWjCudsTZy4O9Su3IjFLUxEbLv0b5XYSIzE
 A4K0hTdgRZ6b6NMjs7xC1hLRX1Orj5LEm0uHBrasrUF2KhL4QjFrw2KVr3z3DfeglCMA
 AIsVyQmd7P9ohmyM+R0otMxIX6uYAqwlz8VwHuPU3aiHuAhlOraGTFNyiWaVV3hjyQ1T
 JU6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684319291; x=1686911291;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=LXzqr/RToWqdSBilcBzB6Tyuh1xIOzUWMTLtgk6Ssoc=;
 b=e+eZg/cK/UJbyPIkBRVheQufKcbfVNWyN9MPIFzw42yCnduOP4FQlXoYvYo/LPzZfe
 LD0WImx2GuJMvBdPVeYUXz/TlcKARWtoUDN89P7dREGPVsaNoVXMwF3Q7LBHb1cX97Cw
 rlwonBfDUhpT+2uIYQPyAzE00OEQV1D98yzINbdVD6LhlgaBeghrHQCobY2jAHY/vSxZ
 rZPXWlXn4yJHwq38v9jzulow/QyTHF0pzv+CGTvcsJNpo7CzzINDYjGHzd66Sceqws/6
 pRalwB8RTjDkyoKs5+alhzMyYqoYcm6i/stS3xH1OzYN91qGDkpd6oEXfQcW9f/Wm+Xo
 NWyw==
X-Gm-Message-State: AC+VfDzrBTdFetkjiYQwhSXLho+v2jn5c6UWR2EYXGG/hz7yDc2etnRD
 l24OaIyqeqhObzRRc6DZDvHrPA==
X-Google-Smtp-Source: ACHHUZ6M7kvVMeV1+HEWc5sRAqX55g5GgLfzXLn8h+jZpdO9SAXW5I6rI6W9Ox7fKrATVVIfxdAHWQ==
X-Received: by 2002:a2e:9899:0:b0:2ad:dab5:fe88 with SMTP id
 b25-20020a2e9899000000b002addab5fe88mr5036017ljj.42.1684319291648; 
 Wed, 17 May 2023 03:28:11 -0700 (PDT)
Received: from eriador.lan (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi.
 [2001:14ba:a0db:1f00::8a5]) by smtp.gmail.com with ESMTPSA id
 e16-20020a2e8190000000b002ab017899e8sm4495356ljg.39.2023.05.17.03.28.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 May 2023 03:28:11 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>
Date: Wed, 17 May 2023 13:28:03 +0300
Message-Id: <20230517102807.2181589-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230517102807.2181589-1-dmitry.baryshkov@linaro.org>
References: <20230517102807.2181589-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 4/8] drm/i915/dsc: stop using interim
 structure for calculated params
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
Cc: Jani Nikula <jani.nikula@intel.com>, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Stop using an interim structure rc_parameters for storing calculated
params and then setting drm_dsc_config using that structure. Instead put
calculated params into the struct drm_dsc_config directly.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 100 ++++++----------------
 1 file changed, 26 insertions(+), 74 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index d0536582e4b9..d4340b18c18d 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -19,17 +19,6 @@
 #include "intel_vdsc.h"
 #include "intel_vdsc_regs.h"
 
-struct rc_parameters {
-	u16 initial_xmit_delay;
-	u8 first_line_bpg_offset;
-	u16 initial_offset;
-	u8 flatness_min_qp;
-	u8 flatness_max_qp;
-	u8 rc_quant_incr_limit0;
-	u8 rc_quant_incr_limit1;
-	struct drm_dsc_rc_range_parameters rc_range_params[DSC_NUM_BUF_RANGES];
-};
-
 bool intel_dsc_source_support(const struct intel_crtc_state *crtc_state)
 {
 	const struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -64,8 +53,7 @@ static bool is_pipe_dsc(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
 }
 
 static void
-calculate_rc_params(struct rc_parameters *rc,
-		    struct drm_dsc_config *vdsc_cfg)
+calculate_rc_params(struct drm_dsc_config *vdsc_cfg)
 {
 	int bpc = vdsc_cfg->bits_per_component;
 	int bpp = vdsc_cfg->bits_per_pixel >> 4;
@@ -85,56 +73,57 @@ calculate_rc_params(struct rc_parameters *rc,
 	u32 res, buf_i, bpp_i;
 
 	if (vdsc_cfg->slice_height >= 8)
-		rc->first_line_bpg_offset =
+		vdsc_cfg->first_line_bpg_offset =
 			12 + DIV_ROUND_UP((9 * min(34, vdsc_cfg->slice_height - 8)), 100);
 	else
-		rc->first_line_bpg_offset = 2 * (vdsc_cfg->slice_height - 1);
+		vdsc_cfg->first_line_bpg_offset = 2 * (vdsc_cfg->slice_height - 1);
 
 	/* Our hw supports only 444 modes as of today */
 	if (bpp >= 12)
-		rc->initial_offset = 2048;
+		vdsc_cfg->initial_offset = 2048;
 	else if (bpp >= 10)
-		rc->initial_offset = 5632 - DIV_ROUND_UP(((bpp - 10) * 3584), 2);
+		vdsc_cfg->initial_offset = 5632 - DIV_ROUND_UP(((bpp - 10) * 3584), 2);
 	else if (bpp >= 8)
-		rc->initial_offset = 6144 - DIV_ROUND_UP(((bpp - 8) * 512), 2);
+		vdsc_cfg->initial_offset = 6144 - DIV_ROUND_UP(((bpp - 8) * 512), 2);
 	else
-		rc->initial_offset = 6144;
+		vdsc_cfg->initial_offset = 6144;
 
 	/* initial_xmit_delay = rc_model_size/2/compression_bpp */
-	rc->initial_xmit_delay = DIV_ROUND_UP(DSC_RC_MODEL_SIZE_CONST, 2 * bpp);
+	vdsc_cfg->initial_xmit_delay = DIV_ROUND_UP(DSC_RC_MODEL_SIZE_CONST, 2 * bpp);
 
-	rc->flatness_min_qp = 3 + qp_bpc_modifier;
-	rc->flatness_max_qp = 12 + qp_bpc_modifier;
+	vdsc_cfg->flatness_min_qp = 3 + qp_bpc_modifier;
+	vdsc_cfg->flatness_max_qp = 12 + qp_bpc_modifier;
 
-	rc->rc_quant_incr_limit0 = 11 + qp_bpc_modifier;
-	rc->rc_quant_incr_limit1 = 11 + qp_bpc_modifier;
+	vdsc_cfg->rc_quant_incr_limit0 = 11 + qp_bpc_modifier;
+	vdsc_cfg->rc_quant_incr_limit1 = 11 + qp_bpc_modifier;
 
 	bpp_i  = (2 * (bpp - 6));
 	for (buf_i = 0; buf_i < DSC_NUM_BUF_RANGES; buf_i++) {
+		u8 range_bpg_offset;
+
 		/* Read range_minqp and range_max_qp from qp tables */
-		rc->rc_range_params[buf_i].range_min_qp =
+		vdsc_cfg->rc_range_params[buf_i].range_min_qp =
 			intel_lookup_range_min_qp(bpc, buf_i, bpp_i, vdsc_cfg->native_420);
-		rc->rc_range_params[buf_i].range_max_qp =
+		vdsc_cfg->rc_range_params[buf_i].range_max_qp =
 			intel_lookup_range_max_qp(bpc, buf_i, bpp_i, vdsc_cfg->native_420);
 
-		/* Calculate range_bgp_offset */
+		/* Calculate range_bpg_offset */
 		if (bpp <= 6) {
-			rc->rc_range_params[buf_i].range_bpg_offset = ofs_und6[buf_i];
+			range_bpg_offset = ofs_und6[buf_i];
 		} else if (bpp <= 8) {
 			res = DIV_ROUND_UP(((bpp - 6) * (ofs_und8[buf_i] - ofs_und6[buf_i])), 2);
-			rc->rc_range_params[buf_i].range_bpg_offset =
-								ofs_und6[buf_i] + res;
+			range_bpg_offset = ofs_und6[buf_i] + res;
 		} else if (bpp <= 12) {
-			rc->rc_range_params[buf_i].range_bpg_offset =
-								ofs_und8[buf_i];
+			range_bpg_offset = ofs_und8[buf_i];
 		} else if (bpp <= 15) {
 			res = DIV_ROUND_UP(((bpp - 12) * (ofs_und15[buf_i] - ofs_und12[buf_i])), 3);
-			rc->rc_range_params[buf_i].range_bpg_offset =
-								ofs_und12[buf_i] + res;
+			range_bpg_offset = ofs_und12[buf_i] + res;
 		} else {
-			rc->rc_range_params[buf_i].range_bpg_offset =
-								ofs_und15[buf_i];
+			range_bpg_offset = ofs_und15[buf_i];
 		}
+
+		vdsc_cfg->rc_range_params[buf_i].range_bpg_offset =
+			range_bpg_offset & DSC_RANGE_BPG_OFFSET_MASK;
 	}
 }
 
@@ -167,10 +156,7 @@ int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	struct drm_dsc_config *vdsc_cfg = &pipe_config->dsc.config;
 	u16 compressed_bpp = pipe_config->dsc.compressed_bpp;
-	const struct rc_parameters *rc_params;
-	struct rc_parameters *rc = NULL;
 	int err;
-	u8 i = 0;
 	int ret;
 
 	vdsc_cfg->pic_width = pipe_config->hw.adjusted_mode.crtc_hdisplay;
@@ -238,43 +224,12 @@ int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
 	 * parameters
 	 */
 	if (DISPLAY_VER(dev_priv) >= 13) {
-		rc = kmalloc(sizeof(*rc), GFP_KERNEL);
-		if (!rc)
-			return -ENOMEM;
-
-		calculate_rc_params(rc, vdsc_cfg);
-		rc_params = rc;
+		calculate_rc_params(vdsc_cfg);
 	} else {
 		ret = drm_dsc_setup_rc_params(vdsc_cfg);
 		if (ret)
 			return ret;
 
-		goto out;
-	}
-
-	vdsc_cfg->first_line_bpg_offset = rc_params->first_line_bpg_offset;
-	vdsc_cfg->initial_xmit_delay = rc_params->initial_xmit_delay;
-	vdsc_cfg->initial_offset = rc_params->initial_offset;
-	vdsc_cfg->flatness_min_qp = rc_params->flatness_min_qp;
-	vdsc_cfg->flatness_max_qp = rc_params->flatness_max_qp;
-	vdsc_cfg->rc_quant_incr_limit0 = rc_params->rc_quant_incr_limit0;
-	vdsc_cfg->rc_quant_incr_limit1 = rc_params->rc_quant_incr_limit1;
-
-	for (i = 0; i < DSC_NUM_BUF_RANGES; i++) {
-		vdsc_cfg->rc_range_params[i].range_min_qp =
-			rc_params->rc_range_params[i].range_min_qp;
-		vdsc_cfg->rc_range_params[i].range_max_qp =
-			rc_params->rc_range_params[i].range_max_qp;
-		/*
-		 * Range BPG Offset uses 2's complement and is only a 6 bits. So
-		 * mask it to get only 6 bits.
-		 */
-		vdsc_cfg->rc_range_params[i].range_bpg_offset =
-			rc_params->rc_range_params[i].range_bpg_offset &
-			DSC_RANGE_BPG_OFFSET_MASK;
-	}
-
-	if (DISPLAY_VER(dev_priv) < 13) {
 		/*
 		 * FIXME: verify that the hardware actually needs these
 		 * modifications rather than them being simple typos.
@@ -288,7 +243,6 @@ int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
 			vdsc_cfg->rc_range_params[0].range_bpg_offset = 0;
 	}
 
-out:
 	/*
 	 * BitsPerComponent value determines mux_word_size:
 	 * When BitsPerComponent is less than or 10bpc, muxWordSize will be equal to
@@ -303,8 +257,6 @@ int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
 	vdsc_cfg->initial_scale_value = (vdsc_cfg->rc_model_size << 3) /
 		(vdsc_cfg->rc_model_size - vdsc_cfg->initial_offset);
 
-	kfree(rc);
-
 	return 0;
 }
 
-- 
2.39.2

