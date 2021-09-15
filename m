Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 46C4140CE3D
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Sep 2021 22:39:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 463726EA4C;
	Wed, 15 Sep 2021 20:39:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x835.google.com (mail-qt1-x835.google.com
 [IPv6:2607:f8b0:4864:20::835])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA28C6EA49
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Sep 2021 20:39:26 +0000 (UTC)
Received: by mail-qt1-x835.google.com with SMTP id u21so3603871qtw.8
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Sep 2021 13:39:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=H84Fn7lFm82mhboBfZaDXvDO8OLx8vAai5mm15LtSck=;
 b=bxm40dBSdOV7+C8Kfmn1Pk+lmphP2jUaGJRdaCyHMS7ZSEsx5MyqJ0D+U7KjzIKbut
 MDIVwqLFf7zFNKMKiOCOqUUKALYNFpvKrjvfaL6PXKdzNT+ID+4zwbkgqncjTu9qA+SR
 0Biug/cYOSi137T2BNb2F5AZTum3lFK2iKb5cQB5EwM3a9GSsuaqrWWex4KLmjipgNQN
 VQWUx3eid1VLsZX7FYG9cXYzvtR4KaKciBKRt213SsMm9abrS+rkS/yTJWrWHJqPDyDF
 eUiMpnp1zKqkJxzUn9wz88tRSx4YGupJSarCLxloSCxsHA0N9O83N/IoPf9QWDsnnRZ6
 yhIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=H84Fn7lFm82mhboBfZaDXvDO8OLx8vAai5mm15LtSck=;
 b=PXZru2PAsVFz+JrqmwP2Tl5Gog9G8GnBUI0JwoqW4ha5RAwKcov46pncOaKtG2Mnq+
 sfHLE9fvDKSyZ3Fqp8Ga9XvMLA++J0e3PleTGsEBYI/94Gtq1xmSf6QPl68eNwvvOZVo
 aunK/3DxuSUExQdB0C+XHDzy2Nm0daISI/6TGtm/dVhEAPRo5YrW3o+A4Uy2/Y8VA6eE
 NTogLIx3TE/i5PeEHPF/a2VpcM39QYRLmVu92QWNzNfW/axWLuHfPCy+HpKUSLqu+xDI
 7OL0QFQBXjVi8I+ZX2m90TjUflZ+WtLdk/o+Fd0P21QHgqLtogpVGZNzlwB2InF7GWBJ
 2Maw==
X-Gm-Message-State: AOAM532MhhDP69P9DwMCWeeFFyACY15vIO9YFHyjqh6yM7NfxUcPsQ0T
 odHlPD2fsN9TJGuSRD67pfIUOg==
X-Google-Smtp-Source: ABdhPJyWd5G4I5a96EWMQ6pxXfznktirs46o5eNFcUrBk10T1Nr90SW76/dra1hpl3hbJwyooyMGaA==
X-Received: by 2002:ac8:7dc6:: with SMTP id c6mr1759681qte.25.1631738366022;
 Wed, 15 Sep 2021 13:39:26 -0700 (PDT)
Received: from localhost ([167.100.64.199])
 by smtp.gmail.com with ESMTPSA id a22sm739849qtd.56.2021.09.15.13.39.25
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 15 Sep 2021 13:39:25 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 freedreno@lists.freedesktop.org
Cc: swboyd@chromium.org, Sean Paul <seanpaul@chromium.org>,
 Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-msm@vger.kernel.org
Date: Wed, 15 Sep 2021 16:38:28 -0400
Message-Id: <20210915203834.1439-10-sean@poorly.run>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210915203834.1439-1-sean@poorly.run>
References: <20210915203834.1439-1-sean@poorly.run>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 09/13] drm/msm/dpu: Remove useless checks in
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
Link: https://patchwork.freedesktop.org/patch/msgid/20210913175747.47456-10-sean@poorly.run #v1

Changes in v2:
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

