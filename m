Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 993EC355DBC
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Apr 2021 23:17:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C2266E8C4;
	Tue,  6 Apr 2021 21:17:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AADE6E8C4
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Apr 2021 21:17:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1617743822;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Yuyls6IZ8hM8W+RLby4U2pmwxvdOd9gbz5j9zkF+SIY=;
 b=XAswz8XrAI2DMnoUe+AYOvTieOsnBX0zSkblk7oPouULvKpyK2gUA5TXKP7UxsU7waRxar
 fz2jRx1Bxs4QFZtJCNzjN9ZAwRuq5aJcrAUeE69sZo2gRnqvNCbQhT/U0+VJFOBWlrflTX
 av3NcqPBuUw46gekNh4LSg1FE5ccTeQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-110-UU69IZE5OPqydiLhNj8v1w-1; Tue, 06 Apr 2021 17:16:58 -0400
X-MC-Unique: UU69IZE5OPqydiLhNj8v1w-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9BB828030DD;
 Tue,  6 Apr 2021 21:16:57 +0000 (UTC)
Received: from x1.localdomain (ovpn-112-11.ams2.redhat.com [10.36.112.11])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 57475226FD;
 Tue,  6 Apr 2021 21:16:56 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: "Rafael J . Wysocki" <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>
Date: Tue,  6 Apr 2021 23:16:53 +0200
Message-Id: <20210406211653.182338-2-hdegoede@redhat.com>
In-Reply-To: <20210406211653.182338-1-hdegoede@redhat.com>
References: <20210406211653.182338-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Subject: [Intel-gfx] [PATCH 2/2] ACPI: video: Check LCD flag on
 ACPI-reduced-hardware devices
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>, linux-acpi@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Starting with Windows 8, Windows no longer uses the ACPI-video interface
for backlight control by default. Instead backlight control is left up
to the GPU drivers and these are typically directly accessing the GPU
for this instead of going through ACPI.

This means that the ACPI video interface is no longer being tested by
many vendors, which leads to false-positive /sys/class/backlight entries
on devices which don't have a backlight at all such as desktops or
top-set boxes. These false-positives causes desktop environments to show
a non functional brightness slider in various places.

Checking the LCD flag greatly reduces the amount of false-positives,
so commit 5928c281524f ("ACPI / video: Default lcd_only to true on
Win8-ready and newer machines") enabled the checking of this flag
by default on all win8 BIOS-es. But this let to regressions on some
models, so the check was made stricter adding a DMI chassis-type check
to only enable the LCD flag checking on desktop/server chassis.

Unfortunately the chassis-type reported in the DMI strings is not always
reliable. One class of devices where this is a problem is Intel Bay Trail-T
based top-set boxes / mini PCs / HDMI sticks. These are based on reference
designs which were targetets and the reference design BIOS code
is often used without changing the chassis-type to something more
appropriate.

There are many, many Bay Trail-T based devices affected by this, so DMI
quirking our way out of this is a bad idea. This patch takes a different
approach, Bay Trail-T (unlike regular Bay Trail) is an ACPI-reduced-hw
platform and ACPI-reduced-hw platforms generally don't have
an embedded-controller and thus will use a native (GPU specific) backlight
interface. This patch enables Checking the LCD flag by default on
ACPI-reduced-hw platforms with a win8 BIOS independent of the reported
chassis-type, fixing the false positive /sys/class/backlight entries
on these devices.

Note in hindsight I should have never added the DMI chassis-type check
when the enabling of LCD flag checking on Windows 8 BIOS-es let to some
regressions. Instead I should have added DMI quirks for the (presumably
few) models where the LCD flag check let to issues. But I'm afraid that
it is too late to change this now, changing this now will likely lead to
a bunch of regressions.

This patch was tested on a Mele PCG03 mini PC.

Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/acpi/acpi_video.c | 39 ++++++++++++++++++++++++++-------------
 1 file changed, 26 insertions(+), 13 deletions(-)

diff --git a/drivers/acpi/acpi_video.c b/drivers/acpi/acpi_video.c
index 2ea1781290cc..ade02152bb06 100644
--- a/drivers/acpi/acpi_video.c
+++ b/drivers/acpi/acpi_video.c
@@ -2182,6 +2182,30 @@ static bool dmi_is_desktop(void)
 	return false;
 }
 
+/*
+ * We're seeing a lot of bogus backlight interfaces on newer machines
+ * without a LCD such as desktops, servers and HDMI sticks. Checking the
+ * lcd flag fixes this, enable this by default on any machines which are:
+ * 1.  Win8 ready (where we also prefer the native backlight driver, so
+ *     normally the acpi_video code should not register there anyways); *and*
+ * 2.1 Report a desktop/server DMI chassis-type, or
+ * 2.2 Are an ACPI-reduced-hardware platform (and thus won't use the EC for
+       backlight control)
+ */
+static bool should_check_lcd_flag(void)
+{
+	if (!acpi_osi_is_win8())
+		return false;
+
+	if (dmi_is_desktop())
+		return true;
+
+	if (acpi_reduced_hardware())
+		return true;
+
+	return false;
+}
+
 int acpi_video_register(void)
 {
 	int ret = 0;
@@ -2195,19 +2219,8 @@ int acpi_video_register(void)
 		goto leave;
 	}
 
-	/*
-	 * We're seeing a lot of bogus backlight interfaces on newer machines
-	 * without a LCD such as desktops, servers and HDMI sticks. Checking
-	 * the lcd flag fixes this, so enable this on any machines which are
-	 * win8 ready (where we also prefer the native backlight driver, so
-	 * normally the acpi_video code should not register there anyways).
-	 */
-	if (only_lcd == -1) {
-		if (dmi_is_desktop() && acpi_osi_is_win8())
-			only_lcd = true;
-		else
-			only_lcd = false;
-	}
+	if (only_lcd == -1)
+		only_lcd = should_check_lcd_flag();
 
 	dmi_check_system(video_dmi_table);
 
-- 
2.30.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
