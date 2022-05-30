Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 45DC9537673
	for <lists+intel-gfx@lfdr.de>; Mon, 30 May 2022 10:19:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BECE10E2C6;
	Mon, 30 May 2022 08:19:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com
 [IPv6:2607:f8b0:4864:20::102a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31A5B10E11A
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 May 2022 08:19:34 +0000 (UTC)
Received: by mail-pj1-x102a.google.com with SMTP id cx11so1965334pjb.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 May 2022 01:19:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DngeuiJs1gkZdqFRMCVvHoL93k8N7yG0MeWJK9ZEK3k=;
 b=IqL1Mg8WnZDtXb3yyaSQRaeibgzLzDCSjzxs2JJ81/LU/mT9HMq1woD+CE/FphDXTH
 GnabHy2Ip2oVOYcPjiQ1WwYT2VtY4CQG3boKYbVWHxYOBjBrj1GEcBMoB1z1qeA4GCV1
 8WB0hTYwZDmiOgIt5tnLdJsOq3i7hVAzVDu9o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DngeuiJs1gkZdqFRMCVvHoL93k8N7yG0MeWJK9ZEK3k=;
 b=eHaCL64uEWsF/1eR50es+6CCbNDdCOKSf36ZhSYubFbssHq2hKpCiDK8PLS0EO7Gje
 zMUmh60ebFh0MfO1wB+9mJHs3esI/mZg/FS+M4QnCRC5Uh52Y30FMjTcbdR9y2Z8ExJe
 jmRghJkulYLld4C0W8luVFNOR61zyR1wcT737FCj5uWS2ZsiCKkOQPNAu8fg4Xv5NGiP
 ZHjSdSbz7DjjTKzlCAoDr8cgFDS62daPaVSESuKWNwRfBytXKLUwx3Xr5QMCYNe/9tc4
 R+x8XHXYHVJ5TOdqdRZA7z7cjRJtRuFPyu4RkSsuxm71VY3XApirIRVNDslrAYaqhfb5
 ojmA==
X-Gm-Message-State: AOAM531XRBL6m6/DpcEWLkaSpd6xFqPr92xKiUlXCIcuiFq0uWRspE2Y
 ymcTH22JS1cqGj56jjC2ZM8RiA==
X-Google-Smtp-Source: ABdhPJwMisSwwoUx/1CnfaxFxra5CHlr+0BrN6Jv+hKSLKGk6/BuFuOZ6hgtXERtcSsiW+uir2UNtw==
X-Received: by 2002:a17:90a:6941:b0:1e2:f37a:f889 with SMTP id
 j1-20020a17090a694100b001e2f37af889mr5209221pjm.160.1653898773678; 
 Mon, 30 May 2022 01:19:33 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:ae1c:3d63:abec:1097])
 by smtp.gmail.com with ESMTPSA id
 m1-20020a170902f64100b001618b70dcc9sm8537900plg.101.2022.05.30.01.19.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 May 2022 01:19:33 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Date: Mon, 30 May 2022 16:19:09 +0800
Message-Id: <20220530081910.3947168-4-hsinyi@chromium.org>
X-Mailer: git-send-email 2.36.1.124.g0e6072fb45-goog
In-Reply-To: <20220530081910.3947168-1-hsinyi@chromium.org>
References: <20220530081910.3947168-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v10 3/4] drm/msm: init panel orientation property
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
---
 drivers/gpu/drm/msm/dsi/dsi_manager.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/msm/dsi/dsi_manager.c b/drivers/gpu/drm/msm/dsi/dsi_manager.c
index cb84d185d73a..16ad3d8fab4d 100644
--- a/drivers/gpu/drm/msm/dsi/dsi_manager.c
+++ b/drivers/gpu/drm/msm/dsi/dsi_manager.c
@@ -669,6 +669,10 @@ struct drm_connector *msm_dsi_manager_connector_init(u8 id)
 	connector->interlace_allowed = 0;
 	connector->doublescan_allowed = 0;
 
+	ret = drm_connector_init_panel_orientation_property(connector);
+	if (ret)
+		goto fail;
+
 	drm_connector_attach_encoder(connector, msm_dsi->encoder);
 
 	ret = msm_dsi_manager_panel_init(connector, id);
-- 
2.36.1.124.g0e6072fb45-goog

