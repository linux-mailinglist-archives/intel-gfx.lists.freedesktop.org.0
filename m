Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 452595A01D1
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 21:13:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A263C2925;
	Wed, 24 Aug 2022 19:12:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C509D10E7FE
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Aug 2022 18:44:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1660848246;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=R3rOQzgKrQ1/uYxJD4dj6uASJ98gdoTywsZVqSCz0lw=;
 b=LbPaahsPmmzK1JkUz9kKvGdMoHb2RaJNQnm52Yvrqjl10xHdHz4gILSKpxduLgiWzIJdeP
 xr485eE2TbPcPzJ4+XQn4zhiLMbpQ0dBW6ZZ1RkFdGnQI/CqNd0CI+nOjEUl04c78Q1pXb
 04mhxAipTvyFAdRUpZKgVXwTZkgBeDg=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-490-r7leWSVmNKe-_eED7lIUjw-1; Thu, 18 Aug 2022 14:44:03 -0400
X-MC-Unique: r7leWSVmNKe-_eED7lIUjw-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
 [10.11.54.10])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8E76C800124;
 Thu, 18 Aug 2022 18:44:02 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.39.192.20])
 by smtp.corp.redhat.com (Postfix) with ESMTP id ED7A0492C3B;
 Thu, 18 Aug 2022 18:43:58 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Ben Skeggs <bskeggs@redhat.com>,
	Karol Herbst <kherbst@redhat.com>, Lyude <lyude@redhat.com>,
	Daniel Dadap <ddadap@nvidia.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>,
	Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
	Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	Pan@freedesktop.org, Xinhui <Xinhui.Pan@amd.com>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	Mika Westerberg <mika.westerberg@linux.intel.com>,
	Lukas Wunner <lukas@wunner.de>, Mark Gross <markgross@kernel.org>,
	Andy Shevchenko <andy@kernel.org>
Date: Thu, 18 Aug 2022 20:42:43 +0200
Message-Id: <20220818184302.10051-13-hdegoede@redhat.com>
In-Reply-To: <20220818184302.10051-1-hdegoede@redhat.com>
References: <20220818184302.10051-1-hdegoede@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
Subject: [Intel-gfx] [PATCH v3 12/31] drm/nouveau: Register ACPI video
 backlight when nv_backlight registration fails
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
Cc: linux-acpi@vger.kernel.org, David Airlie <airlied@linux.ie>,
 nouveau@lists.freedesktop.org, intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel@lists.freedesktop.org, platform-driver-x86@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 Len Brown <lenb@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Typically the acpi_video driver will initialize before nouveau, which
used to cause /sys/class/backlight/acpi_video0 to get registered and then
nouveau would register its own nv_backlight device later. After which
the drivers/acpi/video_detect.c code unregistered the acpi_video0 device
to avoid there being 2 backlight devices.

This means that userspace used to briefly see 2 devices and the
disappearing of acpi_video0 after a brief time confuses the systemd
backlight level save/restore code, see e.g.:
https://bbs.archlinux.org/viewtopic.php?id=269920

To fix this the ACPI video code has been modified to make backlight class
device registration a separate step, relying on the drm/kms driver to
ask for the acpi_video backlight registration after it is done setting up
its native backlight device.

Add a call to the new acpi_video_register_backlight() when native backlight
device registration has failed / was skipped to ensure that there is a
backlight device available before the drm_device gets registered with
userspace.

Reviewed-by: Lyude Paul <lyude@redhat.com>
Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/gpu/drm/nouveau/nouveau_backlight.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/nouveau/nouveau_backlight.c b/drivers/gpu/drm/nouveau/nouveau_backlight.c
index 91c504c7b82c..befff2a8b763 100644
--- a/drivers/gpu/drm/nouveau/nouveau_backlight.c
+++ b/drivers/gpu/drm/nouveau/nouveau_backlight.c
@@ -437,6 +437,13 @@ nouveau_backlight_init(struct drm_connector *connector)
 
 fail_alloc:
 	kfree(bl);
+	/*
+	 * If we get here we have an internal panel, but no nv_backlight,
+	 * try registering an ACPI video backlight device instead.
+	 */
+	if (ret == 0)
+		acpi_video_register_backlight();
+
 	return ret;
 }
 
-- 
2.37.2

