Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B0676D4079
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Apr 2023 11:24:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCBBA10E459;
	Mon,  3 Apr 2023 09:23:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com
 [IPv6:2a00:1450:4864:20::131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2987C10E428
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Apr 2023 09:23:21 +0000 (UTC)
Received: by mail-lf1-x131.google.com with SMTP id y20so37217713lfj.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 03 Apr 2023 02:23:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1680513800;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=12hT3nvM6iv7Xs3S9m5OXKPOZii6Q3YQ0F3ys83Ul5c=;
 b=sYNzWvU2n6QMsT3o9+0dqdyuCWdjziq7yBJMU7cRnz0h1PlxNy3BzAK3asF+6P1gI+
 b99mVhwxPheR73DiLabtOym95WOSDJ16Z9N7dk46KSULqu2fBWBByWrVVws3Hbc0omFH
 +tf2ar9Os9Xl005jh6Tz1rx0r/ZbnTihAjMKufUTj8fPMC/rI2dI/yhMpwQRKe6NGhe0
 7cuKhu9sGPido79lWs/4FwNNQnrnXOcbznYor/b0iiafXiG/9r0398IByFuMRiI5H14O
 Wpkz/oaaSVYvQCspOgJc+PU62s+ATu/dQX2afjBitkcj9CBKvlfNtKq6ZLKCluIcQBA3
 bqVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680513800;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=12hT3nvM6iv7Xs3S9m5OXKPOZii6Q3YQ0F3ys83Ul5c=;
 b=wwWwFZzv2lYg0mPmbqeznNnkzACy2P3xAqIaoXzsE7wh0Ih2yD0hSrARTyAtgMCNDL
 3BeCHLaMH+ZD2T3c41Heyf77OEcAKfNLv8a2INgjfKtMpW5ySliqljEcAGzxs7iaaOIA
 nNI962dwcYTVz7LVni2Ce8Gp8NLb8VlNX/KTufa4qLXpTwVdLyp1ndtU8nJgdTpn+iZ0
 u2FtKDgx3A8ZZIvme0sjpC7+rStDRDXX17ciFILpmGUoQlaQzd5bkeoQ0x3EySIobMx3
 lqeNG4OiT4TBl6IAcr1gcjqD2B0L0W2KKGsb+fvM7pVHqg2SsTYmuhRFuwlwd8bHFMvG
 LJyA==
X-Gm-Message-State: AAQBX9epCeyCfi+JyHxSdG9FsmEXkmWHbUiprZGCC3XKKB/D54ynncw8
 b0l/2mdTAMQnvHO1lal/Z8Qx/Q==
X-Google-Smtp-Source: AKy350Ysrb0cy1TiRgFWW45XUgmF+T/zJn9DXt2jRufVD9gzk6dvD8UllCSteNRZ8xY7VGMWn128Gw==
X-Received: by 2002:ac2:4105:0:b0:4db:381d:4496 with SMTP id
 b5-20020ac24105000000b004db381d4496mr8462426lfi.51.1680513800704; 
 Mon, 03 Apr 2023 02:23:20 -0700 (PDT)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi.
 [2001:14ba:a085:4d00::8a5]) by smtp.gmail.com with ESMTPSA id
 w5-20020ac25985000000b004e844bb6939sm1680666lfn.2.2023.04.03.02.23.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Apr 2023 02:23:20 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>
Date: Mon,  3 Apr 2023 12:23:10 +0300
Message-Id: <20230403092313.235320-10-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230403092313.235320-1-dmitry.baryshkov@linaro.org>
References: <20230403092313.235320-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 09/12] drm/display/dsc: add helper to set
 semi-const parameters
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
Cc: linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add a helper setting config values which are typically constant across
operating modes (table E-4 of the standard) and mux_word_size (which is
a const according to 3.5.2).

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/display/drm_dsc_helper.c | 22 ++++++++++++++++++++++
 include/drm/display/drm_dsc_helper.h     |  1 +
 2 files changed, 23 insertions(+)

diff --git a/drivers/gpu/drm/display/drm_dsc_helper.c b/drivers/gpu/drm/display/drm_dsc_helper.c
index 65e810a54257..b9c4e10ced41 100644
--- a/drivers/gpu/drm/display/drm_dsc_helper.c
+++ b/drivers/gpu/drm/display/drm_dsc_helper.c
@@ -270,6 +270,28 @@ void drm_dsc_pps_payload_pack(struct drm_dsc_picture_parameter_set *pps_payload,
 }
 EXPORT_SYMBOL(drm_dsc_pps_payload_pack);
 
+/**
+ * drm_dsc_set_const_params() - Set DSC parameters considered typically
+ * constant across operation modes
+ *
+ * @vdsc_cfg:
+ * DSC Configuration data partially filled by driver
+ */
+void drm_dsc_set_const_params(struct drm_dsc_config *vdsc_cfg)
+{
+	if (!vdsc_cfg->rc_model_size)
+		vdsc_cfg->rc_model_size = DSC_RC_MODEL_SIZE_CONST;
+	vdsc_cfg->rc_edge_factor = DSC_RC_EDGE_FACTOR_CONST;
+	vdsc_cfg->rc_tgt_offset_high = DSC_RC_TGT_OFFSET_HI_CONST;
+	vdsc_cfg->rc_tgt_offset_low = DSC_RC_TGT_OFFSET_LO_CONST;
+
+	if (vdsc_cfg->bits_per_component <= 10)
+		vdsc_cfg->mux_word_size = DSC_MUX_WORD_SIZE_8_10_BPC;
+	else
+		vdsc_cfg->mux_word_size = DSC_MUX_WORD_SIZE_12_BPC;
+}
+EXPORT_SYMBOL(drm_dsc_set_const_params);
+
 /* From DSC_v1.11 spec, rc_parameter_Set syntax element typically constant */
 static const u16 drm_dsc_rc_buf_thresh[] = {
 	896, 1792, 2688, 3584, 4480, 5376, 6272, 6720, 7168, 7616,
diff --git a/include/drm/display/drm_dsc_helper.h b/include/drm/display/drm_dsc_helper.h
index 0bb0c3afd740..4448c482b092 100644
--- a/include/drm/display/drm_dsc_helper.h
+++ b/include/drm/display/drm_dsc_helper.h
@@ -21,6 +21,7 @@ void drm_dsc_dp_pps_header_init(struct dp_sdp_header *pps_header);
 int drm_dsc_dp_rc_buffer_size(u8 rc_buffer_block_size, u8 rc_buffer_size);
 void drm_dsc_pps_payload_pack(struct drm_dsc_picture_parameter_set *pps_sdp,
 			      const struct drm_dsc_config *dsc_cfg);
+void drm_dsc_set_const_params(struct drm_dsc_config *vdsc_cfg);
 void drm_dsc_set_rc_buf_thresh(struct drm_dsc_config *vdsc_cfg);
 int drm_dsc_setup_rc_params(struct drm_dsc_config *vdsc_cfg, enum drm_dsc_params_kind kind);
 int drm_dsc_compute_rc_parameters(struct drm_dsc_config *vdsc_cfg);
-- 
2.39.2

