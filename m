Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B81218D57
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 18:44:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DB876E8EB;
	Wed,  8 Jul 2020 16:44:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 444506E8EB
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jul 2020 16:44:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594226649;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Km8OBGD4At6Sl6xQGOhZRzpiGLBtgfB3mgu0Zgw0cjI=;
 b=YDCvvMtaRxiPkDkZmIuFTdE5hseMtabTBYpnItq/4YeYp99oXIbkeOJfMtv0H7TvCCn5Wj
 Nxmg6+XeS0YppkAGDrnO5jg5QIr6Q0dLUjp7Poxrqh87sGYhIKNSLnwONYqxT4dWKGJ53Y
 asMI2qKI6RUSu/2xl+XYJBhCZTs9KAM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-414-1QVV9wlJPz2bpYdWkvu1qA-1; Wed, 08 Jul 2020 12:44:07 -0400
X-MC-Unique: 1QVV9wlJPz2bpYdWkvu1qA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6C7E619067E0;
 Wed,  8 Jul 2020 16:44:05 +0000 (UTC)
Received: from x1.localdomain.com (ovpn-112-5.ams2.redhat.com [10.36.112.5])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6DAE11C4;
 Wed,  8 Jul 2020 16:44:01 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Wed,  8 Jul 2020 18:43:33 +0200
Message-Id: <20200708164335.25097-8-hdegoede@redhat.com>
In-Reply-To: <20200708164335.25097-1-hdegoede@redhat.com>
References: <20200708164335.25097-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Intel-gfx] [PATCH 7/9] platform/x86: thinkpad_acpi: Get
 privacy-screen / lcdshadow ACPI handles only once
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel@lists.freedesktop.org, Sebastien Bacher <seb128@ubuntu.com>,
 Marco Trevisan <marco.trevisan@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Get the privacy-screen / lcdshadow ACPI handles once and cache them,
instead of retrieving them every time we need them.

Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/platform/x86/thinkpad_acpi.c | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index ff7f0a4f2475..782e74d3167f 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -9699,19 +9699,15 @@ static struct ibm_struct battery_driver_data = {
  * LCD Shadow subdriver, for the Lenovo PrivacyGuard feature
  */
 
+static acpi_handle lcdshadow_get_handle;
+static acpi_handle lcdshadow_set_handle;
 static int lcdshadow_state;
 
 static int lcdshadow_on_off(bool state)
 {
-	acpi_handle set_shadow_handle;
 	int output;
 
-	if (ACPI_FAILURE(acpi_get_handle(hkey_handle, "SSSS", &set_shadow_handle))) {
-		pr_warn("Thinkpad ACPI has no %s interface.\n", "SSSS");
-		return -EIO;
-	}
-
-	if (!acpi_evalf(set_shadow_handle, &output, NULL, "dd", (int)state))
+	if (!acpi_evalf(lcdshadow_set_handle, &output, NULL, "dd", (int)state))
 		return -EIO;
 
 	lcdshadow_state = state;
@@ -9729,15 +9725,17 @@ static int lcdshadow_set(bool on)
 
 static int tpacpi_lcdshadow_init(struct ibm_init_struct *iibm)
 {
-	acpi_handle get_shadow_handle;
+	acpi_status status1, status2;
 	int output;
 
-	if (ACPI_FAILURE(acpi_get_handle(hkey_handle, "GSSS", &get_shadow_handle))) {
+	status1 = acpi_get_handle(hkey_handle, "GSSS", &lcdshadow_get_handle);
+	status2 = acpi_get_handle(hkey_handle, "SSSS", &lcdshadow_set_handle);
+	if (ACPI_FAILURE(status1) || ACPI_FAILURE(status2)) {
 		lcdshadow_state = -ENODEV;
 		return 0;
 	}
 
-	if (!acpi_evalf(get_shadow_handle, &output, NULL, "dd", 0)) {
+	if (!acpi_evalf(lcdshadow_get_handle, &output, NULL, "dd", 0)) {
 		lcdshadow_state = -EIO;
 		return -EIO;
 	}
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
