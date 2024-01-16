Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A7CB82EA69
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jan 2024 08:56:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D61B210E414;
	Tue, 16 Jan 2024 07:56:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07A7010E426
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jan 2024 07:56:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705391810; x=1736927810;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8dxWh6TNizUdB+//aWC3efgWTyrpjjfsf6Mu2Gib5us=;
 b=BobcUO4ivT08IClWpo3BLjE+viK+NrHVN6JMoHC/FMS6PWpYY1279JyV
 QkfrmispDPFKtj/DGZ9noIf7QCKNZvTlvZyd7ioAySMKmwccA1BhgePDV
 XI2/tX3YoGIgfrjvUQyDlKA5YJWmF0O0zov/VFJM5NxNjb5bpCzubcgmB
 7ODUv5+KjTyTLB0OS7t3aP22chgeC3sL2m/XF3zb1t67mlMyTX9ovDJeQ
 SnZ6Xqw4+IvlX1h1ev6aqxp5pKueaC3+rkgRNdZGyQLqg/nD7nyLLeNvL
 lGAgp/EqE9I1zivx4tQslHUl31df0IdZXXboEPXDzTj/qTF9cZLv3NZaa A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10954"; a="430948496"
X-IronPort-AV: E=Sophos;i="6.04,198,1695711600"; d="scan'208";a="430948496"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2024 23:56:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10954"; a="776946967"
X-IronPort-AV: E=Sophos;i="6.04,198,1695711600"; d="scan'208";a="776946967"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 15 Jan 2024 23:56:47 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 16 Jan 2024 09:56:46 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 03/16] drm/i915: Remove ad-hoc lmem/stolen debugs
Date: Tue, 16 Jan 2024 09:56:23 +0200
Message-ID: <20240116075636.6121-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
References: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
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

