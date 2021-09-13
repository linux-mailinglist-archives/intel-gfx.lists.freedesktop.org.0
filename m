Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6A9C409B8E
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Sep 2021 19:58:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 843386ECF0;
	Mon, 13 Sep 2021 17:58:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x736.google.com (mail-qk1-x736.google.com
 [IPv6:2607:f8b0:4864:20::736])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 591B56ECF0
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Sep 2021 17:58:47 +0000 (UTC)
Received: by mail-qk1-x736.google.com with SMTP id f22so11528527qkm.5
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Sep 2021 10:58:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oWizuF2Gkg5WBWYuRN/ca9SeolKOfaapBj8fX/su7TA=;
 b=dYQ2DyVTpbIDha8CUhN+J+mw7txqI2DY1SQsqYWAcWyvwWWv/DKHdaAhKYZP9DQyzD
 YeQmUswjqmC8H0LV5txitjG6S6HXVuB0/8oiEuN6G926IDGjxdOlXo/Z3wimhyP/aaXO
 KyIi3QH09HLDqrTIBlDdF2TrVHW4ykvrh43nwF21P4Mm6H1/388ACLg5MjvttsBWSG05
 BwzcEG5kuUBb6zxIntbNIJskW2xRyDc3u3juGpSd2KdazkUlMdTnbMf5qrNd79ZW1pPG
 RJL0cEJSgEsXRxo0C5pwv7rYOSth3equVxcxKuIZlgAizB5OQ2rKgGuugri+l1yQg1H/
 cEbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oWizuF2Gkg5WBWYuRN/ca9SeolKOfaapBj8fX/su7TA=;
 b=oG539uYjkJKPohhxj1VlsLHO1PFeWutr0jkDp0LH2gjY5C0NGxz3O3ZbQBNZm7aCMw
 I5BPXqv6yNpVMak9QEy/VLoOiwFqr0NwVm5KwNLPEh9vKcUfobA8e+5OTc4+UjyaIySE
 homrgZ0swotE7DspeqtgRoaJSjUs6O+Uw+A3CS3YNwq6WZOHwgGcNe+rmWFSwvJPAd8b
 TNF/ozilWblPGeKLYhcy8P6iFZWH5c0J+KdyYfd7vtUmLEcHWXCj/6VpyMEMSvw1TFVg
 z/E6NXYt56KDluS52DrjoqZESu3Q2Vmutrqi02m1EVsKnDqFVkSwGJPviTrWBkDwfr5m
 63MA==
X-Gm-Message-State: AOAM530qivmkg5SHAD58gxzjlM5ygFsAfJwC3Kdzttr/yAzdHW2+zLSi
 x3bNl29WwvxRTC1zuf7fBDM2Hg==
X-Google-Smtp-Source: ABdhPJzdUETObMuE5TjeYa4MFhxpwmHubpDdN2EJsguHGyIC3/AVj+jNYU8iSEFntmDBjJb1to1k4Q==
X-Received: by 2002:a05:620a:13cb:: with SMTP id
 g11mr855201qkl.332.1631555926278; 
 Mon, 13 Sep 2021 10:58:46 -0700 (PDT)
Received: from localhost ([167.100.64.199])
 by smtp.gmail.com with ESMTPSA id d13sm4515415qtm.32.2021.09.13.10.58.45
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 Sep 2021 10:58:46 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 freedreno@lists.freedesktop.org
Cc: Sean Paul <seanpaul@chromium.org>, Rob Clark <robdclark@gmail.com>,
 Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>,
 Kuogee Hsieh <khsieh@codeaurora.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org
Date: Mon, 13 Sep 2021 13:57:43 -0400
Message-Id: <20210913175747.47456-13-sean@poorly.run>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210913175747.47456-1-sean@poorly.run>
References: <20210913175747.47456-1-sean@poorly.run>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 12/14] dt-bindings: msm/dp: Add bindings for
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

Signed-off-by: Sean Paul <seanpaul@chromium.org>
---
 .../bindings/display/msm/dp-controller.yaml           | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index 64d8d9e5e47a..984301442653 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -21,6 +21,11 @@ properties:
   reg:
     maxItems: 1
 
+  reg-names:
+    const: dp_controller
+    const: hdcp_key
+    const: hdcp_tz
+
   interrupts:
     maxItems: 1
 
@@ -99,8 +104,10 @@ examples:
     #include <dt-bindings/power/qcom-rpmpd.h>
 
     displayport-controller@ae90000 {
-        compatible = "qcom,sc7180-dp";
-        reg = <0xae90000 0x1400>;
+        reg = <0 0x0ae90000 0 0x1400>,
+              <0 0x0aed1000 0 0x174>,
+              <0 0x0aee1000 0 0x2c>;
+        reg-names = "dp_controller", "hdcp_key", "hdcp_tz";
         interrupt-parent = <&mdss>;
         interrupts = <12>;
         clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
-- 
Sean Paul, Software Engineer, Google / Chromium OS

