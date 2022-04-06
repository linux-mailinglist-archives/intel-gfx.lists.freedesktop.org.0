Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B65C84F69E4
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Apr 2022 21:30:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 152AD10E15A;
	Wed,  6 Apr 2022 19:30:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90AFD10E064;
 Wed,  6 Apr 2022 19:30:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649273448; x=1680809448;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=oED3oY2DhZ89QHjPp8iM67nyQqDGv0O2pH+vEboa3K4=;
 b=cGR+lEdA0sRdmAtgrXdWTjrJLhlVYKYeTypyXN3bPlegJ2wQjRR9e0fj
 YDFa/YRZ5BWdJzvdSKNpSgxrBR2tgtVArmZjrIqbFcxOWMSYwZeBYz0FW
 tDpqMDUOyondknXor4xsoGxMO0Q+a5Qb3U9FfF6B+G+xHWIsq6nsQakei
 Le6P5lVDDtf9k4MimlxgFsresTF9bv/5I6EuPy/41aXdhGSk+QkjiPFwK
 zkLGEr1zk/dnTWdF/SMNALMJ14hmzdLHK4mg54+uiQ+V89m79iy+i3NaW
 5WwxvceYFHjy3XYFMBWhqCuRmtGpWKQNRJhyLf0K4oZb5lkinPE6FEKqD g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10309"; a="261316786"
X-IronPort-AV: E=Sophos;i="5.90,240,1643702400"; d="scan'208";a="261316786"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2022 12:30:48 -0700
X-IronPort-AV: E=Sophos;i="5.90,240,1643702400"; d="scan'208";a="549690306"
Received: from amoneill-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.21.22])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2022 12:30:46 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 Apr 2022 20:30:36 +0100
Message-Id: <20220406193037.1060769-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/selftests: fixup min_alignment
 usage
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
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Trying to cast the region id into the region type doesn't work too well,
since the i915_vm_min_alignment() won't give us the correct value for
the stolen-lmem case.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Nirmoy Das <nirmoy.das@linux.intel.com>
---
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
index 5c9bfa409ff5..bccc49a8ab5e 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
@@ -1150,7 +1150,7 @@ static int misaligned_pin(struct i915_address_space *vm,
 		flags |= PIN_GLOBAL;
 
 	for_each_memory_region(mr, vm->i915, id) {
-		u64 min_alignment = i915_vm_min_alignment(vm, (enum intel_memory_type)id);
+		u64 min_alignment = i915_vm_min_alignment(vm, mr->type);
 		u64 size = min_alignment;
 		u64 addr = round_down(hole_start + (hole_size / 2), min_alignment);
 
-- 
2.34.1

