Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 586504BDA13
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Feb 2022 15:07:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 566BF10E816;
	Mon, 21 Feb 2022 14:07:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAB6A10E801;
 Mon, 21 Feb 2022 14:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645452420; x=1676988420;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9LWwWZGMylyhL1oAfDDdvw3yEZ/lS/xp4EMo9Ne55jE=;
 b=HrMoVxr8a9QLhiJ7RdPY8grrpLJ/EGH0tCxEZhh6tYgPGmcQLHmNV8NZ
 WKkjMV+keczJ/FD7wY2OYJmWiA6TkGeGKT4LF3yfZPEOHQPDrb6KiKk9v
 UUZF2cdM6t7Vj0HCYQPRnPFk+Cbc/u+LsuChTBntBGG9Xz9KmxZBSXTPS
 +HGikkk51aA8hn79C7Ojp+CULBhOkI3ecKzoUASdNMQedPwxtemehnQyo
 p1fFPTocoGKNfJM7jsBk0XExbrkDlElnFri/1nEyBMJm1Nb4KkM+1FXU2
 GtKCviz+fDr5K0/N4c+9nH52Ven8B1E0sgHcQ2J8JSZVFIdz2XY7HHnTT Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10264"; a="312259046"
X-IronPort-AV: E=Sophos;i="5.88,385,1635231600"; d="scan'208";a="312259046"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 06:03:57 -0800
X-IronPort-AV: E=Sophos;i="5.88,385,1635231600"; d="scan'208";a="547348644"
Received: from joeyegax-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.23.97])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 06:03:56 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 21 Feb 2022 14:03:41 +0000
Message-Id: <20220221140342.2487679-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 1/2] test/i915/gem_ctx_shared: prefer
 gem_mmap__device_coherent
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Make it play nice on at least DG1.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 tests/i915/gem_ctx_shared.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tests/i915/gem_ctx_shared.c b/tests/i915/gem_ctx_shared.c
index 37444185..b38b7f73 100644
--- a/tests/i915/gem_ctx_shared.c
+++ b/tests/i915/gem_ctx_shared.c
@@ -290,7 +290,7 @@ static void exec_shared_gtt(int i915, const intel_ctx_cfg_t *cfg,
 	execbuf.flags |= I915_EXEC_FENCE_IN;
 
 	scratch = gem_create(i915, 4096);
-	s = gem_mmap__wc(i915, scratch, 0, 4096, PROT_WRITE);
+	s = gem_mmap__device_coherent(i915, scratch, 0, 4096, PROT_WRITE);
 
 	gem_set_domain(i915, scratch, I915_GEM_DOMAIN_WC, I915_GEM_DOMAIN_WC);
 	s[0] = bbe;
-- 
2.34.1

