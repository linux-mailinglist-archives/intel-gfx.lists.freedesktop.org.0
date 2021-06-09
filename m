Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 274E53A1EEB
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 23:24:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E76AB6EB38;
	Wed,  9 Jun 2021 21:24:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-40136.protonmail.ch (mail-40136.protonmail.ch
 [185.70.40.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6ABB46E409;
 Wed,  9 Jun 2021 21:24:00 +0000 (UTC)
Date: Wed, 09 Jun 2021 21:23:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emersion.fr;
 s=protonmail3; t=1623273837;
 bh=+2TgIcQOpe6dmWJy4MxbUcLVMP5RuX6A82OSZZa8ORY=;
 h=Date:To:From:Cc:Reply-To:Subject:From;
 b=dZWWIo10Q2abgozgfk99fXufl469DDRbzNJg21EOrlRZCLDw+t1jaUbAKoE+8kPp7
 txwEtG60zIFryW9X5/tqOoiuNSjglmRKyGpkMDFQIKyRpKhQSzWx1qOTZzZcWmNZAo
 +xcvNQbS1ZujELOScfMpnlX3e1QGLoNg5tuLPuEb92+iW8MUKjYHJy3Xv2OUZG/5jR
 RMlIxuNLc8y1W5vQ702bTI/cLSoPzLJ09IEsn4AW90gs+XMKq6k4mpWn4mVZGobv3J
 OpDBkTia2zs1KGEQ9bW2ijtgRwyxZh2fzlKcrvCGZ3kgR7Zjl8Pg2csDBpVzihbU3k
 I9OggJHNMjvMg==
To: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
From: Simon Ser <contact@emersion.fr>
Message-ID: <9EHiZemzDlTsVgq94MyyJvPwfH6OOcK7UR8RsDCr2GE@cp3-web-033.plabs.ch>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
 autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
 mailout.protonmail.ch
Subject: [Intel-gfx] [PATCH v2 4/7] amdgpu: use
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

When updating a single connector, use
drm_kms_helper_connector_hotplug_event instead of
drm_kms_helper_hotplug_event.

Signed-off-by: Simon Ser <contact@emersion.fr>
---
 drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c         | 8 ++++----
 drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_debugfs.c | 4 ++--
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
index 3267eb2e35dd..4b91534ff324 100644
--- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
+++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
@@ -2638,7 +2638,7 @@ static void handle_hpd_irq(void *param)
 		drm_modeset_unlock_all(dev);
 
 		if (aconnector->base.force == DRM_FORCE_UNSPECIFIED)
-			drm_kms_helper_hotplug_event(dev);
+			drm_kms_helper_connector_hotplug_event(connector);
 
 	} else if (dc_link_detect(aconnector->dc_link, DETECT_REASON_HPD)) {
 		if (new_connection_type == dc_connection_none &&
@@ -2652,7 +2652,7 @@ static void handle_hpd_irq(void *param)
 		drm_modeset_unlock_all(dev);
 
 		if (aconnector->base.force == DRM_FORCE_UNSPECIFIED)
-			drm_kms_helper_hotplug_event(dev);
+			drm_kms_helper_connector_hotplug_event(connector);
 	}
 	mutex_unlock(&aconnector->hpd_lock);
 
@@ -2805,7 +2805,7 @@ static void handle_hpd_rx_irq(void *param)
 			dm_restore_drm_connector_state(dev, connector);
 			drm_modeset_unlock_all(dev);
 
-			drm_kms_helper_hotplug_event(dev);
+			drm_kms_helper_connector_hotplug_event(connector);
 		} else if (dc_link_detect(dc_link, DETECT_REASON_HPDRX)) {
 
 			if (aconnector->fake_enable)
@@ -2818,7 +2818,7 @@ static void handle_hpd_rx_irq(void *param)
 			dm_restore_drm_connector_state(dev, connector);
 			drm_modeset_unlock_all(dev);
 
-			drm_kms_helper_hotplug_event(dev);
+			drm_kms_helper_connector_hotplug_event(connector);
 		}
 	}
 #ifdef CONFIG_DRM_AMD_DC_HDCP
diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_debugfs.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_debugfs.c
index 9fbbd0159119..221242b6e528 100644
--- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_debugfs.c
+++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_debugfs.c
@@ -1200,7 +1200,7 @@ static ssize_t trigger_hotplug(struct file *f, const char __user *buf,
 		dm_restore_drm_connector_state(dev, connector);
 		drm_modeset_unlock_all(dev);
 
-		drm_kms_helper_hotplug_event(dev);
+		drm_kms_helper_connector_hotplug_event(connector);
 	} else if (param[0] == 0) {
 		if (!aconnector->dc_link)
 			goto unlock;
@@ -1222,7 +1222,7 @@ static ssize_t trigger_hotplug(struct file *f, const char __user *buf,
 		dm_restore_drm_connector_state(dev, connector);
 		drm_modeset_unlock_all(dev);
 
-		drm_kms_helper_hotplug_event(dev);
+		drm_kms_helper_connector_hotplug_event(connector);
 	}
 
 unlock:
-- 
2.31.1


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
