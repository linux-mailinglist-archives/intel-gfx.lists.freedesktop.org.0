Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D66445150E
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Nov 2021 21:22:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6CF76E1F6;
	Mon, 15 Nov 2021 20:21:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com
 [IPv6:2607:f8b0:4864:20::734])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3A6E6E105
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Nov 2021 20:21:54 +0000 (UTC)
Received: by mail-qk1-x734.google.com with SMTP id a11so11549999qkh.13
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Nov 2021 12:21:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5o8M4nFYDYsXR2dAp4MjnyBhftAYPugH5C5KzkFvDAY=;
 b=eXQOHRDYDbMhSygSwb1AraY3AWGEdei454ZaQccAceVCTSwuCDYUxKcBnznvL11mUB
 IG6Gsp8ElDGMw0JjWSt7gr4NXS3o/1RgahiPVqOkhjZVeEFAvIZ+PYRUnkFeHU5kurwd
 X/rlEdoZ6TlsCMlNbNDQG43iQbZMF56osDjJbUjMwMid6EH4vTC6QkDMuWCjXjv1p7+V
 7Y6RKuaUq6sy1EnkmPls9Bmwh1gBQJNqmxmcCA/U8YjdnxAkpgmfVJWg1h7sQjwGexsw
 XzSfmYr981gGtmPXkhn2cBQTd6riVWT78of7aqQAqXiEtrrVKg0Nbb+wWy61gDFyvOJm
 OixQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5o8M4nFYDYsXR2dAp4MjnyBhftAYPugH5C5KzkFvDAY=;
 b=ykBJbvScgiVjdMD8x7OR3ew/YPAXbjBpxBlpkdDpo4TnRTPnbt6LwAildDo4CImIQB
 pOvXgjhZwslfWxByhQqYxfUzA/1Awtu2Et4ELakTuubxwFIkwjXvm1z7r2rM9Mrpowp9
 1gkWJdHpOtBUPA1saPOwkuzB+VfnSxD8/MSMO5Q9WAOTi9dtivO+t86E0YzBDvdUEmjG
 5mkpf/utK5IqCr5o+doXN6om2SnWI/gG8VqlcAQbInPwDyeDkNmqBED1e+993DXXyfSt
 07uL6WFTrN3GUe9JiclG5Dy5bAHBl9UO9F8D/kP5Ukmj4W/h+ORZU7WMDN4CcrDTaCAh
 ycDg==
X-Gm-Message-State: AOAM532cBp92A0rTIEkXLvpIgJ2Ik9Z2AbMJs2jondZGr8ZMFCygjFVv
 dMbiv9NppagHawvFbzvQ4HOxww==
X-Google-Smtp-Source: ABdhPJzv1kubhtztfKiDVpyMZPRNywUjLC7v4bCYsxPDUvwntv2nGtkJYzSCWj+8Kn6sZWmwu60FDg==
X-Received: by 2002:a05:620a:4712:: with SMTP id
 bs18mr1540805qkb.246.1637007713882; 
 Mon, 15 Nov 2021 12:21:53 -0800 (PST)
Received: from localhost (29.46.245.35.bc.googleusercontent.com.
 [35.245.46.29])
 by smtp.gmail.com with ESMTPSA id t11sm6851413qkp.56.2021.11.15.12.21.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Nov 2021 12:21:53 -0800 (PST)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 freedreno@lists.freedesktop.org
Date: Mon, 15 Nov 2021 20:21:48 +0000
Message-Id: <20211115202153.117244-1-sean@poorly.run>
X-Mailer: git-send-email 2.34.0.rc1.387.gb447b232ab-goog
In-Reply-To: <YY7lb9k2UArZf7I/@robh.at.kernel.org>
References: <YY7lb9k2UArZf7I/@robh.at.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4.5 12/14] dt-bindings: msm/dp: Add bindings
 for HDCP registers
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
Cc: robh@kernel.org, devicetree@vger.kernel.org, jani.nikula@intel.com,
 linux-arm-msm@vger.kernel.org, abhinavk@codeaurora.org, swboyd@chromium.org,
 khsieh@codeaurora.org, David Airlie <airlied@linux.ie>, robh+dt@kernel.org,
 seanpaul@chromium.org, bjorn.andersson@linaro.org
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
Link: https://patchwork.freedesktop.org/patch/msgid/20211001151145.55916-13-sean@poorly.run #v3
Link: https://patchwork.freedesktop.org/patch/msgid/20211105030434.2828845-13-sean@poorly.run #v4

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
---
 .../devicetree/bindings/display/msm/dp-controller.yaml     | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index b36d74c1da7c..aff7d45ba6ed 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -21,12 +21,15 @@ properties:
       - qcom,sc8180x-edp
 
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
@@ -111,7 +114,9 @@ examples:
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

