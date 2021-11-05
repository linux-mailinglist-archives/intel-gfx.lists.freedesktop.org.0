Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 01529445E58
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Nov 2021 04:05:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC7FF6E5B2;
	Fri,  5 Nov 2021 03:05:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x832.google.com (mail-qt1-x832.google.com
 [IPv6:2607:f8b0:4864:20::832])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFEC06E5B2
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Nov 2021 03:05:32 +0000 (UTC)
Received: by mail-qt1-x832.google.com with SMTP id w4so5017494qtn.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 04 Nov 2021 20:05:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bBrM+10zUcr3Crlf+G77umSyOcr8vD3ZBHHHl7sVh1w=;
 b=AQFSE8l1TBEBpLSWYnXisexuUBd6hoFKen+aTDo8uIgbktzBs1PbYkcuVxA0mBcxP5
 Xfi71e9EIY/cEQtmedKdFbymtILy705bjgXBs/vuLkkDQNquj2REbP6m/BrL3hqWbMxc
 yzCv0Mv3CdQwFUf6XBTFQSOIlHk1tbi6q2XDTnhnIFwTFRigZeLyZ2hxDDMa17YIkd3J
 UEYePZ8lXreVohVj8zPpejAdqBA+vT51P4KFFFGEk891uV5UHwXIpOwLEU1l0Csw3S59
 M93Nnb464SaJJFV6yWa5kocTNhE92nKvOK8BMlGmMmyONUBuwjgJya4xFLO2rdPzBs6D
 Gauw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bBrM+10zUcr3Crlf+G77umSyOcr8vD3ZBHHHl7sVh1w=;
 b=BMA+ZL/88cIH1ac9xfRFdmTCEyxNRWLI+UP8rzREPpkLBpZlBVYN2hTs7dpWwTS7Jf
 tJkw8gHKgQJy210y//Mir6hrckETt486MSUxVv0hUaRnE2REjmgb2A+YSEvmEenU34q2
 PJF8pFJVKu24K/T71ZUgYcQjXFJYVvsonI7yRLyRYcYjBtRjEZWV1wXsTcPynFpZlBJo
 ejdYREggueaOEt4WjYNQ+gUNfK106+UO81OFGTg+ZrygXPJpEYADDRduCsgm8Xw84/Jl
 v5sKoLr9SmLOUa5VlZ+rI5pFlf5V5V6M8WpL0kAwpTf7aczwAXNBxYYXjyc04wXtH29c
 szdw==
X-Gm-Message-State: AOAM530/6Y6Gp8wtJ8BIgdOp556vJhPujtLDlImEW1bp101KlD+kwyQb
 BZdryrPSgy7esMXtQTvMc/R9XQ==
X-Google-Smtp-Source: ABdhPJyEdR52cxyX3J9bQK6t2hPtZmtUmF0WR8nW0o5wVdFAPNLEf5ivgXOnvuKUZNe67k1wbYCtgg==
X-Received: by 2002:a05:622a:104:: with SMTP id
 u4mr57017431qtw.143.1636081531844; 
 Thu, 04 Nov 2021 20:05:31 -0700 (PDT)
Received: from localhost ([167.100.64.199])
 by smtp.gmail.com with ESMTPSA id d3sm5398434qte.4.2021.11.04.20.05.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Nov 2021 20:05:31 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 freedreno@lists.freedesktop.org
Date: Thu,  4 Nov 2021 23:04:28 -0400
Message-Id: <20211105030434.2828845-12-sean@poorly.run>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211105030434.2828845-1-sean@poorly.run>
References: <20211105030434.2828845-1-sean@poorly.run>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 11/14] drm/msm/dp: Re-order dp_audio_put in
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
Cc: jani.nikula@intel.com, linux-arm-msm@vger.kernel.org,
 abhinavk@codeaurora.org, swboyd@chromium.org, David Airlie <airlied@linux.ie>,
 Sean Paul <seanpaul@chromium.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, bjorn.andersson@linaro.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Sean Paul <seanpaul@chromium.org>

Audio is initialized last, it should be de-initialized first to match
the order in dp_init_sub_modules().

Reviewed-by: Abhinav Kumar <abhinavk@codeaurora.org>
Reviewed-by: Stephen Boyd <swboyd@chromium.org>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
Link: https://patchwork.freedesktop.org/patch/msgid/20210913175747.47456-12-sean@poorly.run #v1
Link: https://patchwork.freedesktop.org/patch/msgid/20210915203834.1439-12-sean@poorly.run #v2
Link: https://patchwork.freedesktop.org/patch/msgid/20211001151145.55916-12-sean@poorly.run #v3

Changes in v2:
-None
Changes in v3:
-None
Changes in v4:
-None
---
 drivers/gpu/drm/msm/dp/dp_display.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
index aba8aa47ed76..79412a8fbaff 100644
--- a/drivers/gpu/drm/msm/dp/dp_display.c
+++ b/drivers/gpu/drm/msm/dp/dp_display.c
@@ -707,9 +707,9 @@ static int dp_irq_hpd_handle(struct dp_display_private *dp, u32 data)
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

