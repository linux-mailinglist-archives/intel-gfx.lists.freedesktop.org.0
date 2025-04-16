Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C83F8A8B67E
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Apr 2025 12:12:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47A1E10E8C2;
	Wed, 16 Apr 2025 10:12:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XmHRo8P5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBA1910E8C2
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Apr 2025 10:12:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744798367; x=1776334367;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=foI/x52pD+EXl0q9Nf9mPDmv0M4zTVluk+AZtvXCN7U=;
 b=XmHRo8P5DuR3c4MtA4maOEqClWy0j48uIekvrNiZKEh4rzA3rXd5exO6
 r1FSm/uiCvqhIW02dOPDydYoFKHVy0SFCL+YvuqY/gQDdsSAAjZdROMlk
 pnn1SxpEEQuy8hOM8a0y7oD1Q1nXFV74FnFvl9HM7NMcSH91eaOZsDt77
 60N37Nuj7kJBlUQULz+fj+k+cEZgnwZJgwKREt8+KibKuswk8mHqil9tH
 9CXA/Nr9s21jwE8GwPQQ9o7M/GcP3oCndioxjG0gREpMEXMG9+hOvJpkK
 MvFfDGhKQb5CpzCPYjbnSh0yNdLo4Xjcaa76MYHJptZGdScYKELqfkk/m Q==;
X-CSE-ConnectionGUID: So+VvQVGREq/5ZHVgfMwIg==
X-CSE-MsgGUID: QQLWrG97S/6MmSZwetMkDg==
X-IronPort-AV: E=McAfee;i="6700,10204,11404"; a="46427996"
X-IronPort-AV: E=Sophos;i="6.15,215,1739865600"; d="scan'208";a="46427996"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 03:12:46 -0700
X-CSE-ConnectionGUID: OAPTIRiRQ8SIC3LkR2Ding==
X-CSE-MsgGUID: CmpoiX8uQ9GARVh/epnoUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,215,1739865600"; d="scan'208";a="130963590"
Received: from unknown (HELO nitin-Super-Server.iind.intel.com)
 ([10.190.238.72])
 by orviesa007.jf.intel.com with ESMTP; 16 Apr 2025 03:12:44 -0700
From: Nitin Gote <nitin.r.gote@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: andi.shyti@intel.com, chris.p.wilson@linux.intel.com,
 nitin.r.gote@intel.com
Subject: [PATCH] drm/i915/gt: Add delay to let engine resumes properly
Date: Wed, 16 Apr 2025 16:06:40 +0530
Message-Id: <20250416103640.212269-1-nitin.r.gote@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Sometimes engine reset fails because the engine resumes from an
incorrect RING_HEAD. Engine head failed to set to zero even after
writing into it. This is a timing issue and we experimented
different values and found out that 20ms delay works best based
on testing.

So, add a 20ms delay to let engine resumes from correct RING_HEAD.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13968
Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
---
Hi,

Here, using wait_for_atomic() instead of any delay functions like
udelay/mdelay/flseep to avoid error "BUG: scheduling while atomic",
which observed during testing.

-Nitin

 drivers/gpu/drm/i915/gt/intel_ring_submission.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 6e9977b2d180..a876a34455f1 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -365,7 +365,13 @@ static void reset_prepare(struct intel_engine_cs *engine)
 			     ENGINE_READ_FW(engine, RING_HEAD),
 			     ENGINE_READ_FW(engine, RING_TAIL),
 			     ENGINE_READ_FW(engine, RING_START));
-		if (!stop_ring(engine)) {
+		/*
+		 * Sometimes engine head failed to set to zero even after writing into it.
+		 * Use wait_for_atomic() with 20ms delay to let engine resumes from
+		 * correct RING_HEAD. Experimented different values and determined
+		 * that 20ms works best based on testing.
+		 */
+		if (wait_for_atomic((!stop_ring(engine) == 0), 20)) {
 			drm_err(&engine->i915->drm,
 				"failed to set %s head to zero "
 				"ctl %08x head %08x tail %08x start %08x\n",
-- 
2.25.1

