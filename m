Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 606D040CE4B
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Sep 2021 22:39:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B956A6EA56;
	Wed, 15 Sep 2021 20:39:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x829.google.com (mail-qt1-x829.google.com
 [IPv6:2607:f8b0:4864:20::829])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 378206EA54
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Sep 2021 20:39:44 +0000 (UTC)
Received: by mail-qt1-x829.google.com with SMTP id d11so3621187qtw.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Sep 2021 13:39:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9OuUx3KXVHJzGt1nkLMrzoX0tQkzHA3ws4rQqxVIlAU=;
 b=Gplj4vlsNLaGWWlUfnYJZw6WjTg0vIpqnB0tUu5lVhgJX6jnBQ6efnvb1U/rmq7Ibn
 UeqnfcOTnqUZk42vDAJmgbqJI4idzeq+C7JC429NNojeDfNLXYPUEVoGQSaLuQci7ZDN
 TozBYn6EDnNElG7Ie+I/6c3XnemtP1uguZJ63397Lmia4hi/syUd7yy0JSKRzwpz2zPW
 /7jZwq2Hsl9MmeLZheJSR7NHUZ/0KyPDjjswdqHuxmcS7x+0RPYoQTlqC3pdJAS4VVeX
 aquHQHpkrsi72qj6LMohkeEFzZNwr7ko9IdKT17J8TMsoniVLMXUATMIb3q+is8/BmXC
 Kevg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9OuUx3KXVHJzGt1nkLMrzoX0tQkzHA3ws4rQqxVIlAU=;
 b=qtfK1audr1GRoRGIfJpRD9SMJSm8WZPUSTHboNGq9jEUMCszOeSz/kNSLC3dwwIXts
 miu27x7ArbdHDQ1GXQq6szRRW0z5azAw9IoR2+dhDEYvsV2lPmDza3dpl7CckbeOdIxq
 xsCirAg5OADTxgdeK6LaV8nVnDrbG0zZrTTaDXQq4c+TAksAAj+cJyGsrEYfqMlDIc7g
 gQY8qQYFbfnqOX57Iyqw1ClOLGNPxdpcT3J3OBo7Sm2MZpvU5clj2LrdadIoy6Mq9LmV
 FiFGvAuMw/EVHKud+uRmO39Mmp12mOGM6nfI3wwTCAdUvmWbt+lycqq7T7CDZEcJvZ7w
 OBaw==
X-Gm-Message-State: AOAM530LU0813w57gL1yOZ/ktIRUWQsbXCNQpOIaDqaZe3E1v5BiH/+U
 o6GF3OmLIl/CLwk6AHPdIg+stw==
X-Google-Smtp-Source: ABdhPJwv8VMJ4KHRU0dxak2AD3U+O/PeXgwnCOo3RcWxIVJqB9SSvTLPKmheRvTC6ByxBh3Brhm6ig==
X-Received: by 2002:ac8:70b:: with SMTP id g11mr1789777qth.387.1631738383390; 
 Wed, 15 Sep 2021 13:39:43 -0700 (PDT)
Received: from localhost ([167.100.64.199])
 by smtp.gmail.com with ESMTPSA id j18sm843374qke.75.2021.09.15.13.39.42
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 15 Sep 2021 13:39:42 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 freedreno@lists.freedesktop.org
Cc: swboyd@chromium.org, Sean Paul <seanpaul@chromium.org>,
 Rob Herring <robh@kernel.org>, Rob Clark <robdclark@gmail.com>,
 Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>,
 Kuogee Hsieh <khsieh@codeaurora.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org
Date: Wed, 15 Sep 2021 16:38:31 -0400
Message-Id: <20210915203834.1439-13-sean@poorly.run>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210915203834.1439-1-sean@poorly.run>
References: <20210915203834.1439-1-sean@poorly.run>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 12/13] dt-bindings: msm/dp: Add bindings for
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

Cc: Rob Herring <robh@kernel.org>
Cc: Stephen Boyd <swboyd@chromium.org>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
Link: https://patchwork.freedesktop.org/patch/msgid/20210913175747.47456-13-sean@poorly.run #v1

Changes in v2:
-Drop register range names (Stephen)
-Fix yaml errors (Rob)
---
 .../devicetree/bindings/display/msm/dp-controller.yaml     | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index 64d8d9e5e47a..80a55e9ff532 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -19,7 +19,7 @@ properties:
       - qcom,sc7180-dp
 
   reg:
-    maxItems: 1
+    maxItems: 3
 
   interrupts:
     maxItems: 1
@@ -99,8 +99,9 @@ examples:
     #include <dt-bindings/power/qcom-rpmpd.h>
 
     displayport-controller@ae90000 {
-        compatible = "qcom,sc7180-dp";
-        reg = <0xae90000 0x1400>;
+        reg = <0 0x0ae90000 0 0x1400>,
+              <0 0x0aed1000 0 0x174>,
+              <0 0x0aee1000 0 0x2c>;
         interrupt-parent = <&mdss>;
         interrupts = <12>;
         clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
-- 
Sean Paul, Software Engineer, Google / Chromium OS

