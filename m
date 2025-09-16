Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF474B59AFD
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 16:55:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4179E10E7FB;
	Tue, 16 Sep 2025 14:55:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="fy6rzw8B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com
 [209.85.216.53])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B29410E643
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Sep 2025 04:48:34 +0000 (UTC)
Received: by mail-pj1-f53.google.com with SMTP id
 98e67ed59e1d1-32b8919e7c7so6774959a91.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Sep 2025 21:48:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1757998114; x=1758602914; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=lT9DsPVy8x0mlOTAyxJueu7zb5O+t3UCUBl9ED2OMzE=;
 b=fy6rzw8BTeJpGYv7qQ1oPYJvACoY5o8NutO+EvmLyhwGZTlEC7rfmSxuGAxVTBkrb4
 Q3/OOHEDg9iyUL0bSdm7ENKHdmK29szHA199w/hJhSqGZpkgytGIWDcOa6Q544cRXvdM
 /eTnUq6R556fpY1otASKcW3W7rfvHDyG72XJEg3Z/4WQQn2kGoz9kmOFJOTvLX+jS4LB
 SCI60xUJygzuf0Pr1/sbgNIg+VLp7q2twyJzrN2NjiDyxPL2t2lCG8a1N/aqIS5iQtzW
 1UvPIun17gnWho3H4qayxfNpVqOrbPGRgdimo+Rrvy9EL66OX0nTPT+vnLpTlV/C+UU/
 LiuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1757998114; x=1758602914;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=lT9DsPVy8x0mlOTAyxJueu7zb5O+t3UCUBl9ED2OMzE=;
 b=qbIlPd7jHcK6V8LfGphG3uBLiOC1POcEbzkOUHr7Np+4FT9YtsQmd6ig4lGe0Eojvd
 qGQIWvAtrEQcVfU5ot+wkiJWEZuBMTo0qpo1mkBS651d4GKXtACRULRfB/kLGGvsWfHZ
 tMHRljtD9YcBhbFJAWKsc21jcoUJxMzMNwz94JN2N0Xh6IvAHZFydzS1lamI/SHlSrxJ
 ESg+ecAqkpm0Z+GYPE3bscCFG+MFmexDFD6SchvXujmNQLHkKfs2doxkOp6PkIW+Iagh
 b2BpDDnJb85SeuVweWcfHCuwkJ2BMpvzqaQjQHT6hUkIH9a7S7NtMCoNKsIOO6M/mF3m
 nYEw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWXZM9vW8HATtB3NoSWe7cQdgw8XBgfQiGtB5T7VCMZyt4y6jItd6ScHGA+avHUJZ+2OIF4jY6lxOQ=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyQTKULrV4269GHKWdZD902JpnqZl9Gt6cdpFhaPuf0NHB4bpYm
 826PN8n0UijlMzA9OvxYFCmVMrv87MtjASsBrIevMS79vX44MErYNikZ
X-Gm-Gg: ASbGnctTSqdpybylJxhTbXSleopdXsAZlHWmvtJmg/iS4IRh7tc8pF7OwQ1AQ3NCGi4
 4uvgvvDEuX+3NK79Ziqs/2wfywk7Mme1dQagvxtGtqoetyHYr239yCOEYJneuTNt0hfr9XEVFE/
 KEZP7dY4KAU1DG/DUpXrkIDyzOCccvxOjn2sEFOqXmY1tqwKn9V1entbPRM9OZd7g8F04yfCR2c
 jtB5W1uu9fhgdB14YAaOqMyg1lPWimal02hce2YOqD/u2cvQSPcGgGCpU0W0m1GE5hSNah4ixHt
 KdH2eyF3k/9usVlb5eFi4DwNdqTPp+OfLUhz4OdD41MiXb9qHeipwQ3R+11v5AmBfK+UdXoxVCH
 /MUwVlhAwj1tB5RrlhoEXazkc+Mi8V/a6JH3AoHU=
X-Google-Smtp-Source: AGHT+IF+n/WS6RKuYlQuLpfTYPIbA2M/p4imTXrTMvTksxJg/G6gJFeTxjjE/2igpzRcFyrC5Ibdeg==
X-Received: by 2002:a17:903:3585:b0:24c:ca55:6d90 with SMTP id
 d9443c01a7336-25d2771f4admr137080665ad.61.1757998113981; 
 Mon, 15 Sep 2025 21:48:33 -0700 (PDT)
Received: from pengdl-pc.mioffice.cn ([43.224.245.249])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-25ef09c77f8sm104600605ad.15.2025.09.15.21.48.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Sep 2025 21:48:33 -0700 (PDT)
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
 pengdonglin <dolinux.peng@gmail.com>, pengdonglin <pengdonglin@xiaomi.com>
Subject: [PATCH v3 03/14] fs: aio: Remove redundant rcu_read_lock/unlock() in
 spin_lock
Date: Tue, 16 Sep 2025 12:47:24 +0800
Message-Id: <20250916044735.2316171-4-dolinux.peng@gmail.com>
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

Cc: Benjamin LaHaise <bcrl@kvack.org>
Signed-off-by: pengdonglin <pengdonglin@xiaomi.com>
Signed-off-by: pengdonglin <dolinux.peng@gmail.com>
---
 fs/aio.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/fs/aio.c b/fs/aio.c
index 7fc7b6221312..e3f9a5a391b5 100644
--- a/fs/aio.c
+++ b/fs/aio.c
@@ -359,15 +359,14 @@ static int aio_ring_mremap(struct vm_area_struct *vma)
 	int i, res = -EINVAL;
 
 	spin_lock(&mm->ioctx_lock);
-	rcu_read_lock();
-	table = rcu_dereference(mm->ioctx_table);
+	table = rcu_dereference_check(mm->ioctx_table, lockdep_is_held(&mm->ioctx_lock));
 	if (!table)
 		goto out_unlock;
 
 	for (i = 0; i < table->nr; i++) {
 		struct kioctx *ctx;
 
-		ctx = rcu_dereference(table->table[i]);
+		ctx = rcu_dereference_check(table->table[i], lockdep_is_held(&mm->ioctx_lock));
 		if (ctx && ctx->aio_ring_file == file) {
 			if (!atomic_read(&ctx->dead)) {
 				ctx->user_id = ctx->mmap_base = vma->vm_start;
@@ -378,7 +377,6 @@ static int aio_ring_mremap(struct vm_area_struct *vma)
 	}
 
 out_unlock:
-	rcu_read_unlock();
 	spin_unlock(&mm->ioctx_lock);
 	return res;
 }
-- 
2.34.1

