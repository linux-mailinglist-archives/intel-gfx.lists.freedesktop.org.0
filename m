Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B816D406B
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Apr 2023 11:23:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18B3F10E3C3;
	Mon,  3 Apr 2023 09:23:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com
 [IPv6:2a00:1450:4864:20::131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 054BA10E43B
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Apr 2023 09:23:23 +0000 (UTC)
Received: by mail-lf1-x131.google.com with SMTP id y20so37217816lfj.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 03 Apr 2023 02:23:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1680513802;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=io1kFeahiBilX+dYbCKFWeEnlfidqy25m/9Relr1ARs=;
 b=FCIaAkDJ0n79m2fUn1fO9D1NLEjKIibCLE+t1nH/APZckdR6KwNJf9IMyRuSA6tS7H
 OOj7LxWksR8rTH6xe7p8NktCXITLnWWlzckow/3FEf+RzOb3W4JV9cGp6DUxh3IGvX5P
 rDephqe4z3qRJLZCQlaiSY0gGDMUfhNc5G+pQ4VhYhegCNLPlfsmnAFj5HgKW0JYyhR+
 Q3WBGdev9TEsPqOM8E9aIxXu0u/x4MMM1xpZGB4VtQzE9dP8A+6XZFqVNWPrPyPTk4IZ
 HOmBVnDcSEKb1/ESZVYgKHef/gDpziCpI7pvYH6m/KMgXaIrZcbbXT7uWQzLvX6QXapJ
 XggQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680513802;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=io1kFeahiBilX+dYbCKFWeEnlfidqy25m/9Relr1ARs=;
 b=CiHb1K91mqIX0k5zd1iTX2oLjnP4MQdt9QhQgTtcdpVt2PIkgnvgDso/1TzXwxDU5g
 j6FsDcte1DxffYDtD72zOv/Jq45jVDah5H9INLXiiVCVdnU1El+4VegtpOI1mi2Cwkw7
 rhxUPuLvuOzNs55IcMsjeg1pJF4UXZEo7NAzh4aCg1RKflq/jn4f+qyFuL4cOlG3/fmd
 WUlm/DvLXL7OqKrAr/3O92jHPQ65Qq/ajbtU1oNTpY69JVlO37eGWu/lGs4rvz0JGrWJ
 +qWZY1P30IwkhHBs+iwPkAFvOrv0xjJuRAV4jS3wq/vECbhnxgw+Jl7cVvEZmQwytV4p
 130w==
X-Gm-Message-State: AAQBX9dH1LlAsoo4dcwdw4ja03CAYZIawFSc7vQuTvl6Anw+ffzrD43i
 5x+0YjS9sr8186duuNHJYO3YBw==
X-Google-Smtp-Source: AKy350YcO8+Zj1sJMDOFfeDVA20lVibKThKK9vn+ijwRH//g0IvSB2Cjx7HqJzOLFTWt7ZUTOeM5Wg==
X-Received: by 2002:ac2:532c:0:b0:4e9:a3b7:2360 with SMTP id
 f12-20020ac2532c000000b004e9a3b72360mr10242335lfh.8.1680513802578; 
 Mon, 03 Apr 2023 02:23:22 -0700 (PDT)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi.
 [2001:14ba:a085:4d00::8a5]) by smtp.gmail.com with ESMTPSA id
 w5-20020ac25985000000b004e844bb6939sm1680666lfn.2.2023.04.03.02.23.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Apr 2023 02:23:22 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>
Date: Mon,  3 Apr 2023 12:23:13 +0300
Message-Id: <20230403092313.235320-13-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230403092313.235320-1-dmitry.baryshkov@linaro.org>
References: <20230403092313.235320-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 12/12] drm/i915/dsc: make use of several
 params from drm_dsc_config
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

The code was ignoring (up to some point for rc_model_size) the
rc_model_size, rc_tgt_offset_high, rc_tgt_offset_low and rc_edge_factor
parameters from struct drm_dsc_config. Actually use them instead of
resorting to predefined constants.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 2d4917ca1f14..76d956a01e2d 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -89,7 +89,7 @@ calculate_rc_params(struct drm_dsc_config *vdsc_cfg)
 		vdsc_cfg->initial_offset = 6144;
 
 	/* initial_xmit_delay = rc_model_size/2/compression_bpp */
-	vdsc_cfg->initial_xmit_delay = DIV_ROUND_UP(DSC_RC_MODEL_SIZE_CONST, 2 * bpp);
+	vdsc_cfg->initial_xmit_delay = DIV_ROUND_UP(vdsc_cfg->rc_model_size, 2 * bpp);
 
 	vdsc_cfg->flatness_min_qp = 3 + qp_bpc_modifier;
 	vdsc_cfg->flatness_max_qp = 12 + qp_bpc_modifier;
@@ -543,7 +543,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 	/* Populate PICTURE_PARAMETER_SET_9 registers */
 	pps_val = 0;
 	pps_val |= DSC_RC_MODEL_SIZE(vdsc_cfg->rc_model_size) |
-		DSC_RC_EDGE_FACTOR(DSC_RC_EDGE_FACTOR_CONST);
+		DSC_RC_EDGE_FACTOR(vdsc_cfg->rc_edge_factor);
 	drm_dbg_kms(&dev_priv->drm, "PPS9 = 0x%08x\n", pps_val);
 	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
 		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_9,
@@ -569,8 +569,8 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 	pps_val = 0;
 	pps_val |= DSC_RC_QUANT_INC_LIMIT0(vdsc_cfg->rc_quant_incr_limit0) |
 		DSC_RC_QUANT_INC_LIMIT1(vdsc_cfg->rc_quant_incr_limit1) |
-		DSC_RC_TARGET_OFF_HIGH(DSC_RC_TGT_OFFSET_HI_CONST) |
-		DSC_RC_TARGET_OFF_LOW(DSC_RC_TGT_OFFSET_LO_CONST);
+		DSC_RC_TARGET_OFF_HIGH(vdsc_cfg->rc_tgt_offset_high) |
+		DSC_RC_TARGET_OFF_LOW(vdsc_cfg->rc_tgt_offset_low);
 	drm_dbg_kms(&dev_priv->drm, "PPS10 = 0x%08x\n", pps_val);
 	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
 		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_10,
-- 
2.39.2

