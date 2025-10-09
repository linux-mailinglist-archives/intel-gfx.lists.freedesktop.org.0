Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBEF3BD5DE5
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 21:04:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B651C10E4ED;
	Mon, 13 Oct 2025 19:04:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="f5aeN0Nh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com
 [209.85.166.53])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47C9910EADB
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Oct 2025 17:58:55 +0000 (UTC)
Received: by mail-io1-f53.google.com with SMTP id
 ca18e2360f4ac-930a6c601b3so119733639f.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 09 Oct 2025 10:58:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1760032734; x=1760637534; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=pU2dh1AcXNpIKiB0LgzN/RHkM4liyYcW5Vvv24TZfyg=;
 b=f5aeN0NhO9k3xDakgGg4s6SDBZtldx7Df2GD+RkXJrDR8jy9nwele2/aj3LRRCXVmm
 Szndy2dVazeQgHhPG338Vd+JKHbcOcy93lZIy8lq4S1xtqSzMWCiffKSjhoCU79FW4ok
 Y4Tv7JyPWGFrLdIkeuRS9bJFAYSoROnx2gNEXboe19zK7XM58tUYFyh3Zo8veWxJrofI
 AawR8CmGuLqfbf11OysWhzW5bSNvDWjzE+9yNXidX3jxMw/R4xDmNMFnR/K1oVB60l7S
 EEYCeWvXkIOveY/r7LtQQmJc/Lonn1Gru6Afel5vmqCWQJpXn5vsSxRFg6uT0LdloDIZ
 Ht+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1760032734; x=1760637534;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=pU2dh1AcXNpIKiB0LgzN/RHkM4liyYcW5Vvv24TZfyg=;
 b=gDUPQAkKmcEd0+P6Ur2fpCTKOQxyVJ3EXrCIBnSHXhS/sFTeZdXO1/KNQ+jZ3yUU7D
 V7LbnNfJlmIcnU835FHQbXi8/GU5/xOmIrlk4R9qD33eNLIhqtcotiXSj+9FmJvFXEZj
 0lcC7knR1HkrdPu6kppDZeZWfEQwb/IhAKza71Wcgdtg98Pbzy8ipoMRFSMFBsV+J9Vc
 bXQQvs7p4OCe2MQ8ZpVk/L6X3asXOv7izSqMvdV3rmUjgVUS/n/jKmTeMJ4h1Zf2kuQZ
 qdhG3xyM1S9c4DhTF08w4nQYa61idk96gN0v991xdzQsUOBGjdiJABvSzkG/z4ecTN2X
 Jggw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVeQB28L/H8LrGlJBTeZxugY+KbmlURGFB0pXv/CXvSu1nxeNTAr/SGbTxHmB0JruwRJg3xHFD2UYg=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwlxpxcBrV51IVpftmFubG0HLYrtSWJ9Tx8If9buqs3ihn/0Axz
 4Sj2rVrafWZNw3X7Kq9PiHCCikV9Xuc8M8P5IuQlJZWnquNBEsgWhx76
X-Gm-Gg: ASbGnctITXDdKBXapiU/URJXh8ZLqioAIEe/H6XU1PlwXVxPQ1fnD2Aemak4MuGto3j
 m+U9h2dWYyjDwsZ4zpcCNtWOlFUGWONKIwXGF4b9jg7YIbzqQ1qscHsE4AVUAZY461DnvV0aIa+
 OVhw4BN4K996xXmGTvtr/UyqPjfuNX53RozZD120+QKEN2WuGZQheR2SZdVN6+9FSagDsBEzGA+
 Ue1ty8MxTWTS2uvL8zkM+wEUrAxWZnbf2ly0T6vgfm8BG8LWPZWsuixFpzYqqjXCwr1SdJoho/1
 qaKWArl41m+1UviQvMbyXhGAacTnkj49lvzPIRZKCHVgHapE0p9oO/H9IBMe0R+tzqpaGfZieLf
 4cC7rRkFTO4DlUoufkxX5FI94ia8Ay18kYwkzYW5kWA8BWUXF0rXnXgN/S1hFLTNwJT32nwfLvv
 BzFStuwLMslEBPmzJexjGZN1vftRuARcsU44gXuw==
X-Google-Smtp-Source: AGHT+IGG3nRCWoDD4V/nkCQ4bWDSLxtN1n0qdt7xwh20BiNzOL9cD9tMw7g0yxq5IwKvmpy6qvXj6A==
X-Received: by 2002:a05:6e02:270a:b0:425:951f:52fa with SMTP id
 e9e14a558f8ab-42f87376e77mr84960835ab.14.1760032734175; 
 Thu, 09 Oct 2025 10:58:54 -0700 (PDT)
Received: from godzilla.raven-morpho.ts.net
 (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 8926c6da1cb9f-58f7200c4afsm30256173.35.2025.10.09.10.58.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Oct 2025 10:58:53 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: jbaron@akamai.com
Cc: gregkh@linuxfoundation.org, ukaszb@chromium.org, louis.chauvet@bootlin.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, intel-gvt-dev@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, daniel.vetter@ffwll.ch,
 tvrtko.ursulin@linux.intel.com, jani.nikula@intel.com,
 ville.syrjala@linux.intel.com, Jim Cromie <jim.cromie@gmail.com>
Subject: [PATCH v5 07/30] dyndbg: tweak pr_fmt to avoid expansion conflicts
Date: Thu,  9 Oct 2025 11:58:11 -0600
Message-ID: <20251009175834.1024308-8-jim.cromie@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251009175834.1024308-1-jim.cromie@gmail.com>
References: <20251009175834.1024308-1-jim.cromie@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 13 Oct 2025 19:04:10 +0000
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

Disambiguate pr_fmt(fmt) arg, by changing it to _FMT_, to avoid naming
confusion with many later macros also using that argname.

no functional change

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 lib/dynamic_debug.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/dynamic_debug.c b/lib/dynamic_debug.c
index 55df35df093b..2751056a5240 100644
--- a/lib/dynamic_debug.c
+++ b/lib/dynamic_debug.c
@@ -11,7 +11,7 @@
  * Copyright (C) 2013 Du, Changbin <changbin.du@gmail.com>
  */
 
-#define pr_fmt(fmt) "dyndbg: " fmt
+#define pr_fmt(_FMT_) "dyndbg: " _FMT_
 
 #include <linux/kernel.h>
 #include <linux/module.h>
-- 
2.51.0

