Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E93FD3928C2
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 09:42:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E23A46EDA6;
	Thu, 27 May 2021 07:42:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com
 [IPv6:2607:f8b0:4864:20::429])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA3086EDA6
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 07:42:13 +0000 (UTC)
Received: by mail-pf1-x429.google.com with SMTP id y202so3000735pfc.6
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 00:42:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iKPatIdYRxq+Xo6lopop8fgePb2STDXynanM3KtfV2E=;
 b=UzhS0TSGWLsdtGeMsRR9DXcxIAZf9yxmavKOZAwL5cSNom1Ge/Ba1Uxw/Lg2KECen/
 iW7Zv/AEndzzyqjRQt6icQYPlYTsLewTmTmaVB52vkI8cdlyq6cNV/gJHPyTlRgk2jlz
 hxRQdQI2gTCY3qLIN81UKFt5s3KHLP3Vt1TtM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iKPatIdYRxq+Xo6lopop8fgePb2STDXynanM3KtfV2E=;
 b=DRBGyrWfvkrzvxodVnPlRHHZCfqg/s8JiLusdRLZaktmDKUWbWXrydT4n3ICLju9GC
 AAw0zYLcQxJh6+4ZmpFJDb5yPVCQmuNTj/OFkYb76ddu7Adiv7U33Ki5+7GXQ5xGNKEn
 85RECXwWT48P2IhChNZNanduiEvJV9uUtgbulP9rlZqb+ys8LajNswlITrzh/Bvs8p57
 2V+KkLwG51hVbwuuTRwFnoAqrhOd4T9GPcLrdqe6+kvrq28VaVGF3aMIB6EiSkhwGHHo
 vdX5Tazz8lIfsE1PtN3w8TdJ1aKA+4W0rKa9/53v8z8EGr1ihdJRC0e6PdvxfzMa2Jnp
 otqw==
X-Gm-Message-State: AOAM532WwP/7J263VLozBYaumQtvdo9RqIhMUNxdLaoqS5r/luVNs5JR
 uOWHBt60cJHrIOFLXl76a3Rvhg==
X-Google-Smtp-Source: ABdhPJySHEslyEih5kQLA88oXODQQ0Wi1oBA6Q/oIq4BZUbKZolgVJv44EvipwhBEGygRsph69B2tQ==
X-Received: by 2002:aa7:8703:0:b029:2da:b87f:7d38 with SMTP id
 b3-20020aa787030000b02902dab87f7d38mr2569228pfo.20.1622101332688; 
 Thu, 27 May 2021 00:42:12 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:ece5:55a4:6ad3:d20f])
 by smtp.gmail.com with ESMTPSA id h24sm1184857pfn.180.2021.05.27.00.42.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 May 2021 00:42:12 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: dri-devel@lists.freedesktop.org
Date: Thu, 27 May 2021 15:42:01 +0800
Message-Id: <20210527074202.1706724-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.31.1.818.g46aad6cb9e-goog
In-Reply-To: <20210527074202.1706724-1-hsinyi@chromium.org>
References: <20210527074202.1706724-1-hsinyi@chromium.org>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 RESEND 2/3] drm/mediatek: init panel
 orientation property
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
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Robert Foss <robert.foss@linaro.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Init panel orientation property after connector is initialized. Let the
panel driver decides the orientation value later.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Acked-by: Chun-Kuang Hu <chunkuang.hu@kernel.org>
---
 drivers/gpu/drm/mediatek/mtk_dsi.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
index ae403c67cbd9..9da1fd649131 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -964,6 +964,13 @@ static int mtk_dsi_encoder_init(struct drm_device *drm, struct mtk_dsi *dsi)
 		ret = PTR_ERR(dsi->connector);
 		goto err_cleanup_encoder;
 	}
+
+	ret = drm_connector_init_panel_orientation_property(dsi->connector);
+	if (ret) {
+		DRM_ERROR("Unable to init panel orientation\n");
+		goto err_cleanup_encoder;
+	}
+
 	drm_connector_attach_encoder(dsi->connector, &dsi->encoder);
 
 	return 0;
-- 
2.31.1.818.g46aad6cb9e-goog

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
