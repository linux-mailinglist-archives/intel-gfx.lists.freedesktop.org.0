Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F1C6C25DC04
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Sep 2020 16:40:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8D6B6EC16;
	Fri,  4 Sep 2020 14:40:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 964186EC1D
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Sep 2020 14:40:07 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id w2so6316022wmi.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 04 Sep 2020 07:40:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QMvX9hmUqz6p45iZrFsQ0+pmY5YRNJr+kE+ADKN2NdI=;
 b=NSv3BL7aQ9XhE8T/jt7SFLCvI4EO8MSwp1VSqCDfNBbcE32Q3LLGiPJBo3HdfBW4Lm
 2MNCdxviVmEBIvFvnnPa7yJ4IeNCoeXpRx/3qIkKo0F7SpCxu3XIbXnup0k+ZLuwLUu/
 v2HFnBc88KM7R78eBkVObB+zg8mxs9ssrYRws=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QMvX9hmUqz6p45iZrFsQ0+pmY5YRNJr+kE+ADKN2NdI=;
 b=IYqJCW3HStLnUa2pMwOMS3FeggjdvLU3svgRD5AHyzjUjfM320f9MwggTwbCwP79US
 azKb2oqJY+FrhVAJN7MCUcNe7raKJcOwJHrbN4OawamnFx+wS/zNojLpTWrQ0+75Vozg
 MNxwVtXubfkHQKIwBaKkwWb6ePWjxNrxkWR+4xq50J59iWpq95lU0hl+58PWx/0si/dr
 +Z8In5JBFBMZFhIEYe8xFMF2AEw7ejIGUKrBMHMctIzM2z6gN5GZLIy56DGaKbdwdmG4
 qb4X3RocxGhUKlhzad9/l5/3zL8tasnrs2D/SCiZl2FhXL1ziM2SGF9IRFgRzKJXuvbd
 bECQ==
X-Gm-Message-State: AOAM530T/msRF4QSZ7Ll1RospIuoHKJQwPMncmRNVF218+cLuuk5W1A7
 +dBBTsST4ceYvSblXbP5UQQLSg==
X-Google-Smtp-Source: ABdhPJxlbAPD0t+C8zswzbzueEUi+mGjzQU2OtnGoVaGT6LD8UB8yxoPCTX3MjXSOKxQyAYlc43BhQ==
X-Received: by 2002:a1c:234b:: with SMTP id j72mr8054995wmj.153.1599230405766; 
 Fri, 04 Sep 2020 07:40:05 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z15sm11597949wrv.94.2020.09.04.07.40.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Sep 2020 07:40:05 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri,  4 Sep 2020 16:39:31 +0200
Message-Id: <20200904143941.110665-15-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200904143941.110665-1-daniel.vetter@ffwll.ch>
References: <20200904143941.110665-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 14/24] drm/arc: Embedd a drm_connector for sim
 case
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Alexey Brodkin <abrodkin@synopsys.com>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Removes the last devm_kzalloc, which means we're now prepared to use
drmm_mode_config_cleanup!

Acked-by: Sam Ravnborg <sam@ravnborg.org>
Cc: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Alexey Brodkin <abrodkin@synopsys.com>
---
 drivers/gpu/drm/arc/arcpgu.h     |  1 +
 drivers/gpu/drm/arc/arcpgu_sim.c | 14 +-------------
 2 files changed, 2 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/arc/arcpgu.h b/drivers/gpu/drm/arc/arcpgu.h
index 52afd638a4d2..c52cdd2274e1 100644
--- a/drivers/gpu/drm/arc/arcpgu.h
+++ b/drivers/gpu/drm/arc/arcpgu.h
@@ -15,6 +15,7 @@ struct arcpgu_drm_private {
 	void __iomem		*regs;
 	struct clk		*clk;
 	struct drm_simple_display_pipe pipe;
+	struct drm_connector	sim_conn;
 };
 
 #define dev_to_arcpgu(x) container_of(x, struct arcpgu_drm_private, drm)
diff --git a/drivers/gpu/drm/arc/arcpgu_sim.c b/drivers/gpu/drm/arc/arcpgu_sim.c
index 134afb9fa625..e42fe5d05a3d 100644
--- a/drivers/gpu/drm/arc/arcpgu_sim.c
+++ b/drivers/gpu/drm/arc/arcpgu_sim.c
@@ -18,10 +18,6 @@
 #define YRES_MAX	8192
 
 
-struct arcpgu_drm_connector {
-	struct drm_connector connector;
-};
-
 static int arcpgu_drm_connector_get_modes(struct drm_connector *connector)
 {
 	int count;
@@ -57,7 +53,6 @@ static struct drm_encoder_funcs arcpgu_drm_encoder_funcs = {
 int arcpgu_drm_sim_init(struct drm_device *drm, struct device_node *np)
 {
 	struct arcpgu_drm_private *arcpgu = dev_to_arcpgu(drm);
-	struct arcpgu_drm_connector *arcpgu_connector;
 	struct drm_encoder *encoder;
 	struct drm_connector *connector;
 	int ret;
@@ -72,14 +67,7 @@ int arcpgu_drm_sim_init(struct drm_device *drm, struct device_node *np)
 	if (ret)
 		return ret;
 
-	arcpgu_connector = devm_kzalloc(drm->dev, sizeof(*arcpgu_connector),
-					GFP_KERNEL);
-	if (!arcpgu_connector) {
-		ret = -ENOMEM;
-		goto error_encoder_cleanup;
-	}
-
-	connector = &arcpgu_connector->connector;
+	connector = &arcpgu->sim_conn;
 	drm_connector_helper_add(connector, &arcpgu_drm_connector_helper_funcs);
 
 	ret = drm_connector_init(drm, connector, &arcpgu_drm_connector_funcs,
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
