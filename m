Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA558CDDF14
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Dec 2025 18:09:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 796C310E308;
	Thu, 25 Dec 2025 17:09:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kIUg0DJi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com
 [209.85.128.173])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 193BE10EF9C
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Dec 2025 17:09:35 +0000 (UTC)
Received: by mail-yw1-f173.google.com with SMTP id
 00721157ae682-78f99901ed5so59511697b3.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Dec 2025 09:09:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1766682574; x=1767287374; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=qJnvW0A6SgbXQs1NHQABSopMa/fuZliTPpr4o45JmhI=;
 b=kIUg0DJiPQqkM6XYK4+QzQg2MxcUg9QgnTC79LieuTMnZIp0u3LCxoVC/JlYIsoGnH
 furs9XTJ/Ht3B0eMF8Sp07suXb/caAQS1kU+GVuRj75yxPkqZFVLsoEZdyIe+N+jYAUW
 3syu/c/Mc33jHcHbz4SQDjoAQ6829C38gzZbN2FEXEunMvWEXAX0ypR2gt6P7A3U1dMV
 4J41NSRfR0Bur/9cW74YH0rjAjcZpKWdXlj8UzBNannqjaqGNq0Tc9T9rHVhDYET1pHd
 0QgvnMrA2RdhsOXLSeu68Kjdgaco7KGvTkLfLFUwqwxTfVTOCcgJIy9FU29xLyC5tT8I
 uohw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1766682574; x=1767287374;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=qJnvW0A6SgbXQs1NHQABSopMa/fuZliTPpr4o45JmhI=;
 b=s477D9uJDQ8PnVSzmf5Y3UQlvcwlbaIkoq5nrkvMzZ2yPchyFmRu9mCIhgVtui5S36
 Obf5bO8BirAPkAT+/reENnz0i+ATGZx1aipMFyuRwRVjqmJqpmcNT7+yUPXqKNkK3ZYz
 MlYUDVJt7Q1p7C9hAcokBgX360FVv3r/LbXbjZcw6hom+15bJhxg2SNHyuVoKb9K1BJ0
 9U+ngkckV6ImzvlJKQPlK6miNFpppatHFCGbHUvVMHe8sIBohi49TjWoeFs7GwGkUDO2
 T2GHQrE7+0XurwilRBkBB9xj4otnkNCWhhaZJ9aMTD1qUFYNaD5tflfkDpKd+mU80r4/
 W5GA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVY2QevBngSLHsgHecdHwzO49OoWvfb+HRS92YsiOSX9tjOPLk4GbaPSo8i893CHdFyPJ9ax6rW+dY=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwEhKsDWPGp57DOuVwnvStewEl+kYW4I57+j/HccSAMpmA2VRtU
 L6rWfzG/CoYo7nuubvU0XmRVA8us+weENPzKCfuIBrJ/OgTtt1rBOF5W
X-Gm-Gg: AY/fxX4wyf+T0nPz588Pcq6Y6UYZep2WOjivOuYMiXnZyGXogPE+P815MkgeTs/FkCs
 YsoLGp/k2iLimhPzFtggwAmVQO3MUJfdTYhjmrWY9k2nBAPtdKtylY7HD9Fdi0CklztmfA8SXcz
 tMU3ce/+NLxNUIaiFhzWKUp5rsLKAnJo8U/D5m5zaRMIKDXggzlFEJyghD1D1LRAxJnBQ1fxcmX
 m2EObAYtb9dRKnKywVAf3V+7nwlzH2PPqVU7vMnbtiNZTyPD/Y+Yea1yCGzFjPkhgJewbmAk4bs
 w/62puGMCISVqnTh9ftdqVxl6aHnAB1LzYMM6oOh53sAbRH9ul8V/IeByg+Fvdn0uFKTs6hFBvw
 1sQUHtcsgKwgv5ivzO4KJIgkSwzQtv2n07KVG7/kFj3nab7EDa7iFsJ+SRT5iP8XLoJMRl1KDqY
 mkTvz0vOI=
X-Google-Smtp-Source: AGHT+IEOI5N8F1QPJkwKkoNFoaHrbTb32hBNxWVW0/bhknzb+bHcnaSpekV7BEM78upWGjfs7XzINw==
X-Received: by 2002:a05:690c:670a:b0:78e:3dcf:7aaa with SMTP id
 00721157ae682-78fb40294eemr168823547b3.39.1766682574047; 
 Thu, 25 Dec 2025 09:09:34 -0800 (PST)
Received: from localhost ([2601:346:0:79bd:5a70:118b:3656:4527])
 by smtp.gmail.com with ESMTPSA id
 00721157ae682-78fb452c441sm76158037b3.46.2025.12.25.09.09.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Dec 2025 09:09:33 -0800 (PST)
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
Cc: "Yury Norov (NVIDIA)" <yury.norov@gmail.com>,
 Jani Nikula <jani.nikula@intel.com>, Aaron Tomlin <atomlin@atomlin.com>,
 Andi Shyti <andi.shyti@linux.intel.com>
Subject: [PATCH v4 1/7] kernel.h: drop STACK_MAGIC macro
Date: Thu, 25 Dec 2025 12:09:23 -0500
Message-ID: <20251225170930.1151781-2-yury.norov@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251225170930.1151781-1-yury.norov@gmail.com>
References: <20251225170930.1151781-1-yury.norov@gmail.com>
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
Reviewed-by: Christophe Leroy (CS GROUP) <chleroy@kernel.org>
Reviewed-by: Aaron Tomlin <atomlin@atomlin.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
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

