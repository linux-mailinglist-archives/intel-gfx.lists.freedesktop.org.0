Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3797EB59AF2
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 16:55:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F5CB10E7EC;
	Tue, 16 Sep 2025 14:55:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="EuCI9B00";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com
 [209.85.214.173])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 401DC10E63D
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Sep 2025 04:49:41 +0000 (UTC)
Received: by mail-pl1-f173.google.com with SMTP id
 d9443c01a7336-266a0e83662so12431715ad.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Sep 2025 21:49:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1757998181; x=1758602981; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=6Tcedso9pzLAwLQitmBj+2+6wC4HZyTUiqHFeMdiOi8=;
 b=EuCI9B003wKwaAqN85aDwd3hRU0b0D0X8MqGBLoyVytuGhcmycCooB2XwuTUTNEVCJ
 yI0/O/ZmKHz9TxNz6dVMUIyrA5ZWwH0A12n8s6GqDcB6TPO3TMaA8hflncxohgFC8X/W
 EbnJJwVszRZ2B/ZGwsXpVLOq5qlfhG88r+EBNg6ZJP0IiTF8XRKdEOQorAOq5p3IF2vA
 6VmqhTXAEhe+eVGmZEymiThbxiXxLtV2vGyvlCcREFi/gu91cU+RXXGPZI6ug2Lxayvv
 LvzI5MnJRYiV8OG4Zz4cHQ1+c6VCUQtIni+Rh9D8bgNmTb7hVLiTWHoXkLktVI2k9eBE
 kriw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1757998181; x=1758602981;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=6Tcedso9pzLAwLQitmBj+2+6wC4HZyTUiqHFeMdiOi8=;
 b=a8DnqkOIBjMSOkzLHrdZ6deE02n3Tty459DJrJojYqexKNTPLlgGRwdx0+fdpTJkXj
 LSu/HvERzYeNtLI7aCDUkeMj99lyxiHnViRqiUtqoffWXRE5lgAFXHs6LfYhMLTnR2+P
 YmSt9R7wnos+j7htIuHjXBPt6jus+fMjJpFKTASAjXbW7ss4CMMqyOjE5/nf4EzqI9M4
 NSeynummPTy4Il13gSWa8UKTI7bzpfms3RYJdoGeHvpytnL4ywdPBeYHmeO+3EYB2P5U
 kwnGlxv2Nop3vkqqqsJpFhk58JrReoCVOF/2qnvq2DXR7R3EfScHsSaSBko71ow/LyU1
 iIYw==
X-Forwarded-Encrypted: i=1;
 AJvYcCW4/slWB3Rf4/dvNgg+dyi7L6wu0C90+GWBGktX53LXlLlak1QCImb53E+BQcb9rJMtTbV08m+tok4=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yzq7ECK9HFxk+3d6NYo9lcpHg0aLhglpTC0Ouzzp4nppByiZnkK
 H/6QbelVJvBSgycOV6us6EYyZu06YOyv2Qc1NqRCG+oQmLi6PioMUjg1
X-Gm-Gg: ASbGnctO3xNOmFXIX8g5pR9yPnqx6ApTuWG/HytMFj6jx0WFvAM19EHufsdz5WzgvCW
 nJsgHy/FubWspl5T3vG56YdkSaWiY1jAL/ryn/ZnBvWmt/Lo8CxCPBgH0bWd3ieesNZCcR/FxdP
 RUM+8M0VHgpKxNLS9eaqr5FCzA2B3PGeCYhhI9ZsNuL0QAIyyczfhgTFgQfI5RP0qKqnYFDw4RU
 rLmBmQtLcUnkIlTlU2m6uW8Kwkkrqjm6u+ZvZu8KXwnfpKn5NuWlKAZNUjXI7DVOnVxWwzf/mb6
 FPw+EGQyyk8BNMuuf6CvFDhePYLTo5bn4wlAzWOVS76mmFQRw2V2Bn5Y0jH7lcuzV1WPA427M0r
 2uWMNDLb0fnk0mWrA9Wq3M8E2DraFcb/Oc/sqsMM=
X-Google-Smtp-Source: AGHT+IEk/DXYOCMhugqpymqTGh+KMlTQeAIuikssxOXlHLYZS5SBPJrXDrKkOxyomJ+DECodEM8EoQ==
X-Received: by 2002:a17:902:c40d:b0:251:a3b3:1580 with SMTP id
 d9443c01a7336-25d24cac4eemr191581215ad.6.1757998180587; 
 Mon, 15 Sep 2025 21:49:40 -0700 (PDT)
Received: from pengdl-pc.mioffice.cn ([43.224.245.249])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-25ef09c77f8sm104600605ad.15.2025.09.15.21.49.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Sep 2025 21:49:40 -0700 (PDT)
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
 pengdonglin <dolinux.peng@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 Jakub Kicinski <kuba@kernel.org>, pengdonglin <pengdonglin@xiaomi.com>
Subject: [PATCH v3 13/14] net: bonding: Remove redundant
 rcu_read_lock/unlock() in spin_lock
Date: Tue, 16 Sep 2025 12:47:34 +0800
Message-Id: <20250916044735.2316171-14-dolinux.peng@gmail.com>
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

Cc: Jay Vosburgh <jv@jvosburgh.net>
Cc: Paolo Abeni <pabeni@redhat.com>
Cc: Jakub Kicinski <kuba@kernel.org>
Signed-off-by: pengdonglin <pengdonglin@xiaomi.com>
Signed-off-by: pengdonglin <dolinux.peng@gmail.com>
---
 drivers/net/bonding/bond_3ad.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/net/bonding/bond_3ad.c b/drivers/net/bonding/bond_3ad.c
index 4edc8e6b6b64..c53ea73f103a 100644
--- a/drivers/net/bonding/bond_3ad.c
+++ b/drivers/net/bonding/bond_3ad.c
@@ -2485,7 +2485,6 @@ void bond_3ad_state_machine_handler(struct work_struct *work)
 	 * concurrently due to incoming LACPDU as well.
 	 */
 	spin_lock_bh(&bond->mode_lock);
-	rcu_read_lock();
 
 	/* check if there are any slaves */
 	if (!bond_has_slaves(bond))
@@ -2537,7 +2536,6 @@ void bond_3ad_state_machine_handler(struct work_struct *work)
 			break;
 		}
 	}
-	rcu_read_unlock();
 	spin_unlock_bh(&bond->mode_lock);
 
 	if (update_slave_arr)
-- 
2.34.1

