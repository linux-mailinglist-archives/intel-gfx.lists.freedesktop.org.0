Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0215758D0CD
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Aug 2022 01:57:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D42112BE97;
	Mon,  8 Aug 2022 23:55:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FF2E12B765
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Aug 2022 23:54:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1660002896;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=p7A2r6sVUQJsBUTGew9D8eYmGw8KPaWXsOstYiwXz+Y=;
 b=EoriPj+i+SZakujfp2pTFH7OmF4H0wt1JqHOqGJRMXh8uUqkWRmIDyhTKIANMRXbOUZh3s
 K8Y8/1ShzhotuVnj5ANGG8XRy9Von3UB0lGP7i33GoC05oLIcIzdXQuWQ4JCvApt9K3aRd
 GkRY2bGFsOhBuOd2D2RmsK94JZCUL1A=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-450-OOBjcF9VNXOhnrPWyd45Zw-1; Mon, 08 Aug 2022 19:54:52 -0400
X-MC-Unique: OOBjcF9VNXOhnrPWyd45Zw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B8D71101A59F;
 Mon,  8 Aug 2022 23:54:51 +0000 (UTC)
Received: from emerald.lyude.net (unknown [10.22.17.154])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EB839C15BA1;
 Mon,  8 Aug 2022 23:54:50 +0000 (UTC)
From: Lyude Paul <lyude@redhat.com>
To: dri-devel@lists.freedesktop.org, nouveau@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Date: Mon,  8 Aug 2022 19:51:57 -0400
Message-Id: <20220808235203.123892-13-lyude@redhat.com>
In-Reply-To: <20220808235203.123892-1-lyude@redhat.com>
References: <20220808235203.123892-1-lyude@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
Subject: [Intel-gfx] [RFC v2 12/18] drm/nouveau/kms: Pull mst state in for
 all modesets
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
Cc: Thomas Zimmermann <tzimmermann@suse.de>, Karol Herbst <kherbst@redhat.com>,
 Jani Nikula <jani.nikula@intel.com>, open list <linux-kernel@vger.kernel.org>,
 David Airlie <airlied@linux.ie>, Sean Paul <seanpaul@chromium.org>,
 Ben Skeggs <bskeggs@redhat.com>, Daniel Vetter <daniel@ffwll.ch>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Dave Airlie <airlied@redhat.com>,
 Fernando Ramos <greenfoo@u92.eu>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since we're going to be relying on atomic locking for payloads now (and the
MST mgr needs to track CRTCs), pull in the topology state for all modesets
in nv50_msto_atomic_check().

Signed-off-by: Lyude Paul <lyude@redhat.com>
Acked-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/nouveau/dispnv50/disp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/nouveau/dispnv50/disp.c b/drivers/gpu/drm/nouveau/dispnv50/disp.c
index 5669c8d747d7..24807aa9da5f 100644
--- a/drivers/gpu/drm/nouveau/dispnv50/disp.c
+++ b/drivers/gpu/drm/nouveau/dispnv50/disp.c
@@ -1049,7 +1049,7 @@ nv50_msto_atomic_check(struct drm_encoder *encoder,
 	if (ret)
 		return ret;
 
-	if (!crtc_state->mode_changed && !crtc_state->connectors_changed)
+	if (!drm_atomic_crtc_needs_modeset(crtc_state))
 		return 0;
 
 	/*
-- 
2.37.1

