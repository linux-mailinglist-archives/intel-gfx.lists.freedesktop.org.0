Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F8D409B8F
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Sep 2021 19:58:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55D916ECF6;
	Mon, 13 Sep 2021 17:58:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x732.google.com (mail-qk1-x732.google.com
 [IPv6:2607:f8b0:4864:20::732])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5770B6ECF4
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Sep 2021 17:58:43 +0000 (UTC)
Received: by mail-qk1-x732.google.com with SMTP id y144so11524484qkb.6
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Sep 2021 10:58:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5lJyWPQ/3+Xa5evtg9nYe6ccWuKsIvtWNw1YcJwpQdU=;
 b=Xr1Q5VlWqMOrRJGpm88EVkf81ekfN0id2HBb+gbilUvJ/UzjqmrcXin/oSnRTQhSFx
 89xx306m11zx5BW8YhhuFIU30ek7MZQkW5Ks2FrR4IcHkqtiCMjEMeHe4KadCKBXPx0L
 IhV0u7evV9Tvlzsx74UiU7dTDPJMRs5GUf8dC2P79Scrur9oB/GC/cFfqjcC+ajqK8cm
 tX5l4cqZUkkv5nY6ZC4nKlgTj2fOL95uezodFGSvILTLcHIJvwFgOf+3giB0jk54qRZw
 zEjGmWFVbVeg9ypwmqbagenhuXo+WOQKuhRfnY+ynvEyfbK6WrUCt0JpgNVoSbAQ5bCR
 QqrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5lJyWPQ/3+Xa5evtg9nYe6ccWuKsIvtWNw1YcJwpQdU=;
 b=s5KB3o3duHfvkSxFDcyxpzoJT63HSMbD9GVofhhueLZFyYK4p6Mxa5QJzYGXEaB6va
 LO0DjixVO7XEM1EhxEAfTj5IOF088X+kxBDo7YZapfPqDdk9NZYvSW+jW0t2LDNQ+w9/
 3t4eMPQsZbAK0EKItbLnJHMnsC32KMaWH4/WB8d4L8O15vvy0cF/pcNG3+VYlDDorUpJ
 283NR8Xn1aV/UqydOrRNT2zEmizZ+9qNkIj5yqnUgg1/K7DEvgmAeotEm8r0Kxb4c8sK
 /7tcWklEGXV4laNu2T34jmkb3mSm3uH3A9sriMmW/O85ad/uKTnCSAjY8W36eHW5naC1
 WGGg==
X-Gm-Message-State: AOAM531KpP7VmSWYdNm0uAFtZlHpOr1kuJ9HVDQeO7u5ppODM6ZXOJW/
 UePZcI8YW5gp/mwzaitgdJP72g==
X-Google-Smtp-Source: ABdhPJyj9+8POv3KXdcDALh9BjOuMmM6UpBZnrQNonh08bvRuIHEBH3SBlVEgxBetgmq4r9y2Knvkg==
X-Received: by 2002:a37:e301:: with SMTP id y1mr795704qki.475.1631555922254;
 Mon, 13 Sep 2021 10:58:42 -0700 (PDT)
Received: from localhost ([167.100.64.199])
 by smtp.gmail.com with ESMTPSA id j3sm5739505qki.104.2021.09.13.10.58.41
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 Sep 2021 10:58:42 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 freedreno@lists.freedesktop.org
Cc: Sean Paul <seanpaul@chromium.org>, Rob Clark <robdclark@gmail.com>,
 Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org
Date: Mon, 13 Sep 2021 13:57:42 -0400
Message-Id: <20210913175747.47456-12-sean@poorly.run>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210913175747.47456-1-sean@poorly.run>
References: <20210913175747.47456-1-sean@poorly.run>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/14] drm/msm/dp: Re-order dp_audio_put in
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

Signed-off-by: Sean Paul <seanpaul@chromium.org>
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

