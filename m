Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41DAE8B9A8C
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2024 14:14:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96F5F10E747;
	Thu,  2 May 2024 12:14:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jxscjxPE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 482DE10E747
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2024 12:14:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714652068; x=1746188068;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9vrEWc7oOkc7vA7QC7UFFQzMdjtmHHhUy0swQy+VKSo=;
 b=jxscjxPEmLtZh77gTwWAwcrxr16ofONtDSvtJFMP4FJ+wzYYxlIGB7Vp
 Md52FlmSEpuk1B0TWx8MtRx2dSDb3a5QuwevNhRZ+X+g5RvpfMoOCVvCx
 /P1R6D4qsSCLu+kGLUAomuHGq4zPF8dngvBpcpsERoPrG+ACFrhS+N2vP
 WrQ8u3ToT4xh8D/VkP1tBE5iHdB0i60CedNKgcpFljdjM6Tag51uoALGy
 NtdKhSTlAnawiUI59lQxZuqOzX1jkhIga4Oh/Ggpb53csqNsTQcME4WGD
 NH6aK+UIvDjpbCDQ/7dZt2aRgqU/5Q6WRw52PjKtPTHv3+bfHWuXYN1bz w==;
X-CSE-ConnectionGUID: 8J16KzShQYGmMzQLSQrzWg==
X-CSE-MsgGUID: j3MMGoJSRwK9o8AnWdbWEg==
X-IronPort-AV: E=McAfee;i="6600,9927,11061"; a="10344448"
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="10344448"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2024 05:14:27 -0700
X-CSE-ConnectionGUID: O0qf7SlhR2uRURR8vl3mYQ==
X-CSE-MsgGUID: 5LxrKKiIRE2/nOzgXCpL6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="27108188"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 02 May 2024 05:14:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 02 May 2024 15:14:23 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/3] drm/i915: Fix HAS_REGION() usage in intel_gt_probe_lmem()
Date: Thu,  2 May 2024 15:14:21 +0300
Message-ID: <20240502121423.1002-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
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

HAS_REGION() takes a bitmask, not the region ID. This causes the
GEM_BUG_ON() to assert that the SMEM region is available rather
than the intended LMEM region. No real harm since SMEM is always
available, but also not checking what was intended.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 626b166e67ef..5a7ecf823ae6 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -105,7 +105,7 @@ static int intel_gt_probe_lmem(struct intel_gt *gt)
 
 	intel_memory_region_set_name(mem, "local%u", mem->instance);
 
-	GEM_BUG_ON(!HAS_REGION(i915, id));
+	GEM_BUG_ON(!HAS_REGION(i915, BIT(id)));
 	GEM_BUG_ON(i915->mm.regions[id]);
 	i915->mm.regions[id] = mem;
 
-- 
2.43.2

