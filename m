Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACFF38106D0
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 01:42:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7B1E10E228;
	Wed, 13 Dec 2023 00:42:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB76710E228
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 00:42:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702428167; x=1733964167;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ZUtL3LFcWEuuV4abLn0HbIbV7l29RbmJAubj0F1ECTw=;
 b=mCKCHSoVyIge9PyXHsDwJ+TWr5ttB3NGvuQ8RdUNQ6Q1W5EGoR7pF8rY
 ABLQMR8/0sjcJGLUZ5NHtLod8cB13BV3/xvfVcBySDeTWLMJ3zQ7JTH+X
 dm+WHO3rR9WayhslTPdv8upCLp1KS3No20XU0SwFVNPlPEnH6aB8L22eK
 amE/CKby/ZS7R9+cQGdt8cLokVb5IoAoMqikd6l4ReNpGhLjK4alS+ZMB
 boSoQQel0fFtFpVzu+WM3T+ui2Me7/1iGvNrQl3Z22NIGIDLXeYVCKmzU
 1IsWgG6IOQIAmWsNXkjHyLzJSjbbvDGjvIu4nOAWTireLC3XaGpdPE4tx A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="385309639"
X-IronPort-AV: E=Sophos;i="6.04,271,1695711600"; d="scan'208";a="385309639"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 16:42:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="767011758"
X-IronPort-AV: E=Sophos;i="6.04,271,1695711600"; d="scan'208";a="767011758"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 12 Dec 2023 16:42:45 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 13 Dec 2023 02:42:44 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 02/12] drm/i915: Print memory region info during probe
Date: Wed, 13 Dec 2023 02:42:27 +0200
Message-ID: <20231213004237.20375-3-ville.syrjala@linux.intel.com>
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

Dump the details about every memory region into dmesg at probe time.
Avoids having to dig those out from random places when debugging stuff.

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

