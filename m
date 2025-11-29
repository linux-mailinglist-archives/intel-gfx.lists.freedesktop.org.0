Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88EDBC9472A
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Nov 2025 20:53:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95D8C10E212;
	Sat, 29 Nov 2025 19:53:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="CieUxwDE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yx1-f41.google.com (mail-yx1-f41.google.com
 [74.125.224.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C48410E20F
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Nov 2025 19:53:07 +0000 (UTC)
Received: by mail-yx1-f41.google.com with SMTP id
 956f58d0204a3-63e19642764so2027108d50.1
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Nov 2025 11:53:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1764445986; x=1765050786; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=gMtAFmfUFSqT7Mio9YvaV3lvjHpX+ONaRINwsv8b7ko=;
 b=CieUxwDEvMePWTnst1fcCTA8hL2iUym+c6w4B9kofoJFQvB8CmeTN22nUN+tt3i4f6
 3E+O7KC9FH1MyqOfNbceVpqldoKl5nN6pBYa4W2DT4guUvH0A+qJsRMEZTYbArl7DmcA
 lcmzjs9E56XyPj9xwZxB7+yMk1D2JCdzJsz6xQ73B1OcpiV2DCm8kwMn3NttwV7IMPHw
 x9OasfyTS3I0+pxI2qBuIHU6DwNB20eegZ2zlcUzU+vnvRM7Vyr3J7HfISjkgRLfwG/o
 2rv6SltCOYiYPK61fGnooT307LQ2JYjNIyBLQh7x3qx5gI4E+pdsh23TiQJe6eomNIvp
 bEfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764445986; x=1765050786;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=gMtAFmfUFSqT7Mio9YvaV3lvjHpX+ONaRINwsv8b7ko=;
 b=ewy8TbYQGWjCKU3VMiZx3M0yedZtD+QN+wvh1vpdE9VImYbT+mnfMgucvgiwScxcZq
 L/U/6b9qbhwxHEhMNBiTcUGlIq6b2rY6eMzA970OMCtdgsS+TQIV0mmsJdM5KbQ6uKPl
 YGjXxHGqt1y03kxYJR+UkoqVQdN+OD2juTKqec4cPJi/etCeVvKOJ0sLy1TFzQYP7758
 Taeu8NASD08dzxNVn5N/47d+U7Drxl1FpcEt+WxuiWwVPixZ/8/7D7IVjjdxnlpWLNOa
 EXYOW4tPmUEvcTeHx+uswroKmxXq0jja5rWhUbeUhS718lvghhkfDdqS0kMDyDF8UAlU
 LKRQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXZn90pS5Cq7eSQ/FelCQzH2n0dNlr886dI2NtaIY/ELoIPppX6nV5a37oufdsbHS4i8M4Pp9Ficdc=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yz8ReUGssLlEQt87ah4mAEGGohzV0PL70GcBg/FbwN7t9O8H5jc
 crJtc+jGx0ARNA0OTQpK2150G04ftQxPBrt3XnC6ru06gcSh7svS+JUD
X-Gm-Gg: ASbGncue4+tRJnmm+iHOrrcCMeudeRbDZyzPZqOsgkY2SpiHAQhBZjXdYBGnASlwDX6
 wpVS5DNBLi+4z23zzIlfBzN4pinbKCEvO5kbbl7toN7Z4zgNiVzDr7ShNnzjwcnEX+WJoVJuTJu
 /NZ+pJ23u8wawOgrccSFlvTtxyl1D5w8G8y7Fa9zLvl65xYrWG8RZ0oQ1ZIY7MpxgHQLeg5SIom
 GYePp3J221JrwQF/2dZXT/8DjfbKAWJNpV5bioVp8mW+KXsSeU/5ZX4zJ0Q31kTF9sLxgzdEpg6
 p3CZZ795G1Rf2sDH3HoZQJ9iKwd5qil5D+mitYJDAemWJU3qlUH/OS22OM5ZO8y3Oivkp+j7rT/
 vVg6AOS5ppOk5HuNHtQGZ+LVSwXjCJKQhcKyncWFpUQOPcm/snxcZFOLEGkQ99RBDo1iQqrrx0Q
 GMKUmlWhw=
X-Google-Smtp-Source: AGHT+IFe8Y0GMh+6LMlCZSdBuNKhw5C68QDt9RitlP5LR9LIFpydTgLo1EIGXwaP+uPjQ4SltW6e2g==
X-Received: by 2002:a53:c052:0:20b0:63f:b922:ed79 with SMTP id
 956f58d0204a3-64302a3a8d1mr19964013d50.14.1764445986251; 
 Sat, 29 Nov 2025 11:53:06 -0800 (PST)
Received: from localhost ([2601:346:0:79bd:353a:b6ab:d4ee:67b9])
 by smtp.gmail.com with ESMTPSA id
 956f58d0204a3-6433c073e07sm2844621d50.6.2025.11.29.11.53.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 29 Nov 2025 11:53:05 -0800 (PST)
From: "Yury Norov (NVIDIA)" <yury.norov@gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Randy Dunlap <rdunlap@infradead.org>, Ingo Molnar <mingo@kernel.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Petr Pavlu <petr.pavlu@suse.com>,
 Daniel Gomez <da.gomez@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Danilo Krummrich <dakr@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-modules@vger.kernel.org, linux-trace-kernel@vger.kernel.org
Cc: "Yury Norov (NVIDIA)" <yury.norov@gmail.com>
Subject: [PATCH 1/3] kernel.h: drop STACK_MAGIC macro
Date: Sat, 29 Nov 2025 14:53:00 -0500
Message-ID: <20251129195304.204082-2-yury.norov@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251129195304.204082-1-yury.norov@gmail.com>
References: <20251129195304.204082-1-yury.norov@gmail.com>
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

The macro is only used by i915. Move it to a local header and drop from
the kernel.h.

Signed-off-by: Yury Norov (NVIDIA) <yury.norov@gmail.com>
---
 drivers/gpu/drm/i915/i915_utils.h | 2 ++
 include/linux/kernel.h            | 2 --
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
index a0c892e4c40d..6c197e968305 100644
--- a/drivers/gpu/drm/i915/i915_utils.h
+++ b/drivers/gpu/drm/i915/i915_utils.h
@@ -32,6 +32,8 @@
 #include <linux/workqueue.h>
 #include <linux/sched/clock.h>
 
+#define STACK_MAGIC	0xdeadbeef
+
 #ifdef CONFIG_X86
 #include <asm/hypervisor.h>
 #endif
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

