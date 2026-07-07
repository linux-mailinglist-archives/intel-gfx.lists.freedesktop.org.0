Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fOM+I9QFTWqwtgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 15:57:40 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34ED771C368
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 15:57:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b="f/p74NQG";
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=bZb6huuQ;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b="f/p74NQG";
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=bZb6huuQ;
	dmarc=pass (policy=none) header.from=suse.de;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E56010ED3F;
	Tue,  7 Jul 2026 13:57:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07B7610ED3F
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jul 2026 13:57:36 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id CE9BD741E0;
 Tue,  7 Jul 2026 13:57:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1783432650; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=YifDnmK82gFn50n9gIPI//YYkdL4JukIrrg2Jw2g5D0=;
 b=f/p74NQGWjJ1JSiGxgZSaQ0XAuitEjQZF/i+mHFmh7OvZecl3T+YB5Y4kPEmp/A1cmc4EK
 Qhk1MZ4SSp3Au7Ra4bEGcbWO3bKRutqiXkcrcWFtRG139RbkqW8p1r1rq9UdY3BMVe0DGB
 2IKlC6svopgnTq4yGFP9I/RLF24MX9A=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1783432650;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=YifDnmK82gFn50n9gIPI//YYkdL4JukIrrg2Jw2g5D0=;
 b=bZb6huuQ6ui3An99WiqPWURaeYQECZUJ7C1dkU4McVIQpyYsSugXD4k0psE5WSPsiw1TR9
 aPPX27ePEbvi8LAg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1783432650; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=YifDnmK82gFn50n9gIPI//YYkdL4JukIrrg2Jw2g5D0=;
 b=f/p74NQGWjJ1JSiGxgZSaQ0XAuitEjQZF/i+mHFmh7OvZecl3T+YB5Y4kPEmp/A1cmc4EK
 Qhk1MZ4SSp3Au7Ra4bEGcbWO3bKRutqiXkcrcWFtRG139RbkqW8p1r1rq9UdY3BMVe0DGB
 2IKlC6svopgnTq4yGFP9I/RLF24MX9A=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1783432650;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=YifDnmK82gFn50n9gIPI//YYkdL4JukIrrg2Jw2g5D0=;
 b=bZb6huuQ6ui3An99WiqPWURaeYQECZUJ7C1dkU4McVIQpyYsSugXD4k0psE5WSPsiw1TR9
 aPPX27ePEbvi8LAg==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 47BE6779AE;
 Tue,  7 Jul 2026 13:57:30 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id 6DxSEMoFTWoFSgAAD6G6ig
 (envelope-from <tzimmermann@suse.de>); Tue, 07 Jul 2026 13:57:30 +0000
From: Thomas Zimmermann <tzimmermann@suse.de>
To: lukas@wunner.de, jfalempe@redhat.com, alexander.deucher@amd.com,
 christian.koenig@amd.com, airlied@gmail.com, simona@ffwll.ch,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, tursulin@ursulin.net, lyude@redhat.com,
 dakr@kernel.org, deller@gmx.de
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, nouveau@lists.freedesktop.org,
 linux-fbdev@vger.kernel.org, sashiko-reviews@lists.linux.dev,
 Thomas Zimmermann <tzimmermann@suse.de>
Subject: [PATCH 02/10] drm/client: Add acquire_outputs callback;
 implement for fbdev emulation
Date: Tue,  7 Jul 2026 15:38:09 +0200
Message-ID: <20260707135724.247562-3-tzimmermann@suse.de>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260707135724.247562-1-tzimmermann@suse.de>
References: <20260707135724.247562-1-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Flag: NO
X-Spam-Score: -2.78
X-Spam-Level: 
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[suse.de,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:lukas@wunner.de,m:jfalempe@redhat.com,m:alexander.deucher@amd.com,m:christian.koenig@amd.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:rodrigo.vivi@intel.com,m:tursulin@ursulin.net,m:lyude@redhat.com,m:dakr@kernel.org,m:deller@gmx.de,m:dri-devel@lists.freedesktop.org,m:amd-gfx@lists.freedesktop.org,m:nouveau@lists.freedesktop.org,m:linux-fbdev@vger.kernel.org,m:sashiko-reviews@lists.linux.dev,m:tzimmermann@suse.de,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[wunner.de,redhat.com,amd.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,intel.com,ursulin.net,gmx.de];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	FORGED_SENDER(0.00)[tzimmermann@suse.de,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	DKIM_TRACE(0.00)[suse.de:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[tzimmermann@suse.de,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,suse.de:from_mime,suse.de:email,suse.de:mid,suse.de:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 34ED771C368

Add the callback acquire_outputs to drm_client_funcs to inform an internal
DRM client that vga-switcheroo is about to switch the physical outputs to
the client's device. Allows the client to prepare its internal state for
the upcoming switch.

Wire up the DRM client helpers to invoke the helper for a device's
clients.

Implement acquire_outputs for fbdev emulation. Invoke fb_switch_outputs(),
which remaps framebuffers to virtual terminals in fbcon. Currently this
is still being done by vga-switcheroo. With more DRM clients becoming
available, vga-switcheroo needs to become client agonostic.

Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
---
 drivers/gpu/drm/clients/drm_fbdev_client.c | 23 +++++++++++++++-------
 drivers/gpu/drm/drm_client_event.c         | 18 +++++++++++++++++
 include/drm/drm_client.h                   | 14 +++++++++++++
 include/drm/drm_client_event.h             |  3 +++
 4 files changed, 51 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/clients/drm_fbdev_client.c b/drivers/gpu/drm/clients/drm_fbdev_client.c
index 91d196a397cf..827f32668714 100644
--- a/drivers/gpu/drm/clients/drm_fbdev_client.c
+++ b/drivers/gpu/drm/clients/drm_fbdev_client.c
@@ -47,6 +47,14 @@ static int drm_fbdev_client_restore(struct drm_client_dev *client, bool force)
 	return 0;
 }
 
+static void drm_fbdev_client_acquire_outputs(struct drm_client_dev *client)
+{
+	struct drm_fb_helper *fb_helper = drm_fb_helper_from_client(client);
+
+	if (fb_helper->info)
+		fb_switch_outputs(fb_helper->info);
+}
+
 static int drm_fbdev_client_hotplug(struct drm_client_dev *client)
 {
 	struct drm_fb_helper *fb_helper = drm_fb_helper_from_client(client);
@@ -95,13 +103,14 @@ static int drm_fbdev_client_resume(struct drm_client_dev *client)
 }
 
 static const struct drm_client_funcs drm_fbdev_client_funcs = {
-	.owner		= THIS_MODULE,
-	.free		= drm_fbdev_client_free,
-	.unregister	= drm_fbdev_client_unregister,
-	.restore	= drm_fbdev_client_restore,
-	.hotplug	= drm_fbdev_client_hotplug,
-	.suspend	= drm_fbdev_client_suspend,
-	.resume		= drm_fbdev_client_resume,
+	.owner		 = THIS_MODULE,
+	.free		 = drm_fbdev_client_free,
+	.unregister	 = drm_fbdev_client_unregister,
+	.restore	 = drm_fbdev_client_restore,
+	.acquire_outputs = drm_fbdev_client_acquire_outputs,
+	.hotplug	 = drm_fbdev_client_hotplug,
+	.suspend	 = drm_fbdev_client_suspend,
+	.resume		 = drm_fbdev_client_resume,
 };
 
 /**
diff --git a/drivers/gpu/drm/drm_client_event.c b/drivers/gpu/drm/drm_client_event.c
index 7b3e362f7926..f0af584da23c 100644
--- a/drivers/gpu/drm/drm_client_event.c
+++ b/drivers/gpu/drm/drm_client_event.c
@@ -123,6 +123,24 @@ void drm_client_dev_restore(struct drm_device *dev, bool force)
 	mutex_unlock(&dev->clientlist_mutex);
 }
 
+void drm_client_dev_acquire_outputs(struct drm_device *dev)
+{
+	struct drm_client_dev *client;
+
+	if (!drm_core_check_feature(dev, DRIVER_MODESET))
+		return;
+
+	mutex_lock(&dev->clientlist_mutex);
+	list_for_each_entry(client, &dev->clientlist, list) {
+		if (!client->funcs || !client->funcs->acquire_outputs)
+			continue;
+
+		client->funcs->acquire_outputs(client);
+	}
+	mutex_unlock(&dev->clientlist_mutex);
+}
+EXPORT_SYMBOL(drm_client_dev_acquire_outputs);
+
 static int drm_client_suspend(struct drm_client_dev *client)
 {
 	struct drm_device *dev = client->dev;
diff --git a/include/drm/drm_client.h b/include/drm/drm_client.h
index 49a21f3dcb36..10a0cae3e48f 100644
--- a/include/drm/drm_client.h
+++ b/include/drm/drm_client.h
@@ -66,6 +66,20 @@ struct drm_client_funcs {
 	 */
 	int (*restore)(struct drm_client_dev *client, bool force);
 
+	/**
+	 * @acquire_outputs:
+	 *
+	 * Called by vga-switcheroo. Informs the client that the outputs will
+	 * be switched to its device. When @acquire_outputs runs, the outputs
+	 * have not been switched yet. The client should only prepare the software
+	 * state. After the switch happened, the client might get a hotplug
+	 * event to update the hardware state.
+	 *
+	 * This callback exists for remapping framebuffers to virtual terminals
+	 * in fbcon.
+	 */
+	void (*acquire_outputs)(struct drm_client_dev *client);
+
 	/**
 	 * @hotplug:
 	 *
diff --git a/include/drm/drm_client_event.h b/include/drm/drm_client_event.h
index 79369c755bc9..c93f404bae1d 100644
--- a/include/drm/drm_client_event.h
+++ b/include/drm/drm_client_event.h
@@ -11,6 +11,7 @@ struct drm_device;
 void drm_client_dev_unregister(struct drm_device *dev);
 void drm_client_dev_hotplug(struct drm_device *dev);
 void drm_client_dev_restore(struct drm_device *dev, bool force);
+void drm_client_dev_acquire_outputs(struct drm_device *dev);
 void drm_client_dev_suspend(struct drm_device *dev);
 void drm_client_dev_resume(struct drm_device *dev);
 #else
@@ -20,6 +21,8 @@ static inline void drm_client_dev_hotplug(struct drm_device *dev)
 { }
 static inline void drm_client_dev_restore(struct drm_device *dev, bool force)
 { }
+static inline void drm_client_dev_acquire_outputs(struct drm_device *dev)
+{ }
 static inline void drm_client_dev_suspend(struct drm_device *dev)
 { }
 static inline void drm_client_dev_resume(struct drm_device *dev)
-- 
2.54.0

