Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DD4856CCF00
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 02:37:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 495BE10EA20;
	Wed, 29 Mar 2023 00:37:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com
 [IPv6:2a00:1450:4864:20::136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F25210E9A4
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 00:37:20 +0000 (UTC)
Received: by mail-lf1-x136.google.com with SMTP id j11so18029305lfg.13
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Mar 2023 17:37:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1680050240;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=AXWuxeHMpQCt72Y6URHGm/0rqCv9ixM2ky1A1nPsEmM=;
 b=hqU3ki1Q6/iWlUzswF/kh0d7F4xfgz2At6Aw7rBzVSCGJgu1fGg6DyVkc3kCsr+lh5
 JpwbZnSbNYmu4r2nVr4MZNik83G+5rJ5scblXrzJ+eAD1ZhYpD4p7JRq7MI1wFXfI+iO
 2upTmNcKfv1cTamizstEzS/jenx01HTJQ8tHXxnM+3TcpejsRClf2QKQLL29J7yE3Wcl
 RqLEnQRSu6kX/ia9yDQ+qkSnWH+bJ2W7MSNb7hegRWi9F53ieJbTOSxaYws63U3Lu4se
 /sd8P3CSqpzCGedTBiiL5e4ezlypJtdfsYaSeLUTNfSvYq5toOw5ExCci5ktz3Qk3R6p
 UjjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680050240;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=AXWuxeHMpQCt72Y6URHGm/0rqCv9ixM2ky1A1nPsEmM=;
 b=DVUjvQjNU8/A+I9RqejS/KNQnIE3TimEBgPT8J3YpslfDkGAa/N1b+9WBA+c0AqebH
 /3u9GT80jzTkuyA42BSZrkCmtvPd8OVB+fgjPoexKZGvt1UYEylYtaw5XeJyCJaiDJyW
 Ji3kbcWmh6z89VOGw8noRO34sI3LS6jAws1iAcIVfsmw7NLLBMm2fXxczmnY9GUPaDeO
 FIM/NYh47DN7p9BC2jzalP692/qkB77MLB2bIwCZKpImLxu9lWrid+13TMpNsuhNfN7j
 C6sipboQpVY6aLaUrR/3XMMSkwIlgGtviBUtZfll4xZZPwA0NR08wfJeRDrnAYq5+HfD
 101g==
X-Gm-Message-State: AAQBX9fWZNWZER6jb0onFbfW3gTisPg/+VATm56DQKSihSmWq/V+IxrS
 g0lkW0LpEsu44DZDXyWSWORB6Q==
X-Google-Smtp-Source: AKy350aO16EGApaQ88+8KjUEilQMRGi6JlibmmkIedsK2TcF7sV227xOvVzIS6LwpXCFnfxgC0Geuw==
X-Received: by 2002:a19:f009:0:b0:4eb:1213:ce2d with SMTP id
 p9-20020a19f009000000b004eb1213ce2dmr2335523lfc.61.1680050239847; 
 Tue, 28 Mar 2023 17:37:19 -0700 (PDT)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi.
 [2001:14ba:a085:4d00::8a5]) by smtp.gmail.com with ESMTPSA id
 y3-20020ac24463000000b004db00b4c671sm5254138lfl.7.2023.03.28.17.37.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Mar 2023 17:37:19 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>
Date: Wed, 29 Mar 2023 03:37:10 +0300
Message-Id: <20230329003710.1073261-11-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230329003710.1073261-1-dmitry.baryshkov@linaro.org>
References: <20230329003710.1073261-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 10/10] drm/msm/dsi: use new helpers for DSC
 setup
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

Use new DRM DSC helpers to setup DSI DSC configuration. The
initial_scale_value needs to be adjusted according to the standard, but
this is a separate change.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/msm/dsi/dsi_host.c | 61 ++++--------------------------
 1 file changed, 8 insertions(+), 53 deletions(-)

diff --git a/drivers/gpu/drm/msm/dsi/dsi_host.c b/drivers/gpu/drm/msm/dsi/dsi_host.c
index 18fa30e1e858..dda989727921 100644
--- a/drivers/gpu/drm/msm/dsi/dsi_host.c
+++ b/drivers/gpu/drm/msm/dsi/dsi_host.c
@@ -1735,28 +1735,9 @@ static int dsi_host_parse_lane_data(struct msm_dsi_host *msm_host,
 	return -EINVAL;
 }
 
-static u32 dsi_dsc_rc_buf_thresh[DSC_NUM_BUF_RANGES - 1] = {
-	0x0e, 0x1c, 0x2a, 0x38, 0x46, 0x54, 0x62,
-	0x69, 0x70, 0x77, 0x79, 0x7b, 0x7d, 0x7e
-};
-
-/* only 8bpc, 8bpp added */
-static char min_qp[DSC_NUM_BUF_RANGES] = {
-	0, 0, 1, 1, 3, 3, 3, 3, 3, 3, 5, 5, 5, 7, 13
-};
-
-static char max_qp[DSC_NUM_BUF_RANGES] = {
-	4, 4, 5, 6, 7, 7, 7, 8, 9, 10, 11, 12, 13, 13, 15
-};
-
-static char bpg_offset[DSC_NUM_BUF_RANGES] = {
-	2, 0, 0, -2, -4, -6, -8, -8, -8, -10, -10, -12, -12, -12, -12
-};
-
 static int dsi_populate_dsc_params(struct msm_dsi_host *msm_host, struct drm_dsc_config *dsc)
 {
-	int i;
-	u16 bpp = dsc->bits_per_pixel >> 4;
+	int ret;
 
 	if (dsc->bits_per_pixel & 0xf) {
 		DRM_DEV_ERROR(&msm_host->pdev->dev, "DSI does not support fractional bits_per_pixel\n");
@@ -1768,49 +1749,23 @@ static int dsi_populate_dsc_params(struct msm_dsi_host *msm_host, struct drm_dsc
 		return -EOPNOTSUPP;
 	}
 
-	dsc->rc_model_size = 8192;
-	dsc->first_line_bpg_offset = 12;
-	dsc->rc_edge_factor = 6;
-	dsc->rc_tgt_offset_high = 3;
-	dsc->rc_tgt_offset_low = 3;
 	dsc->simple_422 = 0;
 	dsc->convert_rgb = 1;
 	dsc->vbr_enable = 0;
 
-	/* handle only bpp = bpc = 8 */
-	for (i = 0; i < DSC_NUM_BUF_RANGES - 1 ; i++)
-		dsc->rc_buf_thresh[i] = dsi_dsc_rc_buf_thresh[i];
+	drm_dsc_set_const_params(dsc);
+	drm_dsc_set_rc_buf_thresh(dsc);
 
-	for (i = 0; i < DSC_NUM_BUF_RANGES; i++) {
-		dsc->rc_range_params[i].range_min_qp = min_qp[i];
-		dsc->rc_range_params[i].range_max_qp = max_qp[i];
-		/*
-		 * Range BPG Offset contains two's-complement signed values that fill
-		 * 8 bits, yet the registers and DCS PPS field are only 6 bits wide.
-		 */
-		dsc->rc_range_params[i].range_bpg_offset = bpg_offset[i] & DSC_RANGE_BPG_OFFSET_MASK;
+	/* handle only bpp = bpc = 8, pre-SCR panels */
+	ret = drm_dsc_setup_rc_params(dsc, DRM_DSC_1_1_PRE_SCR);
+	if (ret) {
+		DRM_DEV_ERROR(&msm_host->pdev->dev, "could not find DSC RC parameters\n");
+		return ret;
 	}
 
-	dsc->initial_offset = 6144;		/* Not bpp 12 */
-	if (bpp != 8)
-		dsc->initial_offset = 2048;	/* bpp = 12 */
-
-	if (dsc->bits_per_component <= 10)
-		dsc->mux_word_size = DSC_MUX_WORD_SIZE_8_10_BPC;
-	else
-		dsc->mux_word_size = DSC_MUX_WORD_SIZE_12_BPC;
-
-	dsc->initial_xmit_delay = 512;
 	dsc->initial_scale_value = 32;
-	dsc->first_line_bpg_offset = 12;
 	dsc->line_buf_depth = dsc->bits_per_component + 1;
 
-	/* bpc 8 */
-	dsc->flatness_min_qp = 3;
-	dsc->flatness_max_qp = 12;
-	dsc->rc_quant_incr_limit0 = 11;
-	dsc->rc_quant_incr_limit1 = 11;
-
 	return drm_dsc_compute_rc_parameters(dsc);
 }
 
-- 
2.39.2

