Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 730A5445E62
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Nov 2021 04:05:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6D136E811;
	Fri,  5 Nov 2021 03:05:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com
 [IPv6:2607:f8b0:4864:20::734])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 737206E7EA
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Nov 2021 03:05:41 +0000 (UTC)
Received: by mail-qk1-x734.google.com with SMTP id x23so1003720qkf.7
 for <intel-gfx@lists.freedesktop.org>; Thu, 04 Nov 2021 20:05:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XJSOnlAtrhQ7wXwaghYo8uZtYw3TiJmGESI2PbX7so0=;
 b=eqodtYCkUDmx8HPjB3YN2+n3bPjqDEDj8Gh/yvOu6z+LP/3+ubj7KWXQxgW8jLUVbv
 W4Xzk9pdNY7PvcNZPQQdQdcRLWtBahHIcGFXXmaJNgHGHIiSsLcoJh9XhUrhEbeKpXgh
 N+fSFioePZ004ZWKZosX2M0EYeh8QnhVQwTMUhF+SMMlIA8Ozz1i7mHwur3xxtZ9cKvQ
 5V2XX/6Q1lJa34HNcayh+wa/7kX+D4eIRc3kJDsfBlVqz6Z4KDgbJnNcTQKWw04wuNu+
 J2v4vEEZb0uOiK36gJR0yo14xNIeRBm3aOoMRySPe6iYW0jJLk6im4LH5daP+i4R4mbI
 9/FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XJSOnlAtrhQ7wXwaghYo8uZtYw3TiJmGESI2PbX7so0=;
 b=NvLKxlQUK+k0CpdB+/AFE31PyrsR1k2BlxouDNP0J9VSpVkevYCuZcpDgUNhkrl0EL
 phKKuBXDaTXwtzhhg0h3qpRLvrsnU5o6t2AZdOH+c4vzir6wJvwb5mK4dQr7WN/qq1A4
 WT1KmllUN/82Yy1wJMv6M6Bns0OaqN+cfbs9xaCa1zwxMfvaHA85hCgg5+SQjZuKIola
 ol8yOaZB0KgQZi1Fit2+HKFvMbP/EnF6IQY+yae3PyJ0DlZJljX9rbibNdEd4dft9ac6
 Msg6hNKo2kJRHPXTrhLqdADkmfBxtM5VdoymR4871b20b1ju7GxeatjHX7iX0fpcRc1N
 XqrQ==
X-Gm-Message-State: AOAM530FwdY76ChRFY/TDzXH+SK365Yxa+UUc7BZqApHvl7CBJRhet+0
 WNAu3ahBzcSfxS0Ac+4INGiQpg==
X-Google-Smtp-Source: ABdhPJxUQChc+IGeLIiMSurShmhPZqMMiPEp1QUb9MVoEP1uD2N/B8x+o9oLWfLsN44a7mr9XM+trg==
X-Received: by 2002:a05:620a:44c1:: with SMTP id
 y1mr33793635qkp.265.1636081540535; 
 Thu, 04 Nov 2021 20:05:40 -0700 (PDT)
Received: from localhost ([167.100.64.199])
 by smtp.gmail.com with ESMTPSA id s25sm3822165qtq.60.2021.11.04.20.05.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Nov 2021 20:05:40 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 freedreno@lists.freedesktop.org
Date: Thu,  4 Nov 2021 23:04:30 -0400
Message-Id: <20211105030434.2828845-14-sean@poorly.run>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211105030434.2828845-1-sean@poorly.run>
References: <20211105030434.2828845-1-sean@poorly.run>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 13/14] arm64: dts: qcom: sc7180: Add support
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
Cc: devicetree@vger.kernel.org, jani.nikula@intel.com,
 linux-arm-msm@vger.kernel.org, abhinavk@codeaurora.org, swboyd@chromium.org,
 Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
 Sean Paul <seanpaul@chromium.org>, bjorn.andersson@linaro.org
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
Link: https://patchwork.freedesktop.org/patch/msgid/20211001151145.55916-14-sean@poorly.run #v3

Changes in v3:
-Split off into a new patch containing just the dts change (Stephen)
-Add hdcp compatible string (Stephen)
Changes in v4:
-Rebase on Bjorn's multi-dp patchset
---
 arch/arm64/boot/dts/qcom/sc7180.dtsi | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
index c8921e2d6480..838270f70b62 100644
--- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
@@ -3088,7 +3088,13 @@ mdss_dp: displayport-controller@ae90000 {
 				compatible = "qcom,sc7180-dp";
 				status = "disabled";
 
-				reg = <0 0x0ae90000 0 0x1400>;
+				reg = <0 0x0ae90000 0 0x200>,
+				      <0 0x0ae90200 0 0x200>,
+				      <0 0x0ae90400 0 0xc00>,
+				      <0 0x0ae91000 0 0x400>,
+				      <0 0x0ae91400 0 0x400>,
+				      <0 0x0aed1000 0 0x175>,
+				      <0 0x0aee1000 0 0x2c>;
 
 				interrupt-parent = <&mdss>;
 				interrupts = <12>;
-- 
Sean Paul, Software Engineer, Google / Chromium OS

