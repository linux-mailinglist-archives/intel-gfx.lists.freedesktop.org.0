Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D66134DD629
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Mar 2022 09:29:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68AA089C61;
	Fri, 18 Mar 2022 08:29:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com
 [IPv6:2607:f8b0:4864:20::1034])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76ACF89C61
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Mar 2022 08:29:22 +0000 (UTC)
Received: by mail-pj1-x1034.google.com with SMTP id
 mj15-20020a17090b368f00b001c637aa358eso9868937pjb.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Mar 2022 01:29:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Wk/pqrVyJD3dZfuBlDvR3gvRx5qETAjydlq9k9fo89I=;
 b=MBv2nbtC77uuFP6FO9vF3JJunvP31eEWqLFqoiGIM3/E0+IkznfVBrTBIuGgXWfVv9
 5TBZHlNgegYmt3aqmPENYo8GhMqjeRQgRc3d1sr5+ApsSsOS0LqCL96pxslRickdXpwV
 ZNw9ExgEXTLbAqCs2ncXkhyskWqy7wd4OrW7Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Wk/pqrVyJD3dZfuBlDvR3gvRx5qETAjydlq9k9fo89I=;
 b=A433Dv17/H546UD8wA5hyu3yvCdI8spO6D55H1CqUHPQdKdnatMvxzx0SO1T0nDFxx
 z2KzmGJlGJEKWhPBmmQtXlVQuO52J9d5EzUPvFY7IoBHoMdA+oTqc3UuByQlpGxKFyB1
 OFZV473kpV08M04poSzkRqC9GOSc8qF1q6AmqEFDen72oJdEPnkkFTKoCi8rW61xs+N3
 OHA5tfoevSmbAH7TkGSqmteMd9XQ6rxCnDk6Kxn2+oltyo/pWATLKzBxcza6rfvDNC3b
 HHhexPmZ0PyO4s+AKCIYjVBVBis7d4oh5kspiH5H1DmT+XEj1XjdGcLgPy0ASfUon/Tf
 Adhw==
X-Gm-Message-State: AOAM531NpLhWH2goRJMV19ZoFbft3Iwr5kY9PX+Nv2n97oFxSDQ9pMlg
 wiuxgdiK64z925lHtr83cib2pQ==
X-Google-Smtp-Source: ABdhPJxZr+WrsVRD3EBe7ULBmlgFiXmGvjfKG8gVhn0pmPIZv9TgokVPdh4o8x0PeMOmdu3PzI1t6Q==
X-Received: by 2002:a17:902:e944:b0:14e:dc4f:f099 with SMTP id
 b4-20020a170902e94400b0014edc4ff099mr9105752pll.161.1647592161915; 
 Fri, 18 Mar 2022 01:29:21 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:435a:ce78:7223:1e88])
 by smtp.gmail.com with ESMTPSA id
 q2-20020a056a00084200b004f761a7287dsm9404044pfk.131.2022.03.18.01.29.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Mar 2022 01:29:21 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Date: Fri, 18 Mar 2022 15:48:24 +0800
Message-Id: <20220318074825.3359978-4-hsinyi@chromium.org>
X-Mailer: git-send-email 2.35.1.894.gb6a874cedc-goog
In-Reply-To: <20220318074825.3359978-1-hsinyi@chromium.org>
References: <20220318074825.3359978-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v9 3/4] drm/msm: init panel orientation property
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
---
 drivers/gpu/drm/msm/dsi/dsi_manager.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/msm/dsi/dsi_manager.c b/drivers/gpu/drm/msm/dsi/dsi_manager.c
index 0c1b7dde377c..b5dc86ebcab9 100644
--- a/drivers/gpu/drm/msm/dsi/dsi_manager.c
+++ b/drivers/gpu/drm/msm/dsi/dsi_manager.c
@@ -627,6 +627,10 @@ struct drm_connector *msm_dsi_manager_connector_init(u8 id)
 	connector->interlace_allowed = 0;
 	connector->doublescan_allowed = 0;
 
+	ret = drm_connector_init_panel_orientation_property(connector);
+	if (ret)
+		goto fail;
+
 	drm_connector_attach_encoder(connector, msm_dsi->encoder);
 
 	ret = msm_dsi_manager_panel_init(connector, id);
-- 
2.35.1.894.gb6a874cedc-goog

