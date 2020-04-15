Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 581881A94CF
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 09:42:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 912CF6E8DB;
	Wed, 15 Apr 2020 07:41:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55C4089E33
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 07:41:27 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id f13so17852098wrm.13
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 00:41:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YF7jJSPkbBuyXOdtSAhkgBRsVNG/twSf98zfsqftH+Y=;
 b=kT/RPBFqhQxp8V1tvv3z21ZyN3yqNCxatU7q3DO0afN0XbWVr8UVE77IjTacD664de
 g+DI8DUWxzm8sKGMYhnEF+8KBXZhapRlfyR09trq1RW1llzUr2lYQGQJTxtggOPYP/T/
 z/trtwFkDaogoO/AmVMVNzPOOqc8w+Zpxf5nc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YF7jJSPkbBuyXOdtSAhkgBRsVNG/twSf98zfsqftH+Y=;
 b=LWi7nXEd1ngqdW3YwKd+IRlTjNmsAO/Oxz6gxQwClY+BoGy9vsbojpoHmSsTTgRlcg
 O7R2FctRhKFeeTsEaKfZFYgny/4nbDuKDUk0tQjx5YF/No+eHGIPjsDZNNsniTaghUFy
 d+jhsJUokP0e5WlJ6pw8hD5yCBJDyi2cxRuZ7+SJ7y+TYL2T9ReThhDU4iyWFAXmFiHm
 FTfoUIlvcnOEQKUFAs7ujNOh6kBhupRBuLcuBDRH7pplh13tmzTfHjjPBH/mT45CBJzt
 TAqasm1fRSlEfd6k2BCgYYoxEO5uHWUn0ejFU58x9eJCRhc6hbAlYGacJh3AWa3UTrqm
 1TIQ==
X-Gm-Message-State: AGi0PubEMSozNGhIiua43VmjIREfPfWRyxd+iDM2A4ZYNGvjwaBylarn
 cjpeP3J/nrzdUG49FeogokaomehuTEw=
X-Google-Smtp-Source: APiQypLb95tlY/oUTot+wPETIr6SgQH7du8JdQipcusLh6ZQK5qAcm8rj2+MSGUXVQMNPgkL40XNgw==
X-Received: by 2002:adf:fe03:: with SMTP id n3mr26846405wrr.315.1586936485469; 
 Wed, 15 Apr 2020 00:41:25 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u30sm1878552wru.13.2020.04.15.00.41.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 00:41:24 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Wed, 15 Apr 2020 09:40:18 +0200
Message-Id: <20200415074034.175360-44-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 43/59] drm/arc: Embedd a drm_connector for sim
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
 Alexey Brodkin <abrodkin@synopsys.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Removes the last devm_kzalloc, which means we're now prepared to use
drmm_mode_config_cleanup!

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
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
