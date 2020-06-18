Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E87821FEFE6
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2020 12:48:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3424F6EB3D;
	Thu, 18 Jun 2020 10:48:16 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8EAD6EB51;
 Thu, 18 Jun 2020 10:48:07 +0000 (UTC)
IronPort-SDR: dPa4B2ZSDDj7HE9/qZRKwHFs2Gf12S1SFLS9AUcIqfReZ8n6/jjTheR/Zpn2RiyUu5OUpo6w6D
 TDBGQDL/AqyQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9655"; a="122269057"
X-IronPort-AV: E=Sophos;i="5.73,526,1583222400"; d="scan'208";a="122269057"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2020 03:48:05 -0700
IronPort-SDR: edPT1E/b88EanAoytZG8wEB10GYI2SUiWyrdDMaLbwZSswT3uiwcq/lAeMVUR2JGluCE7yk7Ep
 13hH5fuZEBUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,526,1583222400"; d="scan'208";a="352378636"
Received: from ttulbure-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.33.49])
 by orsmga001.jf.intel.com with ESMTP; 18 Jun 2020 03:48:04 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Thu, 18 Jun 2020 11:47:47 +0100
Message-Id: <20200618104747.24005-11-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200618104747.24005-1-tvrtko.ursulin@linux.intel.com>
References: <20200618104747.24005-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 11/11] gem_wsim: Do not keep batch mapped
 unless needed
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

At this point we only need to keep the mapping for infinite batch buffers.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 benchmarks/gem_wsim.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/benchmarks/gem_wsim.c b/benchmarks/gem_wsim.c
index 811a4b1b7161..496e5042d89c 100644
--- a/benchmarks/gem_wsim.c
+++ b/benchmarks/gem_wsim.c
@@ -1449,6 +1449,7 @@ static unsigned int terminate_bb(struct w_step *w)
 	const uint32_t bbe = 0xa << 23;
 	unsigned long mmap_start, mmap_len;
 	unsigned long batch_start = w->bb_sz;
+	bool keep_mmap = false;
 	unsigned int r = 0;
 	uint32_t *ptr, *cs;
 
@@ -1472,6 +1473,7 @@ static unsigned int terminate_bb(struct w_step *w)
 
 		*cs++ = w->preempt_us ? 0x5 << 23 /* MI_ARB_CHK; */ : MI_NOOP;
 		w->recursive_bb_start = cs;
+		keep_mmap = true;
 		*cs++ = MI_BATCH_BUFFER_START | 1 << 8 | 1;
 		*cs++ = 0;
 		*cs++ = 0;
@@ -1479,6 +1481,9 @@ static unsigned int terminate_bb(struct w_step *w)
 
 	*cs = bbe;
 
+	if (!keep_mmap)
+		munmap(ptr, mmap_len);
+
 	return r;
 }
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
