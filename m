Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13D8C92D22C
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2024 15:03:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1787810E0C0;
	Wed, 10 Jul 2024 13:03:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=ffwll.ch header.i=@ffwll.ch header.b="CWKe13Kc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com
 [209.85.128.54])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1ACE10E0C0
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2024 13:03:40 +0000 (UTC)
Received: by mail-wm1-f54.google.com with SMTP id
 5b1f17b1804b1-4265f823147so5525225e9.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2024 06:03:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1720616619; x=1721221419; darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=GWYvLutVvpNPgBageJj8H8A/uQDi1vyHTGEzq9IVLnI=;
 b=CWKe13KcR5loBvzdvXYtes9A0tM6taGEEWJw6iQBThsTTV/EGnHaqzTi70R8H3j/aJ
 LG3IFskL7jruWIaMYDpa73AjK2R3nHEtqoxAQlLarILtuBJxLERxSbjOCZYGv0Ncg5r+
 HM9ZFdRgxaV/kwQcYeOQLpakqGtOtdk3qw//I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1720616619; x=1721221419;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=GWYvLutVvpNPgBageJj8H8A/uQDi1vyHTGEzq9IVLnI=;
 b=HRdaGadB9UUycrQqBaunOSHOuR4DGoBKVB3qPuXMajdbMyAz3+2RvSF0yYm4nISJE4
 Zl5H5ljkZLewjq8t/zNggtKward0LQujrpAKuWVcECln7oYTbH5nc7/oLYZ5wdkESsXt
 t2Nzjwvw7V58TyExMJv1Rg9NqYplV5R33D8dSlMn7c3E5t4glaDCa5r2CzpcHEM/rHvv
 yH4DU6dlPptPmsIr9YoEUj6JBhyXemP6IayecANesSXGlnRUaSOp7ZiCatyMx01ejDo7
 MzRnlSF3P1J03epjhSBpynYNtRz6N0d2pft1Qf71g2VZgEKgHZUyaSB5LQg9r5fp7/3+
 VIUA==
X-Gm-Message-State: AOJu0YzDeXYlHJ2jFwkSEGB9gGfLfgTEueG8XodHKSELaGH9MQ8wmn6F
 2OgNrZK0sKELB4y/f0tPTBy133Jx9qV6L0CiO+1iK7hvAN/wrpc3z3P+fw/TXfk=
X-Google-Smtp-Source: AGHT+IGMcjQoU+OYezjQTf52YHxfgUBSeAFV3/pCB994d1Y1agNCF9MxANmKp2bdSG8HgXlodZdyZQ==
X-Received: by 2002:a05:6000:4029:b0:35f:2f97:e890 with SMTP id
 ffacd0b85a97d-367ce5de46cmr3793723f8f.0.1720616619170; 
 Wed, 10 Jul 2024 06:03:39 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-367cdfa07dasm5249869f8f.87.2024.07.10.06.03.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jul 2024 06:03:38 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 syzbot+6cebc1af246fe020a2f0@syzkaller.appspotmail.com,
 Daniel Vetter <daniel.vetter@intel.com>, stable@vger.kernel.org,
 Kent Overstreet <kent.overstreet@linux.dev>,
 Brian Foster <bfoster@redhat.com>, linux-bcachefs@vger.kernel.org,
 Petr Mladek <pmladek@suse.com>, Steven Rostedt <rostedt@goodmis.org>,
 John Ogness <john.ogness@linutronix.de>,
 Sergey Senozhatsky <senozhatsky@chromium.org>
Subject: [PATCH] bcachefs: no console_lock in bch2_print_string_as_lines
Date: Wed, 10 Jul 2024 15:03:35 +0200
Message-ID: <20240710130335.765885-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240710093120.732208-2-daniel.vetter@ffwll.ch>
References: <20240710093120.732208-2-daniel.vetter@ffwll.ch>
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

console_lock is the outermost subsystem lock for a lot of subsystems,
which means get/put_user must nest within. Which means it cannot be
acquired somewhere deeply nested in other locks, and most definitely
not while holding fs locks potentially needed to resolve faults.

console_trylock is the best we can do here. But John pointed out on a
previous version that this is futile:

"Using the console lock here at all is wrong. The console lock does not
prevent other CPUs from calling printk() and inserting lines in between.

"There is no way to guarantee a contiguous ringbuffer block using
multiple printk() calls.

"The console_lock usage should be removed."

https://lore.kernel.org/lkml/87frsh33xp.fsf@jogness.linutronix.de/

Do that.

Reported-by: syzbot+6cebc1af246fe020a2f0@syzkaller.appspotmail.com
References: https://lore.kernel.org/dri-devel/00000000000026c1ff061cd0de12@google.com/
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Fixes: a8f354284304 ("bcachefs: bch2_print_string_as_lines()")
Cc: <stable@vger.kernel.org> # v6.7+
Cc: Kent Overstreet <kent.overstreet@linux.dev>
Cc: Brian Foster <bfoster@redhat.com>
Cc: linux-bcachefs@vger.kernel.org
Cc: Petr Mladek <pmladek@suse.com>
Cc: Steven Rostedt <rostedt@goodmis.org>
Cc: John Ogness <john.ogness@linutronix.de>
Cc: Sergey Senozhatsky <senozhatsky@chromium.org>
Signed-off-by: Daniel Vetter <daniel.vetter@ffwll.ch>
--
v2: Dont trylock, drop console_lock entirely
---
 fs/bcachefs/util.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/fs/bcachefs/util.c b/fs/bcachefs/util.c
index de331dec2a99..dc891563d502 100644
--- a/fs/bcachefs/util.c
+++ b/fs/bcachefs/util.c
@@ -8,7 +8,6 @@
 
 #include <linux/bio.h>
 #include <linux/blkdev.h>
-#include <linux/console.h>
 #include <linux/ctype.h>
 #include <linux/debugfs.h>
 #include <linux/freezer.h>
@@ -261,7 +260,6 @@ void bch2_print_string_as_lines(const char *prefix, const char *lines)
 		return;
 	}
 
-	console_lock();
 	while (1) {
 		p = strchrnul(lines, '\n');
 		printk("%s%.*s\n", prefix, (int) (p - lines), lines);
@@ -269,7 +267,6 @@ void bch2_print_string_as_lines(const char *prefix, const char *lines)
 			break;
 		lines = p + 1;
 	}
-	console_unlock();
 }
 
 int bch2_save_backtrace(bch_stacktrace *stack, struct task_struct *task, unsigned skipnr,
-- 
2.45.2

