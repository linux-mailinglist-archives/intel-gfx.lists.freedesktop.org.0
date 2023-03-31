Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB8826D2B27
	for <lists+intel-gfx@lfdr.de>; Sat,  1 Apr 2023 00:13:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 513B110F32A;
	Fri, 31 Mar 2023 22:13:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-x1129.google.com (mail-yw1-x1129.google.com
 [IPv6:2607:f8b0:4864:20::1129])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B728910F316
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Mar 2023 22:12:37 +0000 (UTC)
Received: by mail-yw1-x1129.google.com with SMTP id
 00721157ae682-544f7c176easo440815197b3.9
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Mar 2023 15:12:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1680300757;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=SuHM3Ml3PogV+x216rKe1L3nHLFo1MwYXwE4UpoFNeE=;
 b=PJ8MIaChYf1hyLs02a/4OwDicqZnjK09rM5XKqAm5kRJiZa5OJwqNVE7oFW2ZdibeK
 DLhFewEDf6gi51fE2aKpYzwFuKnIE7aVvhhw078JOMiJbWaIWwJmypIV5qLpDRY/ZbNb
 ZGa4ZNgtOSJlDdYCu/11y+DUkz9cd1EB5gMpE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680300757;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=SuHM3Ml3PogV+x216rKe1L3nHLFo1MwYXwE4UpoFNeE=;
 b=JMhVvaIMm/XJjr+LB1nIi9cjyKMLrYhhCjpG6cbTzgBqU0o0Yz+S87U0rAV47QMH5m
 A1Ha5MfQ/T75lvAY9C87OJYrqr3+Oe7P3JWO3uVayLPfhh0s5tbF7sYqVOXUdqbGzEQz
 UcVr4dPNwx9tUUrdyQGV2HoAkcdmWzJjvmGP/iNEfFk1STnvCBbXE5AMpIO0vAn2wKBa
 zvVs0NCAwxbJ5RYexAGmVL975fru05FbmCffZFnHfazkP/0YsJb5TfO8Tit0Ihsz6rxQ
 cElQ2KE25uVj0ocauN+qwv/7cgaaWdZ+NcOPHNllpoKcx2bRx3/WEplQKyNm8Xvh8+ch
 E+0Q==
X-Gm-Message-State: AAQBX9cNkFyExy3rEuHYbm+sfFrCe0xxg0kLJC38vuRiMAjJTUtLeVE/
 QTvOOjCsYJTL/3qnu63mctqSuw==
X-Google-Smtp-Source: AKy350ZF5Y47obuwMo5tN+7rE24Wl2VFFeifocBWiFVazpaCUbskHkorQPmYpadclKW6c2w3vyqWDQ==
X-Received: by 2002:a0d:cb15:0:b0:541:8864:c4b5 with SMTP id
 n21-20020a0dcb15000000b005418864c4b5mr9469428ywd.12.1680300756885; 
 Fri, 31 Mar 2023 15:12:36 -0700 (PDT)
Received: from localhost ([2620:0:1035:15:a8f6:869a:3ef5:e1d])
 by smtp.gmail.com with UTF8SMTPSA id
 123-20020a810381000000b00545a4ec318dsm796675ywd.13.2023.03.31.15.12.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 31 Mar 2023 15:12:36 -0700 (PDT)
From: Mark Yacoub <markyacoub@chromium.org>
X-Google-Original-From: Mark Yacoub <markyacoub@google.com>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Date: Fri, 31 Mar 2023 18:12:11 -0400
Message-Id: <20230331221213.1691997-10-markyacoub@google.com>
X-Mailer: git-send-email 2.40.0.348.gf938b09366-goog
In-Reply-To: <20230331221213.1691997-1-markyacoub@google.com>
References: <20230331221213.1691997-1-markyacoub@google.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v8 09/10] arm64: dts: qcom: sc7180: Add support
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
 freedreno@lists.freedesktop.org
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
Changes in v8:
-None

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
2.40.0.348.gf938b09366-goog

