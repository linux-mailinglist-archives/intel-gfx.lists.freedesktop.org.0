Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C784A9E0C
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Feb 2022 18:45:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D46910EF08;
	Fri,  4 Feb 2022 17:45:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D91510EEE2;
 Fri,  4 Feb 2022 17:45:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643996711; x=1675532711;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Y0ZMA6Um/DZ0QWAuNUEolwjktxzib+VsXrZoC0GFM6k=;
 b=JDY7aqc7qwkbhhoHOYyPsVxthzdrDfg4D91S6wbCInKK7mAF2YpCUjfK
 2sjLym7ZWbfGyZpGopzgkdR3dEssqoYF7TaYbucZv+GpQJH/FicRK0jat
 s8QieR49KcBz8LH07q4pap6eH3D9ikoa3CgzH72NWm//bTtuVpJBjtQce
 2iPRhFZO37S+1CqmHGOzM6/7ONO73yNu5YZJcJPSY8D0IV4GZT8uf98hw
 DhGnX3TEJ+J00u2qlAQ8xkOftRNIpVthBXVO+fhRWXv9Wus5Bz23YFlip
 nkHMR8Y2Q0XYrbUk6qNCZaC0RPwFDywh/I/DYCwOg3mfBn6U43r2AGjq/ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10248"; a="247242181"
X-IronPort-AV: E=Sophos;i="5.88,343,1635231600"; d="scan'208";a="247242181"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2022 09:45:10 -0800
X-IronPort-AV: E=Sophos;i="5.88,343,1635231600"; d="scan'208";a="539240820"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2022 09:45:09 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Fri,  4 Feb 2022 09:44:29 -0800
Message-Id: <20220204174436.830121-13-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220204174436.830121-1-lucas.demarchi@intel.com>
References: <20220204174436.830121-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 12/19] drm/i915/guc: Replace check for golden
 context size
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
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In the other places in this function, guc->ads_map is being protected
from access when it's not yet set. However the last check is actually
about guc->ads_golden_ctxt_size been set before.  These checks should
always match as the size is initialized on the first call to
guc_prep_golden_context(), but it's clearer if we have a single return
and check for guc->ads_golden_ctxt_size.

This is just a readability improvement, no change in behavior.

Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index 80fbab831536..098a4756e8c5 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -461,10 +461,10 @@ static int guc_prep_golden_context(struct intel_guc *guc)
 		addr_ggtt += alloc_size;
 	}
 
-	if (iosys_map_is_null(&guc->ads_map))
-		return total_size;
+	/* Make sure current size matches what we calculated previously */
+	if (guc->ads_golden_ctxt_size)
+		GEM_BUG_ON(guc->ads_golden_ctxt_size != total_size);
 
-	GEM_BUG_ON(guc->ads_golden_ctxt_size != total_size);
 	return total_size;
 }
 
-- 
2.35.1

