Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BBD6409B7D
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Sep 2021 19:58:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA3E26ECF2;
	Mon, 13 Sep 2021 17:58:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x72d.google.com (mail-qk1-x72d.google.com
 [IPv6:2607:f8b0:4864:20::72d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 401416ECE7
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Sep 2021 17:58:35 +0000 (UTC)
Received: by mail-qk1-x72d.google.com with SMTP id t190so11519749qke.7
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Sep 2021 10:58:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=M+6WaFPuJNdulE2a71MWNvhB4HPvAyDmtnLHBKmekCU=;
 b=PKMyuyd9+YkMiZsAsexpW3DBB1F7oyi/nm4F/w7UslRR542ivJ5iyxBN+WbK56b7mo
 LQ67aEy5Vx2EQZr877k1fxvFMSikgFMlYqLwLZJV3q9iC0RPq4zGvjBGjLuWKaDj8D7i
 wfsi///GS5B+pNWTH+JB5XFmDuMlpk6vMDQ+bnpIDj3ay47Mf7pz3K+ovl9IBedLuinV
 qJZEP47RH9/V91WEdeDSR5/KxkvZwrd+VhZkL9ubhg8xxyBu5ggwhBlyykt+42VnirI0
 jIa28TMnbWzrrCc7nnj1Q2J79i3U9I7+bO6Eh78elFVSNGF+3nOI3bM3CgSxm/7hd9Xi
 GERw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=M+6WaFPuJNdulE2a71MWNvhB4HPvAyDmtnLHBKmekCU=;
 b=AL21ty0Gi3851bAUr+yV+1xdQjJhLkzYMh/fIcFgHBXu1bCFKP876vCFz98xJ7T/iv
 YdPxHJCW9VsJ8xwMkGMRGVk0brptxScW2gT3Uamv3fPFzW9MYkx1V0GCROE+UUCNn7r2
 qHI7AwkUTCERHWKgrz83Y+3Xc1eiDPQciPiqiYR3I2BddzRPfR6+x0UbGJGDzsLNxBAy
 irk2PQQzt1yaGzxAFz22lzFQ6XqHs1GZUketUhU2wUKn90FndPzCAfs9yC6ESQp2sFuK
 qGm7mU5O5R2Lm3yUcH5kXy8NV4zCixhyIZREN+otCGH/GfFnLBfwxdkfhhqME8QD0/Nj
 XgGg==
X-Gm-Message-State: AOAM532XA5Tb/8Bqlaqd2nkeUXhPlqJTQN95idLA5mhp7c9Lx6PnBQrI
 NVhVNl9OMh/zuZigoqV+KBMo9w==
X-Google-Smtp-Source: ABdhPJwl+Td2WMm8W4F3OofmEcObzvIvucw3dtD/kh41IeSvVHSFPiXgVUnsjCdQKbfmKKO+iNP+8A==
X-Received: by 2002:ae9:ef96:: with SMTP id d144mr870327qkg.9.1631555914473;
 Mon, 13 Sep 2021 10:58:34 -0700 (PDT)
Received: from localhost ([167.100.64.199])
 by smtp.gmail.com with ESMTPSA id p123sm5989677qke.94.2021.09.13.10.58.34
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 Sep 2021 10:58:34 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 freedreno@lists.freedesktop.org
Cc: Sean Paul <seanpaul@chromium.org>, Rob Clark <robdclark@gmail.com>,
 Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org
Date: Mon, 13 Sep 2021 13:57:40 -0400
Message-Id: <20210913175747.47456-10-sean@poorly.run>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210913175747.47456-1-sean@poorly.run>
References: <20210913175747.47456-1-sean@poorly.run>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/14] drm/msm/dpu: Remove useless checks in
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

Signed-off-by: Sean Paul <seanpaul@chromium.org>
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

