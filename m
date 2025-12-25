Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BBB4CDDF2A
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Dec 2025 18:09:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 852A311A666;
	Thu, 25 Dec 2025 17:09:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="j9UwJ6w7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com
 [209.85.128.169])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30D8F11A666
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Dec 2025 17:09:37 +0000 (UTC)
Received: by mail-yw1-f169.google.com with SMTP id
 00721157ae682-78f99901ed5so59511877b3.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Dec 2025 09:09:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1766682576; x=1767287376; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=NNd78aAqU5EbrtjfwRe6vlIJ1RKc0HFvUVEnBy0vIWA=;
 b=j9UwJ6w7vtGYefOGBANqz1ibWyC0q0HnkxASosimUipK+ebkIgjvylgBnQBotXZFw3
 p5+stGanzbtGW1ZzkwiWo0maxZhbycWL7nL/W5YWnqbDps4g9bU3J6RhlXcjx+WAjNtx
 7VueSRwn/FC/IXZq9joRG+VK4dxq+cPTQ38Jpu6aB5qy1EbmuPtQvMZnx2DxmBmG14ii
 mkL69BmWb1+v/VLGYpLPLkCgtzampL7tCp6bdYWRHcpdQo0Xn2HRbCsaLs02kZTPVuc3
 tz1Ft0s6tPf5UNtJbNP+9rtnL2qBrqMeokB3rVAeCW9xch6QNzIJsOnpxW4NmVu1Wuaa
 udZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1766682576; x=1767287376;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=NNd78aAqU5EbrtjfwRe6vlIJ1RKc0HFvUVEnBy0vIWA=;
 b=LbL39h1dkIE41I4tv96y+WFmFFcwmlEVKxS3tE+MuceKqCh8IMnaxRcF3+vh4lakbU
 hy7lknXlaxFsNAPUM4dgBKq21DuqBfs99sTmj6uDI0D368mOlq2dNisF9pZfNiobSCKG
 /6joaeRJ3p5TawRB1B524OIXJved+dQS3uXPwnqGs1SWRCvqNQ/FI3yCbb0Tloo2XSAw
 2BOJIZvIfJ8hO/c1MCWCMmO09OdUHBv7S8hqYKq55yNUf2xI3d1jRpqrXrGgfYrSQ3pn
 m3TJk0vQC05D83sRxcS7a1S9xLox/CAwR2op/XvbKtQ9k2h3+W1xvpD89nxCk2FGi/2N
 D7ww==
X-Forwarded-Encrypted: i=1;
 AJvYcCVlKnNhPDpbyzolMMJqbKpxGPro7s/9pCtF6tk8eQnieoARClT4J7qngOP+fBstgyJS9so8pXhlOnI=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwMlQUoTDwPDha0ATZT6vfLVUxqMm8DDWpn6WYDXuW9OlGrQCCO
 UCkA9JzhwBew19V/MxZ9OnPSxxw/FiMwJb3zBfK5302BEaHoFgIQwCNM
X-Gm-Gg: AY/fxX42Z5QeoZaBzKtJbyVv+eWsV6iV0ot5nRLO7l7qIEfQQWjy/idoflyxt8iB1vc
 OdTa0KhN8AsVps+Ou8eb7x+zDgVcK0/fml0+gKVPk88AWgFv0mAy0H462O5H98FevqMn903+qJx
 69sGnbCwwJKk6kQJ154YE80ozsKpNUoAMmal4t/xy9TvvVXUIGyqVRLpSnYXgbmS+pXJ4bNfg0Q
 DRTpoU0f+XVJ0zIyuM2RF0D0lS4VPxD2t7LdgMzxbNtKWwQ7JRM/9VCBCDnVxLG6Yh6lua5LxAa
 5ufPNYHJfd+DV7Gxg5rSPIQxSxl+uFfe4vK8qIO6wFejWIpNUYR8GqW8ZHgB4nYAN2DuuJ0QFEW
 sQZ3rxuRyhzvgmI7HrHhDRQhM9xE0N89mdOxk3dNRu2UasBQ/VoiHhTePFGMxVGPJaBV79M+3w0
 QR7FT2irE=
X-Google-Smtp-Source: AGHT+IEiizqa7gXB/ACCt9JE7Q6rU9XXmV2EFcojqYXAdUzX6FLa2edp+vH8KkFhKHQ2zor39oLYCg==
X-Received: by 2002:a05:690c:4989:b0:78c:2c09:4748 with SMTP id
 00721157ae682-78fb3f7e542mr153887627b3.30.1766682576087; 
 Thu, 25 Dec 2025 09:09:36 -0800 (PST)
Received: from localhost ([2601:346:0:79bd:5a70:118b:3656:4527])
 by smtp.gmail.com with ESMTPSA id
 00721157ae682-78fb439b8acsm76287267b3.13.2025.12.25.09.09.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Dec 2025 09:09:35 -0800 (PST)
From: "Yury Norov (NVIDIA)" <yury.norov@gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>,
 Andrew Morton <akpm@linux-foundation.org>,
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
 Danilo Krummrich <dakr@kernel.org>, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-modules@vger.kernel.org, linux-trace-kernel@vger.kernel.org
Cc: "Yury Norov (NVIDIA)" <yury.norov@gmail.com>
Subject: [PATCH v4 3/7] kernel.h: move VERIFY_OCTAL_PERMISSIONS() to sysfs.h
Date: Thu, 25 Dec 2025 12:09:25 -0500
Message-ID: <20251225170930.1151781-4-yury.norov@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251225170930.1151781-1-yury.norov@gmail.com>
References: <20251225170930.1151781-1-yury.norov@gmail.com>
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
index 03a977168c52..281a006dc284 100644
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
index c33a96b7391a..99b775f3ff46 100644
--- a/include/linux/sysfs.h
+++ b/include/linux/sysfs.h
@@ -808,4 +808,17 @@ static inline void sysfs_put(struct kernfs_node *kn)
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

