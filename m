Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E132F73FE3F
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jun 2023 16:39:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DFEA10E31C;
	Tue, 27 Jun 2023 14:38:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com
 [IPv6:2607:f8b0:4864:20::634])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0D3210E4F3
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jun 2023 08:54:11 +0000 (UTC)
Received: by mail-pl1-x634.google.com with SMTP id
 d9443c01a7336-1b5466bc5f8so9651675ad.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jun 2023 01:54:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bytedance.com; s=google; t=1687424051; x=1690016051;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=DFMKKDRv9BEw0wZ8UUzCf9pHUtxe8HkFUWg9bN69VRM=;
 b=AuFJ2ff77l/LXEOtYzZWEupZaAfbwt3boPeShk25fcGMwTsb6VlfqfAhMOVgIPnKgi
 eqcOSF5WVHBBVioigqwmY9UAoTi5JEhiUSGdMReu4dDGNOFEVgxVIc2OKO3nltUsVDLn
 bIiXH0DnqlXam4z90R2tFa6XgNVpJSLaIq6Gbf9RXLnB8BOaf0v/n1c1hG3kRZPk0MVc
 mjQpq7kQFhiCgtBijMi8fR+x4TAH8zuouOKbSAqWM+GHeJnchPRb4XIBJxswbiSbm3XO
 sXBcqfmZ/ARe540iNA/E7F7ZKvP/VvSbnbTILDPrN3l0DanjIGoHjsT1U12ioP3F05dG
 yTtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687424051; x=1690016051;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=DFMKKDRv9BEw0wZ8UUzCf9pHUtxe8HkFUWg9bN69VRM=;
 b=McfBmgsrkm4dwEE4BYhzKrwAipRNnBnV0SDFyJcK3dAjI+JNMWCOKCf7KF9AIWmIMJ
 RyEIEkI4mZXL6rE+3yEgoPRuZRiV/rBSTwE3PN7UDQk06b2wX+feK96PgdOCpz9XQROn
 RwwzRlJJX7ENXSY2ul10GMXlDEVQZFkFoOE9IJOWEOC7OKw0/e1yTZH7SBag+K1o/Vzy
 pHHB/lr1QpYvWLJFdBAfOlS9jJo6Qb9qatpvr5LqR62Hlep5XxFWeZUrKgo5dNLsxth1
 /2Tvpb6b/YswfKsRBME+CoY8IToqO2bgNplTvjrq+fOlZRo/HJK5tPwTkrAxRFXUbrko
 277w==
X-Gm-Message-State: AC+VfDwOOVvgFe+09NWACXYuV3gweRKTGbBbBApQs7bx++mSx/D0j162
 zqOGweOEsK4njxYOaLIorpXagg==
X-Google-Smtp-Source: ACHHUZ41Ov0V9PIJeBixnqaY8MSMJrvGTOtmFbuG0vAMaQAXgKytEj5uEpxgQHkUs9eKy8wwGzA30Q==
X-Received: by 2002:a17:902:f691:b0:1b3:d4bb:3515 with SMTP id
 l17-20020a170902f69100b001b3d4bb3515mr21827814plg.0.1687424051106; 
 Thu, 22 Jun 2023 01:54:11 -0700 (PDT)
Received: from C02DW0BEMD6R.bytedance.net ([139.177.225.254])
 by smtp.gmail.com with ESMTPSA id
 h2-20020a170902f7c200b001b549fce345sm4806971plw.230.2023.06.22.01.54.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Jun 2023 01:54:10 -0700 (PDT)
From: Qi Zheng <zhengqi.arch@bytedance.com>
To: akpm@linux-foundation.org, david@fromorbit.com, tkhai@ya.ru,
 vbabka@suse.cz, roman.gushchin@linux.dev, djwong@kernel.org,
 brauner@kernel.org, paulmck@kernel.org, tytso@mit.edu
Date: Thu, 22 Jun 2023 16:53:07 +0800
Message-Id: <20230622085335.77010-2-zhengqi.arch@bytedance.com>
X-Mailer: git-send-email 2.24.3 (Apple Git-128)
In-Reply-To: <20230622085335.77010-1-zhengqi.arch@bytedance.com>
References: <20230622085335.77010-1-zhengqi.arch@bytedance.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 27 Jun 2023 14:38:30 +0000
Subject: [Intel-gfx] [PATCH 01/29] mm: shrinker: add shrinker::private_data
 field
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

To prepare for the dynamic allocation of shrinker instances
embedded in other structures, add a private_data field to
struct shrinker, so that we can use shrinker::private_data
to record and get the original embedded structure.

Signed-off-by: Qi Zheng <zhengqi.arch@bytedance.com>
---
 include/linux/shrinker.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/linux/shrinker.h b/include/linux/shrinker.h
index 224293b2dd06..43e6fcabbf51 100644
--- a/include/linux/shrinker.h
+++ b/include/linux/shrinker.h
@@ -70,6 +70,8 @@ struct shrinker {
 	int seeks;	/* seeks to recreate an obj */
 	unsigned flags;
 
+	void *private_data;
+
 	/* These are for internal use */
 	struct list_head list;
 #ifdef CONFIG_MEMCG
-- 
2.30.2

