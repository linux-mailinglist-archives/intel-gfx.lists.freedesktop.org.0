Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ADF0B59B01
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 16:55:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D840C10E7FE;
	Tue, 16 Sep 2025 14:55:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="NVUkEPiM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com
 [209.85.214.171])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2664D10E63D
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Sep 2025 04:49:01 +0000 (UTC)
Received: by mail-pl1-f171.google.com with SMTP id
 d9443c01a7336-26799bf6a2eso13903295ad.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Sep 2025 21:49:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1757998141; x=1758602941; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=y26N2MyOP2FIPMMMBT4JTn6kc4P01rdpdKyvYPEfOYc=;
 b=NVUkEPiMChJvPRKgyR4vP2eeoL69UrjSqo5r4H4749Mz7SutIAmRSrRu1Ymo3pvtru
 vbKZ6g2vIaY7Vhd4qXxkTk/MxlH41BjT2j1lzjwUrkzq/oGC+gIn7v9Dy0W5Z7uVTeXU
 NVjixmE34WSCDvrWMxwGwHmcLu+6vDxqmNZsW76GbqMlFMnwWTiNbNPDMBx0KBoz1ikj
 y1jnCgJTp9hcHYR3MXsk7bofPjpB+4vW+9vsafQt8guL0y/RLtzAwszuehSl4q6VI+D+
 EAwtrD/A9HvNROunhPiOsSR9W2bjZjvW9KEPxXpFEPEZ4/2uxRt8XH1mEl5ReMNlmcg1
 rn5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1757998141; x=1758602941;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=y26N2MyOP2FIPMMMBT4JTn6kc4P01rdpdKyvYPEfOYc=;
 b=Pcx6NASVS7U8VB9peKAbRNZ35RD1NyCgxPTjW+DBciuUN0NNDAQMKxZyXRJ0hsXPRV
 9oMcVxt9BIO3g5+i5WZRZmTUNC1UVzzBsza/N1s+cDNhJh0UjIYPPVZiYSsiZxdTfhdw
 XxW9ERzaoozEYQphdgk2ShpnKm15WjQ6/nS+rsQhh8aZWEOHW5KpA5Kry8TWXsGw9Ea4
 HOlzhrjYvzAGqsGR3GXwXJVy5KEAHnBIn7sVwPRvFrkyWtfhEU8KXRyT7qeBS7TmiA7I
 mN468yAOSgewF0OQvB0VQFQv3oPsSQIqXkLTBRZ/aXVb8uI7nV/nHqq4QDAw1BP4BQbu
 qPgg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXGl9dIE/GQuG2PTXbePKXjON/FQfZ4cLCGIihFHSLiuNM8i4ftibBaME39txa0ZBvSdceXpjkUiB0=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzJkQLhKJq4Zr+qKSht/T0vz98z3bCPN3JHOufjOm9Ym0kSnSOe
 6vvZsXw+F2KAvT4MCfT5FAQYdLuuOYYXMCFFcUCQYPAS2FsFdlj+CKsT
X-Gm-Gg: ASbGncs2URc6XTOZUOW9SHzozLFwr65aqEjYgBth5P73nNR+WzgFtQJi5dH0M2MV0bq
 dB03mCbrMB++vXz9ngqKk/iCXayHZD51QjpxWXezURl9gEZKnxKFUMtYaIxPXYrQH4n+RmZfbRk
 6G9tIvZ+nIcPdaBomFYJvZF8l6mcSbgIcOQRpUft3oYC5Myini3XVQs/gghlUsh0vM6au0JqW5c
 B9YQZkK8fvJHZDUa9eE7CSf5NK5hoBJjcIJNQj2+RX5egC/ltVdxclz/QpNrdSOftXVKXcfSS0b
 sUwZghASuWGn2ZcvVCPcMxuLH5cFFM53LapqohMbclYAYrdhDdjabAxWUhLC5JjILjlg/JLlzzK
 stKk4ZAfvjRN57wWwdyO+3bOd9M19x2EnetUXZpo=
X-Google-Smtp-Source: AGHT+IEF8hyGYSwfpfRfNi45Ml5S5Z1xWLwd/+S+vouYcjrRAMMRr1JH2N5TAK8bBOVvYAZpMt3b8w==
X-Received: by 2002:a17:903:ac3:b0:267:d772:f845 with SMTP id
 d9443c01a7336-267d772fcf1mr8896415ad.52.1757998140582; 
 Mon, 15 Sep 2025 21:49:00 -0700 (PDT)
Received: from pengdl-pc.mioffice.cn ([43.224.245.249])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-25ef09c77f8sm104600605ad.15.2025.09.15.21.48.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Sep 2025 21:49:00 -0700 (PDT)
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
 pengdonglin <dolinux.peng@gmail.com>, Paul Moore <paul@paul-moore.com>,
 James Morris <jmorris@namei.org>, pengdonglin <pengdonglin@xiaomi.com>
Subject: [PATCH v3 07/14] yama: Remove redundant rcu_read_lock/unlock() in
 spin_lock
Date: Tue, 16 Sep 2025 12:47:28 +0800
Message-Id: <20250916044735.2316171-8-dolinux.peng@gmail.com>
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

Cc: Kees Cook <kees@kernel.org>
Cc: Paul Moore <paul@paul-moore.com>
Cc: James Morris <jmorris@namei.org>
Signed-off-by: pengdonglin <pengdonglin@xiaomi.com>
Signed-off-by: pengdonglin <dolinux.peng@gmail.com>
---
 security/yama/yama_lsm.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/security/yama/yama_lsm.c b/security/yama/yama_lsm.c
index 3d064dd4e03f..60d38deb181b 100644
--- a/security/yama/yama_lsm.c
+++ b/security/yama/yama_lsm.c
@@ -117,14 +117,12 @@ static void yama_relation_cleanup(struct work_struct *work)
 	struct ptrace_relation *relation;
 
 	spin_lock(&ptracer_relations_lock);
-	rcu_read_lock();
 	list_for_each_entry_rcu(relation, &ptracer_relations, node) {
 		if (relation->invalid) {
 			list_del_rcu(&relation->node);
 			kfree_rcu(relation, rcu);
 		}
 	}
-	rcu_read_unlock();
 	spin_unlock(&ptracer_relations_lock);
 }
 
@@ -152,7 +150,6 @@ static int yama_ptracer_add(struct task_struct *tracer,
 	added->invalid = false;
 
 	spin_lock(&ptracer_relations_lock);
-	rcu_read_lock();
 	list_for_each_entry_rcu(relation, &ptracer_relations, node) {
 		if (relation->invalid)
 			continue;
@@ -166,7 +163,6 @@ static int yama_ptracer_add(struct task_struct *tracer,
 	list_add_rcu(&added->node, &ptracer_relations);
 
 out:
-	rcu_read_unlock();
 	spin_unlock(&ptracer_relations_lock);
 	return 0;
 }
-- 
2.34.1

