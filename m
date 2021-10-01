Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ED6E41F0E4
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Oct 2021 17:12:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77C076EE2C;
	Fri,  1 Oct 2021 15:12:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x832.google.com (mail-qt1-x832.google.com
 [IPv6:2607:f8b0:4864:20::832])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 824386EE2C
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Oct 2021 15:12:52 +0000 (UTC)
Received: by mail-qt1-x832.google.com with SMTP id t2so9220875qtx.8
 for <intel-gfx@lists.freedesktop.org>; Fri, 01 Oct 2021 08:12:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5zr3OobeWPDbB43eIxP82xAzyAQPk96HLICMejbx2Ro=;
 b=LNVEaQ7pTm7VaBh9QQpzHYNEUpXgUcY/ayJUSSDUO8lyH2NhPrW8ax0jMQjSRtKV0z
 9buqQyQtxJo4p6FMy0OLE+3s3mAEXyNEMUEjuRw/w4FxPGb6wfwjthlOMWiQ+pdF5pDD
 2ClY2xhZKXeYDSPmYQ/HFqPv/suYAKP7RWB0WdYiSeV4cf+kI3HVFHMH/XkUIAGNCDgx
 js3wtlzXm/vI4tititRm2JmkaKr/wCHUVnefnkeeBr63QrM2NeaATidAy9RkWUMHLHCT
 IH+p5/1lQq6a4V5umxm+MlXf9lfTzvL9KplvE89S0Vfa+83QlyoEf2Sjvn2Up7ICegap
 JN7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5zr3OobeWPDbB43eIxP82xAzyAQPk96HLICMejbx2Ro=;
 b=BUdIcj1KmGfM/HOtut/aQWPxBvcfBYOt5mykvzlSyeMyFnZTHsvtyiLUtki8U3LIUy
 ZNfFOLaKvsq4gstYzUMd7AaKArNTEZJdzP/9aCXqx05ai46hHAAeVv26y1iiZY4jh3/u
 n8lYr6FRhbkXWh5L4DIqGKwhI2zA2ePV1EfTExr9G6Xkkz6ayclW2T3cPTZQLyuFc4dw
 KUz/aw1KqT7jRK8ivxV1OxYtXFtsWsB++JROaP2iXYxiwD09PvmMxahC9+y4HtXaHTpZ
 r+rbH8nUO3YaOGXRCMf6Bh7uB9Dfe4nvXhtC9wS1G8jmky8Wv0K8JmeocDG6RY5Q+fpX
 QAoA==
X-Gm-Message-State: AOAM53084wKqTcftRzCN/4zMsx+s2BRxQtjGoZzIVQ/fR1PAFIQKVLD5
 4wbEXsH5ml94H2ulzQkk12tlY8ZV/eGQMA==
X-Google-Smtp-Source: ABdhPJyBZVlKPSTxoaF30k1Yffh0z0OUpyfO1SUldEuXtxsQaxSqtcKpI4aLv84Y6zLhTndZWv1pZw==
X-Received: by 2002:ac8:7959:: with SMTP id r25mr13301003qtt.29.1633101171713; 
 Fri, 01 Oct 2021 08:12:51 -0700 (PDT)
Received: from localhost ([167.100.64.199])
 by smtp.gmail.com with ESMTPSA id o5sm1984163qkl.50.2021.10.01.08.12.51
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 01 Oct 2021 08:12:51 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 freedreno@lists.freedesktop.org
Cc: swboyd@chromium.org, jani.nikula@linux.intel.com,
 Sean Paul <seanpaul@chromium.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org
Date: Fri,  1 Oct 2021 11:11:42 -0400
Message-Id: <20211001151145.55916-14-sean@poorly.run>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20211001151145.55916-1-sean@poorly.run>
References: <20211001151145.55916-1-sean@poorly.run>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 13/14] arm64: dts: qcom: sc7180: Add support
 for HDCP in dp-controller
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

This patch adds the register ranges required for HDCP key injection and
HDCP TrustZone interaction as described in the dt-bindings for the
sc7180 dp controller. Now that these are supported, change the
compatible string to "dp-hdcp".

Signed-off-by: Sean Paul <seanpaul@chromium.org>
Link: https://patchwork.freedesktop.org/patch/msgid/20210913175747.47456-15-sean@poorly.run #v1
Link: https://patchwork.freedesktop.org/patch/msgid/20210915203834.1439-14-sean@poorly.run #v2

Changes in v3:
-Split off into a new patch containing just the dts change (Stephen)
-Add hdcp compatible string (Stephen)
---
 arch/arm64/boot/dts/qcom/sc7180.dtsi | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
index c8921e2d6480..f2d7f3c95c1f 100644
--- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
@@ -3085,10 +3085,12 @@ dsi_phy: dsi-phy@ae94400 {
 			};
 
 			mdss_dp: displayport-controller@ae90000 {
-				compatible = "qcom,sc7180-dp";
+				compatible = "qcom,sc7180-dp-hdcp";
 				status = "disabled";
 
-				reg = <0 0x0ae90000 0 0x1400>;
+				reg = <0 0x0ae90000 0 0x1400>,
+				      <0 0x0aed1000 0 0x174>,
+				      <0 0x0aee1000 0 0x2c>;
 
 				interrupt-parent = <&mdss>;
 				interrupts = <12>;
-- 
Sean Paul, Software Engineer, Google / Chromium OS

