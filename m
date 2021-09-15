Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9574B40CE45
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Sep 2021 22:39:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 669A76EA52;
	Wed, 15 Sep 2021 20:39:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x736.google.com (mail-qk1-x736.google.com
 [IPv6:2607:f8b0:4864:20::736])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35B216EA54
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Sep 2021 20:39:36 +0000 (UTC)
Received: by mail-qk1-x736.google.com with SMTP id a66so5019725qkc.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Sep 2021 13:39:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AsRbP5dRnDOL8jtDrD7xM4MsIESBG338M4ja0G3IYsM=;
 b=BI8eXII0oxt1Xos6KWyJ/4oNvSGLpwTttog3N8S0omjbe3IHD5twyGVXNe7kb3/guI
 PTuyHrXdIZwqWOydF+BDqpvv1wxQaUQ2ybJO4nctrmrnD+4ydTZZYKAZdzbhO7taVe5i
 VZ2ZdsKuoecX1ypc/Z1PVLzqB2cQZl7RqsQa51Ug8D0N2W+qqVye9NdvSokQUt6ohgcl
 iD+kTl/kaa0bq2k9EJ8XkBILOPt39EzK6+58ch6heKsR5Vj6Ox+HBrt9w/UQOIy7vACR
 gBFy/yUrdwoecUkNjDHESzlt+08wSbukaCDwqybAjVIq4rS/PMz8Sd6JqFKAdE2u5NO/
 /ZxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AsRbP5dRnDOL8jtDrD7xM4MsIESBG338M4ja0G3IYsM=;
 b=EBP8XkhbTMLwG9t1PkZTjTLNMRuP4rF9O+8fUYjm40xSpHA8WCb+SshqUj6CMGAKsY
 w4llQNiRt1dvju6Ps8PatMVmSKqcjZ43Mw5X72iSqnNd+I2Q1upi20bfOfa6D6rVX9k3
 B8lzMT0Ase43R5m6+OeDbdyLwAfAd8cHvui/Ni9AcFLhmlkGG4op9sbituXpZJVscdbB
 2fPknxMqdlv6XUkxZh0kBRhgxBauIzGMwliZ9lOi4e1j5MHHNRwAaxRJEcAsV5U7aO4R
 OVudVwH030jPuFgS9s10/RP9J6MYj8I5Tcr868gMVZsIClfkK/LLVjNnU9iRaigStQJc
 hs1g==
X-Gm-Message-State: AOAM530vPDJVvZwpHpc79SxRUjJd4ras1UQ5M4T3pqExSMA+m/tFtuTR
 OyPV7a/C2of34+1XFqZQ+R6WYw==
X-Google-Smtp-Source: ABdhPJwJTXgEXlT6pejzdXpiSt12aEvNmX8i6tGDb12BIX0/S0yUXdney4DYAFdCzgvDZGRYi7pjJQ==
X-Received: by 2002:a37:6317:: with SMTP id x23mr1900658qkb.432.1631738374963; 
 Wed, 15 Sep 2021 13:39:34 -0700 (PDT)
Received: from localhost ([167.100.64.199])
 by smtp.gmail.com with ESMTPSA id j2sm765678qtr.4.2021.09.15.13.39.34
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 15 Sep 2021 13:39:34 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 freedreno@lists.freedesktop.org
Cc: swboyd@chromium.org, Sean Paul <seanpaul@chromium.org>,
 Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-msm@vger.kernel.org
Date: Wed, 15 Sep 2021 16:38:30 -0400
Message-Id: <20210915203834.1439-12-sean@poorly.run>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210915203834.1439-1-sean@poorly.run>
References: <20210915203834.1439-1-sean@poorly.run>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 11/13] drm/msm/dp: Re-order dp_audio_put in
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
Link: https://patchwork.freedesktop.org/patch/msgid/20210913175747.47456-12-sean@poorly.run #v1

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

