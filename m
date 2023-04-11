Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F6336DE4D5
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Apr 2023 21:22:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 310F110E651;
	Tue, 11 Apr 2023 19:22:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-x112e.google.com (mail-yw1-x112e.google.com
 [IPv6:2607:f8b0:4864:20::112e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A950010E650
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Apr 2023 19:21:57 +0000 (UTC)
Received: by mail-yw1-x112e.google.com with SMTP id
 00721157ae682-54f64b29207so69054927b3.8
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Apr 2023 12:21:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1681240917; x=1683832917;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=S78ehGNcDXdB6PvXIQgj+BoJDjok2LjR/kDyIilwHqs=;
 b=Zcp4fx46FuwusWTIR+qP9EPW1du53rK+VLJZ8OKLx6vaBLemzbuKKUYHg1D/nYrq+I
 dly/PO9Girb4taDpFZUw/38ozkZK2i0GRP/LhO6r3XhjUE6M/USnnxTxu9yp++SwDOXn
 KDeHYPnrFKoF2eF+IYXfOotPgLz+YNK/1Sdjc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1681240917; x=1683832917;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=S78ehGNcDXdB6PvXIQgj+BoJDjok2LjR/kDyIilwHqs=;
 b=U2sw7cePkLMfDoib0Uz3aHDwFvRMll2FXhK2kNAlRQlRBtyQvil6g4F+hrpT+LTOl6
 PQwqsgUqCRvRPvRNWwKvPlPhTX/vczEhkeYY/uKOgVDLwciTfmSujwkQQuhCQnYlOBDI
 B8DTQQJxZIYxaTQHTLY4eKkplA+jKNXq9b35/mTMjam8UZ5uPN7K94or6Hvk1MhZsz4I
 QHtJHoI4dnQ7EErAh2lMEdSTRHORQVIomaSg02/UnDAsRMGGUkMo/gsvMnM9pA6OnSFf
 OlIKpGkWS9Jsmo7xgj9R97XmiBGrX3Bq7HEjCprkx4S5kCJSrLFMkk3czSYxOEJAaWqB
 NUFA==
X-Gm-Message-State: AAQBX9eeWYBeLcDJuyKjo4RTPJ963K6UIG7nosCCqkjPNUvY17bcnGeu
 dJ4f2W6X7dsRqXsZOkHh7tQHRw==
X-Google-Smtp-Source: AKy350bcTjzT51HoLIsG0FPcN3AEDdEgImgO14Esl7GpPfBp5hBRv9repUyxfbcdLPsrIq408XQMQA==
X-Received: by 2002:a0d:e801:0:b0:541:a189:bc74 with SMTP id
 r1-20020a0de801000000b00541a189bc74mr2977093ywe.41.1681240917283; 
 Tue, 11 Apr 2023 12:21:57 -0700 (PDT)
Received: from localhost ([2620:0:1035:15:2991:9b76:4e62:65bf])
 by smtp.gmail.com with UTF8SMTPSA id
 g34-20020a81ae62000000b0054f8a3624dbsm85546ywk.145.2023.04.11.12.21.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 11 Apr 2023 12:21:57 -0700 (PDT)
From: Mark Yacoub <markyacoub@chromium.org>
X-Google-Original-From: Mark Yacoub <markyacoub@google.com>
To: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Kuogee Hsieh <quic_khsieh@quicinc.com>
Date: Tue, 11 Apr 2023 15:21:32 -0400
Message-Id: <20230411192134.508113-9-markyacoub@google.com>
X-Mailer: git-send-email 2.40.0.577.gac1e443424-goog
In-Reply-To: <20230411192134.508113-1-markyacoub@google.com>
References: <20230411192134.508113-1-markyacoub@google.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v9 08/10] dt-bindings: msm/dp: Add bindings for
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
 Mark Yacoub <markyacoub@chromium.org>, intel-gfx@lists.freedesktop.org,
 dianders@chromium.org, dri-devel@lists.freedesktop.org,
 Stephen Boyd <swboyd@chromium.org>, seanpaul@chromium.org,
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Sean Paul <seanpaul@chromium.org>

Add the bindings for the MSM DisplayPort HDCP registers
which are required to write the HDCP key into the display controller as
well as the registers to enable HDCP authentication/key
exchange/encryption.

Cc: Rob Herring <robh@kernel.org>
Cc: Stephen Boyd <swboyd@chromium.org>
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Douglas Anderson <dianders@chromium.org>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
Signed-off-by: Mark Yacoub <markyacoub@chromium.org>

---
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
Changes in v6:
-Rebased: modify minItems instead of adding it as new line.
Changes in v7:
-Revert the change to minItems
-Added the maxItems to Reg

 .../devicetree/bindings/display/msm/dp-controller.yaml     | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index 0e8d8df686dc9..4763a2ff12fb7 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -34,6 +34,8 @@ properties:
       - description: link register block
       - description: p0 register block
       - description: p1 register block
+      - description: (Optional) Registers for HDCP device key injection
+      - description: (Optional) Registers for HDCP TrustZone interaction
 
   interrupts:
     maxItems: 1
@@ -159,6 +161,7 @@ allOf:
         aux-bus: false
         reg:
           minItems: 5
+          maxItems: 7
       required:
         - "#sound-dai-cells"
 
@@ -176,7 +179,9 @@ examples:
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
2.40.0.577.gac1e443424-goog

