Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F93A41F0DF
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Oct 2021 17:12:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 160E26EE46;
	Fri,  1 Oct 2021 15:12:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x82d.google.com (mail-qt1-x82d.google.com
 [IPv6:2607:f8b0:4864:20::82d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82F486EE44
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Oct 2021 15:12:47 +0000 (UTC)
Received: by mail-qt1-x82d.google.com with SMTP id c20so9246603qtb.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 01 Oct 2021 08:12:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=w9+zSbHr6qN9jSAilmfC3Z1uk1AYYSz6oIU7aW6aixk=;
 b=UvorM/xvDAtRU2OzjaZA2/9s1l8ctVGyZBRXQkRButeYIXvAK55K70XJ/NQRKdhFNc
 mVgmZkjGofBFMl0XNVyiR5o0pZY6OydhhscQ6mrNwnAbYqmonDFQ5RnNhQaeLU/3yiuQ
 iNQ0G2bDicOiqcuNJs9HuVB1vHPS8S4W74BfZftZ/YBezoKJvPEueQMrpesE94KxT0W+
 mrF8VsuH7DhRYR8R6nZGE1u8ce5kVAYwyFjt/IwiysXQWhILRyHbSB6dRMNQnr7fVbO/
 yNzqKSByO2DAcxRESp1xvowQr7X96hRG2Fma5D3YQ0gMhe85DM3hp6JKfNGUFu1vAA6A
 3zmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=w9+zSbHr6qN9jSAilmfC3Z1uk1AYYSz6oIU7aW6aixk=;
 b=WdaSjHyZ13s3Qb1O6G2fuBFnEaXBC4Pt/tTLfOcaQhCbg6Pg85arTGm1zc4viCUwam
 ut/hFsW+aHXNexUCaHm3FBjWKEeAUNG0yLFjVtfcAglT96tp4bm2wZWTUt2H/Q3LdZki
 smj37BvC0jDajhIBA8meBMTUog9KZekhMwbl6utAFI9StPGl5cHbhMfrUps6w6xEgBiw
 HQfaqqgTsZwr+f7rrvCsMi0Y/9ygLnYr7q3dQejlNpCbq1KKSOWVQaKi+RpyEki9I/vB
 e8LCZB5+Zgiqlpditkaw0pplgGBB0Zk4IGUGgt2tnlmA4KBqgipp4u4MJfBBNEJyw+VO
 BPaQ==
X-Gm-Message-State: AOAM530QYB/5fXKKnkWVopHKhJqlkstTy1yQ9DGi4CddPYMeNQOrRsGj
 Ey+CWk4iHz79vA6wdt1Cqw9nXQ==
X-Google-Smtp-Source: ABdhPJwVWp69Pjul0IB0gv3ZsKtdti92QdJOZrAvETv0pSiRZ8C+AlC0cv8pBo1qJCozPOLc4IN8eA==
X-Received: by 2002:ac8:7778:: with SMTP id h24mr13466760qtu.265.1633101166727; 
 Fri, 01 Oct 2021 08:12:46 -0700 (PDT)
Received: from localhost ([167.100.64.199])
 by smtp.gmail.com with ESMTPSA id o21sm3467909qtq.43.2021.10.01.08.12.45
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 01 Oct 2021 08:12:45 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 freedreno@lists.freedesktop.org
Cc: swboyd@chromium.org, jani.nikula@linux.intel.com,
 Sean Paul <seanpaul@chromium.org>, Rob Herring <robh@kernel.org>,
 Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Kuogee Hsieh <khsieh@codeaurora.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Date: Fri,  1 Oct 2021 11:11:41 -0400
Message-Id: <20211001151145.55916-13-sean@poorly.run>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20211001151145.55916-1-sean@poorly.run>
References: <20211001151145.55916-1-sean@poorly.run>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 12/14] dt-bindings: msm/dp: Add bindings for
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
Signed-off-by: Sean Paul <seanpaul@chromium.org>
Link: https://patchwork.freedesktop.org/patch/msgid/20210913175747.47456-13-sean@poorly.run #v1
Link: https://patchwork.freedesktop.org/patch/msgid/20210915203834.1439-13-sean@poorly.run #v2

Changes in v2:
-Drop register range names (Stephen)
-Fix yaml errors (Rob)
Changes in v3:
-Add new compatible string for dp-hdcp
-Add descriptions to reg
-Add minItems/maxItems to reg
-Make reg depend on the new hdcp compatible string
---

Disclaimer: I really don't know if this is the right way to approach
this. I tried using examples from other bindings, but feedback would be
very much welcome on how I could add the optional register ranges.


 .../bindings/display/msm/dp-controller.yaml   | 34 ++++++++++++++++---
 1 file changed, 30 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index 64d8d9e5e47a..a176f97b2f4c 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -17,9 +17,10 @@ properties:
   compatible:
     enum:
       - qcom,sc7180-dp
+      - qcom,sc7180-dp-hdcp
 
-  reg:
-    maxItems: 1
+  # See compatible-specific constraints below.
+  reg: true
 
   interrupts:
     maxItems: 1
@@ -89,6 +90,29 @@ required:
   - power-domains
   - ports
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: qcom,sc7180-dp-hdcp
+    then:
+      properties:
+        reg:
+          minItems: 3
+          maxItems: 3
+          items:
+            - description: Registers for base DP functionality
+            - description: (Optional) Registers for HDCP device key injection
+            - description: (Optional) Registers for HDCP TrustZone interaction
+    else:
+      properties:
+        reg:
+          minItems: 1
+          maxItems: 1
+          items:
+            - description: Registers for base DP functionality
+
 additionalProperties: false
 
 examples:
@@ -99,8 +123,10 @@ examples:
     #include <dt-bindings/power/qcom-rpmpd.h>
 
     displayport-controller@ae90000 {
-        compatible = "qcom,sc7180-dp";
-        reg = <0xae90000 0x1400>;
+        compatible = "qcom,sc7180-dp-hdcp";
+        reg = <0 0x0ae90000 0 0x1400>,
+              <0 0x0aed1000 0 0x174>,
+              <0 0x0aee1000 0 0x2c>;
         interrupt-parent = <&mdss>;
         interrupts = <12>;
         clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
-- 
Sean Paul, Software Engineer, Google / Chromium OS

