Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B5926DE4D9
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Apr 2023 21:22:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C75C110E652;
	Tue, 11 Apr 2023 19:22:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com
 [IPv6:2607:f8b0:4864:20::b35])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9C4810E651
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Apr 2023 19:21:59 +0000 (UTC)
Received: by mail-yb1-xb35.google.com with SMTP id h198so15874219ybg.12
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Apr 2023 12:21:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1681240919; x=1683832919;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=/UKK5UX1sxA/fn51ycSNCkY1kfW7huepZ1JtlF3gmCU=;
 b=MODAKOLAe1mrFHbVLmSTy4tXpGrI6txQIJfm5HU7lN1WAtmS7oqJ7klQsvQAaLo3Mv
 k8OMqRaomz/vkCR9BzzUkJJv28dzjJvu2nY8yN03/fbdeRP2ul5C3BOPODjVzN1fjkmK
 /WmeqkGRYSOVzBsjuQZyqTqHPf3MZiaBOuQN0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1681240919; x=1683832919;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=/UKK5UX1sxA/fn51ycSNCkY1kfW7huepZ1JtlF3gmCU=;
 b=VNPTAqEDbxhfUVSgWM1G/YG55bFmfyUsPOAiYa9vByi5vuBox4Af84xaBH5UzjC7vJ
 o8oREOGFyKyn/5Vuv52vBQYXlddWGNn68aCwTKL7sxezpkolkqYiVfIhpkSPgRKeuL6f
 n0xQllWqC1gyudYRYsr4mCZj9g1MSpz1dRwd1S9FqsGcc9/jXzC3w7Mlbdf4H7xpQKxo
 bydY6vK+y+2v69+d0bmbMTh2iV4X0uQFS2qAz7pX8c0sFdIQCm6G3TQTkOsyxHdLudXT
 Ou/oz4bQuzAdoxCv7RTDBJitS8c0WAgJyGaiFEG4b/lauVbfQJI8KlqlgDfkT5LucF2G
 1SWA==
X-Gm-Message-State: AAQBX9dqDGWjsW5c/PwsAEnJ4/G8nsYehRqHfSIKxIV3PlyDr4S4dVJF
 u2HNausYjR8HIWoSwTh8E+6SaQ==
X-Google-Smtp-Source: AKy350Y0AFVRCh26uZEEXl/caeeSKSUSmctYd6tMGvN9clthojK4HZRfhP/DRCF/UTqrV0O1hw6atA==
X-Received: by 2002:a25:6d87:0:b0:b8e:e918:33ac with SMTP id
 i129-20020a256d87000000b00b8ee91833acmr5372721ybc.1.1681240919489; 
 Tue, 11 Apr 2023 12:21:59 -0700 (PDT)
Received: from localhost ([2620:0:1035:15:2991:9b76:4e62:65bf])
 by smtp.gmail.com with UTF8SMTPSA id
 u74-20020a25ab50000000b00b7767ca7485sm3834942ybi.34.2023.04.11.12.21.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 11 Apr 2023 12:21:59 -0700 (PDT)
From: Mark Yacoub <markyacoub@chromium.org>
X-Google-Original-From: Mark Yacoub <markyacoub@google.com>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Date: Tue, 11 Apr 2023 15:21:33 -0400
Message-Id: <20230411192134.508113-10-markyacoub@google.com>
X-Mailer: git-send-email 2.40.0.577.gac1e443424-goog
In-Reply-To: <20230411192134.508113-1-markyacoub@google.com>
References: <20230411192134.508113-1-markyacoub@google.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v9 09/10] arm64: dts: qcom: sc7180: Add support
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
Cc: devicetree@vger.kernel.org, Mark Yacoub <markyacoub@chromium.org>,
 intel-gfx@lists.freedesktop.org, dianders@chromium.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 seanpaul@chromium.org, linux-arm-msm@vger.kernel.org,
 dmitry.baryshkov@linaro.org, freedreno@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Sean Paul <seanpaul@chromium.org>

Add the register ranges required for HDCP key injection and
HDCP TrustZone interaction as described in the dt-bindings for the
sc7180 dp controller.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Douglas Anderson <dianders@chromium.org>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
Signed-off-by: Mark Yacoub <markyacoub@chromium.org>

---
Changes in v3:
-Split off into a new patch containing just the dts change (Stephen)
-Add hdcp compatible string (Stephen)
Changes in v4:
-Rebase on Bjorn's multi-dp patchset
Changes in v5:
-Put the tz register offsets in trogdor dtsi (Rob C)
Changes in v6:
-Rebased: Removed modifications in sc7180.dtsi as it's already upstream
Changes in v7:
-Change registers offset

 arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
index 423630c4d02c7..89d913fa6e3eb 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
@@ -822,6 +822,14 @@ &mdss_dp {
 	status = "okay";
 	pinctrl-names = "default";
 	pinctrl-0 = <&dp_hot_plug_det>;
+
+	reg = <0 0x0ae90000 0 0x200>,
+	      <0 0x0ae90200 0 0x200>,
+	      <0 0x0ae90400 0 0xc00>,
+	      <0 0x0ae91000 0 0x400>,
+	      <0 0x0ae91400 0 0x400>,
+	      <0 0x0aed1000 0 0x174>,
+	      <0 0x0aee1000 0 0x2c>;
 };
 
 &mdss_dp_out {
-- 
2.40.0.577.gac1e443424-goog

