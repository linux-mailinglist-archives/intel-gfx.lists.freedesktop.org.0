Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DB63320089
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Feb 2021 22:54:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A62276EC29;
	Fri, 19 Feb 2021 21:54:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D5456EC2D
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Feb 2021 21:54:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1613771654;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=jRa+2SicnIMtHCYA35fA+LYyV9MLyYbdd/Rz9pKuKs8=;
 b=YHbTmxMSGNF3LGgJ0UG8QFXHFuArQGbjaedFdEgg7z57keKg3cISK5UeW/QrECeWPyDfor
 T83YthQNsm/NPpqEyGRBgmozn3TreXnZpnPHVoOE4Kt5mYQdnRb6sZcn0qMaRRnTzE5X2j
 KJbb0lipzF8BxWPU0Pc4FsPsEDlpiU4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-74-n8lJFZ3aPnaxU-irezSeuQ-1; Fri, 19 Feb 2021 16:54:12 -0500
X-MC-Unique: n8lJFZ3aPnaxU-irezSeuQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 70A64107ACC7;
 Fri, 19 Feb 2021 21:54:10 +0000 (UTC)
Received: from Whitewolf.redhat.com (ovpn-118-5.rdu2.redhat.com [10.10.118.5])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5F3996A03C;
 Fri, 19 Feb 2021 21:54:08 +0000 (UTC)
From: Lyude Paul <lyude@redhat.com>
To: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, nouveau@lists.freedesktop.org,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>
Date: Fri, 19 Feb 2021 16:53:04 -0500
Message-Id: <20210219215326.2227596-9-lyude@redhat.com>
In-Reply-To: <20210219215326.2227596-1-lyude@redhat.com>
References: <20210219215326.2227596-1-lyude@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Subject: [Intel-gfx] [PATCH 08/30] drm/bridge/analogix/anx78xx: Setup
 encoder before registering connector
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>, Jonas Karlman <jonas@kwiboo.se>,
 David Airlie <airlied@linux.ie>, Neil Armstrong <narmstrong@baylibre.com>,
 open list <linux-kernel@vger.kernel.org>, Andrzej Hajda <a.hajda@samsung.com>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, Torsten Duwe <duwe@lst.de>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since encoder mappings for connectors are exposed to userspace, we should
be attaching the encoder before exposing the connector to userspace. Just a
drive-by fix for an issue I noticed while fixing up usages of
drm_dp_aux_init()/drm_dp_aux_register() across the tree.

Signed-off-by: Lyude Paul <lyude@redhat.com>
---
 drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c b/drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c
index ec4607dc01eb..338dd8531d4b 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c
@@ -924,12 +924,6 @@ static int anx78xx_bridge_attach(struct drm_bridge *bridge,
 	drm_connector_helper_add(&anx78xx->connector,
 				 &anx78xx_connector_helper_funcs);
 
-	err = drm_connector_register(&anx78xx->connector);
-	if (err) {
-		DRM_ERROR("Failed to register connector: %d\n", err);
-		return err;
-	}
-
 	anx78xx->connector.polled = DRM_CONNECTOR_POLL_HPD;
 
 	err = drm_connector_attach_encoder(&anx78xx->connector,
@@ -939,6 +933,12 @@ static int anx78xx_bridge_attach(struct drm_bridge *bridge,
 		return err;
 	}
 
+	err = drm_connector_register(&anx78xx->connector);
+	if (err) {
+		DRM_ERROR("Failed to register connector: %d\n", err);
+		return err;
+	}
+
 	return 0;
 }
 
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
