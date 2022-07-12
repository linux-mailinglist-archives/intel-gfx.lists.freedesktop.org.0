Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A7D5725D2
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Jul 2022 21:40:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D14E96474;
	Tue, 12 Jul 2022 19:40:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9870B9646E
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Jul 2022 19:40:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1657654810;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Ie/A0Q4+OZ0IzjNtGrJ7PlSqzv0K4NldTGgm4aq8WDg=;
 b=Zf8BxiuNf4INszR/tIS/h6tcMpvduUWHJOJxmI1q/G0W19bDu0nAZYcN/ijfviGT+nvpz1
 CKSQYw8sFCeKx+Q4mcmbHbZYv5DPXb9fS/tr8hI4X4Ia6LZ9EPBhOrADv7zzHHmXwWgOi9
 ss0ypoNLsf0QDtKOMif0QdA0bwtHpYE=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-434-L7m-rIP9NlaNA57muWuvKw-1; Tue, 12 Jul 2022 15:39:54 -0400
X-MC-Unique: L7m-rIP9NlaNA57muWuvKw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A5F0F185A7B2;
 Tue, 12 Jul 2022 19:39:53 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.39.192.30])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D18ED40E80E1;
 Tue, 12 Jul 2022 19:39:49 +0000 (UTC)
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
Date: Tue, 12 Jul 2022 21:38:49 +0200
Message-Id: <20220712193910.439171-9-hdegoede@redhat.com>
In-Reply-To: <20220712193910.439171-1-hdegoede@redhat.com>
References: <20220712193910.439171-1-hdegoede@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
Subject: [Intel-gfx] [PATCH v2 08/29] ACPI: video: Simplify
 acpi_video_unregister_backlight()
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

When acpi_video_register() has not run yet the video_bus_head will be
empty, so there is no need to check the register_count flag first.

Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/acpi/acpi_video.c | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/acpi/acpi_video.c b/drivers/acpi/acpi_video.c
index 09899b7f7fab..6944794797a5 100644
--- a/drivers/acpi/acpi_video.c
+++ b/drivers/acpi/acpi_video.c
@@ -2263,14 +2263,10 @@ void acpi_video_unregister_backlight(void)
 {
 	struct acpi_video_bus *video;
 
-	mutex_lock(&register_count_mutex);
-	if (register_count) {
-		mutex_lock(&video_list_lock);
-		list_for_each_entry(video, &video_bus_head, entry)
-			acpi_video_bus_unregister_backlight(video);
-		mutex_unlock(&video_list_lock);
-	}
-	mutex_unlock(&register_count_mutex);
+	mutex_lock(&video_list_lock);
+	list_for_each_entry(video, &video_bus_head, entry)
+		acpi_video_bus_unregister_backlight(video);
+	mutex_unlock(&video_list_lock);
 }
 
 bool acpi_video_handles_brightness_key_presses(void)
-- 
2.36.0

