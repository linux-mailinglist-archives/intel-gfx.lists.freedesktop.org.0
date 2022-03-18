Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EF634DD62A
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Mar 2022 09:29:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A78310E5F8;
	Fri, 18 Mar 2022 08:29:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com
 [IPv6:2607:f8b0:4864:20::432])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C98310E755
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Mar 2022 08:29:26 +0000 (UTC)
Received: by mail-pf1-x432.google.com with SMTP id h2so8882260pfh.6
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Mar 2022 01:29:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qYSHS1HMX6eMTWBoPQekbY/LnrHx+hVCf+4KGrQDYmc=;
 b=IFSSe8csUXjGGDosRHCGn3fO+VYoniE9x8J42lOZEudFDsNsV98ZesN6bj9YZHlSGx
 rzUUSNDgAqKWsCISlWsWoXZJ4+na9/zRejmLQtAxJeL750XBykhjuPYp5PtgjzXaioRP
 W6K8uKY7G1XRI6cPC4FJKf4UJipGp1a8UxVkU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qYSHS1HMX6eMTWBoPQekbY/LnrHx+hVCf+4KGrQDYmc=;
 b=A3CVqMFBn+PS3illKCTKYsCymsU4LAWwZvkp8HSfwwM8SxN+BEEqSiZ8vB3oY1mIBO
 ofRtnm3TqjzZaCpxpGjZJ3JbcGrMzuVmggxYSy+8fQ3g8S6kXqzUgLT2SMt5OgxIkWB3
 wfiKnHeNepcUWldY1wrIv7q67fj1Aga1y8bIendzKybhpeGffVqWkUDRroI4bf1s6fOn
 VIptuHjn4TUimR3uP1oemX4gNup/0FjzxucPGoUOu50hFF1Pg3HLGfbyYhxckqnfGziW
 F4KuXvpxEpSytY/uoY5hNY8qXB8qDNVwpT6pK9G8bicau6lP3/w8V8+EwcsrmetczxEI
 Fvkw==
X-Gm-Message-State: AOAM533DSqMneEINMLPDQGEpNEKq+9w3Xo7WlihInFBsJbFGteWSYy+m
 2EXYCw9TpfWnZCkOQP+7eFwrAA==
X-Google-Smtp-Source: ABdhPJzDLKDOl+pmopyHHP4KLg/0fWOsTqeY58M7BYm1nfrAKzxakmXqooCP00hA6BSnGX9OcZh/qg==
X-Received: by 2002:aa7:8385:0:b0:4f6:ef47:e943 with SMTP id
 u5-20020aa78385000000b004f6ef47e943mr9052216pfm.38.1647592165505; 
 Fri, 18 Mar 2022 01:29:25 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:435a:ce78:7223:1e88])
 by smtp.gmail.com with ESMTPSA id
 q2-20020a056a00084200b004f761a7287dsm9404044pfk.131.2022.03.18.01.29.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Mar 2022 01:29:25 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Date: Fri, 18 Mar 2022 15:48:25 +0800
Message-Id: <20220318074825.3359978-5-hsinyi@chromium.org>
X-Mailer: git-send-email 2.35.1.894.gb6a874cedc-goog
In-Reply-To: <20220318074825.3359978-1-hsinyi@chromium.org>
References: <20220318074825.3359978-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v9 4/4] arm64: dts: mt8183: Add panel rotation
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
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>, devicetree@vger.kernel.org,
 Simon Ser <contact@emersion.fr>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Alex Deucher <alexander.deucher@amd.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Harry Wentland <harry.wentland@amd.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

krane, kakadu, and kodama boards have a default panel rotation.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Tested-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
index 0f9480f91261..c7c6be106e2e 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
@@ -276,6 +276,7 @@ panel: panel@0 {
 		avee-supply = <&ppvarp_lcd>;
 		pp1800-supply = <&pp1800_lcd>;
 		backlight = <&backlight_lcd0>;
+		rotation = <270>;
 		port {
 			panel_in: endpoint {
 				remote-endpoint = <&dsi_out>;
-- 
2.35.1.894.gb6a874cedc-goog

