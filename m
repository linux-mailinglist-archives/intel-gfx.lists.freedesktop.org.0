Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2958E41F0DB
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Oct 2021 17:12:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F4B56EE42;
	Fri,  1 Oct 2021 15:12:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x72e.google.com (mail-qk1-x72e.google.com
 [IPv6:2607:f8b0:4864:20::72e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1231F6EE41
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Oct 2021 15:12:40 +0000 (UTC)
Received: by mail-qk1-x72e.google.com with SMTP id 73so9441047qki.4
 for <intel-gfx@lists.freedesktop.org>; Fri, 01 Oct 2021 08:12:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1JK+qFUiwYEt4EG3Izi4lkTF9eNwxVf2HfUhjtHyP+I=;
 b=a7GYpaY8HtdoFdhDknXiC2DG5VjgIZoLNTwJcrsfE3yIMKvbRXjpTBK/mgs1jBSJbP
 x4T2hgkMZ8Qq78jOYKNkekmADRez1XhJfIPoqe7vZ3jeu+9bKp5U5hxp3RsBuvi5ZGjk
 KrP6A2+zEEbAL0yc0YgJeo+KStYgt46UHy8zrwVmQ21FWk/4D52EGtgXJSdiw6mydHSQ
 H8nekpe3OCHGZP78jGUTRvG0Ukt09Z11Oa7sAxRQ1wsGKqpkCmg9rNd7XIF+u7pZMtkh
 LEVUAINzwdBTB/ojEV2Oq7m9mWeOByYgZdigwotytlH4UoQ3EAn3t/NevxV9aAGxj4we
 UHNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1JK+qFUiwYEt4EG3Izi4lkTF9eNwxVf2HfUhjtHyP+I=;
 b=w63iNMs8ruNOFuajxhQBNXh7GJjKDHa2vY+eEypTvPrQ7xvqMdSqIXEh0CZ1blXbrG
 2nSvdPobFZ+4K/9JG8CAeJvqgA9QrB9IosQtgJyU9nNCn+KVUe58JFIWtWM6/HQ6V/W0
 sc+tK3YZyX9VntgIauuQ/hehIBiKrV3BqL5Y5Nyr7LF+G66N4LdtdEh8P1T8uT+WcT8j
 CrvJJqsck+HvquOMX33iAX+i3+9FkzBAjKlbpkPpjdb3Eu87OTcGx2mzJjSQlZ8gx144
 petHlDoC662vSs7+gc5KAyoLWGg/SaKfGWl+N3ugSN/YEnp76zUEsvfZ14bsWPMTaSrH
 AQvQ==
X-Gm-Message-State: AOAM531z7BHcxGRXWtmTNw7QWTcGG53e1Vd2tifAmdr5svhOmr1jK+Nr
 6o/T6GBgTa4MYEH0SNGbU3P5woPjZ0V2bw==
X-Google-Smtp-Source: ABdhPJz/BKi1zA6FTLxvhBBBeUOMOTAUTSwjrWe0fjrFIXANNQdOuM1mPEu+zk1I2WI33nirpxWEKg==
X-Received: by 2002:a37:41ca:: with SMTP id
 o193mr10288797qka.187.1633101160092; 
 Fri, 01 Oct 2021 08:12:40 -0700 (PDT)
Received: from localhost ([167.100.64.199])
 by smtp.gmail.com with ESMTPSA id n11sm3667110qtk.92.2021.10.01.08.12.39
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 01 Oct 2021 08:12:39 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 freedreno@lists.freedesktop.org
Cc: swboyd@chromium.org, jani.nikula@linux.intel.com,
 Sean Paul <seanpaul@chromium.org>, Abhinav Kumar <abhinavk@codeaurora.org>,
 Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-msm@vger.kernel.org
Date: Fri,  1 Oct 2021 11:11:40 -0400
Message-Id: <20211001151145.55916-12-sean@poorly.run>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20211001151145.55916-1-sean@poorly.run>
References: <20211001151145.55916-1-sean@poorly.run>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 11/14] drm/msm/dp: Re-order dp_audio_put in
 deinit_sub_modules
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

Audio is initialized last, it should be de-initialized first to match
the order in dp_init_sub_modules().

Reviewed-by: Abhinav Kumar <abhinavk@codeaurora.org>
Reviewed-by: Stephen Boyd <swboyd@chromium.org>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
Link: https://patchwork.freedesktop.org/patch/msgid/20210913175747.47456-12-sean@poorly.run #v1
Link: https://patchwork.freedesktop.org/patch/msgid/20210915203834.1439-12-sean@poorly.run #v2

Changes in v2:
-None
---
 drivers/gpu/drm/msm/dp/dp_display.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
index fbe4c2cd52a3..19946024e235 100644
--- a/drivers/gpu/drm/msm/dp/dp_display.c
+++ b/drivers/gpu/drm/msm/dp/dp_display.c
@@ -714,9 +714,9 @@ static int dp_irq_hpd_handle(struct dp_display_private *dp, u32 data)
 static void dp_display_deinit_sub_modules(struct dp_display_private *dp)
 {
 	dp_debug_put(dp->debug);
+	dp_audio_put(dp->audio);
 	dp_panel_put(dp->panel);
 	dp_aux_put(dp->aux);
-	dp_audio_put(dp->audio);
 }
 
 static int dp_init_sub_modules(struct dp_display_private *dp)
-- 
Sean Paul, Software Engineer, Google / Chromium OS

