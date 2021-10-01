Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F7EC41F0D2
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Oct 2021 17:12:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00D156EE3E;
	Fri,  1 Oct 2021 15:12:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x82d.google.com (mail-qt1-x82d.google.com
 [IPv6:2607:f8b0:4864:20::82d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 802906EE34
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Oct 2021 15:12:31 +0000 (UTC)
Received: by mail-qt1-x82d.google.com with SMTP id j13so9243737qtq.6
 for <intel-gfx@lists.freedesktop.org>; Fri, 01 Oct 2021 08:12:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7fgZd2r8WX3nKl+4VS4Ec2yUI3VXeazcd0O5WKokovQ=;
 b=Ekw0wHpPNXyuEdGuFqPgHxA+kv8/51N+Hne5e14flbbeeBVgPtyQ5ICjeWqPU7m/3R
 YiMD0iMg/yGhycVVZXZo+RKXBGV5UqWofCIemkgfFs20/sHbMYoz0dWeEFBAfbMGoqHI
 mQxiAocei0Kgsm7KUhPCBuuO6EFIul2dA3cLp5OvSLzbU2xDEniDZrAt6goykoR4sWRx
 XBY+QbqrGbzDEorkqhtVmCu1az9XydNLH2q5j7HFp5GnaC2F/Qipuj6SZ+ZWvWdYRHS7
 q/HpofbA0enfIjbK3P4Yz8KgGauYQAt9Y8BuXIpsN/UU2KdRFwkrpN3kLdn1/hGUkhem
 IxLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7fgZd2r8WX3nKl+4VS4Ec2yUI3VXeazcd0O5WKokovQ=;
 b=FF4nXUfgDUWApKNo01bjDjS+CPTOIxrACarMVn/XI57YHkAjSyLuWRrZvoyzy1O7ml
 JSIFBMhSAS/JxvXLUlpKqXU6vxZlAw8woksvw+XyjD7wrMpax9D+UZOp1kuTi65C0CyW
 jhZHJ5+DA8oM2qoDNDEHzzfZ5wqKAg42hF3qzva+T4BU2HyHaqyiBXc7Znfa0x+Et0H2
 cvfHrPIc6KRHwyduN5B3bMZWDMXHvhu3Z3947cJ8qBdzpC9dOQRVjkLPb23bo2uXd/7N
 ePA+TFXCSe673HAlDeWcIqFuPWktfLXxBWy29SJ8uuQbEEIAy7pDSZVsovUjCZDO7rW/
 D70w==
X-Gm-Message-State: AOAM531N/0l7aLgaQGV5rXfTMKhqFzB/f76lxsYfknuZudOSQosXJypD
 Z0yo+UkXhqT/LggmYL54sgzUiA==
X-Google-Smtp-Source: ABdhPJyDjQ5FYKaPKnVDjVzBRzMABzlSQfXttT77TbUqnzNAFsztEu110UbVqc/iHRF3E+sn35XjGg==
X-Received: by 2002:a05:622a:590:: with SMTP id
 c16mr13364628qtb.120.1633101150695; 
 Fri, 01 Oct 2021 08:12:30 -0700 (PDT)
Received: from localhost ([167.100.64.199])
 by smtp.gmail.com with ESMTPSA id i11sm2877064qki.28.2021.10.01.08.12.30
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 01 Oct 2021 08:12:30 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 freedreno@lists.freedesktop.org
Cc: swboyd@chromium.org, jani.nikula@linux.intel.com,
 Sean Paul <seanpaul@chromium.org>, Rob Clark <robdclark@gmail.com>,
 Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org
Date: Fri,  1 Oct 2021 11:11:38 -0400
Message-Id: <20211001151145.55916-10-sean@poorly.run>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20211001151145.55916-1-sean@poorly.run>
References: <20211001151145.55916-1-sean@poorly.run>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 09/14] drm/msm/dpu: Remove useless checks in
 dpu_encoder
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

From: Sean Paul <seanpaul@chromium.org>

A couple more useless checks to remove in dpu_encoder.

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
Link: https://patchwork.freedesktop.org/patch/msgid/20210913175747.47456-10-sean@poorly.run #v1
Link: https://patchwork.freedesktop.org/patch/msgid/20210915203834.1439-10-sean@poorly.run #v2

Changes in v2:
-None
Changes in v3:
-None
---
 drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c
index 0e9d3fa1544b..984f8a59cb73 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c
@@ -1153,10 +1153,6 @@ static void dpu_encoder_virt_enable(struct drm_encoder *drm_enc)
 	struct msm_drm_private *priv;
 	struct drm_display_mode *cur_mode = NULL;
 
-	if (!drm_enc) {
-		DPU_ERROR("invalid encoder\n");
-		return;
-	}
 	dpu_enc = to_dpu_encoder_virt(drm_enc);
 
 	mutex_lock(&dpu_enc->enc_lock);
@@ -1203,14 +1199,6 @@ static void dpu_encoder_virt_disable(struct drm_encoder *drm_enc)
 	struct msm_drm_private *priv;
 	int i = 0;
 
-	if (!drm_enc) {
-		DPU_ERROR("invalid encoder\n");
-		return;
-	} else if (!drm_enc->dev) {
-		DPU_ERROR("invalid dev\n");
-		return;
-	}
-
 	dpu_enc = to_dpu_encoder_virt(drm_enc);
 	DPU_DEBUG_ENC(dpu_enc, "\n");
 
-- 
Sean Paul, Software Engineer, Google / Chromium OS

