Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7564135F713
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 17:11:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 480EA6E93B;
	Wed, 14 Apr 2021 15:11:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0C366E93B
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 15:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1618413084;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=nZa1VsY9J66ae3sOriU9W9Lm8gotUDSdg4sxvLFb+k0=;
 b=HW1duMC6oMn+TdfDguVbXWxs1i2B+Qjdzo+mJG2MFjr4+X//HtA6+P4TWopboF7peYaWQS
 wpiWqq7kaYQFqIzEZow2y/bUc/q3NC0g4cvAKkdmGYSl4ybPRR+XktVR6nkQ2ndOrpPbw4
 ldHAWtw+wTRESQoSZnQO8yIDAhB7x1s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-419-nWzQwiCzMzW-4DzvF_deig-1; Wed, 14 Apr 2021 11:11:21 -0400
X-MC-Unique: nWzQwiCzMzW-4DzvF_deig-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 346E0107ACCD;
 Wed, 14 Apr 2021 15:11:18 +0000 (UTC)
Received: from x1.localdomain (ovpn-112-168.ams2.redhat.com [10.36.112.168])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B75575D6A8;
 Wed, 14 Apr 2021 15:11:14 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, Rajat Jain <rajatja@google.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Mark Gross <mgross@linux.intel.com>,
 Andy Shevchenko <andy@infradead.org>
Date: Wed, 14 Apr 2021 17:10:46 +0200
Message-Id: <20210414151049.95828-7-hdegoede@redhat.com>
In-Reply-To: <20210414151049.95828-1-hdegoede@redhat.com>
References: <20210414151049.95828-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Subject: [Intel-gfx] [PATCH resend 6/9] platform/x86: thinkpad_acpi: Add
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
Cc: Marco Trevisan <marco.trevisan@canonical.com>,
 Pekka Paalanen <pekka.paalanen@collabora.com>,
 Sebastien Bacher <seb128@ubuntu.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>, dri-devel@lists.freedesktop.org,
 platform-driver-x86@vger.kernel.org, Mark Pearson <markpearson@lenovo.com>,
 Mario Limonciello <mario.limonciello@outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Factor the extended hotkey handling out of hotkey_notify_hotkey() and
into a new hotkey_notify_extended_hotkey() helper.

This is a preparation patch for adding support the privacy-screen hotkey
toggle (which needs some special handling, it should NOT send an evdev
key-event to userspace...).

Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/platform/x86/thinkpad_acpi.c | 30 ++++++++++++++++++----------
 1 file changed, 19 insertions(+), 11 deletions(-)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index 0d9e2ddbf904..683c175cc28a 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -3878,6 +3878,24 @@ static bool adaptive_keyboard_hotkey_notify_hotkey(unsigned int scancode)
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
@@ -3912,17 +3930,7 @@ static bool hotkey_notify_hotkey(const u32 hkey,
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

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
