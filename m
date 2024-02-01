Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7A4B845136
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Feb 2024 07:07:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34A7510E301;
	Thu,  1 Feb 2024 06:07:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-f201.google.com (mail-yb1-f201.google.com
 [209.85.219.201])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C90410E301
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Feb 2024 06:07:22 +0000 (UTC)
Received: by mail-yb1-f201.google.com with SMTP id
 3f1490d57ef6-dc6b267bf11so728402276.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jan 2024 22:07:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1706767581; x=1707372381;
 darn=lists.freedesktop.org; 
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=+R+QwEvKVG52HCupcuvyMyVixKSfMEwsPllchfsZTgU=;
 b=1cwXi2ndbnEkpfSbD9sG61fz5pSCOVjbDryM8uyX8c9GX55/8QPRlPWV8iMPGhu4ep
 ipFjzbahD1H94hGhXmkq3XDz4G2jc8pPJ3u5hcX4ZWLsoNMpLC3tsS0OXDVP2obzMb/i
 S+XfsBPLxeKqz63b2TXJtP6xcTljPmGQxkFt8qXxxSQjm36o8AUJLgaC9Nzs96JCJTv3
 z5y2YmWoJWhiQksXMkfkLt7OQ3mmW3D+jbhbEK9ZOHaEbpsRnTexDjReQosgI0sPbngY
 4yleJgc3R3H1qtdSayZjENo070QaOQo7Crid62idFE2LUqVe7+EMuvCmADyUwnxFSr3B
 6h+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706767581; x=1707372381;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=+R+QwEvKVG52HCupcuvyMyVixKSfMEwsPllchfsZTgU=;
 b=mE5kqEFhTF6TxFNx0GuPiIFAuRxwEDCNB2hVTAsCljcvplv00LtuMkE2e2q7o6QEAx
 ci4KKzE5HCSo3UA1bv2lOk/4d9xkaAo29EXpUT8ihaibGfrhwGC0fY9rFnVdKJursdVX
 xmnvQkyxuijcrcrL80yYMD8cWEnpFJ+Vk2niXof4t+hjs+le3E/kqcCmKg/kQ3j1dRuq
 ErDhppj0kHne4b3rYCLKqI5iKCYT5+bQ4LMPyEpWG9FkDnWy0Z73ECki0u3xv7ZOG5wE
 TtiFVbpshcLz/OOqEAWdxTY+nU9Bvwx4S2x4BCpB19Sn6MqMjqaibAxyVrdJwbXSZ8Ft
 YIew==
X-Gm-Message-State: AOJu0Yz53kAzJj8Ph6EWJivRhyf8soFeQeW3xYZDH+/rE614r/TwxmGc
 17BVJVFvLfUseaFR6o3QDyogYoW7NYK1V6yUEdZtrV6yhEJ7Q82i2SZWWToy25YlYBG3GlDsfgT
 5841rFuIpdA==
X-Google-Smtp-Source: AGHT+IH9ZcrmRVPK1BcEkoPLLW9uzYcuLK5XpwTitIVSUboPpipeCUTTfA1c8/oZ1Sjbi+UPYG3ZprHTGqrSQA==
X-Received: from slicestar.c.googlers.com
 ([fda3:e722:ac3:cc00:4f:4b78:c0a8:20a1])
 (user=davidgow job=sendgmr) by 2002:a05:6902:1584:b0:dbe:387d:a8ef with SMTP
 id k4-20020a056902158400b00dbe387da8efmr41769ybu.1.1706767581338; Wed, 31 Jan
 2024 22:06:21 -0800 (PST)
Date: Thu,  1 Feb 2024 14:04:36 +0800
Mime-Version: 1.0
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
Message-ID: <20240201060437.861155-2-davidgow@google.com>
Subject: [PATCH] kunit: device: Unregister the kunit_bus on shutdown
From: David Gow <davidgow@google.com>
To: Rae Moar <rmoar@google.com>, Shuah Khan <skhan@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
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
Cc: Saarinen@google.com, David Gow <davidgow@google.com>,
 Matti Vaittinen <mazziesaccount@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>,
 Brendan Higgins <brendan.higgins@linux.dev>,
 Richard Fitzgerald <rf@opensource.cirrus.com>, Borah@google.com,
 linux-kselftest@vger.kernel.org, kunit-dev@googlegroups.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If KUnit is built as a module, and it's unloaded, the kunit_bus is not
unregistered. This causes an error if it's then re-loaded later, as we
try to re-register the bus.

Unregister the bus and root_device on shutdown, if it looks valid.

In addition, be more specific about the value of kunit_bus_device. It
is:
- a valid struct device* if the kunit_bus initialised correctly.
- an ERR_PTR if it failed to initialise.
- NULL before initialisation and after shutdown.

Fixes: d03c720e03bd ("kunit: Add APIs for managing devices")
Signed-off-by: David Gow <davidgow@google.com>
---

This will hopefully resolve some of the issues linked to from:
https://lore.kernel.org/intel-gfx/DM4PR11MB614179CB9C387842D8E8BB40B97C2@DM4PR11MB6141.namprd11.prod.outlook.com/

---
 lib/kunit/device-impl.h |  2 ++
 lib/kunit/device.c      | 14 ++++++++++++++
 lib/kunit/test.c        |  3 +++
 3 files changed, 19 insertions(+)

diff --git a/lib/kunit/device-impl.h b/lib/kunit/device-impl.h
index 54bd55836405..5fcd48ff0f36 100644
--- a/lib/kunit/device-impl.h
+++ b/lib/kunit/device-impl.h
@@ -13,5 +13,7 @@
 
 // For internal use only -- registers the kunit_bus.
 int kunit_bus_init(void);
+// For internal use only -- unregisters the kunit_bus.
+void kunit_bus_shutdown(void);
 
 #endif //_KUNIT_DEVICE_IMPL_H
diff --git a/lib/kunit/device.c b/lib/kunit/device.c
index 074c6dd2e36a..644a38a1f5b1 100644
--- a/lib/kunit/device.c
+++ b/lib/kunit/device.c
@@ -54,6 +54,20 @@ int kunit_bus_init(void)
 	return error;
 }
 
+/* Unregister the 'kunit_bus' in case the KUnit module is unloaded. */
+void kunit_bus_shutdown(void)
+{
+	/* Make sure the bus exists before we unregister it. */
+	if (IS_ERR_OR_NULL(kunit_bus_device))
+		return;
+
+	bus_unregister(&kunit_bus_type);
+
+	root_device_unregister(kunit_bus_device);
+
+	kunit_bus_device = NULL;
+}
+
 /* Release a 'fake' KUnit device. */
 static void kunit_device_release(struct device *d)
 {
diff --git a/lib/kunit/test.c b/lib/kunit/test.c
index 31a5a992e646..1d1475578515 100644
--- a/lib/kunit/test.c
+++ b/lib/kunit/test.c
@@ -928,6 +928,9 @@ static void __exit kunit_exit(void)
 #ifdef CONFIG_MODULES
 	unregister_module_notifier(&kunit_mod_nb);
 #endif
+
+	kunit_bus_shutdown();
+
 	kunit_debugfs_cleanup();
 }
 module_exit(kunit_exit);
-- 
2.43.0.429.g432eaa2c6b-goog

