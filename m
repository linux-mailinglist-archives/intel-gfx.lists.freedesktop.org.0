Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5480970652F
	for <lists+intel-gfx@lfdr.de>; Wed, 17 May 2023 12:28:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F0F910E3F5;
	Wed, 17 May 2023 10:28:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com
 [IPv6:2a00:1450:4864:20::22d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FED110E3E9
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 May 2023 10:28:15 +0000 (UTC)
Received: by mail-lj1-x22d.google.com with SMTP id
 38308e7fff4ca-2ac8cc8829fso5164601fa.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 May 2023 03:28:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1684319293; x=1686911293;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=LBdEvgYOdrAb0mcn5Pi6WWJddZB//fFQ6z81HnoXRkE=;
 b=OvxAztbuHI9fItmwnLgezYaL+GeIvaYAAR7wwmj/WdVHKb2TohuKksP7N++3ynWur4
 RhczSA6tM2V9cQcVpE5h4T5709THbmYIMaKvIWDtPZcnFLA/btHKkjxoxTaTZpKWq6tt
 nkTtCtD4TeXLqbzXa3bArh7MzvoxgeA10RRnXZas6yJ1hT42qAwStw8UaO/em/SL3Puj
 oaNfIva7mlnEgWHgzPIlZ39FnC7Bu4lY7JCg5a9rsmWnNfxyz59+2JDtgDl3b22Y5C30
 h1B4sdP2SgtqIW42isWWYfxAliFAZ19CzV2UBxD7UwRPxfzUpoykBaCyw+C7CBCGqIdp
 ai3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684319293; x=1686911293;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=LBdEvgYOdrAb0mcn5Pi6WWJddZB//fFQ6z81HnoXRkE=;
 b=IQEfwF0AhdvJqfKa0YgUpol4nnKWWIlDyyuhThQP9xvo2/BPnkNl/HXYGrP5bdh0Vi
 V+HmHkTyDLLu9ubv/rjtwNyTf8tpEFioN7Pdq1qNWVBX72CdtiD/a8SdfKAEO4T4/YLe
 xZvvg6QJZgMwqjtgZ4Yex+cZstiYPOP4mmgEOr5+HNipd5J4KJMPj8rgmSBRnBFSadZl
 2GoInCQm4vsEaXc2MYk50YsPTlVNkN+HBNlc7U8LZBjiPDdbYFzDpEvEf/N/IIOC5xHs
 XNjFF75xetAu+U/H1PvAD+hldKEQf+9TzRxhgC5a/Yp1fyX9fdOfeHBiiWBVFvcZLp0X
 pGcA==
X-Gm-Message-State: AC+VfDx4otH/JtsPiMRRCtdPc2vFIa7nsOQtO0553/TLxztAQlzXnGiZ
 ec7ISjDP56kKU74MaDqAbm28zQ==
X-Google-Smtp-Source: ACHHUZ5mAksHQM9R2DoCYyuJZnABrFio2+R8f8YMckUp83rOKTPiTBuZCYEnjSP6AYXFxmFFMwjQ+g==
X-Received: by 2002:a2e:7308:0:b0:2a8:a5b8:184a with SMTP id
 o8-20020a2e7308000000b002a8a5b8184amr9327988ljc.40.1684319293103; 
 Wed, 17 May 2023 03:28:13 -0700 (PDT)
Received: from eriador.lan (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi.
 [2001:14ba:a0db:1f00::8a5]) by smtp.gmail.com with ESMTPSA id
 e16-20020a2e8190000000b002ab017899e8sm4495356ljg.39.2023.05.17.03.28.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 May 2023 03:28:12 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>
Date: Wed, 17 May 2023 13:28:05 +0300
Message-Id: <20230517102807.2181589-7-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230517102807.2181589-1-dmitry.baryshkov@linaro.org>
References: <20230517102807.2181589-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 6/8] drm/display/dsc: split DSC 1.2 and DSC
 1.1 (pre-SCR) parameters
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

The array of rc_parameters contains a mixture of parameters from DSC 1.1
and DSC 1.2 standards. Split these tow configuration arrays in
preparation to adding more configuration data.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/display/drm_dsc_helper.c  | 139 ++++++++++++++++++----
 drivers/gpu/drm/i915/display/intel_vdsc.c |  10 +-
 include/drm/display/drm_dsc_helper.h      |   7 +-
 3 files changed, 129 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/display/drm_dsc_helper.c b/drivers/gpu/drm/display/drm_dsc_helper.c
index acb93d4116e0..f1ba39df5708 100644
--- a/drivers/gpu/drm/display/drm_dsc_helper.c
+++ b/drivers/gpu/drm/display/drm_dsc_helper.c
@@ -325,10 +325,88 @@ struct rc_parameters_data {
 #define DSC_BPP(bpp)	((bpp) << 4)
 
 /*
- * Selected Rate Control Related Parameter Recommended Values
- * from DSC_v1.11 spec & C Model release: DSC_model_20161212
+ * Rate Control Related Parameter Recommended Values from DSC_v1.1 spec prior
+ * to DSC 1.1 fractional bpp underflow SCR (DSC_v1.1_E1.pdf)
+ *
+ * Cross-checked against C Model releases: DSC_model_20161212 and 20210623
  */
-static const struct rc_parameters_data rc_parameters[] = {
+static const struct rc_parameters_data rc_parameters_pre_scr[] = {
+	{
+		.bpp = DSC_BPP(8), .bpc = 8,
+		{ 512, 12, 6144, 3, 12, 11, 11, {
+			{ 0, 4, 2 }, { 0, 4, 0 }, { 1, 5, 0 }, { 1, 6, -2 },
+			{ 3, 7, -4 }, { 3, 7, -6 }, { 3, 7, -8 }, { 3, 8, -8 },
+			{ 3, 9, -8 }, { 3, 10, -10 }, { 5, 11, -10 }, { 5, 12, -12 },
+			{ 5, 13, -12 }, { 7, 13, -12 }, { 13, 15, -12 }
+			}
+		}
+	},
+	{
+		.bpp = DSC_BPP(8), .bpc = 10,
+		{ 512, 12, 6144, 7, 16, 15, 15, {
+			/*
+			 * DSC model/pre-SCR-cfg has 8 for range_max_qp[0], however
+			 * VESA DSC 1.1 Table E-5 sets it to 4.
+			 */
+			{ 0, 4, 2 }, { 4, 8, 0 }, { 5, 9, 0 }, { 5, 10, -2 },
+			{ 7, 11, -4 }, { 7, 11, -6 }, { 7, 11, -8 }, { 7, 12, -8 },
+			{ 7, 13, -8 }, { 7, 14, -10 }, { 9, 15, -10 }, { 9, 16, -12 },
+			{ 9, 17, -12 }, { 11, 17, -12 }, { 17, 19, -12 }
+			}
+		}
+	},
+	{
+		.bpp = DSC_BPP(8), .bpc = 12,
+		{ 512, 12, 6144, 11, 20, 19, 19, {
+			{ 0, 12, 2 }, { 4, 12, 0 }, { 9, 13, 0 }, { 9, 14, -2 },
+			{ 11, 15, -4 }, { 11, 15, -6 }, { 11, 15, -8 }, { 11, 16, -8 },
+			{ 11, 17, -8 }, { 11, 18, -10 }, { 13, 19, -10 },
+			{ 13, 20, -12 }, { 13, 21, -12 }, { 15, 21, -12 },
+			{ 21, 23, -12 }
+			}
+		}
+	},
+	{
+		.bpp = DSC_BPP(12), .bpc = 8,
+		{ 341, 15, 2048, 3, 12, 11, 11, {
+			{ 0, 2, 2 }, { 0, 4, 0 }, { 1, 5, 0 }, { 1, 6, -2 },
+			{ 3, 7, -4 }, { 3, 7, -6 }, { 3, 7, -8 }, { 3, 8, -8 },
+			{ 3, 9, -8 }, { 3, 10, -10 }, { 5, 11, -10 },
+			{ 5, 12, -12 }, { 5, 13, -12 }, { 7, 13, -12 }, { 13, 15, -12 }
+			}
+		}
+	},
+	{
+		.bpp = DSC_BPP(12), .bpc = 10,
+		{ 341, 15, 2048, 7, 16, 15, 15, {
+			{ 0, 2, 2 }, { 2, 5, 0 }, { 3, 7, 0 }, { 4, 8, -2 },
+			{ 6, 9, -4 }, { 7, 10, -6 }, { 7, 11, -8 }, { 7, 12, -8 },
+			{ 7, 13, -8 }, { 7, 14, -10 }, { 9, 15, -10 }, { 9, 16, -12 },
+			{ 9, 17, -12 }, { 11, 17, -12 }, { 17, 19, -12 }
+			}
+		}
+	},
+	{
+		.bpp = DSC_BPP(12), .bpc = 12,
+		{ 341, 15, 2048, 11, 20, 19, 19, {
+			{ 0, 6, 2 }, { 4, 9, 0 }, { 7, 11, 0 }, { 8, 12, -2 },
+			{ 10, 13, -4 }, { 11, 14, -6 }, { 11, 15, -8 }, { 11, 16, -8 },
+			{ 11, 17, -8 }, { 11, 18, -10 }, { 13, 19, -10 },
+			{ 13, 20, -12 }, { 13, 21, -12 }, { 15, 21, -12 },
+			{ 21, 23, -12 }
+			}
+		}
+	},
+	{ /* sentinel */ }
+};
+
+/*
+ * Selected Rate Control Related Parameter Recommended Values from DSC v1.2, v1.2a, v1.2b and
+ * DSC_v1.1_E1 specs.
+ *
+ * Cross-checked against C Model releases: DSC_model_20161212 and 20210623
+ */
+static const struct rc_parameters_data rc_parameters_1_2_444[] = {
 	{
 		.bpp = DSC_BPP(6), .bpc = 8,
 		{ 768, 15, 6144, 3, 13, 11, 11, {
@@ -388,22 +466,18 @@ static const struct rc_parameters_data rc_parameters[] = {
 		{ 512, 12, 6144, 3, 12, 11, 11, {
 			{ 0, 4, 2 }, { 0, 4, 0 }, { 1, 5, 0 }, { 1, 6, -2 },
 			{ 3, 7, -4 }, { 3, 7, -6 }, { 3, 7, -8 }, { 3, 8, -8 },
-			{ 3, 9, -8 }, { 3, 10, -10 }, { 5, 11, -10 }, { 5, 12, -12 },
-			{ 5, 13, -12 }, { 7, 13, -12 }, { 13, 15, -12 }
+			{ 3, 9, -8 }, { 3, 10, -10 }, { 5, 10, -10 }, { 5, 11, -12 },
+			{ 5, 11, -12 }, { 9, 12, -12 }, { 12, 13, -12 }
 			}
 		}
 	},
 	{
 		.bpp = DSC_BPP(8), .bpc = 10,
 		{ 512, 12, 6144, 7, 16, 15, 15, {
-			/*
-			 * DSC model/pre-SCR-cfg has 8 for range_max_qp[0], however
-			 * VESA DSC 1.1 Table E-5 sets it to 4.
-			 */
-			{ 0, 4, 2 }, { 4, 8, 0 }, { 5, 9, 0 }, { 5, 10, -2 },
+			{ 0, 8, 2 }, { 4, 8, 0 }, { 5, 9, 0 }, { 5, 10, -2 },
 			{ 7, 11, -4 }, { 7, 11, -6 }, { 7, 11, -8 }, { 7, 12, -8 },
-			{ 7, 13, -8 }, { 7, 14, -10 }, { 9, 15, -10 }, { 9, 16, -12 },
-			{ 9, 17, -12 }, { 11, 17, -12 }, { 17, 19, -12 }
+			{ 7, 13, -8 }, { 7, 14, -10 }, { 9, 14, -10 }, { 9, 15, -12 },
+			{ 9, 15, -12 }, { 13, 16, -12 }, { 16, 17, -12 }
 			}
 		}
 	},
@@ -412,9 +486,9 @@ static const struct rc_parameters_data rc_parameters[] = {
 		{ 512, 12, 6144, 11, 20, 19, 19, {
 			{ 0, 12, 2 }, { 4, 12, 0 }, { 9, 13, 0 }, { 9, 14, -2 },
 			{ 11, 15, -4 }, { 11, 15, -6 }, { 11, 15, -8 }, { 11, 16, -8 },
-			{ 11, 17, -8 }, { 11, 18, -10 }, { 13, 19, -10 },
-			{ 13, 20, -12 }, { 13, 21, -12 }, { 15, 21, -12 },
-			{ 21, 23, -12 }
+			{ 11, 17, -8 }, { 11, 18, -10 }, { 13, 18, -10 },
+			{ 13, 19, -12 }, { 13, 19, -12 }, { 17, 20, -12 },
+			{ 20, 21, -12 }
 			}
 		}
 	},
@@ -498,8 +572,8 @@ static const struct rc_parameters_data rc_parameters[] = {
 		{ 341, 15, 2048, 3, 12, 11, 11, {
 			{ 0, 2, 2 }, { 0, 4, 0 }, { 1, 5, 0 }, { 1, 6, -2 },
 			{ 3, 7, -4 }, { 3, 7, -6 }, { 3, 7, -8 }, { 3, 8, -8 },
-			{ 3, 9, -8 }, { 3, 10, -10 }, { 5, 11, -10 },
-			{ 5, 12, -12 }, { 5, 13, -12 }, { 7, 13, -12 }, { 13, 15, -12 }
+			{ 3, 8, -8 }, { 3, 9, -10 }, { 5, 9, -10 }, { 5, 9, -12 },
+			{ 5, 9, -12 }, { 7, 10, -12 }, { 10, 11, -12 }
 			}
 		}
 	},
@@ -508,8 +582,8 @@ static const struct rc_parameters_data rc_parameters[] = {
 		{ 341, 15, 2048, 7, 16, 15, 15, {
 			{ 0, 2, 2 }, { 2, 5, 0 }, { 3, 7, 0 }, { 4, 8, -2 },
 			{ 6, 9, -4 }, { 7, 10, -6 }, { 7, 11, -8 }, { 7, 12, -8 },
-			{ 7, 13, -8 }, { 7, 14, -10 }, { 9, 15, -10 }, { 9, 16, -12 },
-			{ 9, 17, -12 }, { 11, 17, -12 }, { 17, 19, -12 }
+			{ 7, 12, -8 }, { 7, 13, -10 }, { 9, 13, -10 }, { 9, 13, -12 },
+			{ 9, 13, -12 }, { 11, 14, -12 }, { 14, 15, -12 }
 			}
 		}
 	},
@@ -518,9 +592,9 @@ static const struct rc_parameters_data rc_parameters[] = {
 		{ 341, 15, 2048, 11, 20, 19, 19, {
 			{ 0, 6, 2 }, { 4, 9, 0 }, { 7, 11, 0 }, { 8, 12, -2 },
 			{ 10, 13, -4 }, { 11, 14, -6 }, { 11, 15, -8 }, { 11, 16, -8 },
-			{ 11, 17, -8 }, { 11, 18, -10 }, { 13, 19, -10 },
-			{ 13, 20, -12 }, { 13, 21, -12 }, { 15, 21, -12 },
-			{ 21, 23, -12 }
+			{ 11, 16, -8 }, { 11, 17, -10 }, { 13, 17, -10 },
+			{ 13, 17, -12 }, { 13, 17, -12 }, { 15, 18, -12 },
+			{ 18, 19, -12 }
 			}
 		}
 	},
@@ -602,7 +676,8 @@ static const struct rc_parameters_data rc_parameters[] = {
 	{ /* sentinel */ }
 };
 
-static const struct rc_parameters *get_rc_params(u16 dsc_bpp,
+static const struct rc_parameters *get_rc_params(const struct rc_parameters_data *rc_parameters,
+						 u16 dsc_bpp,
 						 u8 bits_per_component)
 {
 	int i;
@@ -622,11 +697,13 @@ static const struct rc_parameters *get_rc_params(u16 dsc_bpp,
  * function.
  *
  * @vdsc_cfg: DSC Configuration data partially filled by driver
+ * @type: operating mode and standard to follow
  *
  * Return: 0 or -error code in case of an error
  */
-int drm_dsc_setup_rc_params(struct drm_dsc_config *vdsc_cfg)
+int drm_dsc_setup_rc_params(struct drm_dsc_config *vdsc_cfg, enum drm_dsc_params_type type)
 {
+	const struct rc_parameters_data *data;
 	const struct rc_parameters *rc_params;
 	int i;
 
@@ -634,7 +711,19 @@ int drm_dsc_setup_rc_params(struct drm_dsc_config *vdsc_cfg)
 			 !vdsc_cfg->bits_per_component))
 		return -EINVAL;
 
-	rc_params = get_rc_params(vdsc_cfg->bits_per_pixel,
+	switch (type) {
+	case DRM_DSC_1_2_444:
+		data = rc_parameters_1_2_444;
+		break;
+	case DRM_DSC_1_1_PRE_SCR:
+		data = rc_parameters_pre_scr;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	rc_params = get_rc_params(data,
+				  vdsc_cfg->bits_per_pixel,
 				  vdsc_cfg->bits_per_component);
 	if (!rc_params)
 		return -EINVAL;
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index d4340b18c18d..bd9116d2cd76 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -226,7 +226,15 @@ int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
 	if (DISPLAY_VER(dev_priv) >= 13) {
 		calculate_rc_params(vdsc_cfg);
 	} else {
-		ret = drm_dsc_setup_rc_params(vdsc_cfg);
+		if ((compressed_bpp == 8 ||
+		     compressed_bpp == 12) &&
+		    (vdsc_cfg->bits_per_component == 8 ||
+		     vdsc_cfg->bits_per_component == 10 ||
+		     vdsc_cfg->bits_per_component == 12))
+			ret = drm_dsc_setup_rc_params(vdsc_cfg, DRM_DSC_1_1_PRE_SCR);
+		else
+			ret = drm_dsc_setup_rc_params(vdsc_cfg, DRM_DSC_1_2_444);
+
 		if (ret)
 			return ret;
 
diff --git a/include/drm/display/drm_dsc_helper.h b/include/drm/display/drm_dsc_helper.h
index 1681791f65a5..66eac7276d04 100644
--- a/include/drm/display/drm_dsc_helper.h
+++ b/include/drm/display/drm_dsc_helper.h
@@ -10,12 +10,17 @@
 
 #include <drm/display/drm_dsc.h>
 
+enum drm_dsc_params_type {
+	DRM_DSC_1_2_444,
+	DRM_DSC_1_1_PRE_SCR, /* legacy params from DSC 1.1 */
+};
+
 void drm_dsc_dp_pps_header_init(struct dp_sdp_header *pps_header);
 int drm_dsc_dp_rc_buffer_size(u8 rc_buffer_block_size, u8 rc_buffer_size);
 void drm_dsc_pps_payload_pack(struct drm_dsc_picture_parameter_set *pps_sdp,
 			      const struct drm_dsc_config *dsc_cfg);
 void drm_dsc_set_rc_buf_thresh(struct drm_dsc_config *vdsc_cfg);
-int drm_dsc_setup_rc_params(struct drm_dsc_config *vdsc_cfg);
+int drm_dsc_setup_rc_params(struct drm_dsc_config *vdsc_cfg, enum drm_dsc_params_type type);
 int drm_dsc_compute_rc_parameters(struct drm_dsc_config *vdsc_cfg);
 
 #endif /* _DRM_DSC_HELPER_H_ */
-- 
2.39.2

