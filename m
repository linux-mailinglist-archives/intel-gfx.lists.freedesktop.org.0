Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53788672857
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 20:31:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52B2C10E834;
	Wed, 18 Jan 2023 19:30:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe2e.google.com (mail-vs1-xe2e.google.com
 [IPv6:2607:f8b0:4864:20::e2e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A68310E828
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 19:30:52 +0000 (UTC)
Received: by mail-vs1-xe2e.google.com with SMTP id 3so36888045vsq.7
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 11:30:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=whvNa1bQa9Ec01Ss8iLlJDl35nz+BH7m8TtqnPdDJwY=;
 b=ImLD5hc/tmuvomyXgF6IjzNPnrWJWOCR2+a7OULQkwKKwDj9QdI2G3eQsoQZsK++9R
 4BYRXCIJ8nkHHh5aV7YDmT2k/W2eS/ltVtSskU1+sWSLtpj3x587500gg7CYhCo2jTmt
 0KoCBfTya/mqK1EArI3IzHwezk6DGMx158GAI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=whvNa1bQa9Ec01Ss8iLlJDl35nz+BH7m8TtqnPdDJwY=;
 b=N+57DWtzuVyspP5y4rF/2XNmr7Zt6xBnppmh79/ePp11Yek0tppcTkPljF6Ureo1Hf
 0y1Rz1XtPJnq0DyWfeJj8RGMMjM9hfG4CJGrfmz343iTGsn/qwpAjXNcuVJxlpj0aiy/
 ZVO3LqKwHLzZo7kMbWabjJw1h2uFj5cTE0xKUF5Lr3UY1ajllXdg1kOdL5HOK+M/rYHt
 WgDnfddinl/P/Fr2nbURpbqtJgU4jIkqsA6zOko310624m9b1lrk3WvAymLLKGC16RqI
 O+V2NQt1YdUwVxw+mluGRY2cZJKAEzr+ZKKkJQxDndJva2Qq/5xn2C3LNSAhQYnNRJMD
 t7GQ==
X-Gm-Message-State: AFqh2krZDgsOc/fH/Oma81DadXu/pN9xIsszjiC65gvh6ZNl8zmtfoSA
 Tyf9cDzhWQZJTVemTSx3MJb7mg==
X-Google-Smtp-Source: AMrXdXuIYSpsuAQVnu/PN9wvfo695OrdT003SUKTNSh8GNPck2iywWTRy+ghKQQifhstv5OOviVDUg==
X-Received: by 2002:a67:f886:0:b0:3cb:aaa:81d8 with SMTP id
 h6-20020a67f886000000b003cb0aaa81d8mr18345765vso.16.1674070250836; 
 Wed, 18 Jan 2023 11:30:50 -0800 (PST)
Received: from localhost (29.46.245.35.bc.googleusercontent.com.
 [35.245.46.29]) by smtp.gmail.com with UTF8SMTPSA id
 j7-20020a05620a410700b006cbe3be300esm8750610qko.12.2023.01.18.11.30.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 18 Jan 2023 11:30:50 -0800 (PST)
From: Mark Yacoub <markyacoub@chromium.org>
X-Google-Original-From: Mark Yacoub <markyacoub@google.com>
To: quic_khsieh@quicinc.com, linux-arm-msm@vger.kernel.org,
 dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org
Date: Wed, 18 Jan 2023 19:30:14 +0000
Message-Id: <20230118193015.911074-10-markyacoub@google.com>
X-Mailer: git-send-email 2.39.0.246.g2a6d74b583-goog
In-Reply-To: <20230118193015.911074-1-markyacoub@google.com>
References: <20230118193015.911074-1-markyacoub@google.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 09/10] arm64: dts: qcom: sc7180: Add support
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
Cc: quic_sbillaka@quicinc.com, konrad.dybcio@somainline.org,
 bjorn.andersson@linaro.org, krzysztof.kozlowski+dt@linaro.org,
 airlied@gmail.com, hbh25y@gmail.com, marex@denx.de, abhinavk@codeaurora.org,
 javierm@redhat.com, agross@kernel.org, quic_jesszhan@quicinc.com,
 daniel@ffwll.ch, lucas.demarchi@intel.com, quic_abhinavk@quicinc.com,
 swboyd@chromium.org, robh+dt@kernel.org, christophe.jaillet@wanadoo.fr,
 maxime@cerno.tech, rodrigo.vivi@intel.com, johan+linaro@kernel.org,
 markyacoub@chromium.org, andersson@kernel.org, dianders@chromium.org,
 tzimmermann@suse.de, dmitry.baryshkov@linaro.org, seanpaul@chromium.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Sean Paul <seanpaul@chromium.org>

This patch adds the register ranges required for HDCP key injection and
HDCP TrustZone interaction as described in the dt-bindings for the
sc7180 dp controller. Now that these are supported, change the
compatible string to "dp-hdcp".

Signed-off-by: Sean Paul <seanpaul@chromium.org>
Signed-off-by: Mark Yacoub <markyacoub@chromium.org>
Link: https://patchwork.freedesktop.org/patch/msgid/20210913175747.47456-15-sean@poorly.run #v1
Link: https://patchwork.freedesktop.org/patch/msgid/20210915203834.1439-14-sean@poorly.run #v2
Link: https://patchwork.freedesktop.org/patch/msgid/20211001151145.55916-14-sean@poorly.run #v3
Link: https://patchwork.freedesktop.org/patch/msgid/20211105030434.2828845-14-sean@poorly.run #v4
Link: https://patchwork.freedesktop.org/patch/msgid/20220411204741.1074308-10-sean@poorly.run #v5

Changes in v3:
-Split off into a new patch containing just the dts change (Stephen)
-Add hdcp compatible string (Stephen)
Changes in v4:
-Rebase on Bjorn's multi-dp patchset
Changes in v5:
-Put the tz register offsets in trogdor dtsi (Rob C)
Changes in v6:
-Rebased: Removed modifications in sc7180.dtsi as it's already upstream

---
 arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
index 178efaaa89ec..6f6fe5cb6563 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
@@ -817,6 +817,14 @@ &mdss_dp {
 	pinctrl-names = "default";
 	pinctrl-0 = <&dp_hot_plug_det>;
 	data-lanes = <0 1>;
+
+	reg = <0 0x0ae90000 0 0x200>,
+	      <0 0x0ae90200 0 0x200>,
+	      <0 0x0ae90400 0 0xc00>,
+	      <0 0x0ae91000 0 0x400>,
+	      <0 0x0ae91400 0 0x400>,
+	      <0 0x0aed1000 0 0x175>,
+	      <0 0x0aee1000 0 0x2c>;
 };
 
 &pm6150_adc {
-- 
2.39.0.246.g2a6d74b583-goog

