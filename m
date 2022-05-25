Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1002F53431A
	for <lists+intel-gfx@lfdr.de>; Wed, 25 May 2022 20:38:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80A1A10EBDB;
	Wed, 25 May 2022 18:37:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 881DF10EBD9;
 Wed, 25 May 2022 18:37:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653503876; x=1685039876;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NCplB0HVtJ4n3sFj1a2mxReRazxo8YOaCVAby+gDP1c=;
 b=I8FjH7N6IAo1K7ZqA4bkY3deL9onItgI1jlnUgOkOAxPVSKZrlRy9a7u
 yfRs/XLgDTJ49KggHAFDrhKRgVlQ5odo+kFbCA6lPInHIBhYixUOctPjz
 ngQcbSMB/qS3KD2gC+dyr1/CUExK19qXxWsadrSFD4QLRaFIO9x+oG3vA
 FreR8p2n1cCHtPH1CP7lkPSmbNzNRX485Pg5yHwD+HX9LKGaHB0GINUAR
 8mSi1NFU3HpekprklYulArepK27G4XjSlXCjG+vU7/H2KI3T3jkeESLbV
 UzZujxc1b3NyE04Wi4gk8EW+pQ7cMNo32W4qI5y2LtvxStf4fNx88dClE g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10358"; a="273906265"
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="273906265"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 11:37:56 -0700
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="526989534"
Received: from daithiby-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.5.16])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 11:37:54 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 25 May 2022 19:37:00 +0100
Message-Id: <20220525183702.490989-8-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.3
In-Reply-To: <20220525183702.490989-1-matthew.auld@intel.com>
References: <20220525183702.490989-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 7/9] lib/i915/intel_memory_region: plumb
 through the cpu_size
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

Will be useful later.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 lib/i915/intel_memory_region.c | 2 ++
 lib/i915/intel_memory_region.h | 1 +
 2 files changed, 3 insertions(+)

diff --git a/lib/i915/intel_memory_region.c b/lib/i915/intel_memory_region.c
index da81650d..2dd4c156 100644
--- a/lib/i915/intel_memory_region.c
+++ b/lib/i915/intel_memory_region.c
@@ -956,6 +956,8 @@ struct gem_memory_region *__gem_get_memory_regions(int i915)
 
 		r->ci = info->regions[i].region;
 		r->size = info->regions[i].probed_size;
+		/* XXX: replace with probed_cpu_visible_size */
+		r->cpu_size = info->regions[i].rsvd1[0];
 		if (r->size == -1ull)
 			r->size = intel_get_avail_ram_mb() << 20;
 
diff --git a/lib/i915/intel_memory_region.h b/lib/i915/intel_memory_region.h
index 5aa163dd..8ee1ed9b 100644
--- a/lib/i915/intel_memory_region.h
+++ b/lib/i915/intel_memory_region.h
@@ -155,6 +155,7 @@ struct gem_memory_region {
 
 	struct drm_i915_gem_memory_class_instance ci;
 	uint64_t size;
+	uint64_t cpu_size;
 };
 
 struct igt_collection *
-- 
2.34.3

