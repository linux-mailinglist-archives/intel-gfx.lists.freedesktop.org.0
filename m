Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6205979FDA
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Sep 2024 13:01:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C47F510E309;
	Mon, 16 Sep 2024 11:01:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="EjYnroXb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6183F10E309
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Sep 2024 11:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1726484458;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=itSh3IrUxrdCZUhjcuF+BB5F77vjj4OFkn+g9OgH098=;
 b=EjYnroXbxwG388Kj/WlpGG6QOEXMMcA/Bsf2sSzd9yWTuRhyoN9idOiW3fIwVrqJZTCKmQ
 OM91+1m2GsNfnFUK0RwVDjFNbjicGMZ0f1gAyIqRPtLKqWhdFz5xeuDGNZnqMdCXS6xF+x
 PWGOlRUmMkNzMnzwBnMgSHn8RGRmECY=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-647-ep6A7EESOjmjykZTG7VNog-1; Mon, 16 Sep 2024 07:00:57 -0400
X-MC-Unique: ep6A7EESOjmjykZTG7VNog-1
Received: by mail-wm1-f70.google.com with SMTP id
 5b1f17b1804b1-42cb2c5d634so21521585e9.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Sep 2024 04:00:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1726484456; x=1727089256;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=itSh3IrUxrdCZUhjcuF+BB5F77vjj4OFkn+g9OgH098=;
 b=foEiHLR/MtDjaSi9ZFiDMyIMBQlp7RV6ZoHx4ZQACbzt2jBSa79hAXxQt5a4o8Srmu
 t4lymWDyBHpIOtd9fbRWjll2Jqkd4PgwWIUDY09s767Mz47W3yMgpThMFyWaoepcsy06
 20a/qGcTKEsTBLTCHOS8XS/0A+3+ewn3AzL6ga1Grxb8EuuHutGOzLh0Sm3yoToirBkZ
 laA6S/262IiVMOtQ/RAgryMcT43oFisdJYFBWWKWUBskK6arC8qaK5DOhZEkBIO7N54c
 fxsfsTVg6DcyW5Ndb28WIxIAJe7Y6Ie262AkYZWmqGWSwbur38p06T8NipyNjQdwBJlT
 70TQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCX6GLhiP/es9MG4qHmgB0z5nr3ZbGSBP6bLbarFZBrZ9dILh3HRGqIWMYV8g8xJ/cbDnQak24loMII=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yz3v7K63MTPf0piX26WaLhN0n0d+Kx/7I8fH2lTWp/YfoPp8xbs
 PKUS2dtZoAhgs4zvwLqMJm7HY2779J81LnVMQfoFG9dO/F7qlD9mUs2dzo+CmCaEQQTtqgsSkz2
 L5TV71WMPmmW5TrsyVxHHKvxz5BJZbTYRlhp5O57SuruwjGXYQJX8HAsllu0jkyj6fA==
X-Received: by 2002:a05:600c:310a:b0:42b:892d:54c0 with SMTP id
 5b1f17b1804b1-42d907221b4mr59983045e9.12.1726484455962; 
 Mon, 16 Sep 2024 04:00:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHsgWHRJR4aKx2ppVUW3nxaeapfH3oj46/SJkQvNinWOePbqW+Lc2YXP1lXrRnZng63+W2aKg==
X-Received: by 2002:a05:600c:310a:b0:42b:892d:54c0 with SMTP id
 5b1f17b1804b1-42d907221b4mr59982735e9.12.1726484455424; 
 Mon, 16 Sep 2024 04:00:55 -0700 (PDT)
Received: from localhost ([195.166.127.210]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-42d9b055069sm110260975e9.6.2024.09.16.04.00.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Sep 2024 04:00:55 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: Brian Norris <briannorris@chromium.org>, dri-devel@lists.freedesktop.org,
 Borislav Petkov <bp@alien8.de>, Julius Werner <jwerner@chromium.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, chrome-platform@lists.linux.dev,
 intel-gfx@lists.freedesktop.org, Hugues Bruant <hugues.bruant@gmail.com>,
 Javier Martinez Canillas <javierm@redhat.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 Dan Carpenter <dan.carpenter@linaro.org>, Helge Deller <deller@gmx.de>,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v4 1/2] firmware: sysfb: Add a sysfb_handles_screen_info()
 helper function
Date: Mon, 16 Sep 2024 13:00:25 +0200
Message-ID: <20240916110040.1688511-2-javierm@redhat.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240916110040.1688511-1-javierm@redhat.com>
References: <20240916110040.1688511-1-javierm@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset="US-ASCII"; x-default=true
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

That can be used by drivers to check if the Generic System Framebuffers
(sysfb) support can handle the data contained in the global screen_info.

Drivers might need this information to know if have to setup the system
framebuffer, or if they have to delegate this action to sysfb instead.

Suggested-by: Thomas Zimmermann <tzimmermann@suse.de>
Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
---

Changes in v4:
- New patch to add sysfb_handles_screen_info() helper (Thomas Zimmermann).

 drivers/firmware/sysfb.c | 19 +++++++++++++++++++
 include/linux/sysfb.h    |  7 +++++++
 2 files changed, 26 insertions(+)

diff --git a/drivers/firmware/sysfb.c b/drivers/firmware/sysfb.c
index 02a07d3d0d40..770e74be14f3 100644
--- a/drivers/firmware/sysfb.c
+++ b/drivers/firmware/sysfb.c
@@ -77,6 +77,25 @@ void sysfb_disable(struct device *dev)
 }
 EXPORT_SYMBOL_GPL(sysfb_disable);
 
+/**
+ * sysfb_handles_screen_info() - reports if sysfb handles the global screen_info
+ *
+ * Callers can use sysfb_handles_screen_info() to determine whether the Generic
+ * System Framebuffers (sysfb) can handle the global screen_info data structure
+ * or not. Drivers might need this information to know if they have to setup the
+ * system framebuffer, or if they have to delegate this action to sysfb instead.
+ *
+ * Returns:
+ * True if sysfb handles the global screen_info data structure.
+ */
+bool sysfb_handles_screen_info(void)
+{
+	const struct screen_info *si = &screen_info;
+
+	return !!screen_info_video_type(si);
+}
+EXPORT_SYMBOL_GPL(sysfb_handles_screen_info);
+
 #if defined(CONFIG_PCI)
 static bool sysfb_pci_dev_is_enabled(struct pci_dev *pdev)
 {
diff --git a/include/linux/sysfb.h b/include/linux/sysfb.h
index bef5f06a91de..07cbab516942 100644
--- a/include/linux/sysfb.h
+++ b/include/linux/sysfb.h
@@ -60,12 +60,19 @@ struct efifb_dmi_info {
 
 void sysfb_disable(struct device *dev);
 
+bool sysfb_handles_screen_info(void);
+
 #else /* CONFIG_SYSFB */
 
 static inline void sysfb_disable(struct device *dev)
 {
 }
 
+static inline bool sysfb_handles_screen_info(void)
+{
+	return false;
+}
+
 #endif /* CONFIG_SYSFB */
 
 #ifdef CONFIG_EFI
-- 
2.46.0

