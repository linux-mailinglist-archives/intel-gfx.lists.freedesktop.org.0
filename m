Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 090CE6CCEFF
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 02:37:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 098D410E9FC;
	Wed, 29 Mar 2023 00:37:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com
 [IPv6:2a00:1450:4864:20::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3128F10E233
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 00:37:14 +0000 (UTC)
Received: by mail-lf1-x133.google.com with SMTP id k37so18114544lfv.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Mar 2023 17:37:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1680050232;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=IhYtgESoUxti0I4eqk/Ys6kBYaDG3yBiWNS4ylb1Lfs=;
 b=eFmdP4fGKPd5u/EwUxLwn1tDvmwc/8jiWQJpRwkEo88EWvwyA0QdcpdYxd1u9rH4eE
 eopGs/cwnn/Ji4o47HZglQGG/OQcTy1yxiufuNFlqT5TaWJQ4IBnQd0AXPF5X4VhPkT2
 YRUNlpJHisCGchoaGYzbwqG5n1bnuYUUZKAzMBMIA0hv34dsS5iwMr3utx9zWHhwRwPl
 CRiQ9pZXaJwKco4LnC8QVpWcF7xQP+yzBvzmsJTEiMoGQmB4J7GnDZfR2q0igAXulKDE
 fmsqerhXxN0GK1yLUPZbn4i1nTj/Nm9ytRAHM9Q3gU0NofwCl5pAQMpyVjOKHiqcYxAu
 VEtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680050232;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=IhYtgESoUxti0I4eqk/Ys6kBYaDG3yBiWNS4ylb1Lfs=;
 b=UC9U8QyQ22x+gMiK1DpQ5gnWXG83xpD6iM9vAGpNG58Gvt/iw7h5ije1IDak0gDxCI
 BZY9ukWeZaJ1bxGPR//Q5IONSlNpEFIN+UKmPrw+NmcY3x8BKyLMyX1dbp/YHwYWSLlS
 SDMbp6CIyp97zhuZBOcp2PNh/dUjSK8CNPJaTwFXVXLdB9zwV/I4vcC2n8+eQQLJYvA5
 UdqqLfSVOHrpsYt4nMkKYxhDKIk4L9IhGto2dCtR3EbeP5pb0P/vPP8Xb/goSH6g+f5F
 Bb9AambG4rv1OfA1mPjbKMCQSTf0R+2Sf40qzxN+7yIMiT4UUP0ljlh6msvldfev75HO
 aRFQ==
X-Gm-Message-State: AAQBX9eYAK3uTf4O0UvYdtEEsVLkZiVgN8E49PpNucgmTy8dmVucyek4
 IXkDb2QEptBFjc/OZbNf3r6z1g==
X-Google-Smtp-Source: AKy350YsxNAR3dIFM6gNbYMX9hu5HKdvPE6BBviLRfb+id2jBHvxinkzYkEE7vjDdFoCanpbb3L5+A==
X-Received: by 2002:ac2:518d:0:b0:4a4:68b9:66f3 with SMTP id
 u13-20020ac2518d000000b004a468b966f3mr5070433lfi.62.1680050232299; 
 Tue, 28 Mar 2023 17:37:12 -0700 (PDT)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi.
 [2001:14ba:a085:4d00::8a5]) by smtp.gmail.com with ESMTPSA id
 y3-20020ac24463000000b004db00b4c671sm5254138lfl.7.2023.03.28.17.37.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Mar 2023 17:37:11 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>
Date: Wed, 29 Mar 2023 03:37:01 +0300
Message-Id: <20230329003710.1073261-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230329003710.1073261-1-dmitry.baryshkov@linaro.org>
References: <20230329003710.1073261-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 01/10] drm/i915/dsc: change DSC param tables
 to follow the DSC model
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

After cross-checking DSC models (20150914, 20161212, 20210623) change
values in rc_parameters tables to follow config files present inside
the DSC model. Handle two places, where i915 tables diverged from the
model, by patching the rc values in the code.

Note: I left one case uncorrected, 8bpp/10bpc/range_max_qp[0], because
the table in the VESA DSC 1.1 sets it to 4.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 22 ++++++++++++++++++++--
 1 file changed, 20 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 09b32ffdc552..20ce13b0a16b 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -87,7 +87,7 @@ static const struct rc_parameters rc_parameters[][MAX_COLUMN_INDEX] = {
 		}
 	},
 	/* 6BPP/14BPC */
-	{ 768, 15, 6144, 15, 25, 23, 27, {
+	{ 768, 15, 6144, 15, 25, 23, 23, {
 		{ 0, 16, 0 }, { 7, 18, -2 }, { 15, 20, -2 }, { 16, 20, -4 },
 		{ 17, 21, -6 }, { 17, 21, -6 }, { 18, 21, -6 }, { 18, 22, -8 },
 		{ 19, 23, -8 }, { 20, 24, -10 }, { 21, 24, -10 },
@@ -116,6 +116,10 @@ static const struct rc_parameters rc_parameters[][MAX_COLUMN_INDEX] = {
 	},
 	/* 8BPP/10BPC */
 	{ 512, 12, 6144, 7, 16, 15, 15, {
+		/*
+		 * DSC model/pre-SCR-cfg has 8 for range_max_qp[0], however
+		 * VESA DSC 1.1 Table E-5 sets it to 4.
+		 */
 		{ 0, 4, 2 }, { 4, 8, 0 }, { 5, 9, 0 }, { 5, 10, -2 },
 		{ 7, 11, -4 }, { 7, 11, -6 }, { 7, 11, -8 }, { 7, 12, -8 },
 		{ 7, 13, -8 }, { 7, 14, -10 }, { 9, 15, -10 }, { 9, 16, -12 },
@@ -133,7 +137,7 @@ static const struct rc_parameters rc_parameters[][MAX_COLUMN_INDEX] = {
 	},
 	/* 8BPP/14BPC */
 	{ 512, 12, 6144, 15, 24, 23, 23, {
-		{ 0, 12, 0 }, { 5, 13, 0 }, { 11, 15, 0 }, { 12, 17, -2 },
+		{ 0, 12, 2 }, { 5, 13, 0 }, { 11, 15, 0 }, { 12, 17, -2 },
 		{ 15, 19, -4 }, { 15, 19, -6 }, { 15, 19, -8 }, { 15, 20, -8 },
 		{ 15, 21, -8 }, { 15, 22, -10 }, { 17, 22, -10 },
 		{ 17, 23, -12 }, { 17, 23, -12 }, { 21, 24, -12 },
@@ -530,6 +534,20 @@ int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
 			DSC_RANGE_BPG_OFFSET_MASK;
 	}
 
+	if (DISPLAY_VER(dev_priv) < 13) {
+		/*
+		 * FIXME: verify that the hardware actually needs these
+		 * modifications rather than them being simple typos.
+		 */
+		if (compressed_bpp == 6 &&
+		    vdsc_cfg->bits_per_component == 8)
+			vdsc_cfg->rc_quant_incr_limit1 = 23;
+
+		if (compressed_bpp == 8 &&
+		    vdsc_cfg->bits_per_component == 14)
+			vdsc_cfg->rc_range_params[0].range_bpg_offset = 0;
+	}
+
 	/*
 	 * BitsPerComponent value determines mux_word_size:
 	 * When BitsPerComponent is less than or 10bpc, muxWordSize will be equal to
-- 
2.39.2

