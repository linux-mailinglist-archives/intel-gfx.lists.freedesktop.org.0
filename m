Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 847DDC9FEA6
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Dec 2025 17:23:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E44CB10E84A;
	Wed,  3 Dec 2025 16:23:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="dELFdYGB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yx1-f54.google.com (mail-yx1-f54.google.com
 [74.125.224.54])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 825AB10E84A
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Dec 2025 16:23:34 +0000 (UTC)
Received: by mail-yx1-f54.google.com with SMTP id
 956f58d0204a3-641e942242cso6736451d50.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 03 Dec 2025 08:23:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1764779013; x=1765383813; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=XTRUgw7WGLaikLRGDiMOA9ZeBlhI6lBDtpiU6az4ZI4=;
 b=dELFdYGBS6JU6qhbmSYHn0Eb6tZRMR4Zc/G55eO9CflscsUMXbb4r+RTqt8Uf49KI8
 kukE9vJrg8voVJgzg3iV8h6UAIW+8qOKsXYz4X8pgAx4moVn7SsBHx/RYNHBC2rNjnIK
 mWuhO/Vi6fqOpgWBuT6/nyK45KHsxhqWXKs6YMhQcYAA+hd58GBp27LH4rmHfqhSZTkZ
 UPW4OSaY5KSFuUhvPOre3aHhGZV5XPh7gYGjsoTi2hqRi082WaJzTYblM0W/cM9pLRq+
 9LCq8OR4i+63elY9cyND29olQyvL4CWErPhcuk+Y6zrrj5DPqpTdzw2fV9YyKbO3bLw9
 T29g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764779013; x=1765383813;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=XTRUgw7WGLaikLRGDiMOA9ZeBlhI6lBDtpiU6az4ZI4=;
 b=JWeH8u4xXsO/6SV8Lt82DUsgSEIcPEByJ7vDZ8hCdg7mM2/WyUfU55Onp843fMqXmO
 Xz3NTcbHMj9jN46UhsCgwYL5ZLmcG17cSwVM4po4hPLQeqxakzkC19cctd9tMY2urZat
 NeDqbpfnfBQgqP0UDHuqckWh2hRZnenIAK8yCoZP1RZL6wZ1iP/MjGkRevoR2OD+ZZVU
 90t2P45GLAjSZZaYgV/nl7Z+Nrbh/R9zYxtEPODUwStTWXRoM6Hh6LYlCVEYE/s1B1O7
 jxIp2lxEBhctxUm/Ks3QWoIXucVG8IFc4tSHm1eZXkhswQ7lDaqVvcHcNoqyt74Ig/W1
 kYCA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXyqvLpw+pFc3GwSxEjneTQebcsTBVlkM2t8PYTlOMI220inRv93+VK60oz0nfYzrF/k7/8Y2emBKY=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxE/RsYNjBgtojWj7tN89m1kiIgLwbWpaF8HX5mGw1Z2C0AxIVY
 lAYwhGqS7Ff18Q9BFImV5ihJ9LdxqscxiRJJHhD+Bd9zS4Il6N675f3T
X-Gm-Gg: ASbGnct8W5Xk7CL1r9R1no7K1UMr3QM8upW/XJbmc/1lrss1bpOF8uYRH9TBR0+5t+V
 mu1WQNSl5V4C4Qz4hZKgVS/vOX8qwkknSnrKZfXQWC8wWh7ohmYdsliIv+a8VecKCwvMNS/KoGS
 gqcTTDc2Lf8/7LKwIPDrI2xwqbNQHZ2SYIY/+j3+S1F1ge0Fg9W4L8Tne9G13MRrpcmrW6df9ml
 XC2fNcyCe1OkUqR18zlQx4DphzUXms6I4S97TkazW/AWtwdPFwRnWBvf2BYXa2RJLAJvQU1wJ1v
 T8JZ02hREKmboGBBTsLmY6KTx80cA2Ogy1j1RUhW/PvFqHsUBnPtGNfT+TVKKi762E3KW+Fh3lm
 EutQUq47kXbiJR2O3l4AOHKFxvlH8NhTEE5E946ksJZgPN1Gjng6E9LB8z5Aa4F4j9EC0q2uox1
 RdimvCQMQ=
X-Google-Smtp-Source: AGHT+IGET334KxCtmx0dp1CAMPdeakUWlqKi8VbPsg55HeK6Rek4Uh9+JNYOdEve9S4FB5Tx8L5MGw==
X-Received: by 2002:a05:690e:1442:b0:63e:3994:4ae3 with SMTP id
 956f58d0204a3-6443703f028mr1928863d50.41.1764779012882; 
 Wed, 03 Dec 2025 08:23:32 -0800 (PST)
Received: from localhost ([2601:346:0:79bd:3422:8bf9:97bc:b085])
 by smtp.gmail.com with ESMTPSA id
 00721157ae682-78ad0c25ae5sm76024637b3.0.2025.12.03.08.23.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Dec 2025 08:23:32 -0800 (PST)
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
Subject: [PATCH v2 2/4] moduleparam: include required headers explicitly
Date: Wed,  3 Dec 2025 11:23:23 -0500
Message-ID: <20251203162329.280182-3-yury.norov@gmail.com>
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

The following patch drops moduleparam.h dependency on kernel.h. In
preparation to it, list all the required headers explicitly.

Suggested-by: Petr Pavlu <petr.pavlu@suse.com>
CC: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
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

