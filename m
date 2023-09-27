Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AA597B01D2
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Sep 2023 12:28:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9CAB10E4CD;
	Wed, 27 Sep 2023 10:28:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.220.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1337410E4BB;
 Wed, 27 Sep 2023 10:28:19 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 93A752190B;
 Wed, 27 Sep 2023 10:28:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1695810497; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rU9uvM6o6zO2m+6R9JCWrxM9XMgSf/KQcbDmL2WU7EE=;
 b=ENTIQJKfzZOsIHkLJuKdjNXwTX7+EDPJ2rTjuiiuqettmAuLNO5kx42Xi+XvqLe/UkR+H8
 JEGDl/rBYiIpda38Zu3XgEeuchuYXQSfh3KrBo6HgGKq/BrQdnm12Y5DXieWIpqUtsEEDl
 m2uQ3WTzZhszTFq0A53m7o7iIGRrvoA=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1695810497;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rU9uvM6o6zO2m+6R9JCWrxM9XMgSf/KQcbDmL2WU7EE=;
 b=7eO6GYSSBozwX88ImeSjPqXFG487SxL7O67OzpZ6YJAlOACg70+nzGI9aXZmJT6rCAIPTQ
 rSjLVwM9vE7IP2CQ==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 55DE113A74;
 Wed, 27 Sep 2023 10:28:17 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id SGsGFMEDFGXlMgAAMHmgww
 (envelope-from <tzimmermann@suse.de>); Wed, 27 Sep 2023 10:28:17 +0000
From: Thomas Zimmermann <tzimmermann@suse.de>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, tvrtko.ursulin@linux.intel.com,
 ville.syrjala@linux.intel.com, imre.deak@intel.com,
 tejas.upadhyay@intel.com, javierm@redhat.com, airlied@gmail.com,
 daniel@ffwll.ch
Date: Wed, 27 Sep 2023 12:26:48 +0200
Message-ID: <20230927102808.18650-4-tzimmermann@suse.de>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230927102808.18650-1-tzimmermann@suse.de>
References: <20230927102808.18650-1-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 3/7] drm/client: Export
 drm_client_dev_unregister()
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
Cc: intel-gfx@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Export drm_client_dev_unregister() for use by the i915 driver. The
driver does not use drm_dev_unregister(), so it has to clean up the
in-kernel DRM clients by itself.

Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
---
 drivers/gpu/drm/drm_client.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/drm_client.c b/drivers/gpu/drm/drm_client.c
index b49f91b5d4b27..5d22387205d06 100644
--- a/drivers/gpu/drm/drm_client.c
+++ b/drivers/gpu/drm/drm_client.c
@@ -172,6 +172,18 @@ void drm_client_release(struct drm_client_dev *client)
 }
 EXPORT_SYMBOL(drm_client_release);
 
+/**
+ * drm_client_dev_unregister - Unregister clients
+ * @dev: DRM device
+ *
+ * This function releases all clients by calling each client's
+ * &drm_client_funcs.unregister callback. The callback function
+ * is responsibe for releaseing all resources including the client
+ * itself.
+ *
+ * The helper drm_dev_unregister() calls this function. Drivers
+ * that use it don't need to call this function themselves.
+ */
 void drm_client_dev_unregister(struct drm_device *dev)
 {
 	struct drm_client_dev *client, *tmp;
@@ -191,6 +203,7 @@ void drm_client_dev_unregister(struct drm_device *dev)
 	}
 	mutex_unlock(&dev->clientlist_mutex);
 }
+EXPORT_SYMBOL(drm_client_dev_unregister);
 
 /**
  * drm_client_dev_hotplug - Send hotplug event to clients
-- 
2.42.0

