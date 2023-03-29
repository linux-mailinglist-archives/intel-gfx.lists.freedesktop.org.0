Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 930936CCEFA
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 02:37:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9B4710E9C5;
	Wed, 29 Mar 2023 00:37:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com
 [IPv6:2a00:1450:4864:20::136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DA0D10E4C4
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 00:37:19 +0000 (UTC)
Received: by mail-lf1-x136.google.com with SMTP id q16so18041278lfe.10
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Mar 2023 17:37:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1680050239;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=C00WLLY6BRHuPhABrtxiqlYfBItYgfyJkU1QDvQQHNw=;
 b=QDC5WviFpUhAK41ljTOmuarV7fkf8AKV92kvZ7yYL0sZkoYwnamR7xi2U4g7MuadY3
 v7ubyO7pnFTi35Q1Ew+I67R30bOD5m8KesyklEyWPPFpWsqnzZdvfbG5gGh8S9L7FmsW
 TR4gXc66mIoknIcpZoQOW9rxpm5Nvi7eeE+XVdJNaa+zirVVd3XuGqut34f64vRlojlR
 ZnPcVwcpadbl+33x6dth8Vy8qltatVnyXNJ7D+UXbX/i3KIR2QGKXwpZRtNJBX7208GE
 ASkogjZmfDNLLyPSsCI0XYqEYy3GUrmos6LPraeduaNr7S0Utf2BH7hPBAhR+87t6d0s
 cRhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680050239;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=C00WLLY6BRHuPhABrtxiqlYfBItYgfyJkU1QDvQQHNw=;
 b=MDqlOg/epfPQfzy1PgpkwPTxAN3iXCV3h8+eFTGmdxN/9Hgb/dscE43TzlZz9cYlgE
 9oT8rg5aWOjdYCyd58apwGIVOmmPklocHotrK4C54Q+F+xx21JV4WgdDrrfbPy/fwlnc
 TChc9kEezPvZhtn0Q3ufwTfK+PbBphDTx+M96pftCr1rHqCErIGklJmQWFZZQWsBE/5R
 rLr2n+9Jb/t3oii5cSo8IlAI0BF2pUcLLw9impud8wE/faBEKH6NuqWe9km6sdBmSEf+
 t+5qAU/eh05bLr/z7Jg8MAABMDLQIsBX38MUyPyttpRL+j6Zj/+d0A50sySVKkJCUtY1
 VLkg==
X-Gm-Message-State: AAQBX9eq8d8ksy6TfvJ2aUfBA6m4g1fs62SSCQGKl8BfIfXUw02vse7M
 HSgbo3Fk4wYjtouIjR4iis1Haw==
X-Google-Smtp-Source: AKy350bQiX5u/RLkhl6bIi/Q+V4WLcmYfETu4/AcynKOHXQTCXSKFZqOUGQbD8BNymZCFoJkyCpwrg==
X-Received: by 2002:ac2:488d:0:b0:4ea:e6b9:a8f with SMTP id
 x13-20020ac2488d000000b004eae6b90a8fmr116675lfc.28.1680050238985; 
 Tue, 28 Mar 2023 17:37:18 -0700 (PDT)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi.
 [2001:14ba:a085:4d00::8a5]) by smtp.gmail.com with ESMTPSA id
 y3-20020ac24463000000b004db00b4c671sm5254138lfl.7.2023.03.28.17.37.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Mar 2023 17:37:18 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>
Date: Wed, 29 Mar 2023 03:37:09 +0300
Message-Id: <20230329003710.1073261-10-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230329003710.1073261-1-dmitry.baryshkov@linaro.org>
References: <20230329003710.1073261-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 09/10] drm/display/dsc: add helper to set
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
 drivers/gpu/drm/display/drm_dsc_helper.c | 21 +++++++++++++++++++++
 include/drm/display/drm_dsc_helper.h     |  1 +
 2 files changed, 22 insertions(+)

diff --git a/drivers/gpu/drm/display/drm_dsc_helper.c b/drivers/gpu/drm/display/drm_dsc_helper.c
index 65e810a54257..10ba413d8bf1 100644
--- a/drivers/gpu/drm/display/drm_dsc_helper.c
+++ b/drivers/gpu/drm/display/drm_dsc_helper.c
@@ -270,6 +270,27 @@ void drm_dsc_pps_payload_pack(struct drm_dsc_picture_parameter_set *pps_payload,
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
+	vdsc_cfg->rc_model_size = DSC_RC_MODEL_SIZE_CONST;
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

