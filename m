Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34DC073FE3C
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jun 2023 16:39:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C61910E31B;
	Tue, 27 Jun 2023 14:38:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com
 [IPv6:2607:f8b0:4864:20::62d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83EEA10E507
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jun 2023 08:57:40 +0000 (UTC)
Received: by mail-pl1-x62d.google.com with SMTP id
 d9443c01a7336-1b515ec39feso12624255ad.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jun 2023 01:57:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bytedance.com; s=google; t=1687424260; x=1690016260;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=aRQUwtIbFrjRbKaWDWITc6Upds+hXxxlwcQqvFPvJow=;
 b=Kv6dWh2IIchnBu9RbCVLsx8HZLugRgYdolMOnFdVv/Mze68pcgFvadMFaompRsV/Ii
 Vr4ahAwXirWdfwADAjPFAtSTivwacduawKzyeKPVnp7cESQMTGYfaqAI7425tQvAdQ85
 8rLDDpZCwcAbH67+6k+hMmW8Fi1etqH6LYFHkuQfbD+ESFiwPmeSocm5kXqI50kDiSjf
 PCd9vDumWTECSSKSpOEWhL8aCyPGbcSxO0SaB85LOV7uPD9a5LVIfvAATYV0qgfKCSQQ
 J+7inf8lDO5dvyUSQTFKKOcNdRaAbUMX2WbzVCHQayCH8tZA09PfVWiof+vKchWmVnWN
 0e0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687424260; x=1690016260;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=aRQUwtIbFrjRbKaWDWITc6Upds+hXxxlwcQqvFPvJow=;
 b=kla65HF5AhnNnt9IiJeeMoxjGDpKBvNC9oRwMQ/gtC6DGMVROmH8G0ZBZp/BXUIPHF
 3yUdzuMczZLLdjJh7bcOCuQm3lRUQpCpoE/j3//nKKHPm8YNA1PFL5FaLIbss54d+PKA
 3TzfBjYa2iE8VPw3ss+2kZLJoDPd/tPAxNccrp+d82mmLOCFOiqEELSvGDyQ4V8QtJ30
 mzBLH9/eowikxcsLXxwBkpQq+NFLyKky5FDjvCbKP6W+wyrL97fkfMknzhQFMfn+DMaI
 0b1IPxZRFnu6qEfbwaEMMJFLL/fafzhOGT5419g9T/iVZHUXDIr3a7Ql8Py0z3gxRQf9
 JeTw==
X-Gm-Message-State: AC+VfDxzTrqL7Ils+UBeZRjqUjcxgllA8PKDYtl4M13/zTC9AyXltENF
 sHKP3w4aA2a3HA+CFmwBH8mdsQ==
X-Google-Smtp-Source: ACHHUZ4KKZ8AXrupsFYw18EsJWvGfL6qm7cyYV/rSPTKOdYWRQ8IhOkLOim7I9s7W96jDohmbJS9Lg==
X-Received: by 2002:a17:903:41d2:b0:1a6:cf4b:4d7d with SMTP id
 u18-20020a17090341d200b001a6cf4b4d7dmr21650808ple.2.1687424260203; 
 Thu, 22 Jun 2023 01:57:40 -0700 (PDT)
Received: from C02DW0BEMD6R.bytedance.net ([139.177.225.254])
 by smtp.gmail.com with ESMTPSA id
 h2-20020a170902f7c200b001b549fce345sm4806971plw.230.2023.06.22.01.57.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Jun 2023 01:57:39 -0700 (PDT)
From: Qi Zheng <zhengqi.arch@bytedance.com>
To: akpm@linux-foundation.org, david@fromorbit.com, tkhai@ya.ru,
 vbabka@suse.cz, roman.gushchin@linux.dev, djwong@kernel.org,
 brauner@kernel.org, paulmck@kernel.org, tytso@mit.edu
Date: Thu, 22 Jun 2023 16:53:33 +0800
Message-Id: <20230622085335.77010-28-zhengqi.arch@bytedance.com>
X-Mailer: git-send-email 2.24.3 (Apple Git-128)
In-Reply-To: <20230622085335.77010-1-zhengqi.arch@bytedance.com>
References: <20230622085335.77010-1-zhengqi.arch@bytedance.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 27 Jun 2023 14:38:30 +0000
Subject: [Intel-gfx] [PATCH 27/29] mm: vmscan: hold write lock to reparent
 shrinker nr_deferred
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
Cc: linux-bcache@vger.kernel.org, linux-xfs@vger.kernel.org,
 linux-nfs@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 linux-raid@vger.kernel.org, linux-mm@kvack.org, dm-devel@redhat.com,
 Qi Zheng <zhengqi.arch@bytedance.com>, linux-fsdevel@vger.kernel.org,
 linux-ext4@vger.kernel.org, linux-btrfs@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For now, reparent_shrinker_deferred() is the only holder
of read lock of shrinker_rwsem. And it already holds the
global cgroup_mutex, so it will not be called in parallel.

Therefore, in order to convert shrinker_rwsem to shrinker_mutex
later, here we change to hold the write lock of shrinker_rwsem
to reparent.

Signed-off-by: Qi Zheng <zhengqi.arch@bytedance.com>
---
 mm/vmscan.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/mm/vmscan.c b/mm/vmscan.c
index 357a1f2ad690..0711b63e68d9 100644
--- a/mm/vmscan.c
+++ b/mm/vmscan.c
@@ -433,7 +433,7 @@ void reparent_shrinker_deferred(struct mem_cgroup *memcg)
 		parent = root_mem_cgroup;
 
 	/* Prevent from concurrent shrinker_info expand */
-	down_read(&shrinker_rwsem);
+	down_write(&shrinker_rwsem);
 	for_each_node(nid) {
 		child_info = shrinker_info_protected(memcg, nid);
 		parent_info = shrinker_info_protected(parent, nid);
@@ -442,7 +442,7 @@ void reparent_shrinker_deferred(struct mem_cgroup *memcg)
 			atomic_long_add(nr, &parent_info->nr_deferred[i]);
 		}
 	}
-	up_read(&shrinker_rwsem);
+	up_write(&shrinker_rwsem);
 }
 
 static bool cgroup_reclaim(struct scan_control *sc)
-- 
2.30.2

