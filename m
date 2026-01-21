Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GItnGFs7cWnKfQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 21:47:23 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC71E5D8FD
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 21:47:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FA4B10E887;
	Wed, 21 Jan 2026 20:47:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="Er/AIEQh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-dy1-f202.google.com (mail-dy1-f202.google.com
 [74.125.82.202])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C0B010E887
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jan 2026 20:47:20 +0000 (UTC)
Received: by mail-dy1-f202.google.com with SMTP id
 5a478bee46e88-2b70d8095daso236737eec.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jan 2026 12:47:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1769028440; x=1769633240;
 darn=lists.freedesktop.org; 
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=aLZ3zH/7uDwWLYCOO4D2algTztp4r6t6l5wdVxQyDAs=;
 b=Er/AIEQh5e6m9nuJ6tQVFJCz1SytRbq8yE0K8npIWzPPrYBjtfI9wxpBl4W2L1wts0
 Edky3FYgnqddNBwj5iWIzYk/5pbs+YOL4+wlO8uI3kL+YQlIKvxpfwrLXuyOT5ehvLBo
 y6cyLAOmhbVOownofu+iT0RN9NNuYcTe3GCe4+p//OrT/1uutiboK1uDGfRdQmrXCpJZ
 qUJxkv9Y10yS9pFBSvq00dCgt9ij46or6x4KB61QRV/yHTYlb3Pygme59Vi9BRqgNHcm
 6mKhwo6gUuypDcL5GfMnXAWcF4m6HgekyAG3vEpEJE2/4VMCWjM4rg+PIjR0bVkDHG93
 6wFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1769028440; x=1769633240;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=aLZ3zH/7uDwWLYCOO4D2algTztp4r6t6l5wdVxQyDAs=;
 b=t1hZGo+pCCNKD1SqUMI1xPOZsRQNFtmiQ/lHntOAz1gIeGxrWf3rmk+PE0lQuQM2Ip
 ftA/+xhPZron3mKwKmsX0dt5GbnzH6Uw6x7kAWFEdCSHytIxqjh5Vhm/IZplOUXu3I6/
 hkl8shq0dBdHURfZ1p6oHIZtEBYcRp8blyA5zjQZn1mhrQgFoznWqlyUCrRTQs+to+pb
 T3oSJyzRsLE8QCjKn9Yqn8ebGnjo6ZHU7n4qLLmzrYhqMdpj4hhA6tS9F4UwqQadTwCb
 5wOy+P4HX1+8LrvcN4GmmP6Z7yQ41Zcm7NchptS6LcGrnRiE/WcONKgnmZbxQlHHSI1a
 XoqQ==
X-Gm-Message-State: AOJu0YwqH+SQ1TfTr1/GXPMuisZ2/UPXTDTRZ00l17RYbQAKDeyQZZIK
 a/Gyn/0cWfgeE3n8kOWf87uQTkXNkix4epkhDR6ReuTIdl6E0aXRA/yyDgQTOMVlhHVFVa4cWD9
 0k14dgpDxIhe+fa4IbAtKiOJjkjqvrUk2//mz2akHJEXi3cLmynep5lyZakkWx/DSwQC/GBmTvD
 aPWw1EOthTC7BaKRcLEIb6+vT1SdCfIU/VsJ1n9AO9lk3lgQ9rK2wUecPq6wI=
X-Received: from dycam16.prod.google.com ([2002:a05:7300:fc10:b0:2b7:880:7a40])
 (user=jdsultan job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:7300:23d0:b0:2ae:526a:961d with SMTP id
 5a478bee46e88-2b6b4eb3a48mr12014173eec.40.1769028439489; 
 Wed, 21 Jan 2026 12:47:19 -0800 (PST)
Date: Wed, 21 Jan 2026 12:46:52 -0800
In-Reply-To: <20260121204705.432290-1-jdsultan@google.com>
Mime-Version: 1.0
References: <20260121204705.432290-1-jdsultan@google.com>
X-Mailer: git-send-email 2.52.0.457.g6b5491de43-goog
Message-ID: <20260121204705.432290-2-jdsultan@google.com>
Subject: [RFC PATCH v3 1/2] drm/xe/display: Fix reading the framebuffer from
 stolen memory
From: Juasheem Sultan <jdsultan@google.com>
To: intel-gfx@lists.freedesktop.org, intel_xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Manasi Navare <navaremanasi@google.com>, Drew Davenport <ddavenport@google.com>,
 Sean Paul <seanpaul@google.com>, Samuel Jacob <samjaco@google.com>, 
 Rajat Jain <rajatja@google.com>, Juasheem Sultan <jdsultan@google.com>
Content-Type: text/plain; charset="UTF-8"
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jdsultan@google.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[google.com:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: EC71E5D8FD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Currently, we attempt to pin stolen memory using the ggtt address. This
doesn't appear to actually read the framebuffer that was setup by the
bios. Instead, we have to use the underlying physical address offset
within stolen memory.

Signed-off-by: Juasheem Sultan <jdsultan@google.com>
---
 drivers/gpu/drm/xe/display/xe_plane_initial.c | 22 ++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/drm/xe/display/xe_plane_initial.c
index 94f00def811b..2b84d0cc97e3 100644
--- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
+++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
@@ -22,6 +22,7 @@
 #include "intel_plane.h"
 #include "intel_plane_initial.h"
 #include "xe_bo.h"
+#include "xe_ttm_stolen_mgr.h"
 #include "xe_vram_types.h"
 #include "xe_wa.h"
 
@@ -120,7 +121,26 @@ initial_plane_bo(struct xe_device *xe,
 
 		if (!stolen)
 			return NULL;
-		phys_base = base;
+
+		/* Read PTE to find physical address backing the GGTT address */
+		u64 pte = xe_ggtt_read_pte(tile0->mem.ggtt, base);
+		u64 phys_addr = pte & ~(page_size - 1);
+
+		u64 stolen_base = xe_ttm_stolen_gpu_offset(xe);
+
+		drm_dbg_kms(&xe->drm,
+			"Stolen Framebuffer base=%x pte=%llx phys_addr=%llx stolen_base=%llx\n",
+			 base, pte, phys_addr, stolen_base);
+
+		/* Make sure that the physical address is in the range of stolen memory */
+		if (phys_addr >= stolen_base) {
+			phys_base = phys_addr - stolen_base;
+		} else {
+			drm_err(&xe->drm, "Stolen memory outside of stolen range phys_base=%pa\n",
+				&phys_base);
+			return NULL;
+		}
+
 		flags |= XE_BO_FLAG_STOLEN;
 
 		if (XE_GT_WA(xe_root_mmio_gt(xe), 22019338487_display))
-- 
2.52.0.457.g6b5491de43-goog

