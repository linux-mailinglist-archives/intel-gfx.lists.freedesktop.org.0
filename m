Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5076AB2D3
	for <lists+intel-gfx@lfdr.de>; Sun,  5 Mar 2023 23:11:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5859210E076;
	Sun,  5 Mar 2023 22:11:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B10E10E058;
 Sun,  5 Mar 2023 22:11:34 +0000 (UTC)
Received: from workpc.. (unknown [109.252.117.89])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 (Authenticated sender: dmitry.osipenko)
 by madras.collabora.co.uk (Postfix) with ESMTPSA id F1A806602121;
 Sun,  5 Mar 2023 22:11:30 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1678054292;
 bh=vvZQ1RzmWw+OhpZUUylpU4+SHylZhdfi8PierOA2nl4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=A6JoELeIio5uDjTp77vGHYZqgmGnLfqBufBVhxN2xFxzH8Q3OiXSukm0GBoLLPc8X
 wx1o+i8PiZqdNOATaINiEBOi/e5+db10UYxFvrDfyjgPGjaz6lA+kRQp7m+y/rrXzr
 4IdHvSzR8N7N37APrVdEjfrv9OPlvCeHUyzFK2cOF/ZiM0PjVZepAqzhsQKRyN9Hm1
 ltUwKfvdqkLY7UvreyWPYmpHF8/AqXqrR0GCKCi+B76Iikic7UmO5+eb7bRUdvbS7h
 jF6Us72kGta6+s66Pjq1ZjR6HSr9JYgtGVF6LBvlpmViUUhTx+KeCBUJbCkl8h7/LM
 FeffoWuji2Qow==
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
To: David Airlie <airlied@gmail.com>, Gerd Hoffmann <kraxel@redhat.com>,
 Gurchetan Singh <gurchetansingh@chromium.org>,
 Chia-I Wu <olvaffe@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Gustavo Padovan <gustavo.padovan@collabora.com>,
 Daniel Stone <daniel@fooishbar.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Qiang Yu <yuq825@gmail.com>, Steven Price <steven.price@arm.com>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Rob Herring <robh@kernel.org>
Date: Mon,  6 Mar 2023 01:10:03 +0300
Message-Id: <20230305221011.1404672-4-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230305221011.1404672-1-dmitry.osipenko@collabora.com>
References: <20230305221011.1404672-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v12 03/11] drm/shmem-helper: Add pages_pin_count
 field
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
Cc: intel-gfx@lists.freedesktop.org, kernel@collabora.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

And new pages_pin_count field to struct drm_gem_shmem_object that will
determine whether pages are evictable by memory shrinker. The pages will
be evictable only when pages_pin_count=0. This patch prepares code for
addition of the memory shrinker that will utilize the new field.

Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
---
 drivers/gpu/drm/drm_gem_shmem_helper.c | 7 +++++++
 include/drm/drm_gem_shmem_helper.h     | 9 +++++++++
 2 files changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/drm_gem_shmem_helper.c b/drivers/gpu/drm/drm_gem_shmem_helper.c
index a62c41336a7f..0c3abb0c2ea2 100644
--- a/drivers/gpu/drm/drm_gem_shmem_helper.c
+++ b/drivers/gpu/drm/drm_gem_shmem_helper.c
@@ -277,6 +277,8 @@ static int drm_gem_shmem_pin_locked(struct drm_gem_shmem_object *shmem)
 	drm_WARN_ON(obj->dev, obj->import_attach);
 
 	ret = drm_gem_shmem_get_pages(shmem);
+	if (!ret)
+		shmem->pages_pin_count++;
 
 	return ret;
 }
@@ -289,7 +291,12 @@ static void drm_gem_shmem_unpin_locked(struct drm_gem_shmem_object *shmem)
 
 	drm_WARN_ON(obj->dev, obj->import_attach);
 
+	if (drm_WARN_ON_ONCE(obj->dev, !shmem->pages_pin_count))
+		return;
+
 	drm_gem_shmem_put_pages(shmem);
+
+	shmem->pages_pin_count--;
 }
 
 /**
diff --git a/include/drm/drm_gem_shmem_helper.h b/include/drm/drm_gem_shmem_helper.h
index 20ddcd799df9..7d823c9fc480 100644
--- a/include/drm/drm_gem_shmem_helper.h
+++ b/include/drm/drm_gem_shmem_helper.h
@@ -39,6 +39,15 @@ struct drm_gem_shmem_object {
 	 */
 	unsigned int pages_use_count;
 
+	/**
+	 * @pages_pin_count:
+	 *
+	 * Reference count on the pinned pages table.
+	 * The pages allowed to be evicted by memory shrinker
+	 * only when the count is zero.
+	 */
+	unsigned int pages_pin_count;
+
 	/**
 	 * @madv: State for madvise
 	 *
-- 
2.39.2

