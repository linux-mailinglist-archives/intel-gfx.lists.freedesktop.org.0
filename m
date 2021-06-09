Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ACBFE3A1EF0
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 23:24:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2547E6EB41;
	Wed,  9 Jun 2021 21:24:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-41104.protonmail.ch (mail-41104.protonmail.ch
 [185.70.41.104])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 580D86EB41
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jun 2021 21:24:12 +0000 (UTC)
Received: from mail-03.mail-europe.com (mail-0301.mail-europe.com
 [188.165.51.139])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits))
 (No client certificate requested)
 by mail-41104.protonmail.ch (Postfix) with ESMTPS id 4G0g8p6cYGz4xn82
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jun 2021 21:24:10 +0000 (UTC)
Authentication-Results: mail-41104.protonmail.ch;
 dkim=pass (2048-bit key) header.d=emersion.fr header.i=@emersion.fr
 header.b="hQBhLhVm"
Date: Wed, 09 Jun 2021 21:23:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emersion.fr;
 s=protonmail3; t=1623273847;
 bh=D+ACLAmLPQ5dBv9UiHgwR4PZFqis8ssRuE9zja0/b20=;
 h=Date:To:From:Cc:Reply-To:Subject:From;
 b=hQBhLhVmqv1cyqvqr2JDFuq5p9TAS81wiRGwfJikG0bFfgXPU3906hromnuCmSj4Q
 F5sgltxwWTv8ROLXQnh7Q2UE3PcOziWxBP/bIRQ7EtmEdbGQobgieciRnD7o21/y+2
 9sW+pyDVe4MMVFsXDWwu1+cJqRGal6ac87Ri8UldQkPLkEaSyjjbAvU9cntZebnQe4
 geGAIgr2AIiN4WIymH9/GcKp1uWPCMaU8kCICDq2Hk93NNNy11vPyuu7OcwUtp2SFz
 /idqalXq5cUIihAZzl6bd8RAO+zrC8rMi7GB+ScOn9OSLVBybcKOkntBG6z8NKkWJ7
 9vGOpfXmBqdew==
To: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
From: Simon Ser <contact@emersion.fr>
Message-ID: <cSqLvJmgHix8R8X5lp2E2h6Z8zLOKxDkLfkm8mL3Zg@cp3-web-029.plabs.ch>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
 autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
 mailout.protonmail.ch
Subject: [Intel-gfx] [PATCH v2 5/7] drm/probe-helper: use
 drm_kms_helper_connector_hotplug_event
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
Reply-To: Simon Ser <contact@emersion.fr>
Cc: pekka.paalanen@collabora.com, michel@daenzer.net, alexander.deucher@amd.com,
 harry.wentland@amd.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If an hotplug event only updates a single connector, use
drm_kms_helper_connector_hotplug_event instead of
drm_kms_helper_hotplug_event.

Signed-off-by: Simon Ser <contact@emersion.fr>
---
 drivers/gpu/drm/drm_probe_helper.c | 19 +++++++++++++++----
 1 file changed, 15 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/drm_probe_helper.c b/drivers/gpu/drm/drm_probe_helper.c
index 8cc673267cba..f4130c1a90e2 100644
--- a/drivers/gpu/drm/drm_probe_helper.c
+++ b/drivers/gpu/drm/drm_probe_helper.c
@@ -843,7 +843,7 @@ EXPORT_SYMBOL(drm_kms_helper_poll_fini);
  */
 bool drm_helper_hpd_irq_event(struct drm_device *dev)
 {
-	struct drm_connector *connector;
+	struct drm_connector *connector, *changed_connector = NULL;
 	struct drm_connector_list_iter conn_iter;
 	enum drm_connector_status old_status;
 	bool changed = false;
@@ -883,16 +883,27 @@ bool drm_helper_hpd_irq_event(struct drm_device *dev)
 		 * Check if epoch counter had changed, meaning that we need
 		 * to send a uevent.
 		 */
-		if (old_epoch_counter != connector->epoch_counter)
+		if (old_epoch_counter != connector->epoch_counter) {
+			if (changed) {
+				if (changed_connector)
+					drm_connector_put(changed_connector);
+				changed_connector = NULL;
+			} else {
+				drm_connector_get(connector);
+				changed_connector = connector;
+			}
 			changed = true;
+		}
 
 	}
 	drm_connector_list_iter_end(&conn_iter);
 	mutex_unlock(&dev->mode_config.mutex);
 
-	if (changed) {
+	if (changed_connector) {
+		drm_kms_helper_connector_hotplug_event(changed_connector);
+		drm_connector_put(changed_connector);
+	} else if (changed) {
 		drm_kms_helper_hotplug_event(dev);
-		DRM_DEBUG_KMS("Sent hotplug event\n");
 	}
 
 	return changed;
-- 
2.31.1


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
