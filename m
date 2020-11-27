Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C3CFC2C6598
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Nov 2020 13:15:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAF2A6ED99;
	Fri, 27 Nov 2020 12:12:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 603586ECB8;
 Fri, 27 Nov 2020 12:12:48 +0000 (UTC)
IronPort-SDR: tM5dzh0wXhdOq1FfIGfr1Wv6lgsuw+b+I2ALV6Mxg90rvm6+Dk59+G9P0Dju6q7efkkvQ9GzkK
 cubWQR7c1qGg==
X-IronPort-AV: E=McAfee;i="6000,8403,9817"; a="168883895"
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="168883895"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2020 04:12:35 -0800
IronPort-SDR: PWEsl9cq8EprK0++7gA6Pn/OhhxIDA8H8O0qijLJNg1mBb+0s+FSjtoAE27Ox5ECv6Zma+Rz1W
 cJ+q+Sm41PkQ==
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="548030080"
Received: from mjgleeso-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.251.85.2])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2020 04:12:32 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Nov 2020 12:07:16 +0000
Message-Id: <20201127120718.454037-161-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201127120718.454037-1-matthew.auld@intel.com>
References: <20201127120718.454037-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH 160/162] drm/i915/dg1: Fix GPU hang due to
 shmemfs page drop
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
Cc: Chris Wilson <chris@intel.com>,
 Venkata Ramana Nayana <venkata.ramana.nayana@intel.com>,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Venkata Ramana Nayana <venkata.ramana.nayana@intel.com>

This is to fix a bug in upstream
commit a6326a4f8ffb ("drm/i915/gt: Keep a no-frills swappable copy of the default context state")

We allocate context state obj ce->state from lmem, so in __engines_record_defaults(),
we call shmem_create_from_object(). Because it is lmem object, this call will
create a new shmemfs file, copy the contents into it, and return the file
pointer and assign to engine->default_state. Of course ce->state lmem object
is freed at the end of function __engines_record_redefaults().

Because a new shmemfs file is create for engine->default_state,
and more importantly, we DON'T mark the pages dirty after we write into it,
the OS page cache eviction will drop these pages.

Now with the test move forward, it will create new request/context, and will
copy the saved engine->default_state into ce->state. If the default_state
pages are dropped during page cache eviction, the copying will get new pages,
and copy garbage from the new pages. Next, ce->state will have wrong
instruction and causes GPU to hang.

The fixing is very simple, we just mark the shmemfs pages to be dirty when
writing into it, and also mark the pages to accessed when read/write to them.

Fixes: a6326a4f8ffb("drm/i915/gt: Keep a no-frills swappable copy of the default context state")
Cc: Sudeep Dutt <sudeep.dutt@intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Ramalingam C <ramalingam.c@intel.com>
Cc: Chris Wilson <chris@intel.com>
Signed-off-by: CQ Tang <cq.tang@intel.com>
Signed-off-by: Venkata Ramana Nayana <venkata.ramana.nayana@intel.com>
---
 drivers/gpu/drm/i915/gt/shmem_utils.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/shmem_utils.c b/drivers/gpu/drm/i915/gt/shmem_utils.c
index 1fbc070a4651..e24c2c2342bb 100644
--- a/drivers/gpu/drm/i915/gt/shmem_utils.c
+++ b/drivers/gpu/drm/i915/gt/shmem_utils.c
@@ -105,10 +105,13 @@ static int __shmem_rw(struct file *file, loff_t off,
 			return PTR_ERR(page);
 
 		vaddr = kmap(page);
-		if (write)
+		if (write) {
 			memcpy(vaddr + offset_in_page(off), ptr, this);
-		else
+			set_page_dirty(page);
+		} else {
 			memcpy(ptr, vaddr + offset_in_page(off), this);
+		}
+		mark_page_accessed(page);
 		kunmap(page);
 		put_page(page);
 
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
