Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 75B0D4FC616
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Apr 2022 22:48:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C23D710E03D;
	Mon, 11 Apr 2022 20:48:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x730.google.com (mail-qk1-x730.google.com
 [IPv6:2607:f8b0:4864:20::730])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9228F10F5E2
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Apr 2022 20:48:17 +0000 (UTC)
Received: by mail-qk1-x730.google.com with SMTP id bk12so12182901qkb.7
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Apr 2022 13:48:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xKkrxn7/TA2aH/NQI9n+e2xyIangtOMEVBeumaLbQto=;
 b=GFSq6lwTfjWqo4FL8z/BHp+AO4ZcJ6lHL//8uQ2Y63yxDckCdx/+lmaUYHHNmxC+pz
 yWypJqx26ahvs9TvQdudg9zvKu+h8pgZXY5njdB016eyFbU+MqMgxwehuI/0OTvk4i4w
 NoxTImgAki5j/eg2eni8AuEcbxfDPIhr4BXuyh776/72LfFPpCJdocBuj2b9E040HeBJ
 XqewFtTXkxNdFI7vYf+BKfaPuDOTfNm/7Xe0JNas/BuolAh3F0MjSk51hb4tYs6N2aov
 0ZT1fhtoybHpPWi5z3y5dAO0fzMIiMbshhOtaR4fQcWuWFhzbTXVi2c6g4+keDsVp0CF
 F8/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xKkrxn7/TA2aH/NQI9n+e2xyIangtOMEVBeumaLbQto=;
 b=ATZDtTm/aT99q+v/+EmDeGQz76M8haudSG9sx1p2039C8/6uV45OTfawBTA2HH3oPD
 BI8MbortR+TQw7k+qyLPYzJi4IEu2ap05G9W5JPKyUzfGQbaRj9UBYR9pl9OuY+yrqpj
 /ng3hwdypcNhwuaYRu8tbtukm7yG8ix9SOW/4QwWDxqemWzIutwKI6HYZtvpLvpvAlGZ
 W3QmK3n//1S7gevz48wmViRLWW6a+SeGfoCelm/hYi8cePCk/ZJaIxvWFW9/0lnqsoRf
 Pt7ELUM/lzizEaNpWYyrjOOj9M6LDrYVd4I/n725IIyhsuQn/wMi1lg12HbesE3NmTuQ
 i3qg==
X-Gm-Message-State: AOAM5326jSk9Y/Krv1St90bwXuUv0CRrd245LDpDS8vmObbYk5JkhnQg
 O/vuOou9xWf6GbIgEDIJxIMx8Q==
X-Google-Smtp-Source: ABdhPJzPlnExFPQQSKFUvFzaTFxs+3y/uxIcaS25oVe1N+/BEyMX0isdcQkTQOw36JFID922RO635g==
X-Received: by 2002:a05:620a:148:b0:69b:ef8f:4798 with SMTP id
 e8-20020a05620a014800b0069bef8f4798mr916442qkn.566.1649710096730; 
 Mon, 11 Apr 2022 13:48:16 -0700 (PDT)
Received: from localhost (115.25.199.35.bc.googleusercontent.com.
 [35.199.25.115]) by smtp.gmail.com with ESMTPSA id
 h12-20020a05622a170c00b002efa6a81386sm1305022qtk.91.2022.04.11.13.48.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Apr 2022 13:48:16 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org, jani.nikula@intel.com,
 intel-gfx@lists.freedesktop.org, freedreno@lists.freedesktop.org,
 rodrigo.vivi@intel.com
Date: Mon, 11 Apr 2022 20:47:37 +0000
Message-Id: <20220411204741.1074308-9-sean@poorly.run>
X-Mailer: git-send-email 2.35.1.1178.g4f1659d476-goog
In-Reply-To: <20220411204741.1074308-1-sean@poorly.run>
References: <20220411204741.1074308-1-sean@poorly.run>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 08/10] dt-bindings: msm/dp: Add bindings for
 HDCP registers
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
Cc: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, markyacoub@chromium.org,
 Abhinav Kumar <quic_abhinavk@quicinc.com>, abhinavk@codeaurora.org,
 swboyd@chromium.org, Kuogee Hsieh <khsieh@codeaurora.org>,
 Rob Herring <robh+dt@kernel.org>, Sean Paul <seanpaul@chromium.org>,
 linux-arm-msm@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 bjorn.andersson@linaro.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Sean Paul <seanpaul@chromium.org>

This patch adds the bindings for the MSM DisplayPort HDCP registers
which are required to write the HDCP key into the display controller as
well as the registers to enable HDCP authentication/key
exchange/encryption.

We'll use a new compatible string for this since the fields are optional.

Cc: Rob Herring <robh@kernel.org>
Cc: Stephen Boyd <swboyd@chromium.org>
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
Link: https://patchwork.freedesktop.org/patch/msgid/20210913175747.47456-13-sean@poorly.run #v1
Link: https://patchwork.freedesktop.org/patch/msgid/20210915203834.1439-13-sean@poorly.run #v2
Link: https://patchwork.freedesktop.org/patch/msgid/20211001151145.55916-13-sean@poorly.run #v3
Link: https://patchwork.freedesktop.org/patch/msgid/20211105030434.2828845-13-sean@poorly.run #v4
Link: https://patchwork.freedesktop.org/patch/msgid/20211115202153.117244-1-sean@poorly.run #v4.5

Changes in v2:
-Drop register range names (Stephen)
-Fix yaml errors (Rob)
Changes in v3:
-Add new compatible string for dp-hdcp
-Add descriptions to reg
-Add minItems/maxItems to reg
-Make reg depend on the new hdcp compatible string
Changes in v4:
-Rebase on Bjorn's multi-dp patchset
Changes in v4.5:
-Remove maxItems from reg (Rob)
-Remove leading zeros in example (Rob)
Changes in v5:
-None
---
 .../devicetree/bindings/display/msm/dp-controller.yaml     | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index cd05cfd76536..671d50f1f458 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -24,12 +24,15 @@ properties:
       - qcom,sm8350-dp
 
   reg:
+    minItems: 5
     items:
       - description: ahb register block
       - description: aux register block
       - description: link register block
       - description: p0 register block
       - description: p1 register block
+      - description: (Optional) Registers for HDCP device key injection
+      - description: (Optional) Registers for HDCP TrustZone interaction
 
   interrupts:
     maxItems: 1
@@ -113,7 +116,9 @@ examples:
               <0xae90200 0x200>,
               <0xae90400 0xc00>,
               <0xae91000 0x400>,
-              <0xae91400 0x400>;
+              <0xae91400 0x400>,
+              <0xaed1000 0x174>,
+              <0xaee1000 0x2c>;
         interrupt-parent = <&mdss>;
         interrupts = <12>;
         clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
-- 
Sean Paul, Software Engineer, Google / Chromium OS

