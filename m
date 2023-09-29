Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EC807B3BA0
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Sep 2023 22:51:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74D9210E4FE;
	Fri, 29 Sep 2023 20:51:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D45E10E157
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Sep 2023 20:51:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696020692; x=1727556692;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gUZNqviB2SZhoXUVF69fIaZfmakBpMdt7WS7nqxokPk=;
 b=KO4oaB0llbKqujpxq1ehOxqaIztHFOYrydN9x8yxh+80e/QooSqIX7ww
 p5rbOvbYCAyOkGGrbPFCvu2e3Z+XLh/d1B2f2RbPS4Ssr1zNZJR+ZJZ0q
 ai5CtRzbD120MBiKB57Rs+WwWb2hiOdHZYEZ/GkJDl3m/N+LKLOySFM2/
 tK28V+n6+3eFxKaVIQ1YlLlmuKhAcIhQ6sC4ThZ1RT/dFzZpw+hd3quD1
 JudAVOILAwDoi6cVJPGkXMS9jmXnCeL1uSxfa0OecpnhWD99MFdHjhwyr
 f+cnLaWutSS5WdNP5rlOpCTXuxbnwQ5dxTtEVIcUYfqemlXYQu9LDsXDH A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10848"; a="386241341"
X-IronPort-AV: E=Sophos;i="6.03,188,1694761200"; d="scan'208";a="386241341"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2023 13:29:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10848"; a="815699966"
X-IronPort-AV: E=Sophos;i="6.03,188,1694761200"; d="scan'208";a="815699966"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2023 13:29:21 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 29 Sep 2023 13:18:37 -0700
Message-Id: <20230929201837.849299-4-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230929201837.849299-1-jonathan.cavitt@intel.com>
References: <20230929201837.849299-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/4] drm/i915: Invalidate the TLBs on each GT
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
Cc: janusz.krzysztofik@intel.com, andi.shyti@intel.com,
 matthew.d.roper@intel.com, jonathan.cavitt@intel.com,
 umesh.nirlige.ramappa@intel.com, chris.p.wilson@linux.intel.com,
 nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Chris Wilson <chris.p.wilson@intel.com>

With multi-GT devices, the object may have been bound on each GT and so
we need to invalidate the TLBs across all GT before releasing the pages
back to the system.

Signed-off-by: Chris Wilson <chris.p.wilson@intel.com>
Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
CC: Matt Roper <matthew.d.roper@intel.com>
CC: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_pages.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
index 6b6d22c194110..0ba955611dfb5 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
@@ -198,7 +198,7 @@ static void flush_tlb_invalidate(struct drm_i915_gem_object *obj)
 
 	for_each_gt(gt, i915, id) {
 		if (!obj->mm.tlb[id])
-			return;
+			continue;
 
 		intel_gt_invalidate_tlb_full(gt, obj->mm.tlb[id]);
 		obj->mm.tlb[id] = 0;
-- 
2.25.1

