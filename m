Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB0D3560791
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jun 2022 19:44:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21C0910EA19;
	Wed, 29 Jun 2022 17:44:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1BEA10E723
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jun 2022 17:44:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656524657; x=1688060657;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=udj3XNpMYsGxDQ46vLlMi05s2tNJdE9uLt4dgXOGH+4=;
 b=CIvCo4soCIJyZMyi/lhwiYeRPRJaloL4vF3nLvR0mn8Roii080521Aq+
 PGd9VyUj0mwHduX9wcutErq82B+5oHzxzBYr9+EosLmu4YpdtsKZghLmP
 e3cHRjrOoACoGg8Z7ClAg+WPwDGNQrIIoW/Vd6sYEBpsUDEl3pLCI0l+v
 TBTIj699akv1j0tnBQC9dixa9WOm2c2/UgRQEtkFfkoHwbUlswmCH/cIS
 BdlCsWR475nJx4r2Ry6m1r8lLzP72YOQhy9l0zLsD/P58A+dkgBZwuSJ6
 Kdrd7GCasIRArP2TvVvbAcrdtDqfYbHEbHBVyC6oS0PfHdprpkWkR3JxN w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="279643955"
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="279643955"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 10:44:17 -0700
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="595331080"
Received: from nwalsh-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.202.136])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 10:44:16 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Jun 2022 18:43:50 +0100
Message-Id: <20220629174350.384910-13-matthew.auld@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220629174350.384910-1-matthew.auld@intel.com>
References: <20220629174350.384910-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI v4 13/13] drm/i915: turn on small BAR support
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

With the uAPI in place we should now have enough in place to ensure a
working system on small BAR configurations.

v2: (Nirmoy & Thomas):
  - s/full BAR/Resizable BAR/ which is hopefully more easily
    understood by users.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Jon Bloomfield <jon.bloomfield@intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Jordan Justen <jordan.l.justen@intel.com>
Cc: Kenneth Graunke <kenneth@whitecape.org>
Cc: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_region_lmem.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
index d09b996a9759..fa7b86f83e7b 100644
--- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
@@ -112,12 +112,6 @@ static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
 		flat_ccs_base = intel_gt_mcr_read_any(gt, XEHP_FLAT_CCS_BASE_ADDR);
 		flat_ccs_base = (flat_ccs_base >> XEHP_CCS_BASE_SHIFT) * SZ_64K;
 
-		/* FIXME: Remove this when we have small-bar enabled */
-		if (pci_resource_len(pdev, 2) < lmem_size) {
-			drm_err(&i915->drm, "System requires small-BAR support, which is currently unsupported on this kernel\n");
-			return ERR_PTR(-EINVAL);
-		}
-
 		if (GEM_WARN_ON(lmem_size < flat_ccs_base))
 			return ERR_PTR(-EIO);
 
@@ -170,6 +164,10 @@ static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
 	drm_info(&i915->drm, "Local memory available: %pa\n",
 		 &lmem_size);
 
+	if (io_size < lmem_size)
+		drm_info(&i915->drm, "Using a reduced BAR size of %lluMiB. Consider enabling 'Resizable BAR' or similar, if available in the BIOS.\n",
+			 (u64)io_size >> 20);
+
 	return mem;
 
 err_region_put:
-- 
2.36.1

