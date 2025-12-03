Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08AFCC9FEA9
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Dec 2025 17:23:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB9DA10E87F;
	Wed,  3 Dec 2025 16:23:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="nRjktfOp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yx1-f47.google.com (mail-yx1-f47.google.com
 [74.125.224.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D3C310E855
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Dec 2025 16:23:35 +0000 (UTC)
Received: by mail-yx1-f47.google.com with SMTP id
 956f58d0204a3-641e4744e59so7297071d50.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 03 Dec 2025 08:23:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1764779014; x=1765383814; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=BD9kPlC9NqK4/C2x8UYFTQBB7a0NtQWd16jS1I2SUnE=;
 b=nRjktfOpFINrIAO6o0U4RsYRxdswlrrh3UT3s/ra1EQYAQ3UbgsIUwB56uXxLzeanK
 FmrBzuRmKurD/+EJhihqF/pVojFq/VZrzj4lQMrggUclNq1ylnpfvpv4O8sx9UrvGehW
 Eh8ERJaA2VDV4ITkp9FtP0bUJHRNG2h8kPziD/3GQ+zYEJU8jHzH8W64Me6ytj3sl02E
 DlTqB0nVkrUseM8AWpb7FFGjxDxeT2nshBz9vRwqJih4clcwu8XtBjwuV6X56GtLf/Bf
 ZTgLaFy4dCMOM1hOtsb/OLPLPEgcgOvGtUhn1kDvjMHOUuyGmNF4JYIl6CRgjEHnIW7d
 hOgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764779014; x=1765383814;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=BD9kPlC9NqK4/C2x8UYFTQBB7a0NtQWd16jS1I2SUnE=;
 b=mM3zBRKNxpYpLF+tfGVarl2MogFo4CB6sFMrfipvYBqU5xp/QKaoiGT8ia2cj+KLp9
 AcaxFEgeXrEEP3zmmJsp1+oJWbFhnHQ6x8eyTO1ZwHmC0Pzc7m9Mbg6OFM/AESo/Cyq/
 tmDPueAhjEKZk4GMqagwu4tT/Thx8y+EpL6crUeMoWS7MdcDp+JnLt0h6TpiGYpSCgRZ
 t6OYfAaYoi/a7CEkHHppxU8gB58WqqtX37rxHGxDy5i4H9/I29aiEA0Ic0O8Ba0tMGuK
 zO1RgNFYp6FRnP1AIgTT80r8UmWR1N41/wl1wJ/HPYSplGIY4uPl4kGoZTbvQe1noMy1
 dhwg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXnm80tbBAhcGgJtMId5mNXBiyrHRbvLicsBIXnmH3VuZqXarmZc8ZPcNR4Uwu7K6DGqmeaKdz2gAs=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwaqXBgqDs8yGVvA7xzOP/bmmJ9u1zdSk5anWY+gWL++iCHVh6U
 OMM3kohodXAFxfQbIwoAXBmynmtP/vNUh23bSBciFR5Ak3f2lE4Wcl+y
X-Gm-Gg: ASbGncu/946sqdf8zD6L6FvBXBsY1CALvJNQj8OlhhoErba30afxwk2/Qdfp16O0nKF
 RG3aZi//hTIevzU6dmtrmOPvAJivqrS2EDXWsh3+D/LN0p/rrHRFEzOxQcL7i9RGYINSylxYFZF
 YVTtIezSKU2IwF/PG6vsdZhGfAseX/8dmPkpry1+NCI5ovFMx48L+WuxUeLcNGcQObK/CXGLRZk
 yltEv0XGVTVX6rDzdTDhMOS9nMubHa77BCnN5EekJ5TTV5knX+GOIDzIlWY26EuCFjuQYMN3cpU
 WdFM6kHd9brLqdHiS+DOEEpYIWPiVacXg8M6cvgQ//zamet6w7Emgt1DuETT76jfeQ0meZR3xmY
 xgRXxDM6sDMQlfgyN2Hu9fzXnUTvg+fAY+ls5QYgfq8Ufk/L5omfxqlSPG80coHW100xZ39LAEo
 46WkFrNGn7B+LiPXayWg==
X-Google-Smtp-Source: AGHT+IED9MOFMxvYSeb8SzBPTCp8AtkRM45d5US6WkMtf3ZGLjHaRGAjGtBn2tkqfezw7s+564T5/Q==
X-Received: by 2002:a05:690e:134a:b0:640:caa5:57bf with SMTP id
 956f58d0204a3-64436fab865mr2201474d50.24.1764779014070; 
 Wed, 03 Dec 2025 08:23:34 -0800 (PST)
Received: from localhost ([2601:346:0:79bd:3422:8bf9:97bc:b085])
 by smtp.gmail.com with ESMTPSA id
 956f58d0204a3-6433c089431sm7456743d50.10.2025.12.03.08.23.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Dec 2025 08:23:33 -0800 (PST)
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
Subject: [PATCH v2 3/4] kernel.h: move VERIFY_OCTAL_PERMISSIONS() to sysfs.h
Date: Wed,  3 Dec 2025 11:23:24 -0500
Message-ID: <20251203162329.280182-4-yury.norov@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251203162329.280182-1-yury.norov@gmail.com>
References: <20251203162329.280182-1-yury.norov@gmail.com>
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

