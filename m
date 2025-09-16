Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F350FB59AFE
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 16:55:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64A7110E7EB;
	Tue, 16 Sep 2025 14:55:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="QcvP+Aky";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com
 [209.85.215.169])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AE8F10E63D
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Sep 2025 04:49:27 +0000 (UTC)
Received: by mail-pg1-f169.google.com with SMTP id
 41be03b00d2f7-b54b2428fafso3219528a12.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Sep 2025 21:49:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1757998167; x=1758602967; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=zSw+5V18QQW1zrEulMj1oteRdmYU7Zw4RYS7vag/74M=;
 b=QcvP+Akynk/36UuhQv6wZ+gB0qEWtG9LRkPhslSPEBs/jD+TTkKHjhLKmrX8vMeL50
 YRBXRPXlOriIlKXkclK4M2KxHmGfNAj8xCE5q93JlH+wzItwaoDORK+MUTWBGuRqtJN7
 1nA/ADZbvEuZEsBy11T2kG6Boy+xbAbZgUqPwXR/XMNLdxFUYFmMji+byxtdnIszN5Dt
 AWnkgIqRELQSZSEJnXzGCdNfCNfRqNFVstGcfHPHaU+IxPBmEWi2UdX4Mo7au8eDWvPx
 rd89BJb3ZtJwvP21Xm/JGIk6uuSc92TQoRLZIehZ/RyDaOs6nKXjILTMEKeVT19k4GZJ
 oTug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1757998167; x=1758602967;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=zSw+5V18QQW1zrEulMj1oteRdmYU7Zw4RYS7vag/74M=;
 b=g5Lzy4VSHuAMRbtLjsOsmFJ9XDveGz3+JNOt8eQEnPyNBHK1Gbigw01/Edx/Ex/E4T
 B8mjQWQxsfJlzSxBo6TQe1BHzfsQacjLhRqUvs01Vc+z6BC5bZTi7gmEN9TegzeSUAoe
 DHDFJV8jjIeZBYJciQvS3p+xw+vXPNAcaYABOMfOxLhjor5X+e/u8jhu6JT6OtWyvvOF
 U3FjrvUAGMP2sXhNh8LMWzSdiqTA4aUF1kdBBCov86BblL4B8lpI/GU7/H6RjTXamhVi
 /cris57sVbpoFU5usNhFIik4uB/vaEo0fZs6f8IzzGo7JxV9T/R7RSkdKp4cMjyS/dJi
 EHhQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVkDQRPKg0lBN4H7Ra+c6Swli68K5MRlibPknFclluYMbW/Gq2kemYHkpnYgS7BTbTEDwbrDCyY54Y=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yz3k6LNpB+O583T/CDlv0NR3kmIPL0nIpzaYQwCLt8iyGSNeZuS
 tVK6k9d7riEV4gJY5OtXFM4TXKSd/gUIErZZ3vEfkDKn73ux6SPRvdfO
X-Gm-Gg: ASbGncv6ZPjgxIS0EPqDVC/ELuiuR+7Z56TTtO7N/rhtj+znV+AIi+P/XbSp7yfw7nt
 9/Iin1TYdyUTSteIk4a9nDVbIpzBwbm42gTFw3Vc7J6SQl+qefz0qoo2hmeFSX+zQYEnBzSmRG9
 Kb3Hu6zA8TQKsmZ8vGvOoc5GK26RlzN2yr0ri7BX/TeS1HCLCUBBFjXN9hOLiDjsEKLZs4qAC7l
 pF06VurIrzQzbYEsYMsXPzdXFOHqfMwkhJ1thqmnPQ82Fm9p7JyPqqjVe6Mx5cYLM4Eck7JQF1j
 ewTk138Uwz2st479iXTfEdVTZHK37ZIJTZVZyRAxjtsKjuEwSi0T9vYw7Rmq5Sx41g3Zcl47U+P
 cegT6RsWgWBaQLUyEUptFLRN2AQ9DfnAx7cxFyPo=
X-Google-Smtp-Source: AGHT+IFoVKHWE4WmC5NQoAJgz5S3HoMpNrjT8PBpaSw1vdAI3yXeG2nG2SQAkLHZCeabG5ejGwx28A==
X-Received: by 2002:a17:902:ea10:b0:24e:bdfa:112b with SMTP id
 d9443c01a7336-25d289e9988mr159622635ad.61.1757998167045; 
 Mon, 15 Sep 2025 21:49:27 -0700 (PDT)
Received: from pengdl-pc.mioffice.cn ([43.224.245.249])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-25ef09c77f8sm104600605ad.15.2025.09.15.21.49.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Sep 2025 21:49:26 -0700 (PDT)
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
 Samuel Mendoza-Jonas <sam@mendozajonas.com>,
 Paul Fertser <fercerpav@gmail.com>, pengdonglin <pengdonglin@xiaomi.com>
Subject: [PATCH v3 11/14] net: ncsi: Remove redundant rcu_read_lock/unlock()
 in spin_lock
Date: Tue, 16 Sep 2025 12:47:32 +0800
Message-Id: <20250916044735.2316171-12-dolinux.peng@gmail.com>
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

Cc: Samuel Mendoza-Jonas <sam@mendozajonas.com>
Cc: Paul Fertser <fercerpav@gmail.com>
Signed-off-by: pengdonglin <pengdonglin@xiaomi.com>
Signed-off-by: pengdonglin <dolinux.peng@gmail.com>
---
 net/ncsi/ncsi-manage.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/net/ncsi/ncsi-manage.c b/net/ncsi/ncsi-manage.c
index 446e4e3b9553..6e36cd64a31e 100644
--- a/net/ncsi/ncsi-manage.c
+++ b/net/ncsi/ncsi-manage.c
@@ -650,7 +650,6 @@ static int set_one_vid(struct ncsi_dev_priv *ndp, struct ncsi_channel *nc,
 
 	spin_lock_irqsave(&nc->lock, flags);
 
-	rcu_read_lock();
 	list_for_each_entry_rcu(vlan, &ndp->vlan_vids, list) {
 		vid = vlan->vid;
 		for (i = 0; i < ncf->n_vids; i++)
@@ -661,7 +660,6 @@ static int set_one_vid(struct ncsi_dev_priv *ndp, struct ncsi_channel *nc,
 		if (vid)
 			break;
 	}
-	rcu_read_unlock();
 
 	if (!vid) {
 		/* No VLAN ID is not set */
-- 
2.34.1

