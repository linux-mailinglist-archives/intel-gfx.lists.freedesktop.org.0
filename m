Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B7DFE5725CB
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Jul 2022 21:40:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 402F795B39;
	Tue, 12 Jul 2022 19:40:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 277C69643A
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Jul 2022 19:39:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1657654795;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=CYNsjCN6Tw/oqp4zM9jwqxiybSMoea1HMnVsBx4lMHQ=;
 b=YybnM3IQgfWajuzAu0tMVNGo+T2CgKIQNktUugA8wBysruCDAKfA58uAjoR4YEoi2fK4Rt
 zoHKkcMoy4o/hnQDQ+a5sYuvQBT62RumZkFCXJyMznhLSxTVvHhQt6Ub+FKy9fbowD9EyQ
 XdQLR7fyMKq/S3r1gmqsBNyJSHMBZ9Q=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-671-_SEaw1onPbygIvvUCEm2wQ-1; Tue, 12 Jul 2022 15:39:51 -0400
X-MC-Unique: _SEaw1onPbygIvvUCEm2wQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9CC6F18E5280;
 Tue, 12 Jul 2022 19:39:49 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.39.192.30])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DF12340E80E1;
 Tue, 12 Jul 2022 19:39:45 +0000 (UTC)
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
Date: Tue, 12 Jul 2022 21:38:48 +0200
Message-Id: <20220712193910.439171-8-hdegoede@redhat.com>
In-Reply-To: <20220712193910.439171-1-hdegoede@redhat.com>
References: <20220712193910.439171-1-hdegoede@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
Subject: [Intel-gfx] [PATCH v2 07/29] ACPI: video: Remove acpi_video_bus
 from list before tearing it down
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
 amd-gfx@lists.freedesktop.org, Len Brown <lenb@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move the list_del removing an acpi_video_bus from video_bus_head
on teardown to before the teardown is done, to avoid code iterating
over the video_bus_head list seeing acpi_video_bus objects on there
which are (partly) torn down already.

Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/acpi/acpi_video.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/acpi/acpi_video.c b/drivers/acpi/acpi_video.c
index 43177c20ce4f..09899b7f7fab 100644
--- a/drivers/acpi/acpi_video.c
+++ b/drivers/acpi/acpi_video.c
@@ -2117,14 +2117,14 @@ static int acpi_video_bus_remove(struct acpi_device *device)
 
 	video = acpi_driver_data(device);
 
-	acpi_video_bus_remove_notify_handler(video);
-	acpi_video_bus_unregister_backlight(video);
-	acpi_video_bus_put_devices(video);
-
 	mutex_lock(&video_list_lock);
 	list_del(&video->entry);
 	mutex_unlock(&video_list_lock);
 
+	acpi_video_bus_remove_notify_handler(video);
+	acpi_video_bus_unregister_backlight(video);
+	acpi_video_bus_put_devices(video);
+
 	kfree(video->attached_array);
 	kfree(video);
 
-- 
2.36.0

