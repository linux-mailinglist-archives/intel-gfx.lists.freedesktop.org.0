Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 136124E6FCC
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 10:10:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CB7510E72F;
	Fri, 25 Mar 2022 09:10:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC72B10E72A;
 Fri, 25 Mar 2022 09:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648199422; x=1679735422;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mRHo02ebGP4/nfTbsZmLGQAmvAE1kKhsoTrBXxD1UUc=;
 b=dDIMiCCMKVAUzbOVFbp1fIkvkccUkfpFnLxXC0dUdZx2rW6Y0q1VniCJ
 U8ncI/XPt0wqqaXvFYhgm3pZcq+J+lJ8LCpgAsCHeUtKOSEYfFYVaZ+I3
 r0UzfgRRoK8/Q6447jKOJnt0J8Zm5OUoQyneYq3ezNXfEEGHIVIEKC/S2
 +4IS2CEO6GfAugGlSpWr8kS7MLNQkALFFDDV3W9S6sWViiSW8GTLzsAxL
 EsJ4+UKfBd9RDu2Z6EwmiSiqRrtxUi7bUFgKnPFtcuRLhCMYKgPVhas6R
 pgIVmA6B8UYiWmPExiQhuAU/pTQ2g8OqG38kVL50V6WECN5WCWMSU/IIq Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10296"; a="258559422"
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="258559422"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 02:10:22 -0700
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="561760180"
Received: from mhenry-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.10.83])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 02:10:21 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 25 Mar 2022 09:09:58 +0000
Message-Id: <20220325090958.408654-3-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220325090958.408654-1-matthew.auld@intel.com>
References: <20220325090958.408654-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v2 3/3] tests/gem_lmem_swapping: reduce
 the timeout
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

300s is way too much for some BAT test. Drop it down to 45s.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Nirmoy Das <nirmoy.das@linux.intel.com>
Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 tests/i915/gem_lmem_swapping.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tests/i915/gem_lmem_swapping.c b/tests/i915/gem_lmem_swapping.c
index 526835cc..31644bcd 100644
--- a/tests/i915/gem_lmem_swapping.c
+++ b/tests/i915/gem_lmem_swapping.c
@@ -219,7 +219,7 @@ static void __do_evict(int i915,
 	 * For TEST_MULTI runs, make each object counts a loop to
 	 * avoid excessive run times.
 	 */
-	for (l = 0; l < params->loops && igt_seconds_elapsed(&t) < 300; l += num) {
+	for (l = 0; l < params->loops && igt_seconds_elapsed(&t) < 45; l += num) {
 		unsigned int idx = rand() % params->count;
 
 		num = params->flags & TEST_MULTI ? rand() % max_swap_in + 1 : 1;
-- 
2.34.1

