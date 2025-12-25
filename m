Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AB10CDE0CB
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Dec 2025 19:58:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E42710E19D;
	Thu, 25 Dec 2025 18:58:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="OA/77aXh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com
 [209.85.222.181])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACEAD10E19D
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Dec 2025 18:58:05 +0000 (UTC)
Received: by mail-qk1-f181.google.com with SMTP id
 af79cd13be357-8b2148ca40eso1054120685a.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Dec 2025 10:58:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1766689085; x=1767293885; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=hauBx7stO8fgVv7cwKU+lRmpmOfl414DpJwGxBenCpM=;
 b=OA/77aXhFWiM3XbnzkTmRfMPBgWyJTkQkL6ua8xoMTlhWE0bJ7nb+jFhEMKiMduu1F
 DB2e9jGEgRJpAkWD8Hf1jfvcfM7GhS097uAegNVAkklJgLSnm7EzIT/i4dtuRnB1YK+m
 I1mhPOS8UKkqptnXeMcYiexCOFqveLl2Ku7JcocURzUKMsOASLdV2OpWiOSeIB5mNqp0
 PAZ/Ac+2Wj2PToHTLyiO5DhT6F1dMdfie/rMOR8hU/SvQbYiAaBUU9hdWG3M8fgEbTg5
 ENh1cF47eYaRHTljVmyXMXwuoKB0vnXG4dt9IWgd4df4k44aW3Y++POWiKCe0vD2V09M
 ws+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1766689085; x=1767293885;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=hauBx7stO8fgVv7cwKU+lRmpmOfl414DpJwGxBenCpM=;
 b=vXjdIJu97LKB0lHFypgk+A16DdS3Qczg3VvRmKJj/q1SUIwJEMzsaS7sYMcuFuxWhR
 W5wiluffHYr7RpCnoVw5Ak3OyRUOVx2KXYimwaIwVdM9CM40Vq8qQBvZKLjkZYxCXyRu
 897EqBMBWaq7h2wr1llJ3lPhUqtFvST234E6tokql5wX+Hoca+KpERaSXEMTRQzvfoDK
 EgeaM5kR/x+5Ex9AJuchAuyfP+dZ5wOc4VHw8plDElf+kN2/VVlmCHJ5xTm5uKUpI3oB
 tkHVhfHE/2tkS90LJk3nLfosGIfk8tiWnpVl/vJQY0Kx0J9rMUNlbjxzw46f/Z+NYhCk
 /TyQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCV4o18FEz6Qn/6kJJjv9F9wTlEKPdKlhhYoA15ur/7kBzZbALz2G7k9qcBJ2HhFl/BGm4CB4wJjIKs=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzGR5a6Yii7gNPZUmDJ8y8JIScubuKKjtbb+gRbO2wV5aYxGiAp
 QJ6/dtDIvXqhOo6YEqxaBb6IFlc6LIWJpXa1y3H+JJG775+8IGu4LVDXQNXXCg==
X-Gm-Gg: AY/fxX4jPTC6HAZ0YNpo5Uej4o+CiGK7c5YRc+omuJPQp3/2xBPtsohgGNOiqjc6Fp2
 0uw3ibIbnWkP4ocxyiMR23zqt5Y9QbBAEUISQGexOhhhFN03RQTR/G9R8tD4viZqD0Zo6poYbG0
 6PSYhnREiz92Wf4wnA8W+TR7jeZ/WEGv6LANx4pGui6WzwbT4BddSkPph5tdNRoIkIO1cgsM/hr
 zNmlxH/dOGO/UQNU94UKyWudgNEbtBKOVcEvboqImX4ldubUegqgBnOcK7Gb9VRprTrFKqJdR/f
 nodIqojXkrfB7zjYO6y1dTNP+opEwICXZwHnVDLb2XqpInSOvNFaUpDGhBJQz6IgalWfNboVxLe
 nG4G9vtR5rkZ9MOxe/clb42hDiGCt68qTKLaOHrsvm2qpNFXwub99ato7ad+VwxAr2xS1jpxwPO
 gohWYV0H0=
X-Google-Smtp-Source: AGHT+IFOC5KnXE7Y/86OXEfn0VfROKTdlo6cIy7sSNHG4HuRQ93qgtI5LmuQjuxLc/KbIiLosqGOQg==
X-Received: by 2002:a53:8592:0:b0:63f:ad6d:cbd5 with SMTP id
 956f58d0204a3-6466a900e02mr12636421d50.60.1766682577930; 
 Thu, 25 Dec 2025 09:09:37 -0800 (PST)
Received: from localhost ([2601:346:0:79bd:5a70:118b:3656:4527])
 by smtp.gmail.com with ESMTPSA id
 956f58d0204a3-6466a8bd6ffsm9803141d50.9.2025.12.25.09.09.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Dec 2025 09:09:37 -0800 (PST)
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
Subject: [PATCH v4 5/7] tracing: Remove size parameter in __trace_puts()
Date: Thu, 25 Dec 2025 12:09:27 -0500
Message-ID: <20251225170930.1151781-6-yury.norov@gmail.com>
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

From: Steven Rostedt <rostedt@goodmis.org>

The __trace_puts() function takes a string pointer and the size of the
string itself. All users currently simply pass in the strlen() of the
string it is also passing in. There's no reason to pass in the size.
Instead have the __trace_puts() function do the strlen() within the
function itself.

This fixes a header recursion issue where using strlen() in the macro
calling __trace_puts() requires adding #include <linux/string.h> in order
to use strlen(). Removing the use of strlen() from the header fixes the
recursion issue.

Link: https://lore.kernel.org/all/aUN8Hm377C5A0ILX@yury/

Signed-off-by: Steven Rostedt (Google) <rostedt@goodmis.org>
Signed-off-by: Yury Norov (NVIDIA) <yury.norov@gmail.com>
---
 include/linux/kernel.h | 4 ++--
 kernel/trace/trace.c   | 7 +++----
 kernel/trace/trace.h   | 2 +-
 3 files changed, 6 insertions(+), 7 deletions(-)

diff --git a/include/linux/kernel.h b/include/linux/kernel.h
index 5b879bfea948..4ee48fb10dec 100644
--- a/include/linux/kernel.h
+++ b/include/linux/kernel.h
@@ -329,10 +329,10 @@ int __trace_printk(unsigned long ip, const char *fmt, ...);
 	if (__builtin_constant_p(str))					\
 		__trace_bputs(_THIS_IP_, trace_printk_fmt);		\
 	else								\
-		__trace_puts(_THIS_IP_, str, strlen(str));		\
+		__trace_puts(_THIS_IP_, str);				\
 })
 extern int __trace_bputs(unsigned long ip, const char *str);
-extern int __trace_puts(unsigned long ip, const char *str, int size);
+extern int __trace_puts(unsigned long ip, const char *str);
 
 extern void trace_dump_stack(int skip);
 
diff --git a/kernel/trace/trace.c b/kernel/trace/trace.c
index 6f2148df14d9..57f24e2cd19c 100644
--- a/kernel/trace/trace.c
+++ b/kernel/trace/trace.c
@@ -1178,11 +1178,10 @@ EXPORT_SYMBOL_GPL(__trace_array_puts);
  * __trace_puts - write a constant string into the trace buffer.
  * @ip:	   The address of the caller
  * @str:   The constant string to write
- * @size:  The size of the string.
  */
-int __trace_puts(unsigned long ip, const char *str, int size)
+int __trace_puts(unsigned long ip, const char *str)
 {
-	return __trace_array_puts(printk_trace, ip, str, size);
+	return __trace_array_puts(printk_trace, ip, str, strlen(str));
 }
 EXPORT_SYMBOL_GPL(__trace_puts);
 
@@ -1201,7 +1200,7 @@ int __trace_bputs(unsigned long ip, const char *str)
 	int size = sizeof(struct bputs_entry);
 
 	if (!printk_binsafe(tr))
-		return __trace_puts(ip, str, strlen(str));
+		return __trace_puts(ip, str);
 
 	if (!(tr->trace_flags & TRACE_ITER(PRINTK)))
 		return 0;
diff --git a/kernel/trace/trace.h b/kernel/trace/trace.h
index b6d42fe06115..de4e6713b84e 100644
--- a/kernel/trace/trace.h
+++ b/kernel/trace/trace.h
@@ -2116,7 +2116,7 @@ extern void tracing_log_err(struct trace_array *tr,
  * about performance). The internal_trace_puts() is for such
  * a purpose.
  */
-#define internal_trace_puts(str) __trace_puts(_THIS_IP_, str, strlen(str))
+#define internal_trace_puts(str) __trace_puts(_THIS_IP_, str)
 
 #undef FTRACE_ENTRY
 #define FTRACE_ENTRY(call, struct_name, id, tstruct, print)	\
-- 
2.43.0

