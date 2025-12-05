Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA984CA8B0A
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Dec 2025 18:52:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FCF610EB7A;
	Fri,  5 Dec 2025 17:52:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="HAbeXtCM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yx1-f53.google.com (mail-yx1-f53.google.com
 [74.125.224.53])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B73F10EB79
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Dec 2025 17:52:42 +0000 (UTC)
Received: by mail-yx1-f53.google.com with SMTP id
 956f58d0204a3-6443bc360bdso2073606d50.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 05 Dec 2025 09:52:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1764957162; x=1765561962; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=qMcm6nWRLFBVfXJXBUXf6pE+rQOQZFvzs8Y8xJm6ysU=;
 b=HAbeXtCMt6npwCFBVERJtJhZ9jDIvfjSeTXHSEQ5Hc9Ycj2qmKrcgsnUdt2diCdtFE
 G/Q58HxCeW+EiwZdKbICi8iF5QM0RT1KBDa8Im/n9J/+UFL5+cKN953sz+9WZxRdEFPu
 FDn2cmSww+xqlhYkVF440Zja4HEedm/o7N4MrfxmDlsWrcusxLsolyFrPCEF8fuOJ7Wv
 K32hLYLX+3sjD1YOK7eQS6/+acJaDsVQgX49YvO9McnjouT9oQYcgzGGGoTOyaQxBDek
 a6GtyKC0ItTkcJGBprEtJOV1TniFIRENFUpIREu6/XhrdEhm/1xhz0kRKj3rbd8lg1f8
 7aVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764957162; x=1765561962;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=qMcm6nWRLFBVfXJXBUXf6pE+rQOQZFvzs8Y8xJm6ysU=;
 b=QcBQ2IG5CpzcJNlo77cGrhsZ7M8Qg7IK4jfxbZIpDmIuck1+NolAf1cpKDcgZFFrQt
 lkbcWxGvxIeMFfQhI0PM74RPuMClH1C2fMaNMMcLTguaO/ySCHCrNebfxoNKmZnq9Ou0
 tLSWOq/EtiF50J7N9llpQzFxrL+GYcoHF8qDVOi6voOuLh1E+XbDfABggOYXTo5qQUF8
 kkbOQkYYVkN5wA1FVaQESiB4SLMJLgbvitGtB51wABsI8iaB9nJj3yEIEVEOEz0OGYkA
 ngA2scQoYWZcFsaw5aZ4VbTZ8VsCiLKmdKsRKr6ibWLA2WyKgsh+ckutGCPpyke7BfaH
 6F7g==
X-Forwarded-Encrypted: i=1;
 AJvYcCXH1NfNyUwqUUEeQ4ieZvn0Klzq3D3Dp9UTmOlW5+2/8fM8Kmh6N1b51bYpnu68p/6yEUbi/zLwutA=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yz09BUyOJRnSxL+8So6zpuMvUAACIfL6RESidrq0L4QM5aO6Vk7
 zukOT10Skunn3a3Ab/RrUwD3J+10ie2+kY1cB3MGd1iyNcaVRXvDPgYu
X-Gm-Gg: ASbGncuFcFxuDh0axPGO08VEbiryJt7IUyclKXN6XtUBhuXznilnoRehcwwcvVEylOr
 OQCLUBMo4Gh5zBiAO5fioGyqhxZdPvKBk32rDKvE0QWBmeCUcixs6yNu9z6LPHMIhf5x/M8fzyA
 ud7CszWG615DY8y8Hs7mj1Ow1BAgpyLK0GDu1ckPf5O/RqgQO67Wtfjw04KW/CjDhNhBfqkAnvM
 Cfee0XzlyTUek6gU/VDdrJP0HFp+vWP4bZ8PstOWAuZYk2GKKdrh59JdyQrwTKclGN+9968nqmQ
 isS1UjD8iWk8c1CSvJ0QKeZrRyQ/sXwEVNIsTVRVqgGvkMTnQOF1ZQld5ilmPzUDe/CSw0IbDIW
 qIrurqcIWB48s+J7OAzfamS+4zRujpJjIu6MM3LDgnQn8OfV2WhI40NVyS55Vir2wjpnNdbL5Ev
 Ci96AYkA==
X-Google-Smtp-Source: AGHT+IFMa7PLE5Wadu9vbkWwOz5YfxbRiG9Bng/2nx/P0WjNdaVzVzG0hYz8xn0T4porbVJXTUfmtg==
X-Received: by 2002:a05:690c:2506:b0:784:9076:a0f5 with SMTP id
 00721157ae682-78c188bffcamr128846517b3.44.1764957161553; 
 Fri, 05 Dec 2025 09:52:41 -0800 (PST)
Received: from localhost ([2601:346:0:79bd:be2a:7e4d:3bf:3fbc])
 by smtp.gmail.com with ESMTPSA id
 00721157ae682-78c1b78e63bsm18841887b3.42.2025.12.05.09.52.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Dec 2025 09:52:41 -0800 (PST)
From: "Yury Norov (NVIDIA)" <yury.norov@gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Christophe Leroy <chleroy@kernel.org>,
 Randy Dunlap <rdunlap@infradead.org>, Ingo Molnar <mingo@kernel.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 David Laight <david.laight@runbox.com>, Petr Pavlu <petr.pavlu@suse.com>,
 Andi Shyti <andi.shyti@kernel.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Daniel Gomez <da.gomez@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Danilo Krummrich <dakr@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-modules@vger.kernel.org, linux-trace-kernel@vger.kernel.org
Cc: "Yury Norov (NVIDIA)" <yury.norov@gmail.com>
Subject: [PATCH v3 3/4] kernel.h: move VERIFY_OCTAL_PERMISSIONS() to sysfs.h
Date: Fri,  5 Dec 2025 12:52:34 -0500
Message-ID: <20251205175237.242022-4-yury.norov@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251205175237.242022-1-yury.norov@gmail.com>
References: <20251205175237.242022-1-yury.norov@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

The macro is related to sysfs, but is defined in kernel.h. Move it to
the proper header, and unload the generic kernel.h.

Now that the macro is removed from kernel.h, linux/moduleparam.h is
decoupled, and kernel.h inclusion can be removed.

Acked-by: Randy Dunlap <rdunlap@infradead.org>
Tested-by: Randy Dunlap <rdunlap@infradead.org>
Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Reviewed-by: Petr Pavlu <petr.pavlu@suse.com>
Signed-off-by: Yury Norov (NVIDIA) <yury.norov@gmail.com>
---
 Documentation/filesystems/sysfs.rst |  2 +-
 include/linux/kernel.h              | 12 ------------
 include/linux/moduleparam.h         |  2 +-
 include/linux/sysfs.h               | 13 +++++++++++++
 4 files changed, 15 insertions(+), 14 deletions(-)

diff --git a/Documentation/filesystems/sysfs.rst b/Documentation/filesystems/sysfs.rst
index 2703c04af7d0..ffcef4d6bc8d 100644
--- a/Documentation/filesystems/sysfs.rst
+++ b/Documentation/filesystems/sysfs.rst
@@ -120,7 +120,7 @@ is equivalent to doing::
 	    .store = store_foo,
     };
 
-Note as stated in include/linux/kernel.h "OTHER_WRITABLE?  Generally
+Note as stated in include/linux/sysfs.h "OTHER_WRITABLE?  Generally
 considered a bad idea." so trying to set a sysfs file writable for
 everyone will fail reverting to RO mode for "Others".
 
diff --git a/include/linux/kernel.h b/include/linux/kernel.h
index 61d63c57bc2d..5b879bfea948 100644
--- a/include/linux/kernel.h
+++ b/include/linux/kernel.h
@@ -389,16 +389,4 @@ static inline void ftrace_dump(enum ftrace_dump_mode oops_dump_mode) { }
 # define REBUILD_DUE_TO_DYNAMIC_FTRACE
 #endif
 
-/* Permissions on a sysfs file: you didn't miss the 0 prefix did you? */
-#define VERIFY_OCTAL_PERMISSIONS(perms)						\
-	(BUILD_BUG_ON_ZERO((perms) < 0) +					\
-	 BUILD_BUG_ON_ZERO((perms) > 0777) +					\
-	 /* USER_READABLE >= GROUP_READABLE >= OTHER_READABLE */		\
-	 BUILD_BUG_ON_ZERO((((perms) >> 6) & 4) < (((perms) >> 3) & 4)) +	\
-	 BUILD_BUG_ON_ZERO((((perms) >> 3) & 4) < ((perms) & 4)) +		\
-	 /* USER_WRITABLE >= GROUP_WRITABLE */					\
-	 BUILD_BUG_ON_ZERO((((perms) >> 6) & 2) < (((perms) >> 3) & 2)) +	\
-	 /* OTHER_WRITABLE?  Generally considered a bad idea. */		\
-	 BUILD_BUG_ON_ZERO((perms) & 2) +					\
-	 (perms))
 #endif
diff --git a/include/linux/moduleparam.h b/include/linux/moduleparam.h
index ca7c8107c7c8..dd2d990b2611 100644
--- a/include/linux/moduleparam.h
+++ b/include/linux/moduleparam.h
@@ -8,7 +8,7 @@
 #include <linux/compiler.h>
 #include <linux/init.h>
 #include <linux/stringify.h>
-#include <linux/kernel.h>
+#include <linux/sysfs.h>
 #include <linux/types.h>
 
 /*
diff --git a/include/linux/sysfs.h b/include/linux/sysfs.h
index 9a25a2911652..15ee3ef33991 100644
--- a/include/linux/sysfs.h
+++ b/include/linux/sysfs.h
@@ -798,4 +798,17 @@ static inline void sysfs_put(struct kernfs_node *kn)
 	kernfs_put(kn);
 }
 
+/* Permissions on a sysfs file: you didn't miss the 0 prefix did you? */
+#define VERIFY_OCTAL_PERMISSIONS(perms)						\
+	(BUILD_BUG_ON_ZERO((perms) < 0) +					\
+	 BUILD_BUG_ON_ZERO((perms) > 0777) +					\
+	 /* USER_READABLE >= GROUP_READABLE >= OTHER_READABLE */		\
+	 BUILD_BUG_ON_ZERO((((perms) >> 6) & 4) < (((perms) >> 3) & 4)) +	\
+	 BUILD_BUG_ON_ZERO((((perms) >> 3) & 4) < ((perms) & 4)) +		\
+	 /* USER_WRITABLE >= GROUP_WRITABLE */					\
+	 BUILD_BUG_ON_ZERO((((perms) >> 6) & 2) < (((perms) >> 3) & 2)) +	\
+	 /* OTHER_WRITABLE?  Generally considered a bad idea. */		\
+	 BUILD_BUG_ON_ZERO((perms) & 2) +					\
+	 (perms))
+
 #endif /* _SYSFS_H_ */
-- 
2.43.0

