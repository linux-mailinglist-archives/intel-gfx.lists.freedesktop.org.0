Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ECEA445E55
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Nov 2021 04:05:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 637FD6E5A4;
	Fri,  5 Nov 2021 03:05:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x834.google.com (mail-qt1-x834.google.com
 [IPv6:2607:f8b0:4864:20::834])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F6D16E593
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Nov 2021 03:05:29 +0000 (UTC)
Received: by mail-qt1-x834.google.com with SMTP id v4so6088692qtw.8
 for <intel-gfx@lists.freedesktop.org>; Thu, 04 Nov 2021 20:05:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+3ugBOYcbRrxn02BJ9HDCx1lBl2Teb0GyaTXL+TLkUI=;
 b=ApG59ftji/cVIFeWMqsaF+tXugcQlCmkU1H3zF/604gHSggXGfhEoQZEUY2Reb/zZs
 kpKl8LdFV52sd/HQIuPX4AZhuWomDvjkod5gY390Cf4yI3GefErhyaP7XXSnozd9w0ZT
 gz/yecx4YzTHojy98kDwEJl7zMzDAvtazvN77x95SWKp+V8GQtPycx+DRNsPloM4oszj
 9Wi2WMOf04/1mQAZJZT8bpYdFLrw0Pxtwo1X46kO5LkvLQPXdvq+OU06RzpvZaLIT6Jd
 ZuYEzBWrk78sOeSLXydcnMtbdz8f1EIwksK07r5j6hqhSOBgI3Y1scLBrEpc9bmrW856
 LhZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+3ugBOYcbRrxn02BJ9HDCx1lBl2Teb0GyaTXL+TLkUI=;
 b=uZ4v6tSgNR/VS9fcD5LP29WwP+2llire8/3Xhc8AFeSIJQ/eH7T+zHuvGJ5XIaJMNh
 3sipXztlb6sHAUk8xjsgsz20DdnSUal4G5brgGr4/h7eE3Pk+QAGj7bjLUo40vfoHu3x
 L9fsNXv2QFe56k2aeXbmIu4prRDh2awVLkYvMHrH5hPkOVH5N40MEOFmoMYAH8YQY8Ex
 Z6mxLPIYYuvEgVo4dh3zaotVrumqzcpTS2nOfjuVK4+WD/ts5RrYWLxyVXeNLWBI8/K8
 wqq5XXa3tuD7YdTQtDPeDQoDModzgxXZ8vFi2dlyGozcygMmNCHLA65lMr2mI44Vz+TX
 ccXw==
X-Gm-Message-State: AOAM532B6fH8hwyiK3ICQoUS7XbgJ+NjtmZneZY1i+3btEb3ezB9OG9v
 everxYEY7obd02A6IAxAaFwLNg==
X-Google-Smtp-Source: ABdhPJwdJeCJJNL9loMWr6ydnK7uoETuHV3PoO/HJYuXooF2s50O1DGFlXiPp1+s8duIwtGzcABiKw==
X-Received: by 2002:ac8:7f51:: with SMTP id g17mr10673336qtk.239.1636081528277; 
 Thu, 04 Nov 2021 20:05:28 -0700 (PDT)
Received: from localhost ([167.100.64.199])
 by smtp.gmail.com with ESMTPSA id de26sm2782366qkb.81.2021.11.04.20.05.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Nov 2021 20:05:27 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 freedreno@lists.freedesktop.org
Date: Thu,  4 Nov 2021 23:04:27 -0400
Message-Id: <20211105030434.2828845-11-sean@poorly.run>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211105030434.2828845-1-sean@poorly.run>
References: <20211105030434.2828845-1-sean@poorly.run>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 10/14] drm/msm/dpu: Remove encoder->enable()
 hack
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

encoder->commit() was being misused because there were some global
resources which needed to be tweaked in encoder->enable() which were not
accessible in dpu_encoder.c. That is no longer true and the redirect
serves no purpose any longer. So remove the indirection.

Tested-by: Stephen Boyd <swboyd@chromium.org>
Reviewed-by: Stephen Boyd <swboyd@chromium.org>
Reviewed-by: Abhinav Kumar <abhinavk@codeaurora.org>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
Link: https://patchwork.freedesktop.org/patch/msgid/20210913175747.47456-11-sean@poorly.run #v1
Link: https://patchwork.freedesktop.org/patch/msgid/20210915203834.1439-11-sean@poorly.run #v2
Link: https://patchwork.freedesktop.org/patch/msgid/20211001151145.55916-11-sean@poorly.run #v3

Changes in v2:
-None
Changes in v3:
-None
Changes in v4:
-None
---
 drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c |  5 +----
 drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c     | 22 ---------------------
 drivers/gpu/drm/msm/disp/dpu1/dpu_kms.h     |  2 --
 drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h   |  4 ----
 4 files changed, 1 insertion(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c
index cc57c615be67..c83bfda6a1ee 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c
@@ -2116,11 +2116,8 @@ static void dpu_encoder_frame_done_timeout(struct timer_list *t)
 static const struct drm_encoder_helper_funcs dpu_encoder_helper_funcs = {
 	.mode_set = dpu_encoder_virt_mode_set,
 	.disable = dpu_encoder_virt_disable,
-	.enable = dpu_kms_encoder_enable,
+	.enable = dpu_encoder_virt_enable,
 	.atomic_check = dpu_encoder_virt_atomic_check,
-
-	/* This is called by dpu_kms_encoder_enable */
-	.commit = dpu_encoder_virt_enable,
 };
 
 static const struct drm_encoder_funcs dpu_encoder_funcs = {
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c
index 66b7df7daa6a..891faf8d6e21 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c
@@ -384,28 +384,6 @@ static void dpu_kms_flush_commit(struct msm_kms *kms, unsigned crtc_mask)
 	}
 }
 
-/*
- * Override the encoder enable since we need to setup the inline rotator and do
- * some crtc magic before enabling any bridge that might be present.
- */
-void dpu_kms_encoder_enable(struct drm_encoder *encoder)
-{
-	const struct drm_encoder_helper_funcs *funcs = encoder->helper_private;
-	struct drm_device *dev = encoder->dev;
-	struct drm_crtc *crtc;
-
-	/* Forward this enable call to the commit hook */
-	if (funcs && funcs->commit)
-		funcs->commit(encoder);
-
-	drm_for_each_crtc(crtc, dev) {
-		if (!(crtc->state->encoder_mask & drm_encoder_mask(encoder)))
-			continue;
-
-		trace_dpu_kms_enc_enable(DRMID(crtc));
-	}
-}
-
 static void dpu_kms_complete_commit(struct msm_kms *kms, unsigned crtc_mask)
 {
 	struct dpu_kms *dpu_kms = to_dpu_kms(kms);
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.h b/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.h
index 775bcbda860f..0707b2cb43c8 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.h
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.h
@@ -235,8 +235,6 @@ void *dpu_debugfs_get_root(struct dpu_kms *dpu_kms);
 int dpu_enable_vblank(struct msm_kms *kms, struct drm_crtc *crtc);
 void dpu_disable_vblank(struct msm_kms *kms, struct drm_crtc *crtc);
 
-void dpu_kms_encoder_enable(struct drm_encoder *encoder);
-
 /**
  * dpu_kms_get_clk_rate() - get the clock rate
  * @dpu_kms:  pointer to dpu_kms structure
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h b/drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h
index 37bba57675a8..54d74341e690 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h
@@ -266,10 +266,6 @@ DEFINE_EVENT(dpu_drm_obj_template, dpu_crtc_complete_commit,
 	TP_PROTO(uint32_t drm_id),
 	TP_ARGS(drm_id)
 );
-DEFINE_EVENT(dpu_drm_obj_template, dpu_kms_enc_enable,
-	TP_PROTO(uint32_t drm_id),
-	TP_ARGS(drm_id)
-);
 DEFINE_EVENT(dpu_drm_obj_template, dpu_kms_commit,
 	TP_PROTO(uint32_t drm_id),
 	TP_ARGS(drm_id)
-- 
Sean Paul, Software Engineer, Google / Chromium OS

