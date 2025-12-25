Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B28CDDF47
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Dec 2025 18:09:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9210512B8D5;
	Thu, 25 Dec 2025 17:09:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="De70Yv5V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yx1-f51.google.com (mail-yx1-f51.google.com
 [74.125.224.51])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0444711A7CA
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Dec 2025 17:09:38 +0000 (UTC)
Received: by mail-yx1-f51.google.com with SMTP id
 956f58d0204a3-6468f0d5b1cso2338956d50.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Dec 2025 09:09:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1766682577; x=1767287377; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Dc5Me+mE1rk9t6TSSnoEi9o5UAq5H187I9GSo5hasb4=;
 b=De70Yv5VEHQ/dS9ZJ+vZwubElt9AgNXvZEC/jfRVRIHMgrx04aNs2Mi5mttVQQoBBn
 sojIk9465kr/4xUTi9zAZVHIq+oe+ySXedgn+sf9HR2aXktYh+FMiFYnIDDSPCxObUPx
 4B81O7eBfNJ6rjCoYyLveoXul0WLPX6GXeu9Xb9hcJTUkvoZh6ciILyus0RRN2ck7k9e
 qCbvUMgq/xKy3yelgve+8YqH8ZIy95x8uwUCKbFwOiCqVs2I71izLVy2YkGLmbRs3TVd
 L9XMLCrbtzmcbKXiQTaJthIAWt5cmKjzJR3UTB3iecbQ31xcwx5zoCJFnX+XSC3iW+wx
 T7kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1766682577; x=1767287377;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=Dc5Me+mE1rk9t6TSSnoEi9o5UAq5H187I9GSo5hasb4=;
 b=XqR8k6CJ30zdg6WQrMT0C32AOPRozGvZfAX2ccJtXQQGe2b0/NzoadCub3z4M1mVNh
 3Pjfx2P6hHAxn6QgyQ1DNYhz2IsRNMDgiraGVwmSzktPO/3iV3mA9Ubb29b5CTDtV24o
 D/hSU+689L5f+1CIlHmzJRRQh7GRqHSm49pOosAd19pVI8w/zt5v0h4C1WXyVTjOu383
 mD75aR/WyRHFV/D5iYCsrxcc81BeAKEickNRr+H1gA4KkJWJGhuZwNFkmbFIa9UZXGTL
 BTs2AX0M//RxNebu1YCvJrTna2/osXZ6Yc58H2OEOmFGWtBeSp24bzCiqnGiAdM21CbJ
 t1xQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCULUuthl2I2CA0P6/XvFNsj/gg4FyeDhjEb2aJdZ2hzxxw9YRBO7TylCe4XumYhEmsb/tKI4n4aNXQ=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzlC6C5wPRGZKGteKVuXACmwaROSRdyp/9Yuvaq9juLamCFjJ6E
 tueRkNHyvkYzwooOnGaott83yEOMU4OAFAm/vrmU2Scs2/rYsgVT0eYk
X-Gm-Gg: AY/fxX6OFyl6S5+eUgtpBRjMlrHfbdXlGvEZrG6OBt2pZKN+KTIJpnSCofsAFuS3W00
 9Q+ORbnnXW8NhkKQIu0SXWJTf/wm31zqyvQEyKl8eBSqYFADQu3pK0ABUpX7jDoft5C4ogdl22a
 640N6UreWFwNi4vJtjsgpz6Fduz/nrlkilSts35cBDIVRSx6s5mSgSe0GOtcnk7UEIDteoNjYmP
 7ihWlDEo9ueh7pumh5uUaFP2Vv5ledGIV3utPXn5sZjF21rasmfZFHIaLS9oCO0C5biLGKkjaZW
 roGIkLTIuXiW1o3TrE9zfZMJudDYezaS4Z0CR30UMR72eV95kggc9VLX5JFkXliTRg1SLBGDw9S
 NR+NnXmpZCxdwFW8x797MZrOog5Q3QB574+EwoaeyhErWZjio0OQXN9pM3JNUu9LoYEzSknls6x
 qFdL8U9pM=
X-Google-Smtp-Source: AGHT+IF3pn2lAHgaG+6TAPCfe6GjTjYcrsSqlU3VOVIzxXfAGamdgIbuGhSoSIuBjHiFa2I0R1eJBQ==
X-Received: by 2002:a05:690e:1502:b0:644:60d9:866b with SMTP id
 956f58d0204a3-6466a9265a2mr13857881d50.92.1766682577038; 
 Thu, 25 Dec 2025 09:09:37 -0800 (PST)
Received: from localhost ([2601:346:0:79bd:5a70:118b:3656:4527])
 by smtp.gmail.com with ESMTPSA id
 956f58d0204a3-6466a92186bsm9734975d50.12.2025.12.25.09.09.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Dec 2025 09:09:36 -0800 (PST)
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
Subject: [PATCH v4 4/7] kernel.h: include linux/instruction_pointer.h
 explicitly
Date: Thu, 25 Dec 2025 12:09:26 -0500
Message-ID: <20251225170930.1151781-5-yury.norov@gmail.com>
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

In preparation for decoupling linux/instruction_pointer.h and
linux/kernel.h, include instruction_pointer.h explicitly where needed.

Signed-off-by: Yury Norov (NVIDIA) <yury.norov@gmail.com>
---
 arch/s390/include/asm/processor.h | 1 +
 include/linux/ww_mutex.h          | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/s390/include/asm/processor.h b/arch/s390/include/asm/processor.h
index 3affba95845b..cc187afa07b3 100644
--- a/arch/s390/include/asm/processor.h
+++ b/arch/s390/include/asm/processor.h
@@ -31,6 +31,7 @@
 #include <linux/cpumask.h>
 #include <linux/linkage.h>
 #include <linux/irqflags.h>
+#include <linux/instruction_pointer.h>
 #include <linux/bitops.h>
 #include <asm/fpu-types.h>
 #include <asm/cpu.h>
diff --git a/include/linux/ww_mutex.h b/include/linux/ww_mutex.h
index 45ff6f7a872b..9b30fa2ec508 100644
--- a/include/linux/ww_mutex.h
+++ b/include/linux/ww_mutex.h
@@ -17,6 +17,7 @@
 #ifndef __LINUX_WW_MUTEX_H
 #define __LINUX_WW_MUTEX_H
 
+#include <linux/instruction_pointer.h>
 #include <linux/mutex.h>
 #include <linux/rtmutex.h>
 
-- 
2.43.0

