Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3187C4AEA5D
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 07:30:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D844A10E43E;
	Wed,  9 Feb 2022 06:30:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62A9B10E3C7;
 Wed,  9 Feb 2022 06:30:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644388230; x=1675924230;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=n5RKJcp81B88J6tTgVRUp4ooYKldFrNbNiKg6W8kZms=;
 b=Ru2yLBESOwlTwTojpzCJ9NKCO8kXC8NS6NEjg788nBXL5CCA5LJf03bF
 pVrmXvSvpa08mxFfrquIbm7NXaH/+SUenQoyR4jo7PG9EX4mA4y6Xsn67
 4pQDqs7JfWcJ1Q8LAkpjH0DBn91TyrtJBnWtlxYwnmjorWihmlynMsT+M
 de8zsQGwuIz+WDj3XIul2RuCuI53jsDe8tV04AT+c4hCcbKbveoCaB9rK
 /KAbsqJHIoPr7DZak07DZhA0cuTE9tIFAh+4CsN9ABRdE1k/wUmJH2IkG
 lKl6m1AYdJxeAj7DJse/FHQAGX/j15vuGjgJzg0+FiMYSdyodVjyqdvhx A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="248893161"
X-IronPort-AV: E=Sophos;i="5.88,354,1635231600"; d="scan'208";a="248893161"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 22:30:29 -0800
X-IronPort-AV: E=Sophos;i="5.88,354,1635231600"; d="scan'208";a="585460776"
Received: from cdrhee-mobl1.amr.corp.intel.com (HELO mvcheng-desk2.intel.com)
 ([10.209.78.217])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 22:30:29 -0800
From: Michael Cheng <michael.cheng@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Feb 2022 22:30:21 -0800
Message-Id: <20220209063023.914205-5-michael.cheng@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220209063023.914205-1-michael.cheng@intel.com>
References: <20220209063023.914205-1-michael.cheng@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 4/6] drm/i915/gt: Re-work reset_csb
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
Cc: michael.cheng@intel.com, lucas.demarchi@intel.com,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Use drm_clflush_virt_range instead of directly invoking clflush. This
will prevent compiler errors when building for non-x86 architectures.

v2(Michael Cheng): Remove extra clflush

v3(Michael Cheng): Remove memory barrier since drm_clflush_virt_range
		   takes care of it.

Signed-off-by: Michael Cheng <michael.cheng@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_execlists_submission.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 28f2581d3046..cc561cfae808 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -2944,9 +2944,8 @@ reset_csb(struct intel_engine_cs *engine, struct i915_request **inactive)
 {
 	struct intel_engine_execlists * const execlists = &engine->execlists;
 
-	mb(); /* paranoia: read the CSB pointers from after the reset */
-	clflush(execlists->csb_write);
-	mb();
+	drm_clflush_virt_range(execlists->csb_write,
+			sizeof(execlists->csb_write));
 
 	inactive = process_csb(engine, inactive); /* drain preemption events */
 
-- 
2.25.1

