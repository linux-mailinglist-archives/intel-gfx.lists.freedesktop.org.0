Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 976426AE12A
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Mar 2023 14:49:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F14910E4AA;
	Tue,  7 Mar 2023 13:49:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com
 [IPv6:2a00:1450:4864:20::12c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21D2E10E264
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Mar 2023 13:49:06 +0000 (UTC)
Received: by mail-lf1-x12c.google.com with SMTP id s22so17112714lfi.9
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Mar 2023 05:49:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1678196944;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=riIjfbDisoG/IEZvEL1VBt+tiGGPrlfSRo9F+nVYIAM=;
 b=UqU34oqosaOrINZ/ZKhE+g5ftICIjD17XXso4ue+cbIsgrAm+qHaLd86nB8K4gcAw7
 rJHMjAdqke7k3wR3nN+zlgtGqjHEUBnfE2Fpt/a3mEyMC8OI8R9o8ngQUS31DFdaXrkj
 3OfVX8B1Vb/jh7NqkZnjnSTvzMoxNi0uEXqvK3qL2beHg0Ri+85PNbtYTsy7SifAKHBv
 D6BbpzhcHJzKWwJ19aZyvtqAkiTfciAjgq51m9s/tyi/iemBkYxrAd6C4KW/rtIJsLD2
 yciViHjWqmnjhvkcHrUgrdwxV6lYpRf/XfbD2j1ScwSNRRsGOQ/XYidE1SVeIE7kHoJr
 57tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678196944;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=riIjfbDisoG/IEZvEL1VBt+tiGGPrlfSRo9F+nVYIAM=;
 b=WZxKe/dIEoKIvMn8ISOJv3OIpDo2ysSuUICEp9oZj5pK8N1JG7FS9S7hBCMZFkJAtd
 6tEGiUpgjK55JGkB6aQETjytQU0jMTIHT5oV8llNFm/8x1tJQ5yc0C9fhlu8bQsNbpf9
 WO2FBD1GGZ8h430D2gsEVy9ACfAA1xZXn2yFjNRkVoQr+1gCadNWn6bSiKVMguLi/Qx2
 mtE1aBjhwsaiq4/xgk+nh2D8KiAkakzQh/ujHj5cj0ig6yZ4OkZ03EyZLWCxE6n7IOhu
 V3U32pBQTHNWWaV7Qcuy94knj1yF2MHv5FT+An9A7lftf3AIHcWmbpRiv7BQVF5o3n6+
 A8cw==
X-Gm-Message-State: AO0yUKUdPUed2A+y9sOEcOExDTaJ976YOsU1aVcdP2qqVwXBQrwVkTHm
 LK1R9cgCRd5eRtEGD3eUT8YGQQ==
X-Google-Smtp-Source: AK7set877RykBlfNYe/oY4NOnV9ZBz61t9VLGrEryCtOm8ZyhWnDVg4D/O6Aj7iIX3SOk7BDv6A3OA==
X-Received: by 2002:a19:7611:0:b0:4b5:b705:9bf7 with SMTP id
 c17-20020a197611000000b004b5b7059bf7mr4002065lff.11.1678196944406; 
 Tue, 07 Mar 2023 05:49:04 -0800 (PST)
Received: from eriador.unikie.fi ([192.130.178.91])
 by smtp.gmail.com with ESMTPSA id
 u14-20020a2e91ce000000b0029597ebacd0sm2128991ljg.64.2023.03.07.05.49.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Mar 2023 05:49:04 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>
Date: Tue,  7 Mar 2023 15:48:53 +0200
Message-Id: <20230307134901.322560-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230307134901.322560-1-dmitry.baryshkov@linaro.org>
References: <20230307134901.322560-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 02/10] drm/i915/dsc: move rc_buf_thresh
 values to common helper
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

The rc_buf_thresh values are common to all DSC implementations. Move
them to the common helper together with the code to propagage them to
the drm_dsc_config.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/display/drm_dsc_helper.c  | 35 +++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vdsc.c | 24 +---------------
 include/drm/display/drm_dsc_helper.h      |  1 +
 3 files changed, 37 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/display/drm_dsc_helper.c b/drivers/gpu/drm/display/drm_dsc_helper.c
index c869c6e51e2b..be91abe2cfb2 100644
--- a/drivers/gpu/drm/display/drm_dsc_helper.c
+++ b/drivers/gpu/drm/display/drm_dsc_helper.c
@@ -270,6 +270,41 @@ void drm_dsc_pps_payload_pack(struct drm_dsc_picture_parameter_set *pps_payload,
 }
 EXPORT_SYMBOL(drm_dsc_pps_payload_pack);
 
+/* From DSC_v1.11 spec, rc_parameter_Set syntax element typically constant */
+static const u16 drm_dsc_rc_buf_thresh[] = {
+	896, 1792, 2688, 3584, 4480, 5376, 6272, 6720, 7168, 7616,
+	7744, 7872, 8000, 8064
+};
+
+/**
+ * drm_dsc_set_rc_buf_thresh() - Set thresholds for the RC model
+ * in accordance with the DSC 1.2 specification.
+ *
+ * @vdsc_cfg: DSC Configuration data partially filled by driver
+ */
+void drm_dsc_set_rc_buf_thresh(struct drm_dsc_config *vdsc_cfg)
+{
+	int i;
+
+	BUILD_BUG_ON(ARRAY_SIZE(drm_dsc_rc_buf_thresh) !=
+		     DSC_NUM_BUF_RANGES - 1);
+	BUILD_BUG_ON(ARRAY_SIZE(drm_dsc_rc_buf_thresh) !=
+		     ARRAY_SIZE(vdsc_cfg->rc_buf_thresh));
+
+	for (i = 0; i < ARRAY_SIZE(drm_dsc_rc_buf_thresh); i++)
+		vdsc_cfg->rc_buf_thresh[i] = drm_dsc_rc_buf_thresh[i] >> 6;
+
+	/*
+	 * For 6bpp, RC Buffer threshold 12 and 13 need a different value
+	 * as per C Model
+	 */
+	if (vdsc_cfg->bits_per_pixel == 6 << 4) {
+		vdsc_cfg->rc_buf_thresh[12] = 7936 >> 6;
+		vdsc_cfg->rc_buf_thresh[13] = 8000 >> 6;
+	}
+}
+EXPORT_SYMBOL(drm_dsc_set_rc_buf_thresh);
+
 /**
  * drm_dsc_compute_rc_parameters() - Write rate control
  * parameters to the dsc configuration defined in
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index a91b70301640..38cc4b43f1cb 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -36,12 +36,6 @@ enum COLUMN_INDEX_BPC {
 	MAX_COLUMN_INDEX
 };
 
-/* From DSC_v1.11 spec, rc_parameter_Set syntax element typically constant */
-static const u16 rc_buf_thresh[] = {
-	896, 1792, 2688, 3584, 4480, 5376, 6272, 6720, 7168, 7616,
-	7744, 7872, 8000, 8064
-};
-
 struct rc_parameters {
 	u16 initial_xmit_delay;
 	u8 first_line_bpg_offset;
@@ -474,23 +468,7 @@ int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
 	vdsc_cfg->bits_per_pixel = compressed_bpp << 4;
 	vdsc_cfg->bits_per_component = pipe_config->pipe_bpp / 3;
 
-	for (i = 0; i < DSC_NUM_BUF_RANGES - 1; i++) {
-		/*
-		 * six 0s are appended to the lsb of each threshold value
-		 * internally in h/w.
-		 * Only 8 bits are allowed for programming RcBufThreshold
-		 */
-		vdsc_cfg->rc_buf_thresh[i] = rc_buf_thresh[i] >> 6;
-	}
-
-	/*
-	 * For 6bpp, RC Buffer threshold 12 and 13 need a different value
-	 * as per C Model
-	 */
-	if (compressed_bpp == 6) {
-		vdsc_cfg->rc_buf_thresh[12] = 0x7C;
-		vdsc_cfg->rc_buf_thresh[13] = 0x7D;
-	}
+	drm_dsc_set_rc_buf_thresh(vdsc_cfg);
 
 	/*
 	 * From XE_LPD onwards we supports compression bpps in steps of 1
diff --git a/include/drm/display/drm_dsc_helper.h b/include/drm/display/drm_dsc_helper.h
index 8b41edbbabab..706ba1d34742 100644
--- a/include/drm/display/drm_dsc_helper.h
+++ b/include/drm/display/drm_dsc_helper.h
@@ -14,6 +14,7 @@ void drm_dsc_dp_pps_header_init(struct dp_sdp_header *pps_header);
 int drm_dsc_dp_rc_buffer_size(u8 rc_buffer_block_size, u8 rc_buffer_size);
 void drm_dsc_pps_payload_pack(struct drm_dsc_picture_parameter_set *pps_sdp,
 			      const struct drm_dsc_config *dsc_cfg);
+void drm_dsc_set_rc_buf_thresh(struct drm_dsc_config *vdsc_cfg);
 int drm_dsc_compute_rc_parameters(struct drm_dsc_config *vdsc_cfg);
 
 #endif /* _DRM_DSC_HELPER_H_ */
-- 
2.39.2

