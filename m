Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B3CC19E42C
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Apr 2020 11:41:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FEBD6E0CC;
	Sat,  4 Apr 2020 09:41:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D95996E081;
 Sat,  4 Apr 2020 09:41:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=FjP6zoayZ1fjLTQ5J40k73xEcDLUAFsLpp9ITbvNuIc=; b=E5rDDKMwWfrap1JfG6yNklw4O2
 GNgNgDdFmbxfo1fUVp5J1gaGFscM2Apu4SX2zjRhB1+YnuUkrq4wHrSoK6KStx9kPDNIH/ANmeneN
 wQ02zm0tKQ1R6ebfTq6wzZkFEMzwXBcqrmfyGf8xA5tZRYW83fb+mtQ8J+8dagGuRpquxFp/Q68nq
 FW1kAC2RNliuc7Tp/7ADj02HUyYGYkHXUO6rqnrjgGwA1crPkLp/2s+nq7pS6OYTuy64eguvFMaLD
 xOAvUjLwiu/DrMQZbyP3jl7d3qekyjoqtsaLSBWrrQVdwUV+JywA4azyO0oEnsF6xvSa20P+kDcLL
 Ntn9iIgQ==;
Received: from [2001:4bb8:180:7914:2ca6:9476:bbfa:a4d0] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKfIc-0002d1-GL; Sat, 04 Apr 2020 09:41:11 +0000
From: Christoph Hellwig <hch@lst.de>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>
Date: Sat,  4 Apr 2020 11:40:57 +0200
Message-Id: <20200404094101.672954-3-hch@lst.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200404094101.672954-1-hch@lst.de>
References: <20200404094101.672954-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
Subject: [Intel-gfx] [PATCH 2/6] i915/gvt/kvm: a NULL ->mm does not mean a
 thread is a kthread
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
Cc: Jens Axboe <axboe@kernel.dk>, Felipe Balbi <balbi@kernel.org>,
 amd-gfx@lists.freedesktop.org, "Michael S. Tsirkin" <mst@redhat.com>,
 Felix Kuehling <Felix.Kuehling@amd.com>, linux-usb@vger.kernel.org,
 io-uring@vger.kernel.org, linux-kernel@vger.kernel.org,
 virtualization@lists.linux-foundation.org, linux-mm@kvack.org,
 linux-fsdevel@vger.kernel.org, Al Viro <viro@zeniv.linux.org.uk>,
 intel-gfx@lists.freedesktop.org, Alex Deucher <alexander.deucher@amd.com>,
 intel-gvt-dev@lists.freedesktop.org, Jason Wang <jasowang@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Use the proper API instead.

Fixes: f440c8a572d7 ("drm/i915/gvt/kvmgt: read/write GPA via KVM API")
Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/gpu/drm/i915/gvt/kvmgt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gvt/kvmgt.c b/drivers/gpu/drm/i915/gvt/kvmgt.c
index 074c4efb58eb..5848400620b4 100644
--- a/drivers/gpu/drm/i915/gvt/kvmgt.c
+++ b/drivers/gpu/drm/i915/gvt/kvmgt.c
@@ -2037,7 +2037,7 @@ static int kvmgt_rw_gpa(unsigned long handle, unsigned long gpa,
 	struct kvmgt_guest_info *info;
 	struct kvm *kvm;
 	int idx, ret;
-	bool kthread = current->mm == NULL;
+	bool kthread = (current->flags & PF_KTHREAD);
 
 	if (!handle_valid(handle))
 		return -ESRCH;
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
