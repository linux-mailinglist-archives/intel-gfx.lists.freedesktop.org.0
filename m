Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74E46847C6F
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 23:43:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0BC410F015;
	Fri,  2 Feb 2024 22:43:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h8QM7oIr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 861A410F015
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 22:43:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706913835; x=1738449835;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=22Fmfh5JqFjLPVBv12uB/Q+CpWxrvlBHDqlhld/3MXc=;
 b=h8QM7oIrFw1H8IGUXIc1RuoBF/oBt0wbagGkmf33tiwTDBWQOzJshrq5
 J1Jl+PFxP75TmCw2Rrg3ue0JUeeOnQCpamIACLjzK8rBgTAtyl475Sh3o
 Frjg9L/M3SpmLwvk47EjSVQuZ+LUf884n3NaMq37I1LY0otDMT4dCvzif
 i4Uv7vasL7b4nD2DXNsT0zxibnY558iR74RIWB5TzVUOGY2sSGU5wuowm
 rwwM2RmiNRk5cHbYH5cBWEp6FyI3+tu83T5Q9mTco/aoCA5kXKp20wrxh
 YIy77Zs3ekbsmyUAjNdDQHSq7apgbNkOGzd8CvPLVmZHnRQL1dGlhY+JA w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="153719"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; 
   d="scan'208";a="153719"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 14:43:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="823332002"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; d="scan'208";a="823332002"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 02 Feb 2024 14:43:52 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 03 Feb 2024 00:43:51 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, Andrzej Hajda <andrzej.hajda@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>, Paz Zcharya <pazz@chromium.org>
Subject: [PATCH v4 03/16] drm/i915: Remove ad-hoc lmem/stolen debugs
Date: Sat,  3 Feb 2024 00:43:27 +0200
Message-ID: <20240202224340.30647-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240202224340.30647-1-ville.syrjala@linux.intel.com>
References: <20240202224340.30647-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Now that intel_memory_regions_hw_probe() prints out each and every
memory region there's no reason to have ad-hoc debugs to do similar
things elsewhere.

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
Tested-by: Paz Zcharya <pazz@chromium.org>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c  | 4 ----
 drivers/gpu/drm/i915/gt/intel_region_lmem.c | 3 ---
 2 files changed, 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index d2440c793f84..ee237043c302 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -828,7 +828,6 @@ static const struct intel_memory_region_ops i915_region_stolen_smem_ops = {
 
 static int init_stolen_lmem(struct intel_memory_region *mem)
 {
-	struct drm_i915_private *i915 = mem->i915;
 	int err;
 
 	if (GEM_WARN_ON(resource_size(&mem->region) == 0))
@@ -844,9 +843,6 @@ static int init_stolen_lmem(struct intel_memory_region *mem)
 	    !io_mapping_init_wc(&mem->iomap, mem->io.start, resource_size(&mem->io)))
 		goto err_cleanup;
 
-	drm_dbg(&i915->drm, "Stolen Local DSM: %pR\n", &mem->region);
-	drm_dbg(&i915->drm, "Stolen Local memory IO: %pR\n", &mem->io);
-
 	return 0;
 
 err_cleanup:
diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
index 6f96a6b70601..af357089da6e 100644
--- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
@@ -273,9 +273,6 @@ static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
 	if (err)
 		goto err_region_put;
 
-	drm_dbg(&i915->drm, "Local memory: %pR\n", &mem->region);
-	drm_dbg(&i915->drm, "Local memory IO: %pR\n", &mem->io);
-
 	if (io_size < lmem_size)
 		drm_info(&i915->drm, "Using a reduced BAR size of %lluMiB. Consider enabling 'Resizable BAR' or similar, if available in the BIOS.\n",
 			 (u64)io_size >> 20);
-- 
2.43.0

