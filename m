Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC83F8106D1
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 01:42:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8574F10E695;
	Wed, 13 Dec 2023 00:42:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E03FC10E695
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 00:42:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702428170; x=1733964170;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=KXMsPFyvuq1DM7hzLTaSV/wb6g9OFyy2AuOvWnytReY=;
 b=mwizFDn07eJbK+wZ0grFZMmpPvOOktss+o5GElLobHLAghaRW2G9sQm6
 KHqMs6TJSYeMrgmGdADGuI1X6CZBl+4C6D+rQUkQcCDUwYpiprxxAnrME
 QxBiAkBYxhy7QMmhxK/mRw9ebdQS+JB7BTklSZnovvDkH8hEas4JC0qYT
 IiWW/Bcuj8dSgzx7xFLRYeJMxqIsSBWYUgZdX1rX/AfddfQRBtd3MmcPO
 qd2QnCzzcMwyqWq2OxITxMrpiQNDq8Hz+dhJNU5Lunc9e8kpDd/4D4Jah
 06Yy0vftK9twM/6T8FiwMAyClaIbxWG7X3aknsHCz/h+0ZiarcOXQdlcU g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="385309646"
X-IronPort-AV: E=Sophos;i="6.04,271,1695711600"; d="scan'208";a="385309646"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 16:42:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="767011771"
X-IronPort-AV: E=Sophos;i="6.04,271,1695711600"; d="scan'208";a="767011771"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 12 Dec 2023 16:42:48 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 13 Dec 2023 02:42:48 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 03/12] drm/i915: Remove ad-hoc lmem/stolen debugs
Date: Wed, 13 Dec 2023 02:42:28 +0200
Message-ID: <20231213004237.20375-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231213004237.20375-1-ville.syrjala@linux.intel.com>
References: <20231213004237.20375-1-ville.syrjala@linux.intel.com>
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

