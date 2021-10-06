Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D30F4239AF
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Oct 2021 10:23:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5533C6EDB5;
	Wed,  6 Oct 2021 08:23:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com
 [IPv6:2607:f8b0:4864:20::102d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3B156F5F7
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Oct 2021 04:33:13 +0000 (UTC)
Received: by mail-pj1-x102d.google.com with SMTP id
 d13-20020a17090ad3cd00b0019e746f7bd4so3592039pjw.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 05 Oct 2021 21:33:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Vzt25WKen5yxoB6+zFmyoOUcCazC0GoTv9qeublHMvo=;
 b=qkWdHv8kvKQKMOmJl/5ZZKmjGRIfAHZK6JvQ0+3QOWAJYv6Tgs9K91GjBSVa/bhMPE
 /5+XbljEVjOfzQWG3X++h8cCo64f9YaOVRQTdUncv8cYZvy5H+N58TN9W6f6N07D7WZw
 bakh01K+Kxvp9W+Kr52b0VkQhjSyQo4zBGlCb/jQOY4VruPXh+5Rdv8JQVqGGQnijhzG
 USPP3GsnQbh+PQq2FxtLv/+it05Zs2rL1KMYaV2bjqdPcleQwesaHh0mbSmSFZzpPj8a
 8zkxmzlG/BVuW44vWZ2JmiEMNGisSuwXlJMT9WLbYmPFEMlbzwe9iTHPEClbV3eCIzF0
 P9Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Vzt25WKen5yxoB6+zFmyoOUcCazC0GoTv9qeublHMvo=;
 b=3jHYyT05sMM9In7hIiTV3vDMSZBuvzkqVdWoTlo5UD0KTjlFoUuNx93nR7fQUzz3Ev
 tKBgwKCXi3LwIytzhd/IzJ9JVV/NTx4vyGjuBc22PpJT4ltVlp7En3n3/U39i+I2xK7d
 2H06zwKmaF7gak998sf0a6eI0ZfwvTjl5zsEm2GXBsFDQ+CSUinJfIx+d4b72RjxdbLI
 IbcyaKSrV7BujneKB1Oz6MR6XRMcqpsx3Ct7icpt0bJ01cy4pTkGQ4YiAhwMbE31+Vf6
 VU3kgRaWxbQUxK0HENva+3bghlXNSuYZnUwlnrEJa0LB7SHQtGVtnRwjr+4FkDTbzpsy
 6Asg==
X-Gm-Message-State: AOAM5311isOLsr1i7wXOxD+wMM6+UbZej1WYFe7ZAAENY+aDhpB1GwiV
 ffvRAdE43I8HJxEPAD6qtI8sTKa78AYVJQ==
X-Google-Smtp-Source: ABdhPJygw/DStCng3OduJ4tLfbDWcrfr1yf/Vq5Cknd47TAb1oRuITo8OHzc29kZZPpOy6LLgYhstw==
X-Received: by 2002:a17:90b:224e:: with SMTP id
 hk14mr8406018pjb.224.1633494793443; 
 Tue, 05 Oct 2021 21:33:13 -0700 (PDT)
Received: from localhost.localdomain (cpe-172-112-234-200.socal.res.rr.com.
 [172.112.234.200])
 by smtp.gmail.com with ESMTPSA id z9sm19369387pfr.124.2021.10.05.21.33.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Oct 2021 21:33:13 -0700 (PDT)
From: lindsey.stanpoor@gmail.com
To: intel-gfx@lists.freedesktop.org,
	linux-usb@vger.kernel.org
Cc: hdegoede@redhat.com, heikki.krogerus@linux.intel.com,
 gregkh@linuxfoundation.org, cnemo@tutanota.com
Date: Tue,  5 Oct 2021 21:32:57 -0700
Message-Id: <20211006043257.23242-1-lindsey.stanpoor@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 06 Oct 2021 08:23:22 +0000
Subject: [Intel-gfx] [PATCH 1/1] usb: typec: altmodes/displayport: reorder
 dp_altmode_configured()
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

From: Cameron Nemo <cnemo@tutanota.com>

A recent commit [1] introduced an unintended behavioral change by
reordering certain function calls. The sysfs_notify call for
pin_assignment should only be invoked when the dp_altmode_notify call
returns 0, and in the dp->data.conf == 0 case.

[1] https://lore.kernel.org/r/20210817215201.795062-8-hdegoede@redhat.com

Signed-off-by: Cameron Nemo <cnemo@tutanota.com>
---
 drivers/usb/typec/altmodes/displayport.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/typec/altmodes/displayport.c b/drivers/usb/typec/altmodes/displayport.c
index c1d8c23baa39..a15ae78066e3 100644
--- a/drivers/usb/typec/altmodes/displayport.c
+++ b/drivers/usb/typec/altmodes/displayport.c
@@ -154,10 +154,17 @@ static int dp_altmode_status_update(struct dp_altmode *dp)
 
 static int dp_altmode_configured(struct dp_altmode *dp)
 {
+	int ret;
+
 	sysfs_notify(&dp->alt->dev.kobj, "displayport", "configuration");
+
+	ret = dp_altmode_notify(dp);
+	if (ret || !dp->data.conf)
+		return ret;
+
 	sysfs_notify(&dp->alt->dev.kobj, "displayport", "pin_assignment");
 
-	return dp_altmode_notify(dp);
+	return 0;
 }
 
 static int dp_altmode_configure_vdm(struct dp_altmode *dp, u32 conf)
-- 
2.33.0

