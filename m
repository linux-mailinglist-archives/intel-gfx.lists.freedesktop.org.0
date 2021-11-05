Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEA66445E52
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Nov 2021 04:05:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 420836E58E;
	Fri,  5 Nov 2021 03:05:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x72f.google.com (mail-qk1-x72f.google.com
 [IPv6:2607:f8b0:4864:20::72f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BA276E593
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Nov 2021 03:05:25 +0000 (UTC)
Received: by mail-qk1-x72f.google.com with SMTP id p138so1184757qke.10
 for <intel-gfx@lists.freedesktop.org>; Thu, 04 Nov 2021 20:05:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Xv7HG/Q+S/fL5JaTuonxECkNCYcwf+YUpIYNlE1OLuA=;
 b=G0mnld0dMm0VxznH8Ud5Dg05i6jsVWo3+IaaczBhvKR6gHY7wCpK8tSO7uGIInKHVe
 HOJsIx6IEPcx8Dq2No9Ya3LHXW3FYZ6k68YbPbKdwD/4GR44GQmpiVJR6kU6cgFgnUPe
 E+UKZvmj4QoHwE5VbnPjOTaHqWp8ORsKnjL83f7PSh9S8EROPZuW8UMwXu9Eaqgohd4N
 0TC4rakOzWnT9GhZ3nmkzXJQGZegSjliC0ifXn6Aru6lsUHlfyYHjmi69Ws5zWH8vC3l
 AUCmSDtu6udS13HZ+N/JC4K4jV2kdJmQt0aiq5zdXRMoMiTPDNQd1jb6/BPXnW0JwHmM
 JuUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Xv7HG/Q+S/fL5JaTuonxECkNCYcwf+YUpIYNlE1OLuA=;
 b=dii1RqDFqIzQ5V6YsnvPJcAuwzyI+hqyOCfML2idIrYCTLu4Q2dfWHLdRqPTXXQqw0
 md8h1oH1v/mILLD5AIy66qMK1wUYrbp8mOaLyaSpg3/HoxpHMd/hzEhuAQTaADofdwDE
 IKxnZ2h04J+oykXlF2t6ttrE/jCTnfCkRQfJOOM8Rs+FrHHMEhjAi5EkN74kFmSVncTX
 vBj1R3lw1fVXYJHPrdm3/jniVHx42YQLvCi4upH/q5dENmehsGUzJNfJY29mbzWyOp/z
 awWYnksSxi9I9Z5y7FgWA4FIM6oJrAD+UjdhVRMfNwMXw41JMqAyNQhbGyCH9cD0Cukv
 HaZA==
X-Gm-Message-State: AOAM530SKDz62haNBTJTH+g46G7ZwgLVUOs8QVZg04dyEc4E6iUKA3XB
 UqwvEQJkHCKVjj6AmtcdcHK/BqEkjF8FRw==
X-Google-Smtp-Source: ABdhPJygzG95k4Zn6GZwVmYDW+120k0m+f9VXzNWsZgmBSDaREhsbJgYBcWCqYqOZQVrTTNxxcr6Pw==
X-Received: by 2002:a05:620a:20d9:: with SMTP id
 f25mr12159152qka.54.1636081524408; 
 Thu, 04 Nov 2021 20:05:24 -0700 (PDT)
Received: from localhost ([167.100.64.199])
 by smtp.gmail.com with ESMTPSA id bq30sm5052740qkb.6.2021.11.04.20.05.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Nov 2021 20:05:24 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 freedreno@lists.freedesktop.org
Date: Thu,  4 Nov 2021 23:04:26 -0400
Message-Id: <20211105030434.2828845-10-sean@poorly.run>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211105030434.2828845-1-sean@poorly.run>
References: <20211105030434.2828845-1-sean@poorly.run>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 09/14] drm/msm/dpu: Remove useless checks in
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
Cc: jani.nikula@intel.com, linux-arm-msm@vger.kernel.org,
 abhinavk@codeaurora.org, swboyd@chromium.org, David Airlie <airlied@linux.ie>,
 Sean Paul <seanpaul@chromium.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, bjorn.andersson@linaro.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Sean Paul <seanpaul@chromium.org>

A couple more useless checks to remove in dpu_encoder.

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
Reviewed-by: Abhinav Kumar <abhinavk@codeaurora.org>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
Link: https://patchwork.freedesktop.org/patch/msgid/20210913175747.47456-10-sean@poorly.run #v1
Link: https://patchwork.freedesktop.org/patch/msgid/20210915203834.1439-10-sean@poorly.run #v2
Link: https://patchwork.freedesktop.org/patch/msgid/20211001151145.55916-10-sean@poorly.run #v3

Changes in v2:
-None
Changes in v3:
-None
Changes in v4:
-None
---
 drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c
index e7ee4cfb8461..cc57c615be67 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c
@@ -1148,10 +1148,6 @@ static void dpu_encoder_virt_enable(struct drm_encoder *drm_enc)
 	struct msm_drm_private *priv;
 	struct drm_display_mode *cur_mode = NULL;
 
-	if (!drm_enc) {
-		DPU_ERROR("invalid encoder\n");
-		return;
-	}
 	dpu_enc = to_dpu_encoder_virt(drm_enc);
 
 	mutex_lock(&dpu_enc->enc_lock);
@@ -1197,14 +1193,6 @@ static void dpu_encoder_virt_disable(struct drm_encoder *drm_enc)
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

