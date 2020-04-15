Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A781A94B9
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 09:42:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92A576E8BD;
	Wed, 15 Apr 2020 07:41:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBF8989BF6
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 07:41:28 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id a81so17656555wmf.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 00:41:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bRo5nnYVjQqUFDXALZZ8AWPrX15JFoOTAWWiUZPvoHU=;
 b=UeUH8xtoWK03WW9cgtVtUf7jjExZorCMNdrtJD3JM8aArNbhnXCUQzK1dXs96Cu4Xp
 6D4VA7smjFJRDiK2DW4vE9pqWV68L2kWDThjuyN1aDCdSBqakXK+oO2ZkVyQEDUGVVdw
 U21Thd/EfXiNVYOyvCfBZ7AVmoALJxWR3IIS4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bRo5nnYVjQqUFDXALZZ8AWPrX15JFoOTAWWiUZPvoHU=;
 b=ICUza+8BzaWb5JKOBXWjn/UjZ0JLczGl0swYzmaclT7AdJb9q57dd3iG79nhR+Lh86
 xTIQGCXmocVdglib/vQwK5on2ck3Jhfcl5BV2yD7Ya4QCN50EoRoGs25brXouUvgWEZW
 8oJVn3ipEBPbJQyjZ9QNEsRNs9N14KU9Y/9+34Gw5U+tpGpaW1ks6C1PXiyUJt0OLIRL
 jTQg7nuSjBs6ZZpTf388KQherYpEgKiG9R+vlFqheGnTcGWL0VMXi5/sfupstSqlOKEd
 5VxDWdnX8whJ+YThpzzb+ELvBq0OTQn/TJV39zsDMKMX7TnDogpHnBMFIVxdNVVlgyu9
 gwgw==
X-Gm-Message-State: AGi0PuZOQgbMuIeiF3Gvv1dRmxqth33LozWRqmd98TWJZVjA4/yfLbKZ
 HRiLMQS71S+Ux4xFgTDsn7SFoCH526Q=
X-Google-Smtp-Source: APiQypJCyVoc+uOonOx78MUzc0MyyQ0zz28obMi0VrDQtpefH8pWjrYOCniQ5/J7ZtET42keTJUd2A==
X-Received: by 2002:a1c:7ed7:: with SMTP id z206mr3566826wmc.64.1586936486545; 
 Wed, 15 Apr 2020 00:41:26 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u30sm1878552wru.13.2020.04.15.00.41.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 00:41:25 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Wed, 15 Apr 2020 09:40:19 +0200
Message-Id: <20200415074034.175360-45-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 44/59] drm/arc: Drop surplus connector
 registration
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
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

drm_connector_register does nothing before drm_dev_register(), it
is meant for hotpluggable connectors only. Same for the unregister side.

Signed-off-by: Daniel Vetter <daniel.vetter@ffwll.ch>
---
 drivers/gpu/drm/arc/arcpgu_sim.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/arc/arcpgu_sim.c b/drivers/gpu/drm/arc/arcpgu_sim.c
index e42fe5d05a3d..3772df1647aa 100644
--- a/drivers/gpu/drm/arc/arcpgu_sim.c
+++ b/drivers/gpu/drm/arc/arcpgu_sim.c
@@ -29,7 +29,6 @@ static int arcpgu_drm_connector_get_modes(struct drm_connector *connector)
 
 static void arcpgu_drm_connector_destroy(struct drm_connector *connector)
 {
-	drm_connector_unregister(connector);
 	drm_connector_cleanup(connector);
 }
 
@@ -80,7 +79,6 @@ int arcpgu_drm_sim_init(struct drm_device *drm, struct device_node *np)
 	ret = drm_connector_attach_encoder(connector, encoder);
 	if (ret < 0) {
 		dev_err(drm->dev, "could not attach connector to encoder\n");
-		drm_connector_unregister(connector);
 		goto error_connector_cleanup;
 	}
 
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
