Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F86225DC05
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Sep 2020 16:40:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C179D6EC17;
	Fri,  4 Sep 2020 14:40:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83E226EC1C
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Sep 2020 14:40:07 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id s13so6282279wmh.4
 for <intel-gfx@lists.freedesktop.org>; Fri, 04 Sep 2020 07:40:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fQRt/6vETFTMcXFugbfCSKGiF/E0ym5lVvroRREgAYk=;
 b=GmXD0QvhajwkAbGp+Bzm+6MrdGBUyeY/fOuQuyf7Wly6vBHV+tAaVbpMrVwdveI9nR
 XDtyfF4YNQL+lGaf0PUtwP3vqeKP9OWQyDB/Cmu0WBA0CgleLO2rZUvPIk7dbbMEVFcu
 6mJGMGxhCFxBtzrtVBM4UH8CUSGQWL72i1Qno=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fQRt/6vETFTMcXFugbfCSKGiF/E0ym5lVvroRREgAYk=;
 b=muy2MSdnuDMoVozHa1P5Nz8ZxxRceTL13Ox8weTLU2n7D3iPC0AUNRMsmp8e6qVpTn
 Jox6rdP/H01dhh/houbF0T45bR4VqAuwoWaQDvgTAY78tky3NYD43xfQ9cXbaZ+69px1
 rEy2dzKe/QJ/W6oy2jCN9jyAAooAbY7082IPrZb5dWXj9oUyrL8KUfy2vySUIu1RUb85
 BW8S0rJHOw1I8TznV2AyI/9PZQuG28hrEZ5YIAa42oIQnwtjFb0sixBExD0m+K1EU0xh
 /eCJ3HZfb88KPovofuo5rDmqxykbW6F2XqTAR8lhJ2YBdrFDgewb6/IxV180UViUlk8m
 pQIg==
X-Gm-Message-State: AOAM530YSGo7Mu4/4lRy8Av55HJK7htrMdWY03wvaGPUXPqy4X3m+ziX
 /ksk/81nTFmLY0xIdirI26Tpfg==
X-Google-Smtp-Source: ABdhPJw9RWQA6J74RZfD2Y4p2a6eOMlwDi8FXgVW0XS6XAXOttqsS9/MrjFTnsj70DgaK5Yk+faF4Q==
X-Received: by 2002:a05:600c:2257:: with SMTP id
 a23mr8294241wmm.102.1599230404658; 
 Fri, 04 Sep 2020 07:40:04 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z15sm11597949wrv.94.2020.09.04.07.40.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Sep 2020 07:40:04 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri,  4 Sep 2020 16:39:30 +0200
Message-Id: <20200904143941.110665-14-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200904143941.110665-1-daniel.vetter@ffwll.ch>
References: <20200904143941.110665-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 13/24] drm/arc: Embedded a
 drm_simple_display_pipe
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

This is a prep step to convert arc over to the simple kms helpers, for
now we just use this as an embedding container to drop all the various
allocations. Big change is the removal of the various devm_kzalloc,
which have the wrong lifetimes anyway.

Acked-by: Sam Ravnborg <sam@ravnborg.org>
Cc: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Alexey Brodkin <abrodkin@synopsys.com>
---
 drivers/gpu/drm/arc/arcpgu.h      | 7 ++++---
 drivers/gpu/drm/arc/arcpgu_crtc.c | 9 +++------
 drivers/gpu/drm/arc/arcpgu_drv.c  | 2 +-
 drivers/gpu/drm/arc/arcpgu_hdmi.c | 5 ++---
 drivers/gpu/drm/arc/arcpgu_sim.c  | 5 ++---
 5 files changed, 12 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/arc/arcpgu.h b/drivers/gpu/drm/arc/arcpgu.h
index ed77dd5dd5cb..52afd638a4d2 100644
--- a/drivers/gpu/drm/arc/arcpgu.h
+++ b/drivers/gpu/drm/arc/arcpgu.h
@@ -8,17 +8,18 @@
 #ifndef _ARCPGU_H_
 #define _ARCPGU_H_
 
+#include <drm/drm_simple_kms_helper.h>
+
 struct arcpgu_drm_private {
 	struct drm_device	drm;
 	void __iomem		*regs;
 	struct clk		*clk;
-	struct drm_crtc		crtc;
-	struct drm_plane	*plane;
+	struct drm_simple_display_pipe pipe;
 };
 
 #define dev_to_arcpgu(x) container_of(x, struct arcpgu_drm_private, drm)
 
-#define crtc_to_arcpgu_priv(x) container_of(x, struct arcpgu_drm_private, crtc)
+#define crtc_to_arcpgu_priv(x) container_of(x, struct arcpgu_drm_private, pipe.crtc)
 
 static inline void arc_pgu_write(struct arcpgu_drm_private *arcpgu,
 				 unsigned int reg, u32 value)
diff --git a/drivers/gpu/drm/arc/arcpgu_crtc.c b/drivers/gpu/drm/arc/arcpgu_crtc.c
index ba796a216244..88ba2e284fc0 100644
--- a/drivers/gpu/drm/arc/arcpgu_crtc.c
+++ b/drivers/gpu/drm/arc/arcpgu_crtc.c
@@ -182,9 +182,7 @@ static struct drm_plane *arc_pgu_plane_init(struct drm_device *drm)
 	struct drm_plane *plane = NULL;
 	int ret;
 
-	plane = devm_kzalloc(drm->dev, sizeof(*plane), GFP_KERNEL);
-	if (!plane)
-		return ERR_PTR(-ENOMEM);
+	plane = &arcpgu->pipe.plane;
 
 	ret = drm_universal_plane_init(drm, plane, 0xff, &arc_pgu_plane_funcs,
 				       arc_pgu_supported_formats,
@@ -195,7 +193,6 @@ static struct drm_plane *arc_pgu_plane_init(struct drm_device *drm)
 		return ERR_PTR(ret);
 
 	drm_plane_helper_add(plane, &arc_pgu_plane_helper_funcs);
-	arcpgu->plane = plane;
 
 	return plane;
 }
@@ -210,13 +207,13 @@ int arc_pgu_setup_crtc(struct drm_device *drm)
 	if (IS_ERR(primary))
 		return PTR_ERR(primary);
 
-	ret = drm_crtc_init_with_planes(drm, &arcpgu->crtc, primary, NULL,
+	ret = drm_crtc_init_with_planes(drm, &arcpgu->pipe.crtc, primary, NULL,
 					&arc_pgu_crtc_funcs, NULL);
 	if (ret) {
 		arc_pgu_plane_destroy(primary);
 		return ret;
 	}
 
-	drm_crtc_helper_add(&arcpgu->crtc, &arc_pgu_crtc_helper_funcs);
+	drm_crtc_helper_add(&arcpgu->pipe.crtc, &arc_pgu_crtc_helper_funcs);
 	return 0;
 }
diff --git a/drivers/gpu/drm/arc/arcpgu_drv.c b/drivers/gpu/drm/arc/arcpgu_drv.c
index c6a8deb56b0f..9020352816fa 100644
--- a/drivers/gpu/drm/arc/arcpgu_drv.c
+++ b/drivers/gpu/drm/arc/arcpgu_drv.c
@@ -120,7 +120,7 @@ static int arcpgu_show_pxlclock(struct seq_file *m, void *arg)
 	struct drm_device *drm = node->minor->dev;
 	struct arcpgu_drm_private *arcpgu = dev_to_arcpgu(drm);
 	unsigned long clkrate = clk_get_rate(arcpgu->clk);
-	unsigned long mode_clock = arcpgu->crtc.mode.crtc_clock * 1000;
+	unsigned long mode_clock = arcpgu->pipe.crtc.mode.crtc_clock * 1000;
 
 	seq_printf(m, "hw  : %lu\n", clkrate);
 	seq_printf(m, "mode: %lu\n", mode_clock);
diff --git a/drivers/gpu/drm/arc/arcpgu_hdmi.c b/drivers/gpu/drm/arc/arcpgu_hdmi.c
index 52839934f2fb..dbad2c9237fe 100644
--- a/drivers/gpu/drm/arc/arcpgu_hdmi.c
+++ b/drivers/gpu/drm/arc/arcpgu_hdmi.c
@@ -18,14 +18,13 @@ static struct drm_encoder_funcs arcpgu_drm_encoder_funcs = {
 
 int arcpgu_drm_hdmi_init(struct drm_device *drm, struct device_node *np)
 {
+	struct arcpgu_drm_private *arcpgu = dev_to_arcpgu(drm);
 	struct drm_encoder *encoder;
 	struct drm_bridge *bridge;
 
 	int ret = 0;
 
-	encoder = devm_kzalloc(drm->dev, sizeof(*encoder), GFP_KERNEL);
-	if (encoder == NULL)
-		return -ENOMEM;
+	encoder = &arcpgu->pipe.encoder;
 
 	/* Locate drm bridge from the hdmi encoder DT node */
 	bridge = of_drm_find_bridge(np);
diff --git a/drivers/gpu/drm/arc/arcpgu_sim.c b/drivers/gpu/drm/arc/arcpgu_sim.c
index 37d961668dfe..134afb9fa625 100644
--- a/drivers/gpu/drm/arc/arcpgu_sim.c
+++ b/drivers/gpu/drm/arc/arcpgu_sim.c
@@ -56,14 +56,13 @@ static struct drm_encoder_funcs arcpgu_drm_encoder_funcs = {
 
 int arcpgu_drm_sim_init(struct drm_device *drm, struct device_node *np)
 {
+	struct arcpgu_drm_private *arcpgu = dev_to_arcpgu(drm);
 	struct arcpgu_drm_connector *arcpgu_connector;
 	struct drm_encoder *encoder;
 	struct drm_connector *connector;
 	int ret;
 
-	encoder = devm_kzalloc(drm->dev, sizeof(*encoder), GFP_KERNEL);
-	if (encoder == NULL)
-		return -ENOMEM;
+	encoder = &arcpgu->pipe.encoder;
 
 	encoder->possible_crtcs = 1;
 	encoder->possible_clones = 0;
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
