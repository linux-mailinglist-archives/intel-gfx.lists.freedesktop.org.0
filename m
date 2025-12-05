Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 535A3CA8B0D
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Dec 2025 18:52:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A050510EB7E;
	Fri,  5 Dec 2025 17:52:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Tf7pMCYu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yx1-f53.google.com (mail-yx1-f53.google.com
 [74.125.224.53])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2CE110EB79
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Dec 2025 17:52:41 +0000 (UTC)
Received: by mail-yx1-f53.google.com with SMTP id
 956f58d0204a3-64306a32ed2so2133388d50.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 05 Dec 2025 09:52:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1764957161; x=1765561961; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=wgVl4UPQOdVuiUQDADihFeO6bzjnbrTXUsfv7qld2JA=;
 b=Tf7pMCYuSfxIhj4C8SLgrvkymAIn4QpBhx67BF6EFxVz0Ttb2sJidlr9ZpjdsTbqWw
 DDj7CXwykeAwFxAUUuiKIyvdNZEtpW/XzI3ZVt2E5rFKBEyB0xDGXc7kKhxOlM2Q1f3S
 raf1Djl4ZAT7hh2qpjH7zvZe27hWnhR/cYPpCLL9GBlFbyfW38k1KSIhvncZCGd25w+x
 Z/naFcg1pWVoT/nQ7bL0fxbjI8rs3/8Y/3i6wy0x/n/7YyNgkl3rdgdPjS9J5DkhMfub
 DNmmNdM7xK3r9El2UmuNLw4N633hsVwZMitZ3wsX23i5dSjUn5g+rpZYGRku5xzzaLsc
 1PsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764957161; x=1765561961;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=wgVl4UPQOdVuiUQDADihFeO6bzjnbrTXUsfv7qld2JA=;
 b=mXrEi5PeqLqQet5/qQy3H2qSLsixxcK/zghJQPJd/wjqM1y3LXxKjKsJuhAFv8Ma0A
 xeCcOuHz5INEcjyXlJHodZrIJaE0k7juwOI1D21UpGc5GZPMvjlGT9hY/xKaQMRWUe3U
 swkhb0i2W8Zvp3Mv89geQyCnXav3XIW/o6slxmk/JpUreTRHofLpWoFBNacv0dhtQjzz
 7ARfNbkOuzUehyW7uF+yrjBh7PaEYelAjyBLIPDSIRBcEaOA2bRXa5aGZUNHZHeUxwTw
 pzBOeGuMWiSclbzEHHXSzAI5ojFGNkr/4PWPnWrKEdY7cehDo/fgkFCJfi9aULh69uTQ
 jIrw==
X-Forwarded-Encrypted: i=1;
 AJvYcCX7wHl+C888iqzsZI8scekUq26M3SplPxqzraqKwAZ/KyQRXZC+HbFn7HoA9uofzcSYWhmp17e7+nQ=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyrvwivSPV6TP8RQAAghxMeHi5DJslaLG3T0+ahobm5UXWp5mUg
 sgaT7fkyK6uWYE6lP48tdTNAmCeVQMj+IuCHwCDALRGyLEAZOO0ZMORP
X-Gm-Gg: ASbGncu51IhmmGA4M61W+FHs/JrljJCjRy0jArQ1v/vdf/8DC/91z2Ab2xKmqDg9Dwx
 uSaF7uMk4dvjiD40Zao6I/BNCzpslj9UhfLMTtqrW1gmbeivFFQ+SY6HV627/3qx8kiWQjpvLuJ
 zHbI93FO9CpirQgAwSYzrpW4omKvezbm2wemQIQHAFXTj4NbbUNrCJriGBEB1bHHYPJHkUGnOXX
 /A/iIm9UVxE7hzH8DD+1nPeKISCIgzV30j0qhB7iO6nTtfAxue28/4WlGmj7MgfAY9FUdQo0ppD
 P6MIpqcOFRQRQXvptMbA1ghPeEd5hPVrFP7nCPTFoPFjZCYV7YtHx7O8sby/8WkCOCr9FUE4KDi
 ULsJ2pPdnEkqGlaJYpB+++Oa+WxyEdO3gVOtAIXu+gjRyPpkAjk8s4ObgX/uKyQYndtmkgC6AI5
 3T+VW7WBh3wxHbfzbR
X-Google-Smtp-Source: AGHT+IEmHQrMAc5KhCOB44tPj+C3L7ufMqCejlU3WOz8uzACjmQ1s89nXnFrR9N4AEaBc1g4PgKHgQ==
X-Received: by 2002:a05:690c:4f12:b0:78c:2803:c819 with SMTP id
 00721157ae682-78c2803ceb0mr17790807b3.22.1764957160598; 
 Fri, 05 Dec 2025 09:52:40 -0800 (PST)
Received: from localhost ([2601:346:0:79bd:be2a:7e4d:3bf:3fbc])
 by smtp.gmail.com with ESMTPSA id
 00721157ae682-78c1b779458sm18946927b3.35.2025.12.05.09.52.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Dec 2025 09:52:40 -0800 (PST)
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
Subject: [PATCH v3 2/4] moduleparam: include required headers explicitly
Date: Fri,  5 Dec 2025 12:52:33 -0500
Message-ID: <20251205175237.242022-3-yury.norov@gmail.com>
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

The following patch drops moduleparam.h dependency on kernel.h. In
preparation to it, list all the required headers explicitly.

Suggested-by: Petr Pavlu <petr.pavlu@suse.com>
Reviewed-by: Petr Pavlu <petr.pavlu@suse.com>
Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Signed-off-by: Yury Norov (NVIDIA) <yury.norov@gmail.com>
---
 include/linux/moduleparam.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/linux/moduleparam.h b/include/linux/moduleparam.h
index 6907aedc4f74..ca7c8107c7c8 100644
--- a/include/linux/moduleparam.h
+++ b/include/linux/moduleparam.h
@@ -2,9 +2,14 @@
 #ifndef _LINUX_MODULE_PARAMS_H
 #define _LINUX_MODULE_PARAMS_H
 /* (C) Copyright 2001, 2002 Rusty Russell IBM Corporation */
+
+#include <linux/array_size.h>
+#include <linux/build_bug.h>
+#include <linux/compiler.h>
 #include <linux/init.h>
 #include <linux/stringify.h>
 #include <linux/kernel.h>
+#include <linux/types.h>
 
 /*
  * The maximum module name length, including the NUL byte.
-- 
2.43.0

