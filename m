Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FE81C9FEA0
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Dec 2025 17:23:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3FDC10E152;
	Wed,  3 Dec 2025 16:23:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="SeI+ejNx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com
 [209.85.128.180])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1395C10E15D
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Dec 2025 16:23:33 +0000 (UTC)
Received: by mail-yw1-f180.google.com with SMTP id
 00721157ae682-78a835353e4so77926807b3.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 03 Dec 2025 08:23:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1764779012; x=1765383812; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=UuNgNlcfjsZ+Qe/j+fC/RN/pSpI7MUBa9s9mWM6ZH0E=;
 b=SeI+ejNxiwaMR/gnXxCIWGgo3atInRL6OcgmDX+dfIUJFzw84+NryMh7fLXtghoTu8
 bo51UssRemjOQj1M5H3cKhkIlUmbXzFMFSeYPH/vkOxZl27KwS5MvpJTq61dRwDOTzRa
 M+fhwfXNp7R4p4oh//ftN/sKebt4jH+fbpewVb+RAMAiuaL5fN+jWxqpQVMkv2JA48DC
 8+qEDr1yE+MQjv1JxUmFsYGmXlnSf/2pyumsZE70NMLuHD8x7HOaWGBpqwVpqRx45QgC
 NN8bHtLKZIA944gAoOj9GEi+kDmZtcUsdW7RiXdDia0Y3RqD8G3hos68t+sg2kKjt0rT
 d3KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764779012; x=1765383812;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=UuNgNlcfjsZ+Qe/j+fC/RN/pSpI7MUBa9s9mWM6ZH0E=;
 b=vwooiolrDyFRDudXwYV3qRwendomr1lxW0rl9LUG2gh1yRjOjNeSj0SP5wMy/RxRpB
 39D2tqmiwJm7aww82W+cp42aYdZr7jtUC3tiopFvefT77W3HY5iY+L7D2rvCgp1JKVyL
 9pGFcGWSSWX7QQmS7Ooocryr3GhwxenSdwZk2EFEG+/sBDme2hDXN549VqP0rdRm0di6
 CEriSwJDbiHXjgyMfzwZx87D4+FmuHIppyQPwxjb7mPO3OIa3Brg5Uc20VvQ1sS+C68u
 J9F1y2dK0rLqxEdVty9a4L+dLylMzvO/hQoGwrKZGds81sz5mpBl9cQzTLxW1BnJK0tL
 2p6Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCUT1qi2/Qja0cfCArZD3UTYrlWPVgiyAmndbkNqh+MzCm5ncPPlh1NDEISqzG1DRl7MCwR6GKk/iQw=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzYxT45Z6LKdR4twZhAjVsm2aGK7Jn0uEEBriSP46JmnZhuo0YU
 zDDT/OV4BQtiIdOd17OF8DdF2Evtm7A+i/PlShrgIkVFJ8zuiGuDi7xg
X-Gm-Gg: ASbGncuwlMTD+NjOoWM7KF4dTYzlT4+5qX9XC+oZkP+BBFocuNwRzHQ5OM9KaWanF1q
 RtbPqos61vtU83msscrlEDMbSUCXU1JejLKbxbzB8GypFBSftdf6p5uMU6c56R47UAyLaojsOVE
 FIXZv9hD5BZbS5WJsvpLfA+ZCc8iAaUJfl8FmUVcC9QznX5VS9Gd1dsLl3gQ7xQtIlmkrKCj+pk
 4QOGaLiI85DYf89ungiCZPpzjh7dYm9Oi32p0ifYKP2/jdF92Zwp0lSuFJ/ii/0/sNTpFUDNnbD
 Wx3BualkIqTJkAklswzzkoTaGTGLwAgqeINaB9qYr9iRQuyPbVArIMBapIlxlqI+vR2tnEZdI2N
 8oVkHHAbUdVRAiNu8hI/8X783BOLaLj1QFu6AmJRDLh6f8Mfbta4gsNabJigy1GRSO7qFnTNrBf
 Y72ZfpEBo=
X-Google-Smtp-Source: AGHT+IGgPWDFUFvsoh4Eu3h95/Sh/XNQIQM+FfTSI/plOCqZ3lQCrUg2djPKk5L/jEKtossHKw/vRg==
X-Received: by 2002:a05:690c:23c4:b0:77f:9dae:34f0 with SMTP id
 00721157ae682-78c0c2627a5mr21697617b3.46.1764779011881; 
 Wed, 03 Dec 2025 08:23:31 -0800 (PST)
Received: from localhost ([2601:346:0:79bd:3422:8bf9:97bc:b085])
 by smtp.gmail.com with ESMTPSA id
 00721157ae682-78ad0d5fe1bsm74921787b3.15.2025.12.03.08.23.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Dec 2025 08:23:31 -0800 (PST)
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
Cc: "Yury Norov (NVIDIA)" <yury.norov@gmail.com>,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 1/4] kernel.h: drop STACK_MAGIC macro
Date: Wed,  3 Dec 2025 11:23:22 -0500
Message-ID: <20251203162329.280182-2-yury.norov@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251203162329.280182-1-yury.norov@gmail.com>
References: <20251203162329.280182-1-yury.norov@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

The macro was introduced in 1994, v1.0.4, for stacks protection. Since
that, people found better ways to protect stacks, and now the macro is
only used by i915 selftests. Move it to a local header and drop from
the kernel.h.

Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Acked-by: Randy Dunlap <rdunlap@infradead.org>
Acked-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Yury Norov (NVIDIA) <yury.norov@gmail.com>
---
 drivers/gpu/drm/i915/gt/selftest_ring_submission.c | 1 +
 drivers/gpu/drm/i915/i915_selftest.h               | 2 ++
 include/linux/kernel.h                             | 2 --
 3 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_ring_submission.c b/drivers/gpu/drm/i915/gt/selftest_ring_submission.c
index 87ceb0f374b6..600333ae6c8c 100644
--- a/drivers/gpu/drm/i915/gt/selftest_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/selftest_ring_submission.c
@@ -3,6 +3,7 @@
  * Copyright © 2020 Intel Corporation
  */
 
+#include "i915_selftest.h"
 #include "intel_engine_pm.h"
 #include "selftests/igt_flush_test.h"
 
diff --git a/drivers/gpu/drm/i915/i915_selftest.h b/drivers/gpu/drm/i915/i915_selftest.h
index bdf3e22c0a34..72922028f4ba 100644
--- a/drivers/gpu/drm/i915/i915_selftest.h
+++ b/drivers/gpu/drm/i915/i915_selftest.h
@@ -26,6 +26,8 @@
 
 #include <linux/types.h>
 
+#define STACK_MAGIC	0xdeadbeef
+
 struct pci_dev;
 struct drm_i915_private;
 
diff --git a/include/linux/kernel.h b/include/linux/kernel.h
index 5b46924fdff5..61d63c57bc2d 100644
--- a/include/linux/kernel.h
+++ b/include/linux/kernel.h
@@ -40,8 +40,6 @@
 
 #include <uapi/linux/kernel.h>
 
-#define STACK_MAGIC	0xdeadbeef
-
 struct completion;
 struct user;
 
-- 
2.43.0

