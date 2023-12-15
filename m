Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2034281460D
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Dec 2023 11:59:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 462EE10E9CE;
	Fri, 15 Dec 2023 10:59:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1ECC710E9CE
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Dec 2023 10:59:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702637981; x=1734173981;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GKXXIRT2TOC9JvGYpQjcp3OILVUT/sUub+bZucSLE2c=;
 b=T9lVWxG/rW2JIwRDokv9n+KA/HiLSApeYULmm4TAZR0+ibGn7U8oydSG
 cy6Tn4EMyzE5gWDA7/KQ+4R/aVr9Z5ERzLx8ldjbHpIZouvNHDQfyid08
 H6cBFS4FT+/SrTvQ0iIQ7wE042WyE0VliIo3gdio8jHgixQhiH1vhnQ79
 QFkW/oPtaNQV+1n4xrr9/GtH/aANWZesmlJiuH+OrjN57COdtcRwrakas
 SFl/EWhXVL23cF9o2N+a1tsBrDUrzEHv/QFpaBmgqnWPP1L8TG3qoIYT5
 mI3n1aTTAvAh9CLFGPxF7hP4h9Xoh7tpiSMdZ0IAzUu/NMfapyAqsGWsk A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="394136736"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; d="scan'208";a="394136736"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2023 02:59:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="767935155"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; d="scan'208";a="767935155"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 15 Dec 2023 02:59:37 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Dec 2023 12:59:37 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 02/15] drm/i915: Print memory region info during probe
Date: Fri, 15 Dec 2023 12:59:16 +0200
Message-ID: <20231215105929.29568-3-ville.syrjala@linux.intel.com>
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

Dump the details about every memory region into dmesg at probe time.
Avoids having to dig those out from random places when debugging stuff.

Cc: Paz Zcharya <pazz@chromium.org>
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_memory_region.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
index b2708f8cac2a..52d998e5c21a 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/intel_memory_region.c
@@ -372,6 +372,24 @@ int intel_memory_regions_hw_probe(struct drm_i915_private *i915)
 		i915->mm.regions[i] = mem;
 	}
 
+	for (i = 0; i < ARRAY_SIZE(i915->mm.regions); i++) {
+		struct intel_memory_region *mem = i915->mm.regions[i];
+		u64 region_size, io_size;
+
+		if (!mem)
+			continue;
+
+		region_size = resource_size(&mem->region) >> 20;
+		io_size = resource_size(&mem->io) >> 20;
+
+		if (resource_size(&mem->io))
+			drm_dbg(&i915->drm, "Memory region(%d): %s: %llu MiB %pR, io: %llu MiB %pR\n",
+				mem->id, mem->name, region_size, &mem->region, io_size, &mem->io);
+		else
+			drm_dbg(&i915->drm, "Memory region(%d): %s: %llu MiB %pR, io: n/a\n",
+				mem->id, mem->name, region_size, &mem->region);
+	}
+
 	return 0;
 
 out_cleanup:
-- 
2.41.0

