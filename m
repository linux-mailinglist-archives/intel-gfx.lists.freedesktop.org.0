Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39219371865
	for <lists+intel-gfx@lfdr.de>; Mon,  3 May 2021 17:47:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1E466E8E2;
	Mon,  3 May 2021 15:47:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AA3B6E8E4
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 May 2021 15:47:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1620056847;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2Hyp4AGgXcMc49uqhb8vpl0J5tgw16x316sedrJ5yHw=;
 b=elwLFkqEW0aEpfwOqFEWXQZyC8ksxfznGvvyqi1iAVzFMmJZAXM4AallS9FW5S3tuBk4kG
 kkBhFWkKJLQsrxJgBrFf4idUSmJPmFCaa20P0FlVcUcs3SUWY72KcJGLfQKtoGtvfR2Up7
 jvJ86Dym78lJGX+VLwFtWfcwrLtM8UI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-101-6VEdBLxEPPqhs7YuK2nmNA-1; Mon, 03 May 2021 11:47:25 -0400
X-MC-Unique: 6VEdBLxEPPqhs7YuK2nmNA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5767A107ACF6;
 Mon,  3 May 2021 15:47:23 +0000 (UTC)
Received: from x1.localdomain (ovpn-112-158.ams2.redhat.com [10.36.112.158])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 943991007610;
 Mon,  3 May 2021 15:47:20 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Guenter Roeck <linux@roeck-us.net>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>
Date: Mon,  3 May 2021 17:46:47 +0200
Message-Id: <20210503154647.142551-10-hdegoede@redhat.com>
In-Reply-To: <20210503154647.142551-1-hdegoede@redhat.com>
References: <20210503154647.142551-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Subject: [Intel-gfx] [PATCH 9/9] platform/x86/intel_cht_int33fe: Correct
 "displayport" fwnode reference
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>, linux-usb@vger.kernel.org,
 dri-devel@lists.freedesktop.org, platform-driver-x86@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The Type-C connector on these devices is connected to DP-2 not DP-1,
so the reference must be to the DD04 child-node of the GPU, rather
then the DD02 child-node.

Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/platform/x86/intel_cht_int33fe_typec.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/platform/x86/intel_cht_int33fe_typec.c b/drivers/platform/x86/intel_cht_int33fe_typec.c
index b61bad9cc8d2..d59544167430 100644
--- a/drivers/platform/x86/intel_cht_int33fe_typec.c
+++ b/drivers/platform/x86/intel_cht_int33fe_typec.c
@@ -168,8 +168,8 @@ static int cht_int33fe_setup_dp(struct cht_int33fe_data *data)
 		return -ENODEV;
 	}
 
-	/* Then the DP child device node */
-	data->dp = device_get_named_child_node(&pdev->dev, "DD02");
+	/* Then the DP-2 child device node */
+	data->dp = device_get_named_child_node(&pdev->dev, "DD04");
 	pci_dev_put(pdev);
 	if (!data->dp)
 		return -ENODEV;
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
