Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 869F181460E
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Dec 2023 11:59:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 093E410E9D2;
	Fri, 15 Dec 2023 10:59:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE9C010E9D2
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Dec 2023 10:59:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702637984; x=1734173984;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8dxWh6TNizUdB+//aWC3efgWTyrpjjfsf6Mu2Gib5us=;
 b=mRyr8e3vHeF5s58MJq/X7B/O2sNnY9H8H/Db1IqBZaY9TfNZt/bQI1CG
 3loq7sKUh4a58Rh4rBtoJ6peoC5Jsfxg+KRAhKuxx9d8Pwwvm6a7Jj9g3
 B58jbZfoMSMAL8fCLSCektzJAH8axLQ2CTSnU4pAopzsJuw4HSmoclI5q
 +zcDiKdruj8AtoRqToXx3/Gpey8G5IUPpSyWw6CPydquKkvnf5gjpwGUw
 J2qGHmFzRteA7q0/H0tW/of5aelxh1EWy4uKcq3fERc7OB0zBqtmOyzK4
 wBSNO5M73p7yyAwRLYaBfsNsrRGcR+f7slN5j8Doy0PkBc1HavAR8lrQ3 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="394136753"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; d="scan'208";a="394136753"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2023 02:59:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="767935158"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; d="scan'208";a="767935158"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 15 Dec 2023 02:59:41 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Dec 2023 12:59:40 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 03/15] drm/i915: Remove ad-hoc lmem/stolen debugs
Date: Fri, 15 Dec 2023 12:59:17 +0200
Message-ID: <20231215105929.29568-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231215105929.29568-1-ville.syrjala@linux.intel.com>
References: <20231215105929.29568-1-ville.syrjala@linux.intel.com>
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Now that intel_memory_regions_hw_probe() prints out each and every
memory region there's no reason to have ad-hoc debugs to do similar
things elsewhere.

Cc: Paz Zcharya <pazz@chromium.org>
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
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
2.41.0

