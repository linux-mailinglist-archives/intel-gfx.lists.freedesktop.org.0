Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33185B59AF6
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 16:55:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77E0110E7F4;
	Tue, 16 Sep 2025 14:55:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="DKSKf3mB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com
 [209.85.214.178])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7941510E63D
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Sep 2025 04:48:21 +0000 (UTC)
Received: by mail-pl1-f178.google.com with SMTP id
 d9443c01a7336-24456ce0b96so56441505ad.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Sep 2025 21:48:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1757998101; x=1758602901; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=vOaEQ/7pID9TluLY7/w8zgk+8Z8ChedlXZfnOV6tq/0=;
 b=DKSKf3mB/67E19Je5dZF0MRKjr93cG7Or6WRq9zmgFNLIyfHmttzjUVdTRKNj4Gi2C
 PiV40pAULKxL/jP0NO4r1JNoFxVBn9ZTfiayW6/dAWwy7D0gT2ulMX8wDAvtrjSE6fKs
 TTiC55ixaS0P/l8GkqzAQGYNwr8dWI0dGq40t56OOZPABNmyYdhALm0OLM0tYmp69Dj0
 S5vmJlzsICZGi9mt17LqdgRSlGvrWDMeHTMjkGbl0IInim4tDKx0HbJcyu78RzaQu5zM
 UwiT+ZvVGByLRF+4Q3N7rI0UTtd1xRHLug1fEonsDcGkN8tPCUqXbXtH2Bh0/HGaLZ8V
 UxPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1757998101; x=1758602901;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=vOaEQ/7pID9TluLY7/w8zgk+8Z8ChedlXZfnOV6tq/0=;
 b=CnDRFzb3HGnXg/XyZ8WHUJ7UK67bnrjsImEz2/eiZgUgnikrblUCCM9obNNiRg7kVb
 R4PU5PL+T43EQp6LkFPdaX/EQEizXQsWSkOqlbqUOaui0VIL/GXMoPAE0kcJrDkh0kkS
 wPyw/tXJnQO8T7ZD5sFO8p37Jof9uME/RfL83ITz+s5aYzvfI1T26cAVzWjNZZioM5qc
 mZsw+i2R1YuAOGE67ySOi+RhS4UXjU7RjRvdK5FsJ86GZIRKVmhsbO2xcdpUReN13lto
 BwnpRQTAZYjYicpGwd3TXM3uc5fi7Zm2BEsqUS0k1UqaaR3r6E/5nWwyakoPKCOixSEC
 66pQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXev9gMQkXRJvSqtN9fFt6JPBEaUbFq5pCiVeWmckhxFrDlDfQ6mXFZPpmTXyIyHQK/FCLxCFGR/f8=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx67Re/R3Gqtovbk081loK0NY7wqVEs4jV6LHRfnCBSn2nbsX4R
 HEkzxOK77oLShz3Vlvk8FD1zEZxXSxWFV+duuF9mCA5kL7LdyWL+h9tA
X-Gm-Gg: ASbGncuGwx9OZ7hWSiqczaCmGpLQ1bw9Wvbl3OkUAdFaN/QBZjOIREX3v0H3g3Tvrcj
 46g617z+2In+959hRtazHXw2Dr/yYWyt2hXagRaRWWSAh18nqd/6LpK/E/RP6bK7BAdxuaVqFnl
 VkVMTyJ+YKiQkcGyrzN77xtoFIA7BY9P7EZEjHitDAQ6INDrE8tExTtWbzN83VeWcorH7t73ThR
 wl1gOov0VuVX3byc21gJKQZcQraf4I7EGqN3GiV52wfQCqPSuRup9mAwPqAM9YHPF+J74fM7Jzl
 Y0Zkv/DJiLIE1XaLNA9CCSbioiHrAQzUQHea5lxnFXSH5uM3d/T23++XTOzCJ5BxqzdtvrLYf8V
 hmr6OQ0C/3k2+/Gp1bHZX9feG9YWASIOLzX7jg34=
X-Google-Smtp-Source: AGHT+IFncLMpEiSXyRV3g2udd9oLTip5CIZ6fjiDS7nm0eY3IrUPzgwzagMuf9PJuGmIj5O4nns0xw==
X-Received: by 2002:a17:903:2f87:b0:249:71f5:4e5a with SMTP id
 d9443c01a7336-267d161e3b9mr10726455ad.26.1757998100825; 
 Mon, 15 Sep 2025 21:48:20 -0700 (PDT)
Received: from pengdl-pc.mioffice.cn ([43.224.245.249])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-25ef09c77f8sm104600605ad.15.2025.09.15.21.48.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Sep 2025 21:48:20 -0700 (PDT)
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
 "Rafael J. Wysocki" <rafael@kernel.org>, Hanjun Guo <guohanjun@huawei.com>,
 pengdonglin <pengdonglin@xiaomi.com>
Subject: [PATCH v3 01/14] ACPI: APEI: Remove redundant rcu_read_lock/unlock()
 in spin_lock
Date: Tue, 16 Sep 2025 12:47:22 +0800
Message-Id: <20250916044735.2316171-2-dolinux.peng@gmail.com>
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

Cc: "Rafael J. Wysocki" <rafael@kernel.org>
Cc: Tony Luck <tony.luck@intel.com>
Cc: Hanjun Guo <guohanjun@huawei.com>
Signed-off-by: pengdonglin <pengdonglin@xiaomi.com>
Signed-off-by: pengdonglin <dolinux.peng@gmail.com>
---
 drivers/acpi/apei/ghes.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/acpi/apei/ghes.c b/drivers/acpi/apei/ghes.c
index a0d54993edb3..97ee19f2cae0 100644
--- a/drivers/acpi/apei/ghes.c
+++ b/drivers/acpi/apei/ghes.c
@@ -1207,12 +1207,10 @@ static int ghes_notify_hed(struct notifier_block *this, unsigned long event,
 	int ret = NOTIFY_DONE;
 
 	spin_lock_irqsave(&ghes_notify_lock_irq, flags);
-	rcu_read_lock();
 	list_for_each_entry_rcu(ghes, &ghes_hed, list) {
 		if (!ghes_proc(ghes))
 			ret = NOTIFY_OK;
 	}
-	rcu_read_unlock();
 	spin_unlock_irqrestore(&ghes_notify_lock_irq, flags);
 
 	return ret;
-- 
2.34.1

