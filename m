Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E699F25DC02
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Sep 2020 16:40:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B198C6EC05;
	Fri,  4 Sep 2020 14:40:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7F436EC05
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Sep 2020 14:40:05 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id z1so7033755wrt.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 04 Sep 2020 07:40:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HBOjyCPAXryIuMpxrPLg7nORAAz7RDZXLbKKtaGc1mg=;
 b=b58Mi9oolIGycfZ8qH6wUTJDPew1QLjYB1QggBuvlsu2Pju9o4LacriVwg62zX3Dk5
 +qdWq7NVx/QT8uVC81sEsCReAFeUVl+Px4a+WMHCl3FuevX+0c8QJby9EnnAmP9uUq1E
 /VYZY69qsoysb1vCz4vAHCPl+Uyjdez0NxgBs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HBOjyCPAXryIuMpxrPLg7nORAAz7RDZXLbKKtaGc1mg=;
 b=RyBvjbFr5oLgI2+0SCdrTSKWAvtsE9YUhaM4ZfJbTq4CEuPW3xsmf5ElIXu2+YQX0P
 lKCC1bV4txX53GDez75U9Nj9H/mDUfT9+ezxu62nN8uCOIIeexvybSX8AciQJmfT9o+6
 75ySsmkYkDJU+z5Xp1Gv5qeIzYnyHQ53oC1EQj1WiC6P7Tjx5Q/N4T9K4vD85bZTePbx
 LFWOe0Ie6qDHqgCp5XrvbUl6ZLjiY+TWLqY2VI2riWO9AreNbdEHKzSJYUzqIXlWxM2L
 gXS3bixp20Vo9DOqn3mc9YRZ4HSJO51LUWpIfaLAuQlGuLni5BnAE9D4h5VrziZYlBaO
 M7OA==
X-Gm-Message-State: AOAM532E3kz+f0tyYY4Ag0mhNSQjZdWq3e3GmGazeh9XY4YF2vIzDwE7
 Lz0wNeOtV2a/+qYd0Brcj7oACQ==
X-Google-Smtp-Source: ABdhPJw11faFH0Z+FunP7tufvw1EVl5eU37SYY4wZp3cYxjKG+C+TVV6ZzcQepRMjLsFYU4OBeyVdw==
X-Received: by 2002:a5d:4cc1:: with SMTP id c1mr3582428wrt.122.1599230402530; 
 Fri, 04 Sep 2020 07:40:02 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z15sm11597949wrv.94.2020.09.04.07.40.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Sep 2020 07:40:02 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri,  4 Sep 2020 16:39:28 +0200
Message-Id: <20200904143941.110665-12-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200904143941.110665-1-daniel.vetter@ffwll.ch>
References: <20200904143941.110665-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 11/24] drm/arc: Stop using
 drm_device->dev_private
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
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Upcasting using a container_of macro is more typesafe, faster and
easier for the compiler to optimize.

Cc: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Alexey Brodkin <abrodkin@synopsys.com>
---
 drivers/gpu/drm/arc/arcpgu.h      | 2 ++
 drivers/gpu/drm/arc/arcpgu_crtc.c | 4 ++--
 drivers/gpu/drm/arc/arcpgu_drv.c  | 4 +---
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/arc/arcpgu.h b/drivers/gpu/drm/arc/arcpgu.h
index cd9e932f501e..87821c91a00c 100644
--- a/drivers/gpu/drm/arc/arcpgu.h
+++ b/drivers/gpu/drm/arc/arcpgu.h
@@ -17,6 +17,8 @@ struct arcpgu_drm_private {
 	struct drm_plane	*plane;
 };
 
+#define dev_to_arcpgu(x) container_of(x, struct arcpgu_drm_private, drm)
+
 #define crtc_to_arcpgu_priv(x) container_of(x, struct arcpgu_drm_private, crtc)
 
 static inline void arc_pgu_write(struct arcpgu_drm_private *arcpgu,
diff --git a/drivers/gpu/drm/arc/arcpgu_crtc.c b/drivers/gpu/drm/arc/arcpgu_crtc.c
index be7c29cec318..ba796a216244 100644
--- a/drivers/gpu/drm/arc/arcpgu_crtc.c
+++ b/drivers/gpu/drm/arc/arcpgu_crtc.c
@@ -178,7 +178,7 @@ static const struct drm_plane_funcs arc_pgu_plane_funcs = {
 
 static struct drm_plane *arc_pgu_plane_init(struct drm_device *drm)
 {
-	struct arcpgu_drm_private *arcpgu = drm->dev_private;
+	struct arcpgu_drm_private *arcpgu = dev_to_arcpgu(drm);
 	struct drm_plane *plane = NULL;
 	int ret;
 
@@ -202,7 +202,7 @@ static struct drm_plane *arc_pgu_plane_init(struct drm_device *drm)
 
 int arc_pgu_setup_crtc(struct drm_device *drm)
 {
-	struct arcpgu_drm_private *arcpgu = drm->dev_private;
+	struct arcpgu_drm_private *arcpgu = dev_to_arcpgu(drm);
 	struct drm_plane *primary;
 	int ret;
 
diff --git a/drivers/gpu/drm/arc/arcpgu_drv.c b/drivers/gpu/drm/arc/arcpgu_drv.c
index 68eb4a31c54b..c6a8deb56b0f 100644
--- a/drivers/gpu/drm/arc/arcpgu_drv.c
+++ b/drivers/gpu/drm/arc/arcpgu_drv.c
@@ -50,8 +50,6 @@ static int arcpgu_load(struct arcpgu_drm_private *arcpgu)
 	struct resource *res;
 	int ret;
 
-	drm->dev_private = arcpgu;
-
 	arcpgu->clk = devm_clk_get(drm->dev, "pxlclk");
 	if (IS_ERR(arcpgu->clk))
 		return PTR_ERR(arcpgu->clk);
@@ -120,7 +118,7 @@ static int arcpgu_show_pxlclock(struct seq_file *m, void *arg)
 {
 	struct drm_info_node *node = (struct drm_info_node *)m->private;
 	struct drm_device *drm = node->minor->dev;
-	struct arcpgu_drm_private *arcpgu = drm->dev_private;
+	struct arcpgu_drm_private *arcpgu = dev_to_arcpgu(drm);
 	unsigned long clkrate = clk_get_rate(arcpgu->clk);
 	unsigned long mode_clock = arcpgu->crtc.mode.crtc_clock * 1000;
 
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
