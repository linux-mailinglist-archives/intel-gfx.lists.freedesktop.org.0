Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E44E8B59AF5
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 16:55:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7341010E7F2;
	Tue, 16 Sep 2025 14:55:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="C+eQ2WM8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com
 [209.85.215.179])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1677410E63D
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Sep 2025 04:48:48 +0000 (UTC)
Received: by mail-pg1-f179.google.com with SMTP id
 41be03b00d2f7-b4c9a6d3fc7so3047817a12.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Sep 2025 21:48:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1757998127; x=1758602927; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=KdSOTRlpcbSm77LoC5qTO7Qj2WXZD3913QNmAyohauk=;
 b=C+eQ2WM8rZSIciDptRyMiFM4MlI7xxxXBoL2BZWkIGXknoz5OEgedfazXdGSgoG7Cm
 qdsX7Z55GoL7HbYjq834Mhi21+uIcFdMoiGEeN+TMJhLks+fSrqyKqh745DyOfTqV4NK
 vIvrKHycMzuLNl2/anIZVDbjl6dZIWQ8NTS60j2V/JLuIHy0G4ji3XGqgl5Tc+a2gJk3
 gALbm1UuLdnqoXSuYcD7cGXKwVCC4ZHZaDKbs7Rh7s7SrB++Mfaiv4xCoAcBFXdzmh2y
 iDB+tzj5efnsXazh5UElP6em/AREphFSun7bBY3PETZNzo9iuJEok3UfUvobXRRG1F90
 RrnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1757998127; x=1758602927;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=KdSOTRlpcbSm77LoC5qTO7Qj2WXZD3913QNmAyohauk=;
 b=wB3S4BoR3IZIDrNuqTXolUJodcFNAqv8ClPPIPk3Y2wNX1YALyzDBNbXF5eqmOvTKO
 fBtndkVWwvgkTcpa2JV5tp1jbITdnB169KUEGcbNFFnZv59r+WIeCLIAp+MwfuWNa0Jn
 WnjhHly9of4cgICK4oBkgKaPSvzXhf7ojLM+eAxgvQHH4C8TPUlIUJdBAxkd4Ww6HS52
 c4TFEoczzkWvwZjlH+Ge9ZvUYFXaTr429+xWNcfFoji5G2O4JXp6RLlvBObf8LC0PO6v
 KDJWvBhdPxadqEqEvILvBAX63ucsLXTr0qkUq2LTdthZViYlygyU+thAN/ookPuX8taV
 iQuQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWMG2RfJKWVTKBBcwdfSxLq9GNCPlAUdqJnadL3CQgMHmpiYk1IXe1K5A933K4ks/u3kjNwXIA0CYw=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzaA1pkS0OdlI/cG0ffCCZ5ZZFhHcDwL84lSn+CKd3hRv+3fsbI
 3Lvo6kV1TQ9EZo5255ba9g6SkIMYTkdPKP2JxZ0TuZInB0Pcd+sujf3V
X-Gm-Gg: ASbGnculi+HKL3fYgjd6n9IixpRNx4h3g7lA1mIyTCVMvTWEcNidrLNrDxTk/dlIvmv
 aRXyBK2V7zI33PUIfLFGoh90J8NnfnTOgesVUhR7NrXPfu8NNJxllBtg7KxYuiolGlAao5m/47A
 iuFQ7xIaMxVPKlZ11/spx6Jbs3xiO2Mge3+GFJALpVRTe9DmqV3j1vLtDb5SRayMI1SW3dizhw8
 PtAU3OK1yxloQ1tV7ZhzxbS0qoeYv5YVp59zjaUE1ETRd/ooONp6Ng48YoEHB1+Qt0QO8gLpBHy
 qTW9g5jrcbMbm0bY+wHLlUR1nLu9QVqY3DiQRP+3/2h2doz50tgY86uAFy0XT/cAqY23hxnCQSR
 Tcbf7+nmndEOVgc32IXd8akr0/cVyHH4OlIUqZIc=
X-Google-Smtp-Source: AGHT+IGkIhcIMGh+oiZ/aDBZPsHwPAhQG69OhML0E/f2mr/YjQA5clLbS6Ua4uwzILjLJIA06eQ5gQ==
X-Received: by 2002:a17:902:d2c4:b0:25e:5d83:2ddd with SMTP id
 d9443c01a7336-25e5d832fdcmr159755585ad.45.1757998127447; 
 Mon, 15 Sep 2025 21:48:47 -0700 (PDT)
Received: from pengdl-pc.mioffice.cn ([43.224.245.249])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-25ef09c77f8sm104600605ad.15.2025.09.15.21.48.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Sep 2025 21:48:46 -0700 (PDT)
From: pengdonglin <dolinux.peng@gmail.com>
To: tj@kernel.org, tony.luck@intel.com, jani.nikula@linux.intel.com,
 ap420073@gmail.com, jv@jvosburgh.net, freude@linux.ibm.com, bcrl@kvack.org,
 trondmy@kernel.org, longman@redhat.com, kees@kernel.org
Cc: bigeasy@linutronix.de, hdanton@sina.com, paulmck@kernel.org,
 linux-kernel@vger.kernel.org, linux-rt-devel@lists.linux.dev,
 linux-nfs@vger.kernel.org, linux-aio@kvack.org,
 linux-fsdevel@vger.kernel.org, linux-security-module@vger.kernel.org,
 netdev@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-wireless@vger.kernel.org, linux-acpi@vger.kernel.org,
 linux-s390@vger.kernel.org, cgroups@vger.kernel.org,
 pengdonglin <dolinux.peng@gmail.com>,
 Holger Dengler <dengler@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>,
 Alexander Gordeev <agordeev@linux.ibm.com>,
 pengdonglin <pengdonglin@xiaomi.com>
Subject: [PATCH v3 05/14] s390/pkey: Remove redundant rcu_read_lock/unlock()
 in spin_lock
Date: Tue, 16 Sep 2025 12:47:26 +0800
Message-Id: <20250916044735.2316171-6-dolinux.peng@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250916044735.2316171-1-dolinux.peng@gmail.com>
References: <20250916044735.2316171-1-dolinux.peng@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 16 Sep 2025 14:55:20 +0000
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

From: pengdonglin <pengdonglin@xiaomi.com>

Since commit a8bb74acd8efe ("rcu: Consolidate RCU-sched update-side function definitions")
there is no difference between rcu_read_lock(), rcu_read_lock_bh() and
rcu_read_lock_sched() in terms of RCU read section and the relevant grace
period. That means that spin_lock(), which implies rcu_read_lock_sched(),
also implies rcu_read_lock().

There is no need no explicitly start a RCU read section if one has already
been started implicitly by spin_lock().

Simplify the code and remove the inner rcu_read_lock() invocation.

Cc: Harald Freudenberger <freude@linux.ibm.com>
Cc: Holger Dengler <dengler@linux.ibm.com>
Cc: Vasily Gorbik <gor@linux.ibm.com>
Cc: Alexander Gordeev <agordeev@linux.ibm.com>
Signed-off-by: pengdonglin <pengdonglin@xiaomi.com>
Signed-off-by: pengdonglin <dolinux.peng@gmail.com>
---
 drivers/s390/crypto/pkey_base.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/s390/crypto/pkey_base.c b/drivers/s390/crypto/pkey_base.c
index b15741461a63..4c4a9feecccc 100644
--- a/drivers/s390/crypto/pkey_base.c
+++ b/drivers/s390/crypto/pkey_base.c
@@ -48,16 +48,13 @@ int pkey_handler_register(struct pkey_handler *handler)
 
 	spin_lock(&handler_list_write_lock);
 
-	rcu_read_lock();
 	list_for_each_entry_rcu(h, &handler_list, list) {
 		if (h == handler) {
-			rcu_read_unlock();
 			spin_unlock(&handler_list_write_lock);
 			module_put(handler->module);
 			return -EEXIST;
 		}
 	}
-	rcu_read_unlock();
 
 	list_add_rcu(&handler->list, &handler_list);
 	spin_unlock(&handler_list_write_lock);
-- 
2.34.1

