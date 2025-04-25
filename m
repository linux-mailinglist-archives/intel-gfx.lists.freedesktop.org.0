Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F215DA9C0A9
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Apr 2025 10:17:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6682D10E8B1;
	Fri, 25 Apr 2025 08:17:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="NnS5L8Ln";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF46810E8C2
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Apr 2025 08:17:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1745569051;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=uu4FlIS5Nl76bZjUZyw21YomTVSJoQk7KVvTvA60Mww=;
 b=NnS5L8LnbABPF6PKGBAMQRhUTUfmfiXeu+5Gy8QdOwqV18OOazirWV6Fh98eiPERrlK6JY
 Xhg6/uHJoV0nqjWjY88hqq2m2Pa80Dba+Benqaph5/pNk15KQDsohjm3gJnO7ruyu/y9bU
 R3n8tXEYJ1+xRAaP8NZYTdrxM2fB+8I=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-90-D6wjTwqkOhSfV5cXtg94SQ-1; Fri, 25 Apr 2025 04:17:29 -0400
X-MC-Unique: D6wjTwqkOhSfV5cXtg94SQ-1
X-Mimecast-MFC-AGG-ID: D6wjTwqkOhSfV5cXtg94SQ_1745569048
Received: by mail-wm1-f72.google.com with SMTP id
 5b1f17b1804b1-43f405810b4so9965725e9.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Apr 2025 01:17:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745569048; x=1746173848;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=uu4FlIS5Nl76bZjUZyw21YomTVSJoQk7KVvTvA60Mww=;
 b=a3EhFpXwwnGiXPESNvvU1ysAV6JIBJZ+rVOfcAApqcdgbmJUsVHz8YnVrq/sI4dLXv
 VbBRCLkmwZ99mv8HIAVZ3NSQ75LMxeH5aUebrCMeOTf9atmDfijhmR7npKOpD9BGpfg1
 +3pI3/ZmpWUp64O31ObkEno5KLsmiWdy09KoSdPLQNBUvOGVuXP1ltBB1pXaP5qOqa5O
 wvMH5SboIeF5PiVLkvbLQQcY0GlleDZfb1qWyLtnUp8CX8zTSoGpvLg64qTIRoFzrJnj
 RZ7FfrLARganfHyNfIsGQRZIla39nGLGopr4jEsd1T/N0CftJtOKgpgFmKHXrb2xvdiJ
 LIaw==
X-Forwarded-Encrypted: i=1;
 AJvYcCX3/xEnznSa51HWJql9O4ZhM77ie/kWXVlnchEgkD1YpryUni621/IoIl3NyM7qqUp42IE6u6dd6sA=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzHjcxI1MzvmQz0ISGxouXL/Z5eqC75uP+phgVGyN4XZ0GfZbf9
 m4rcxMqImcnljTp8W+z5EDh7K09oByMSfAJPmy1fkZU4sWvfNw6f4+NCtUK0Z+g9AkghAUiYgXL
 UBMYjeUUfQjz50HgnUc1rH4tHcJ38AIxx9laagKLTYZRvbpI14OC9VcLO87AOgAqGAw==
X-Gm-Gg: ASbGncu7CZDV88u39RMMD6FBEfYesSG/TJ/jPE+W+8FTDy04kNv8YcQCDY3cSeaiYXI
 OJu4L8d3+QtcBr8j0pO0EDrNNhaWG/1PQ/E03slRWlrTB9IPB87qo6cRhWJuzkJ+gycGsABTOEf
 6Kp3xOcV1ORt+OinKhV5OHunxDF9ur0Pj/RAhUP7OgcWYe5JnrIf+EowJe+g1pl8lfHXTQmXZL2
 AcGQBneXa0KAwp05z8UBIzCrDZa1HNptdUkLB9buVW5skFEKIwLiJWY4AME6thU0sLnjFps1pnG
 pUF28FyQzd2CtzUjIhJpbmawBg3/U0nh0ceUPDD4MtRtHQ7YtLnoPgf91fjJyXEjo/BhS1Y=
X-Received: by 2002:a05:600c:1387:b0:43b:ce36:7574 with SMTP id
 5b1f17b1804b1-440a65d8120mr8181485e9.11.1745569048269; 
 Fri, 25 Apr 2025 01:17:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFv6bx4rw9BX60sw1RHVhWJrGaS8iH8UMCeEA8nv3vLsrOwHOvFftOe6l4h5umdYWufDrsURA==
X-Received: by 2002:a05:600c:1387:b0:43b:ce36:7574 with SMTP id
 5b1f17b1804b1-440a65d8120mr8181055e9.11.1745569047938; 
 Fri, 25 Apr 2025 01:17:27 -0700 (PDT)
Received: from localhost
 (p200300cbc70f69006c5680f80c146d2a.dip0.t-ipconnect.de.
 [2003:cb:c70f:6900:6c56:80f8:c14:6d2a])
 by smtp.gmail.com with UTF8SMTPSA id
 5b1f17b1804b1-4409d2a1dc3sm47748735e9.13.2025.04.25.01.17.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 25 Apr 2025 01:17:27 -0700 (PDT)
From: David Hildenbrand <david@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: linux-mm@kvack.org, x86@kernel.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-trace-kernel@vger.kernel.org,
 David Hildenbrand <david@redhat.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Andy Lutomirski <luto@kernel.org>, Peter Zijlstra <peterz@infradead.org>,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Andrew Morton <akpm@linux-foundation.org>,
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 "Liam R. Howlett" <Liam.Howlett@oracle.com>,
 Lorenzo Stoakes <lorenzo.stoakes@oracle.com>,
 Vlastimil Babka <vbabka@suse.cz>, Jann Horn <jannh@google.com>,
 Pedro Falcato <pfalcato@suse.de>, Peter Xu <peterx@redhat.com>
Subject: [PATCH v1 04/11] mm/memremap: convert to pfnmap_track() +
 pfnmap_untrack()
Date: Fri, 25 Apr 2025 10:17:08 +0200
Message-ID: <20250425081715.1341199-5-david@redhat.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250425081715.1341199-1-david@redhat.com>
References: <20250425081715.1341199-1-david@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Dmb5sLNEB0T_-2TRIRarBXsxvZZ0t6JjZlga1J9oL4U_1745569048
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
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

Let's use the new, cleaner interface.

Signed-off-by: David Hildenbrand <david@redhat.com>
---
 mm/memremap.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/mm/memremap.c b/mm/memremap.c
index 2aebc1b192da9..c417c843e9b1f 100644
--- a/mm/memremap.c
+++ b/mm/memremap.c
@@ -130,7 +130,7 @@ static void pageunmap_range(struct dev_pagemap *pgmap, int range_id)
 	}
 	mem_hotplug_done();
 
-	untrack_pfn(NULL, PHYS_PFN(range->start), range_len(range), true);
+	pfnmap_untrack(PHYS_PFN(range->start), range_len(range));
 	pgmap_array_delete(range);
 }
 
@@ -211,8 +211,8 @@ static int pagemap_range(struct dev_pagemap *pgmap, struct mhp_params *params,
 	if (nid < 0)
 		nid = numa_mem_id();
 
-	error = track_pfn_remap(NULL, &params->pgprot, PHYS_PFN(range->start), 0,
-			range_len(range));
+	error = pfnmap_track(PHYS_PFN(range->start), range_len(range),
+			     &params->pgprot);
 	if (error)
 		goto err_pfn_remap;
 
@@ -277,7 +277,7 @@ static int pagemap_range(struct dev_pagemap *pgmap, struct mhp_params *params,
 	if (!is_private)
 		kasan_remove_zero_shadow(__va(range->start), range_len(range));
 err_kasan:
-	untrack_pfn(NULL, PHYS_PFN(range->start), range_len(range), true);
+	pfnmap_untrack(PHYS_PFN(range->start), range_len(range));
 err_pfn_remap:
 	pgmap_array_delete(range);
 	return error;
-- 
2.49.0

