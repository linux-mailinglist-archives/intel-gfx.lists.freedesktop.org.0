Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B4D401719
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Sep 2021 09:36:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F31B989B65;
	Mon,  6 Sep 2021 07:36:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C8DA89B65
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Sep 2021 07:36:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1630913762;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=t/EcWDK/S2a6lcEU+Hyijrbj7K8G3WQq6PVWeyiwCTc=;
 b=Angi+0igBQX4dSCol9GY5aCPIqNZWnBlkbXcMMQuL8A/EFOWSzg0PRGtob0yrSPuhPPfY1
 qWcQOgc+1Gf6LrPcjX6UuMkHUZR4dULV21kzt0Y7XR546sgdLUQZY4xBQU6/6/xuDuaZnJ
 FTgsENCl96PdxbLsrGjvDHnEeoZrLds=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-166-CP7rwctQPSyOIdKUwvUEFA-1; Mon, 06 Sep 2021 03:36:01 -0400
X-MC-Unique: CP7rwctQPSyOIdKUwvUEFA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C36A4802947;
 Mon,  6 Sep 2021 07:35:58 +0000 (UTC)
Received: from x1.localdomain.com (unknown [10.39.194.133])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1F94617A98;
 Mon,  6 Sep 2021 07:35:53 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Rajat Jain <rajatja@google.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Lyude <lyude@redhat.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Mark Gross <mgross@linux.intel.com>,
 Andy Shevchenko <andy@infradead.org>
Cc: Hans de Goede <hdegoede@redhat.com>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>,
 Pekka Paalanen <pekka.paalanen@collabora.com>,
 Mario Limonciello <mario.limonciello@outlook.com>,
 Mark Pearson <markpearson@lenovo.com>,
 Sebastien Bacher <seb128@ubuntu.com>,
 Marco Trevisan <marco.trevisan@canonical.com>,
 Emil Velikov <emil.l.velikov@gmail.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel@lists.freedesktop.org, platform-driver-x86@vger.kernel.org
Date: Mon,  6 Sep 2021 09:35:16 +0200
Message-Id: <20210906073519.4615-7-hdegoede@redhat.com>
In-Reply-To: <20210906073519.4615-1-hdegoede@redhat.com>
References: <20210906073519.4615-1-hdegoede@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Subject: [Intel-gfx] [PATCH 6/9] platform/x86: thinkpad_acpi: Add
 hotkey_notify_extended_hotkey() helper
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

Factor the extended hotkey handling out of hotkey_notify_hotkey() and
into a new hotkey_notify_extended_hotkey() helper.

This is a preparation patch for adding support the privacy-screen hotkey
toggle (which needs some special handling, it should NOT send an evdev
key-event to userspace...).

Reviewed-by: Emil Velikov <emil.l.velikov@gmail.com>
Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/platform/x86/thinkpad_acpi.c | 30 ++++++++++++++++++----------
 1 file changed, 19 insertions(+), 11 deletions(-)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index 50ff04c84650..83c88a8ebaf2 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -3885,6 +3885,24 @@ static bool adaptive_keyboard_hotkey_notify_hotkey(unsigned int scancode)
 	}
 }
 
+static bool hotkey_notify_extended_hotkey(const u32 hkey)
+{
+	unsigned int scancode;
+
+	/* Extended keycodes start at 0x300 and our offset into the map
+	 * TP_ACPI_HOTKEYSCAN_EXTENDED_START. The calculated scancode
+	 * will be positive, but might not be in the correct range.
+	 */
+	scancode = (hkey & 0xfff) - (0x300 - TP_ACPI_HOTKEYSCAN_EXTENDED_START);
+	if (scancode >= TP_ACPI_HOTKEYSCAN_EXTENDED_START &&
+	    scancode < TPACPI_HOTKEY_MAP_LEN) {
+		tpacpi_input_send_key(scancode);
+		return true;
+	}
+
+	return false;
+}
+
 static bool hotkey_notify_hotkey(const u32 hkey,
 				 bool *send_acpi_ev,
 				 bool *ignore_acpi_ev)
@@ -3919,17 +3937,7 @@ static bool hotkey_notify_hotkey(const u32 hkey,
 		return adaptive_keyboard_hotkey_notify_hotkey(scancode);
 
 	case 3:
-		/* Extended keycodes start at 0x300 and our offset into the map
-		 * TP_ACPI_HOTKEYSCAN_EXTENDED_START. The calculated scancode
-		 * will be positive, but might not be in the correct range.
-		 */
-		scancode -= (0x300 - TP_ACPI_HOTKEYSCAN_EXTENDED_START);
-		if (scancode >= TP_ACPI_HOTKEYSCAN_EXTENDED_START &&
-		    scancode < TPACPI_HOTKEY_MAP_LEN) {
-			tpacpi_input_send_key(scancode);
-			return true;
-		}
-		break;
+		return hotkey_notify_extended_hotkey(hkey);
 	}
 
 	return false;
-- 
2.31.1

