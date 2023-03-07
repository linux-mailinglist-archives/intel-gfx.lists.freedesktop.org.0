Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A706AE12B
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Mar 2023 14:49:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4689110E4AB;
	Tue,  7 Mar 2023 13:49:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com
 [IPv6:2a00:1450:4864:20::235])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D42610E498
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Mar 2023 13:49:05 +0000 (UTC)
Received: by mail-lj1-x235.google.com with SMTP id i20so13117838lja.11
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Mar 2023 05:49:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1678196943;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=oLhwdTzEgqNvfiwBrG4FezeIHFtBjdYJVxoW18hMrf4=;
 b=UOyoPP1+MObqrzn4UqO+C17eKNkJuXuz2JCwdWbqRymUfd53YP30YrAhZ/njVkxuHk
 B6e2IZvruE+VOtVxi7eJkcM2o9c8KmxEDvEW8HxPp/gQoV27rYS45hIk/4WBuPo7ctkm
 id8VBAZfzvynOEDLJ9+YwD3S4DKjfdFXSMxtEU1PKMJdir6Cd5onCsFszrAEmgQEsaDG
 fki27x8kqISFTBeQqwZaTT/ekSfhv764Xrp/vOg467gGytJ2O4tJnkksY7SQY4Vd9g7R
 6BpZz/YhH9z6iBL3EYmjg3AdiaUd7tWiyq6rCSrtfbWfriwG2DyZFjwzV/lt+EDdpea3
 3rpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678196943;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=oLhwdTzEgqNvfiwBrG4FezeIHFtBjdYJVxoW18hMrf4=;
 b=oVIpFRaflF0zH6kZ12h6+CaWoC5317aKvBfEnLKlBHYrWR+WqGAxHEk4oHkHApz264
 mwyF8t3AXVP4AeIXAcP4h1Fg5oG1ZyafuFNRuIg4n7wBBbPmEWibo35EyM+cdXR01Maa
 FVbPEd4m9ecZpGKq7EvExigeMIwq3oC3PLPfXOYUIXcumsOb0JR7WAuKSbob5rdV5l5O
 V12xAVytdZW7of/bDHqpLUlKQuLilPOPwtCC8IWqoenwUsidAg4/DZoSc26hDw/WMht8
 AoAgrAUkxHtLR9qnrX5b/vfD6TJcH9pdIzAvytqFLhj39Gb0vMlVnN5V6PPnvmtqIa0l
 EHHg==
X-Gm-Message-State: AO0yUKWR0BAD/F0cCJr5KZFNjveaaa6AKpon6OfMi6RFHVpDKy0vpczU
 lNEHwUtwJeB7GS79hBnwh3f2rw==
X-Google-Smtp-Source: AK7set/rudU8YqzkQ6ly/e4PJvLPdqv69x+rHIB1OHuByHe4Iw276Qb7LIZSBC9CK0Hs82zP6azYMw==
X-Received: by 2002:a2e:be25:0:b0:295:c306:ec40 with SMTP id
 z37-20020a2ebe25000000b00295c306ec40mr5539295ljq.34.1678196943684; 
 Tue, 07 Mar 2023 05:49:03 -0800 (PST)
Received: from eriador.unikie.fi ([192.130.178.91])
 by smtp.gmail.com with ESMTPSA id
 u14-20020a2e91ce000000b0029597ebacd0sm2128991ljg.64.2023.03.07.05.49.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Mar 2023 05:49:03 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>
Date: Tue,  7 Mar 2023 15:48:52 +0200
Message-Id: <20230307134901.322560-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230307134901.322560-1-dmitry.baryshkov@linaro.org>
References: <20230307134901.322560-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 01/10] drm/i915/dsc: change DSC param tables
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
index 207b2a648d32..a91b70301640 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -86,7 +86,7 @@ static const struct rc_parameters rc_parameters[][MAX_COLUMN_INDEX] = {
 		}
 	},
 	/* 6BPP/14BPC */
-	{ 768, 15, 6144, 15, 25, 23, 27, {
+	{ 768, 15, 6144, 15, 25, 23, 23, {
 		{ 0, 16, 0 }, { 7, 18, -2 }, { 15, 20, -2 }, { 16, 20, -4 },
 		{ 17, 21, -6 }, { 17, 21, -6 }, { 18, 21, -6 }, { 18, 22, -8 },
 		{ 19, 23, -8 }, { 20, 24, -10 }, { 21, 24, -10 },
@@ -115,6 +115,10 @@ static const struct rc_parameters rc_parameters[][MAX_COLUMN_INDEX] = {
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
@@ -132,7 +136,7 @@ static const struct rc_parameters rc_parameters[][MAX_COLUMN_INDEX] = {
 	},
 	/* 8BPP/14BPC */
 	{ 512, 12, 6144, 15, 24, 23, 23, {
-		{ 0, 12, 0 }, { 5, 13, 0 }, { 11, 15, 0 }, { 12, 17, -2 },
+		{ 0, 12, 2 }, { 5, 13, 0 }, { 11, 15, 0 }, { 12, 17, -2 },
 		{ 15, 19, -4 }, { 15, 19, -6 }, { 15, 19, -8 }, { 15, 20, -8 },
 		{ 15, 21, -8 }, { 15, 22, -10 }, { 17, 22, -10 },
 		{ 17, 23, -12 }, { 17, 23, -12 }, { 21, 24, -12 },
@@ -529,6 +533,20 @@ int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
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

