Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2C9C24C590
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Aug 2020 20:32:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5ED9B6EA04;
	Thu, 20 Aug 2020 18:32:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81B2B6E9E6
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Aug 2020 18:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1597948324;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=DjOACk7+sj9DOgLuw8r03ZTGhj9N7xxOv/mPD0g7leg=;
 b=gf+tZPFwtvIHclVeImz1wxypDhcnmS8GNdTQ7Ga+VAn6ar0RCedgAJmqlcibLJ7h0mskN4
 qRd843/uW0e3dBzr/1djrZEwIAweZlTBS1RlherB4Hi5cslYnFlGJRL+KfVruT8iXr0pqL
 aXvzLTtKimi+0g5az49aJPrf+Eni0KA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-242-cfFYDNkeMYet2_en-uCrtw-1; Thu, 20 Aug 2020 14:30:58 -0400
X-MC-Unique: cfFYDNkeMYet2_en-uCrtw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 52E83186A580;
 Thu, 20 Aug 2020 18:30:57 +0000 (UTC)
Received: from Whitewolf.redhat.com (ovpn-120-42.rdu2.redhat.com
 [10.10.120.42])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 97B265DA7E;
 Thu, 20 Aug 2020 18:30:56 +0000 (UTC)
From: Lyude Paul <lyude@redhat.com>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 nouveau@lists.freedesktop.org
Date: Thu, 20 Aug 2020 14:30:03 -0400
Message-Id: <20200820183012.288794-12-lyude@redhat.com>
In-Reply-To: <20200820183012.288794-1-lyude@redhat.com>
References: <20200820183012.288794-1-lyude@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Subject: [Intel-gfx] [RFC v2 11/20] drm/nouveau/kms: Move
 drm_dp_cec_unset_edid() into nouveau_connector_detect()
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
Cc: David Airlie <airlied@linux.ie>, Ben Skeggs <bskeggs@redhat.com>,
 open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For whatever reason we currently unset the EDID for DP CEC support when
responding to the connector being unplugged, instead of just doing it in
nouveau_connector_detect() where we set the CEC EDID. This isn't really
needed and could even potentially cause us to forget to unset the EDID
if the connector is removed without a corresponding hpd event, so let's
fix that.

Signed-off-by: Lyude Paul <lyude@redhat.com>
Reviewed-by: Ben Skeggs <bskeggs@redhat.com>
---
 drivers/gpu/drm/nouveau/nouveau_connector.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/nouveau/nouveau_connector.c b/drivers/gpu/drm/nouveau/nouveau_connector.c
index b90591114faaf..4a29f691c08e4 100644
--- a/drivers/gpu/drm/nouveau/nouveau_connector.c
+++ b/drivers/gpu/drm/nouveau/nouveau_connector.c
@@ -633,10 +633,11 @@ nouveau_connector_detect(struct drm_connector *connector, bool force)
 			conn_status = connector_status_connected;
 			goto out;
 		}
-
 	}
 
  out:
+	if (!nv_connector->edid)
+		drm_dp_cec_unset_edid(&nv_connector->aux);
 
 	pm_runtime_mark_last_busy(dev->dev);
 	pm_runtime_put_autosuspend(dev->dev);
@@ -1174,8 +1175,6 @@ nouveau_connector_hotplug(struct nvif_notify *notify)
 		return NVIF_NOTIFY_DROP;
 	}
 
-	if (!plugged)
-		drm_dp_cec_unset_edid(&nv_connector->aux);
 	NV_DEBUG(drm, "%splugged %s\n", plugged ? "" : "un", name);
 
 	drm_helper_hpd_irq_event(connector->dev);
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
