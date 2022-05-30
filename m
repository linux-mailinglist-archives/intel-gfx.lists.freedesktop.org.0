Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C533537670
	for <lists+intel-gfx@lfdr.de>; Mon, 30 May 2022 10:19:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6837210E1B4;
	Mon, 30 May 2022 08:19:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com
 [IPv6:2607:f8b0:4864:20::534])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F07AF10E048
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 May 2022 08:19:29 +0000 (UTC)
Received: by mail-pg1-x534.google.com with SMTP id d129so9508652pgc.9
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 May 2022 01:19:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aXGQfQ7lsNUfjhcCcz/m8HUah1p/vDnEfDkpaJXX40Q=;
 b=j7HdUtSWpyZjY31tsETWgaBomYbcUL4NPjLRCEhLhcJhNgIJMPG4h8aVerkAWtdhJA
 6xH+tfkb3bQV9uMkXvjv7squthw5m7QHVK9FPoxGwWesDXlxRpcFVzLVr8fh8Qp0i1Oy
 Cqr4umRydtfoIGytttZl5eX60xAiPR+cvlQfE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aXGQfQ7lsNUfjhcCcz/m8HUah1p/vDnEfDkpaJXX40Q=;
 b=ZrVnVGERxBYd2yQ80vBoni2Y0wgdYOeYDIrSdMs8egTqPw+TrW39nbHQt1c9RQQQBi
 6A10w7ImTKZFdZaXSKA1bX8WWyAoAqj3kGhJivfhFOt6kKnx/1Ljat/hvJOF4cTOfpFr
 aV+j2c8Hnr/4RRP117y1NATKK9yKS/KqWELl1qb1xSZhE5EsOHxavB2OECOulBaynu3y
 jcHV9WV9+Bs1OP5yrNwKShekVgr4qwcFos3ZZ64KE+rylQ4DNo6CGFb5phfT8pioFlmn
 K4iwqfzv85zJJcJSygiftX8S4FuvZYB0IMWypvn0uxYsEekcxo7ocLQjVewJLQFqIYUp
 nnVQ==
X-Gm-Message-State: AOAM533rUZED9Ti+Yrkd9Y8uEohT2arkex1P5NhhhAsHXi4lciZG64K6
 gagccneMXGAbov90GbldEWk1Ww==
X-Google-Smtp-Source: ABdhPJznWw2scunjHm2cr/VTVq8k2dY3+xmqHFPQlQtp4K4hBNUYcOpZOCvf/PBzDXdbEYlNMCt0bA==
X-Received: by 2002:a63:2107:0:b0:3fb:ac79:50ed with SMTP id
 h7-20020a632107000000b003fbac7950edmr12877684pgh.105.1653898769559; 
 Mon, 30 May 2022 01:19:29 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:ae1c:3d63:abec:1097])
 by smtp.gmail.com with ESMTPSA id
 m1-20020a170902f64100b001618b70dcc9sm8537900plg.101.2022.05.30.01.19.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 May 2022 01:19:29 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Date: Mon, 30 May 2022 16:19:08 +0800
Message-Id: <20220530081910.3947168-3-hsinyi@chromium.org>
X-Mailer: git-send-email 2.36.1.124.g0e6072fb45-goog
In-Reply-To: <20220530081910.3947168-1-hsinyi@chromium.org>
References: <20220530081910.3947168-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v10 2/4] drm/mediatek: init panel orientation
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
Cc: Rob Clark <robdclark@chromium.org>, Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Harry Wentland <harry.wentland@amd.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 Maxime Ripard <mripard@kernel.org>, Stephen Boyd <swboyd@chromium.org>,
 Alex Deucher <alexander.deucher@amd.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Simon Ser <contact@emersion.fr>, Matthias Brugger <matthias.bgg@gmail.com>,
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
index d9f10a33e6fa..3db44d9b161a 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -822,6 +822,13 @@ static int mtk_dsi_encoder_init(struct drm_device *drm, struct mtk_dsi *dsi)
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
2.36.1.124.g0e6072fb45-goog

