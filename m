Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A034B59AF9
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 16:55:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D73F510E7F8;
	Tue, 16 Sep 2025 14:55:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hQErF7sj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com
 [209.85.214.178])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 504C810E63D
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Sep 2025 04:49:14 +0000 (UTC)
Received: by mail-pl1-f178.google.com with SMTP id
 d9443c01a7336-25669596921so50774795ad.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Sep 2025 21:49:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1757998154; x=1758602954; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=zNMpbtPTFBPk6JIOba7CD2qKlqPbw337arz8FniHJF8=;
 b=hQErF7sjqsjBMTrrCEYoEV7Fr1Y4/K9tt42G65SGgCUgejIOOoXA3yRLiME4VQCX8C
 cyH8KBE2xWXNpBxkhS1HNTr0EHTHL54eyh5GS7yFrz9iC6BNRjwF6WdCGQeFFVno1yuN
 kzpelVPRRue5dD0FSI99dhb7RcSR5bJLAq3UiGctRER7rCynYX9CqguGi9kQ0iVjAnwZ
 XmhexT739zO6gyaynOURoGHFKmo3u4QbEDS53gwHH4SoiFVaQemTljmz4KjX/MRWMX45
 OS2C6EdG7ZIbuMLIq91mIIRPHalp/sPzKY3b6bwEGQrEqoI++B6VDF/2AiElFkkD6pwQ
 +xPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1757998154; x=1758602954;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=zNMpbtPTFBPk6JIOba7CD2qKlqPbw337arz8FniHJF8=;
 b=ETr2iGae7y2CNFAYausFRCcffbosAmr2DS48uHrb7trIwv7S8Px1kEFgu4ufii8wHM
 T0XRish5v66mmRvT9ENLqi4Y/xSzjdo3bovOaYgaBJ3yhrfy6LgaC2ZgrCLC4TBGrFIz
 YYQ+v6i4JkXhmb8VHvxKyFTW4upgulxINUdVGjctzAi3y6mZWGtNWgqcPJqNwMiBbp7D
 g9H+C34VDecs2qgXDBebeAyLXPAWMOpKJXoLpqm0I2n97+jDPVAHrkuYbF9dAtVb+vXp
 PE59MklZsL9XT5N7xq5O5FcL8/f/g1c4sCEo5JpxTz2+bJz7IahpeDeN5l1yzUMEi6Zh
 kgrw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXFsVzKYPMoMIPUjIf84P6jMQr6IXL7mMv+WgyQy6H6/PjfYkL/Zit4lkNpPRh/Uk7OdjZYJsO9+FU=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yz7UMocKeHEuq60br5A/HL/gzMTUE13LYpAWdr0/t6WeFT4/X4A
 GvwyI/lfI08w93SCxyD//XL0bur1Qn3B8HM6OQGbVOlK8KVSD0JCHy8L
X-Gm-Gg: ASbGnct152UXQXPmiWOfjOra8I+irYtUg6Tv8xAoYfl7csUrUaigAvyG+arLexGSaXi
 YmNN1Q9FJaLJJMRaJDOzKRIV7cGsoL0lSwBHQL8iC6LOw4XfK5xiiHWk7pwl2B5p3qD7VrqGL87
 HTjZ25DHKOxZ3nqt8JA/WbV6VNzd68gTMYJoeeXmir/4P7Pl1st6U28tSH7n7LNgSHA7yBwl2HG
 ZxCXvtb9EeJRkR07hdGi1pYeYtW30Y9Sw21k42Z6Yi9NKjw2pHzck3l0eqLQMrOmgsWcaHN3AEC
 A6FK3rzPWZTh6wWMLFYQvl7OVTEW8KxhhOpjGELorEQvvPuA7Aj7ZsxeU1S2iLcsk4omXd1QCdk
 7rbOn+ZSlK4ar8UI6YjIKpG57B7+Bs6WUCkulpIM=
X-Google-Smtp-Source: AGHT+IESqtMzjXYDIyoiu7v1JuOroH/dzFervHo7F64ECeuOEjCMVsn8AAVx3YpgubRO047K2xnTHQ==
X-Received: by 2002:a17:903:3c2c:b0:24b:2b07:5fa5 with SMTP id
 d9443c01a7336-25d26663dcamr182035635ad.29.1757998153712; 
 Mon, 15 Sep 2025 21:49:13 -0700 (PDT)
Received: from pengdl-pc.mioffice.cn ([43.224.245.249])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-25ef09c77f8sm104600605ad.15.2025.09.15.21.49.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Sep 2025 21:49:13 -0700 (PDT)
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
 pengdonglin <dolinux.peng@gmail.com>, Johannes Weiner <hannes@cmpxchg.org>,
 pengdonglin <pengdonglin@xiaomi.com>
Subject: [PATCH v3 09/14] cgroup/cpuset: Remove redundant
 rcu_read_lock/unlock() in spin_lock
Date: Tue, 16 Sep 2025 12:47:30 +0800
Message-Id: <20250916044735.2316171-10-dolinux.peng@gmail.com>
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

Cc: Waiman Long <longman@redhat.com>
Cc: Johannes Weiner <hannes@cmpxchg.org>
Acked-by: Waiman Long <longman@redhat.com>
Signed-off-by: pengdonglin <pengdonglin@xiaomi.com>
Signed-off-by: pengdonglin <dolinux.peng@gmail.com>
---
 kernel/cgroup/cpuset.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/kernel/cgroup/cpuset.c b/kernel/cgroup/cpuset.c
index 27adb04df675..9b7e8e8e9411 100644
--- a/kernel/cgroup/cpuset.c
+++ b/kernel/cgroup/cpuset.c
@@ -4073,7 +4073,6 @@ void cpuset_cpus_allowed(struct task_struct *tsk, struct cpumask *pmask)
 	struct cpuset *cs;
 
 	spin_lock_irqsave(&callback_lock, flags);
-	rcu_read_lock();
 
 	cs = task_cs(tsk);
 	if (cs != &top_cpuset)
@@ -4095,7 +4094,6 @@ void cpuset_cpus_allowed(struct task_struct *tsk, struct cpumask *pmask)
 			cpumask_copy(pmask, possible_mask);
 	}
 
-	rcu_read_unlock();
 	spin_unlock_irqrestore(&callback_lock, flags);
 }
 
@@ -4168,9 +4166,7 @@ nodemask_t cpuset_mems_allowed(struct task_struct *tsk)
 	unsigned long flags;
 
 	spin_lock_irqsave(&callback_lock, flags);
-	rcu_read_lock();
 	guarantee_online_mems(task_cs(tsk), &mask);
-	rcu_read_unlock();
 	spin_unlock_irqrestore(&callback_lock, flags);
 
 	return mask;
@@ -4265,10 +4261,8 @@ bool cpuset_current_node_allowed(int node, gfp_t gfp_mask)
 	/* Not hardwall and node outside mems_allowed: scan up cpusets */
 	spin_lock_irqsave(&callback_lock, flags);
 
-	rcu_read_lock();
 	cs = nearest_hardwall_ancestor(task_cs(current));
 	allowed = node_isset(node, cs->mems_allowed);
-	rcu_read_unlock();
 
 	spin_unlock_irqrestore(&callback_lock, flags);
 	return allowed;
-- 
2.34.1

