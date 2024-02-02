Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71E5F847C6E
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 23:43:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C962F10EFEE;
	Fri,  2 Feb 2024 22:43:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bHvE/t8J";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CD2D10EFEE
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 22:43:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706913831; x=1738449831;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YmBdiCFc5gPWhjorMBXvfx065zN0cmtErt/U+iMwDEk=;
 b=bHvE/t8JjFmK7dQSbWTARrC3+s2HrqHlaqbe+VagFoPWTON9OwRMdwWS
 VKDO7I40zGBvZWfQy5SXgsCVxIOfbZCKHSeCNXbNPG9VrWAfzNIGkyL5o
 ImUbBwTJdwVJHAMVBkYru2KdB55neDIX+HLVkOZTc+L8ubLcz0Ji7py/X
 S6dmCFgTCq9+73gSKERB36pl+bHY6BQH3QT7jwzb+luJZ5igYMRmD3/WW
 UFwgJbWHgN7jb/pJSPU+6aerT0Skom6dvmyoGtxqMmaf3KnBg7T72Uex4
 d9gxVQ286kOK6mYZp8YwuOONrxGhpCm96df0sTOrJHmE9CI5FUUms6iul w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="153713"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; 
   d="scan'208";a="153713"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 14:43:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="823331998"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; d="scan'208";a="823331998"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 02 Feb 2024 14:43:48 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 03 Feb 2024 00:43:47 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, Andrzej Hajda <andrzej.hajda@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>, Paz Zcharya <pazz@chromium.org>
Subject: [PATCH v4 02/16] drm/i915: Print memory region info during probe
Date: Sat,  3 Feb 2024 00:43:26 +0200
Message-ID: <20240202224340.30647-3-ville.syrjala@linux.intel.com>
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

Dump the details about every memory region into dmesg at probe time.
Avoids having to dig those out from random places when debugging stuff.

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
Tested-by: Paz Zcharya <pazz@chromium.org>
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
2.43.0

