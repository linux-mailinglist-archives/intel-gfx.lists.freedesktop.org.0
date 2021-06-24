Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3E593B2D03
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jun 2021 12:55:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB1336EB5D;
	Thu, 24 Jun 2021 10:55:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com
 [IPv6:2607:f8b0:4864:20::102d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66A4F6EB5E
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Jun 2021 10:55:30 +0000 (UTC)
Received: by mail-pj1-x102d.google.com with SMTP id
 c7-20020a17090ad907b029016faeeab0ccso5646426pjv.4
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Jun 2021 03:55:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Hriaztl5QKv2WOAvCmMVPEwAJVtjiW9iYPTLBEXStgo=;
 b=PDsAEsv+dfSRLQusPsoLYF8w7G6GnvRlHkrr1kzzx6as4Dh+x0U/zsW8d+GhiKFdsg
 FA2BBqPC5dprZVkpB5t5nsTliD/J2q5h8naaAS4RkKkgY5ukGDiE+mHZ/fjywOYmt7sp
 ZrJF+LxGucZtg7eBi8oNwcPwnRMsbOh9cKajE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Hriaztl5QKv2WOAvCmMVPEwAJVtjiW9iYPTLBEXStgo=;
 b=BEoy/eM4kxFQuVfNEeQSDcjhhbrS+5Brenzkrx7X3w2/cm9h+x2eg+2qITZ/sVBPWr
 7BpQ+ybrjp41wfqysTgPfFqIhPi/D0nQ1X4ckfRrEQahaIkA+/EpUtTxp9e2ecsxCnzW
 4XY41GVDC8aKKvR77NuF7E2ST7e8eGyYX0Q5K+AV91tQ6twRNGD3WDg7NXb5v6Dqqjef
 7X0MGZc0qnv5Tms35oT2PD735lQytBrm9k8YTAD3fKcqfuaLGdf2uy9T+U8Wk/mdg9uX
 hAdKhXeA0+KRSNUoNm8ObA2us2JSbeGalQc/50cRGLRVUCByJkK1TOQkojWFxUxfA5fJ
 qOhQ==
X-Gm-Message-State: AOAM530aWb1hqDY98gsgMVWf89owS/vbHOUfAQXP6LIAXQD+eLcOQYUm
 I3xZ8QnLCQkojdsEPj8hmSP4sw==
X-Google-Smtp-Source: ABdhPJwIDZVYWX3JX8E878WehoIk0M5IUEfQqdozGEiAiaCvO86PR75GYv750m47mk4o7duo8cErKQ==
X-Received: by 2002:a17:90a:9a83:: with SMTP id
 e3mr15001900pjp.139.1624532130023; 
 Thu, 24 Jun 2021 03:55:30 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:368f:686c:969:1f38])
 by smtp.gmail.com with ESMTPSA id t7sm2212536pgh.52.2021.06.24.03.55.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Jun 2021 03:55:29 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: dri-devel@lists.freedesktop.org, Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 intel-gfx@lists.freedesktop.org
Date: Thu, 24 Jun 2021 18:55:17 +0800
Message-Id: <20210624105517.3886963-3-hsinyi@chromium.org>
X-Mailer: git-send-email 2.32.0.288.g62a8d224e6-goog
In-Reply-To: <20210624105517.3886963-1-hsinyi@chromium.org>
References: <20210624105517.3886963-1-hsinyi@chromium.org>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 RESEND 3/3] arm64: dts: mt8183: Add panel
 rotation
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

krane, kakadu, and kodama boards have a default panel rotation.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
index ff56bcfa33703..793cc95013379 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
@@ -263,6 +263,7 @@ panel: panel@0 {
 		avee-supply = <&ppvarp_lcd>;
 		pp1800-supply = <&pp1800_lcd>;
 		backlight = <&backlight_lcd0>;
+		rotation = <270>;
 		port {
 			panel_in: endpoint {
 				remote-endpoint = <&dsi_out>;
-- 
2.32.0.288.g62a8d224e6-goog

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
