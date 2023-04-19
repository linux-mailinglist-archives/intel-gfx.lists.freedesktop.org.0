Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B7A6E7EBC
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Apr 2023 17:44:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91E2310EA0F;
	Wed, 19 Apr 2023 15:43:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb30.google.com (mail-yb1-xb30.google.com
 [IPv6:2607:f8b0:4864:20::b30])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 260FC10EA1E
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Apr 2023 15:43:48 +0000 (UTC)
Received: by mail-yb1-xb30.google.com with SMTP id l5so11221425ybe.7
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Apr 2023 08:43:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1681919026; x=1684511026;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ZyYHVq2KKyE4C0IhwyY/WppUE1xI3kMg23q7uSOq+Tg=;
 b=mq/T2vtNxXsqvV9+XBOj8ljMXbwdH35ftq6Edkr4Z9p/Ws48v0F1g562PaWhDZ9lyu
 QNVf17Bl/xg69M/35RaR2nxHDzPBIr4IkalAQOG8aVxJqrKg3mnoQrGEpOFP3ZpL9kmu
 QjBC2RKb2QhkZZ4ofLJdO92XY+NJRCc2G4LAE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681919027; x=1684511027;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ZyYHVq2KKyE4C0IhwyY/WppUE1xI3kMg23q7uSOq+Tg=;
 b=ILmn2dqQn7n7aMkt8XeLupOy1ap0MnabLKE4u5AdV7HBwZ5uDMzakBuBN/7cPoyorA
 Ku7LtX2aa9vp/0s9FprMx+E81DRKDrbZUbDC3vQUP7NQBY8yGcj6Zq97lEzSB/g7VBns
 T8JiCFp/N6VBj9Neijoq00SbuAdKODiC4jmZadMXctiOKvgQJsw1j6Luw1WQ0rqv3vU5
 ZIgk1OgcAxUh/N5nAyJoYFvf5I+b4UXwwF09Z5Mv50QtIRZ2SLNgVNrPrtSdejZvOm6C
 PNl5ryrtvEV/qEDoUDS4vnaCNuD0iT2TN/PTrmmg+uwQzdDNSgrs3KWt4tIQ1/1T3wks
 vdvQ==
X-Gm-Message-State: AAQBX9cxqOn1vl5ArmQUS7N78hdkq2fiHiFbsrufKtsqrQE4J6h28zth
 Z27pYX6mAS4y4W3dzBoRJ5zVlg==
X-Google-Smtp-Source: AKy350bFwaBgNEXJbLUNW+dGLPL2d4Nckb5SJpfQgSSZ1Mhjcg8+CCNw85X/Q6v4u1lw+lQkNl36Rw==
X-Received: by 2002:a25:4d56:0:b0:b25:a1e1:5b65 with SMTP id
 a83-20020a254d56000000b00b25a1e15b65mr172416ybb.5.1681919026732; 
 Wed, 19 Apr 2023 08:43:46 -0700 (PDT)
Received: from localhost ([2620:0:1035:15:55c6:7cf1:a68:79b0])
 by smtp.gmail.com with UTF8SMTPSA id
 cc21-20020a05690c095500b00545a08184cesm4539823ywb.94.2023.04.19.08.43.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 19 Apr 2023 08:43:46 -0700 (PDT)
From: Mark Yacoub <markyacoub@chromium.org>
X-Google-Original-From: Mark Yacoub <markyacoub@google.com>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Date: Wed, 19 Apr 2023 11:43:19 -0400
Message-ID: <20230419154321.1993419-10-markyacoub@google.com>
X-Mailer: git-send-email 2.40.0.634.g4ca3ef3211-goog
In-Reply-To: <20230419154321.1993419-1-markyacoub@google.com>
References: <20230419154321.1993419-1-markyacoub@google.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v10 09/10] arm64: dts: qcom: sc7180: Add support
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
2.40.0.634.g4ca3ef3211-goog

