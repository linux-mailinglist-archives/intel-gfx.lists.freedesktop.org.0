Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 320624AD250
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 08:37:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A487010E56B;
	Tue,  8 Feb 2022 07:37:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com
 [IPv6:2607:f8b0:4864:20::1033])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED21A10E1CA
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 07:37:23 +0000 (UTC)
Received: by mail-pj1-x1033.google.com with SMTP id
 h20-20020a17090adb9400b001b518bf99ffso1356919pjv.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 07 Feb 2022 23:37:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=B51vztbAqanx3odcGYslN+f+8QXuSl3IGdZkOcgCEP4=;
 b=B11JIsqRugzE1lPzLbVrLBxQRW5fnSgxLSLKgwr1IROc+g9ZzYhWrC1z2DTdGwYxxc
 zTZC5C6/ehGlzMo1J6qtuwveXNMaFeY7njbnbEiu43w4jwaanMcHAXwYob4oTe4haPpH
 OSqw2rNF9vvlgVMfdSEmvclOIi10EZASOCcpU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=B51vztbAqanx3odcGYslN+f+8QXuSl3IGdZkOcgCEP4=;
 b=t+MklvC+GQ8sr+j8SPDeToimf4KniApudRGRAvF9heVxWFeGH+A6l+NBqVBHsG1BOK
 VFaThgoBiOfGwYIlk/LWvBVLMEaHUjUUJisP8mNGjNQ+L38SEFunlLQq5pa0YSF/lWhp
 LVVZwEg/artsI2389jeYYUIM/xQwawIjNJCdFbgz76jW5yE1HKz9vGxblGWW2i2UdJJ1
 ck1XTd1Cxvwkt63+HXSeP26pNrRSNnfF1MMsAZqqK6/SeGl0nJ5jFRpVLjJKi0u61/DB
 fvXJuKcRfYvmqqo98RJPgTjWvilfdUN+4Z2aVExKnSx29wqQk46NJfQSQ6ZLiotTN6IS
 xv/Q==
X-Gm-Message-State: AOAM531YhpHcBemAFvFnF7OcOFAsEygyNtIvj5VRwd2vGBKq3dKkdRIP
 MGuSUxNvJwPKHImL/vOoaBLuoQ==
X-Google-Smtp-Source: ABdhPJxwrTpJBtY7yw1Sd0APOFBVLEGy3Kepc+/jvxRR/t7rzd5FBc9Yf4VRdbT05jYEsKVObL+Oiw==
X-Received: by 2002:a17:902:7609:: with SMTP id
 k9mr2997567pll.143.1644305843446; 
 Mon, 07 Feb 2022 23:37:23 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:7d9a:166e:9d34:ff4f])
 by smtp.gmail.com with ESMTPSA id ip5sm1677243pjb.13.2022.02.07.23.37.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Feb 2022 23:37:23 -0800 (PST)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Date: Tue,  8 Feb 2022 15:37:13 +0800
Message-Id: <20220208073714.1540390-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.35.0.263.gb82422642f-goog
In-Reply-To: <20220208073714.1540390-1-hsinyi@chromium.org>
References: <20220208073714.1540390-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 2/3] drm/mediatek: init panel orientation
 property
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

Init panel orientation property after connector is initialized. Let the
panel driver decides the orientation value later.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Acked-by: Chun-Kuang Hu <chunkuang.hu@kernel.org>
---
 drivers/gpu/drm/mediatek/mtk_dsi.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
index 5d90d2eb001935..491bf5b0a2b984 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -965,6 +965,13 @@ static int mtk_dsi_encoder_init(struct drm_device *drm, struct mtk_dsi *dsi)
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
2.35.0.263.gb82422642f-goog

