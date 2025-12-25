Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F2A4CDDF26
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Dec 2025 18:09:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F9C511A4C8;
	Thu, 25 Dec 2025 17:09:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VXCys8XV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yx1-f67.google.com (mail-yx1-f67.google.com
 [74.125.224.67])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2888911A2EE
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Dec 2025 17:09:36 +0000 (UTC)
Received: by mail-yx1-f67.google.com with SMTP id
 956f58d0204a3-6468f0d5b1cso2338938d50.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Dec 2025 09:09:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1766682575; x=1767287375; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=RyNbxONE5FjE3NQ/ds0QsvOq9j9R5HrwQHi/I2IB5ps=;
 b=VXCys8XV+oeKOcsDQV1AHQjTgGWsqZkXUUvIV2tCMod/1UE6ah4bSreCCLA8yytngT
 v+ump9Xo8mWaxDHvCq6Gt0tZXREFwWyn5yhpDbZUf7Aedg6/eGhU/9ep4BtbuEXtktgj
 gp3Qktpqk3kSwG8Wv2L+5AyTJUkYvQVSInpJAw+LwdY5Y9DLeEPPMSqZjf/mPpL9tHzJ
 R9VZbhYozIZMKxVS2B1RwyokeNilmhRxfeSAZxen9vT2u5BKzk5ppl+1VVyMgE65HXUi
 ollA4qOdGTxFarm6sfjYiD8wUF8M/ZuJZF3/7HcOFxph5zmf6kIAATjltv3W4lM/US4A
 TrFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1766682575; x=1767287375;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=RyNbxONE5FjE3NQ/ds0QsvOq9j9R5HrwQHi/I2IB5ps=;
 b=dg1iCYqIJyworqijQuN46h6/SAXqPBrl97kVG2rBrSvnflEI3ijk6kYl+/0sDaHTme
 UexBkyHzNTYYonmff3LhIP0m2I3VY4ohakvKqkluLbPcARXXfl6NjN1duoIKHN5s+CDC
 o7+jT5E43GzvP2OxxBafwxaETt1SN//x9RiI0T2TYmZLZCzO+mNUOWUP3yebZzANaIgg
 NPweQUJKawqelnS3ej8QD615/NsSt8xZyy/Og7L3SSyJLY2+PRznSPd2dSV4qPq3kY3z
 eAm7P2pWbF4CuIHQVHQMUXWB3tthzQdJ972EEu2I5cnwpj9S0VfGtYigfTBX74A1m0KU
 ZMdw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXYEoRwsrr34bvVR72X1/dR/qeiI16kjhkUG/ZWbD0YXlMgntQntmcDjgP3Hr7odVqpepVjiwCxJ/M=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwoYKHRMaYZzZDLSGCBsv07vr/DJMHMK2mr2CL1vH7k2E9AlUrY
 ziKUUJk8cbwe5DFFGr2CYJNUOe3fIG32SsIqM5PA9W68jjn+cPfbUuzJ
X-Gm-Gg: AY/fxX5I4Y3bub8lKe79PNwGpmB3WCuEbPOn0foPKsv0ZTYfnFcvrEUfFLD04nAG81A
 db+RcB7nuHhmRRx8XgIRbC9xBf8n5IvKIrs0rLczI5TUeJCiDtFFTYwevhGcpP5B4fkwBNrqTMb
 CrJlIbKVbukc5VUSNZ26bI7/BPNnsB8yi7ufnVc2G+uf2fqThuw09zfXH04lDHtpPCUsrpZcbtD
 viplEcJtPh0WSQX5vR3cy99qPUzeaLvhiiAW9dK5Y4GNrzRHf16tUoJ2TYQTNCgSjq8ONAta6V+
 A+EbMFPIcXcFGsPljGx2W11PeRbJ4JzZH7LT9ZJSoMy6XkZsmkxDoSwBWBFClrks0wi2oXntgzp
 NiRhoT3gqZQQknUaqejOLy1JuXSvGT4g74j7X7KRTPwr1Swmh3O+Usy4EF1KuVz7FleS78/HVji
 7jfpTn38H3+k8aiUEjSA==
X-Google-Smtp-Source: AGHT+IFE8h6DvR/wQ+jE4yfmtCWCvhxSn9K0kIAiE1b9fgSbqcan4jtnrPelALLy8Mk/xvjxVHggUw==
X-Received: by 2002:a53:c5ca:0:b0:645:5467:29e7 with SMTP id
 956f58d0204a3-6466a8b4e26mr13238687d50.24.1766682575137; 
 Thu, 25 Dec 2025 09:09:35 -0800 (PST)
Received: from localhost ([2601:346:0:79bd:5a70:118b:3656:4527])
 by smtp.gmail.com with ESMTPSA id
 00721157ae682-78fb44f3f64sm75744107b3.27.2025.12.25.09.09.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Dec 2025 09:09:34 -0800 (PST)
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
Subject: [PATCH v4 2/7] moduleparam: include required headers explicitly
Date: Thu, 25 Dec 2025 12:09:24 -0500
Message-ID: <20251225170930.1151781-3-yury.norov@gmail.com>
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
index 915f32f7d888..03a977168c52 100644
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

