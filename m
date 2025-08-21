Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DE4FB303B3
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Aug 2025 22:08:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5AD510EA07;
	Thu, 21 Aug 2025 20:08:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="M5eIkUTN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1095410EA0B
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 20:08:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1755806903;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5m4ogAvLOK+AKMqlHwhkjmyVbS/4gGgmBykcdwEFmjg=;
 b=M5eIkUTNOfZAbO1HhqbvK8RSCTkC+xAMYuzo1rzYrLAiykPHIn9lv2D7YmsNWuK+auNtW9
 7N/xoysrIBK1RHpxBqWGbrNnt4lj4AfcHUWHUIgQIyZ9wk2VIpl9iXubDpi//Zhf/jHKKX
 2SBbugQ5LFxqtQ24PpWJWqhhPJ9qqn4=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-632-enzP2wDUMXy1gHooG5cHQA-1; Thu, 21 Aug 2025 16:08:21 -0400
X-MC-Unique: enzP2wDUMXy1gHooG5cHQA-1
X-Mimecast-MFC-AGG-ID: enzP2wDUMXy1gHooG5cHQA_1755806900
Received: by mail-wm1-f71.google.com with SMTP id
 5b1f17b1804b1-45a1b05b15eso10523285e9.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 13:08:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755806900; x=1756411700;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=5m4ogAvLOK+AKMqlHwhkjmyVbS/4gGgmBykcdwEFmjg=;
 b=wh3LJFPLCfrmcqra87LXTZq7GDfTOc79X7XYrM9VqDcifDYgW+USWoyuejmUeQwwVK
 h+wyEtop0RdDrTZpy4jeJcNTaV4/Z/FQF0Q7QsHXbtDOPsXW0TcdQ9IDidbVIyuOJert
 gmiKNcS2CDy/K/rQkq4HunECrYF0Ingw2CUi50U/Du5O/j9mqWJYJpjU7YBt4V26W/vb
 NhGaaYiUnuJ+VidxBnBLXlqAZivIUUMbubHNqO0EDWJTl5XtdBsB2PvAk8Hb2eI7f1Sn
 tNnKHcMlBzImHvzIWVT/ZQIFlp9EC4tLvmyorkF0NsQXynVc/YM33EIYw+kz8wZEj7WV
 Nk4w==
X-Forwarded-Encrypted: i=1;
 AJvYcCVGkv/JbUYNqPOXyxx1jNGMNOxOQGgJqfGrC80hedJXyfctwlwbkn1sN8FvFfvaOK1paF2Sdi7VvAM=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yw8yuvG158VuHBb3TShG3YXDFzseqxWsLp3LUF1Z5xNMTs+17ni
 YnO5lO5xMYVE7xMQ6wnd41dnCNYeoGnaTD3ZyWR01Eeyf+hiMUdJfgEmFCvhAKa8u9SYG/OVlE4
 i0jX7jBuK3PwTuLNAcr97ZvVWYrg9lG+z/f4A5ndUF76EcF1pWB5KqCA2dr7/f1R9Yrzw7A==
X-Gm-Gg: ASbGncussAWO288gW13HeoSlsk1FIpZJbz96RFVI47tHFKQZvSqVPtgyW4GWN/VrZwS
 dUjF+8FrStSs9ImU33SeCxLk+HWmVPfA8lgUBnWCAg47PLriLogsrEuq9TfIIicLq7Z4zpbf0iG
 j3mmJEqVdZiOJkksGn/iIMGV9/VfBgfdHlaZ1sTBJnwKACmCQ0R6PDt1PFVkmfUs4lN0Q42LDrs
 0/ixnPABPhLrPWzVs4koXGPi5OwinjMZT2RNxGnv12o/znpTlWHYj24r+wU5mcCmwi1HFvKK/aI
 dPupcw1gLQ+Voa/ui4/CkRVSPygsHDNGaUA/GBu7wkENXCKLWwfyGl+J+C8mTucOrf73vAfjEE2
 MqMaCq3LIV/cEa3XqZNtfdg==
X-Received: by 2002:a05:600d:15a:10b0:458:bc3f:6a77 with SMTP id
 5b1f17b1804b1-45b51f2fe8dmr510465e9.2.1755806900315; 
 Thu, 21 Aug 2025 13:08:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGpV2b3uhR/IYbmrTMgtg0gx1wkF4+JdBDenNBBSMhYf9nynPUCNMa8PTADPxo4/liFiw6TqA==
X-Received: by 2002:a05:600d:15a:10b0:458:bc3f:6a77 with SMTP id
 5b1f17b1804b1-45b51f2fe8dmr509915e9.2.1755806899756; 
 Thu, 21 Aug 2025 13:08:19 -0700 (PDT)
Received: from localhost
 (p200300d82f26ba0008036ec5991806fd.dip0.t-ipconnect.de.
 [2003:d8:2f26:ba00:803:6ec5:9918:6fd])
 by smtp.gmail.com with UTF8SMTPSA id
 ffacd0b85a97d-3c07487986fsm13999227f8f.1.2025.08.21.13.08.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 Aug 2025 13:08:19 -0700 (PDT)
From: David Hildenbrand <david@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: David Hildenbrand <david@redhat.com>,
 Maxim Levitsky <maximlevitsky@gmail.com>, Alex Dubov <oakad@yahoo.com>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Alexander Potapenko <glider@google.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Brendan Jackman <jackmanb@google.com>, Christoph Lameter <cl@gentwo.org>,
 Dennis Zhou <dennis@kernel.org>, Dmitry Vyukov <dvyukov@google.com>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 iommu@lists.linux.dev, io-uring@vger.kernel.org,
 Jason Gunthorpe <jgg@nvidia.com>, Jens Axboe <axboe@kernel.dk>,
 Johannes Weiner <hannes@cmpxchg.org>, John Hubbard <jhubbard@nvidia.com>,
 kasan-dev@googlegroups.com, kvm@vger.kernel.org,
 "Liam R. Howlett" <Liam.Howlett@oracle.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-arm-kernel@axis.com,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
 linux-ide@vger.kernel.org, linux-kselftest@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-mmc@vger.kernel.org, linux-mm@kvack.org,
 linux-riscv@lists.infradead.org, linux-s390@vger.kernel.org,
 linux-scsi@vger.kernel.org, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>,
 Marco Elver <elver@google.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Michal Hocko <mhocko@suse.com>, Mike Rapoport <rppt@kernel.org>,
 Muchun Song <muchun.song@linux.dev>, netdev@vger.kernel.org,
 Oscar Salvador <osalvador@suse.de>, Peter Xu <peterx@redhat.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Suren Baghdasaryan <surenb@google.com>, Tejun Heo <tj@kernel.org>,
 virtualization@lists.linux.dev, Vlastimil Babka <vbabka@suse.cz>,
 wireguard@lists.zx2c4.com, x86@kernel.org, Zi Yan <ziy@nvidia.com>
Subject: [PATCH RFC 26/35] mspro_block: drop nth_page() usage within SG entry
Date: Thu, 21 Aug 2025 22:06:52 +0200
Message-ID: <20250821200701.1329277-27-david@redhat.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250821200701.1329277-1-david@redhat.com>
References: <20250821200701.1329277-1-david@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: cla12WzRU6H51m1LR42ZA3uuNxx8wPDCUoUEZ9OPkso_1755806900
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

It's no longer required to use nth_page() when iterating pages within a
single SG entry, so let's drop the nth_page() usage.

Cc: Maxim Levitsky <maximlevitsky@gmail.com>
Cc: Alex Dubov <oakad@yahoo.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>
Signed-off-by: David Hildenbrand <david@redhat.com>
---
 drivers/memstick/core/mspro_block.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/memstick/core/mspro_block.c b/drivers/memstick/core/mspro_block.c
index c9853d887d282..985cfca3f6944 100644
--- a/drivers/memstick/core/mspro_block.c
+++ b/drivers/memstick/core/mspro_block.c
@@ -560,8 +560,7 @@ static int h_mspro_block_transfer_data(struct memstick_dev *card,
 		t_offset += msb->current_page * msb->page_size;
 
 		sg_set_page(&t_sg,
-			    nth_page(sg_page(&(msb->req_sg[msb->current_seg])),
-				     t_offset >> PAGE_SHIFT),
+			    sg_page(&(msb->req_sg[msb->current_seg])) + t_offset / PAGE_SIZE,
 			    msb->page_size, offset_in_page(t_offset));
 
 		memstick_init_req_sg(*mrq, msb->data_dir == READ
-- 
2.50.1

