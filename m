Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 498629B5E05
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 09:38:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F70910E75D;
	Wed, 30 Oct 2024 08:38:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UhHam3sE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2144510E75D;
 Wed, 30 Oct 2024 08:38:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730277521; x=1761813521;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4/rLEAmFlHp23flk99P6eyjjFH8YOesEG0mWlxAX7c0=;
 b=UhHam3sEnw08nKTEEkIW/HhJtDodJdGqPfJUbZorZRPyoTJW1k6xbM6q
 qh7tXoMHNUCCQKT/rH/yzy3wBPBfoK3/Y4F//FjAZyFuXIkyCIYJNDpKB
 lmEQj9CehJmxhiqsOVZv2ZvZVDdFZPTbhoLi5pjfIwpr90mKywmPWVb8E
 lF0mYRKzJ/gIPj/fsBU5rkN0KhmMDEGgnzrXLVJv8lAPXDcHFzUlQnwJD
 vI6rp9w9Ge4GYBr6Tf31ChLTUClGy36FnyymV/a8xWMp6BdkLdBiuc7JY
 B4Vbdi9T/Q4Vi6dniQ9vL0r339NWUrZbme5yIoh9m5aae+Ze2vxbRpxpt A==;
X-CSE-ConnectionGUID: mr5ShvdjQ5WCUbCLhyJ7Ow==
X-CSE-MsgGUID: ArOXKkFkRiivKpStY/9SpQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30112710"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30112710"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 01:38:40 -0700
X-CSE-ConnectionGUID: n0xcDH5nTyaWCy6lp/UikA==
X-CSE-MsgGUID: 6kx5SJgDReufkuAy8xxEdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,244,1725346800"; d="scan'208";a="82407987"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 01:38:38 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH] drm/i915/dp: Limit max compressed bpp to 18 when forcing DSC
Date: Wed, 30 Oct 2024 14:11:00 +0530
Message-ID: <20241030084100.1361689-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
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

While forcing DSC when it is not actually required, the max compressed
bpp from the source gets picked for compression for some pipe bpps.
Apparently, when DSC is not required, forcing DSC to the maximum compressed
bpp seems to cause underruns.

To avoid this, limit the max compressed bpp to 18 while forcing DSC. This
value works across platforms with different pipe bpps and prevents
underruns.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 28fa5e2d0c33..0ce29cefaa13 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2021,6 +2021,15 @@ static int dsc_src_max_compressed_bpp(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 
+	/*
+	 * Forcing DSC and using the platform's max compressed bpp is seen to cause
+	 * underruns. Since DSC isn't needed in these cases, limit the
+	 * max compressed bpp to 18, which is a safe value across platforms with different
+	 * pipe bpps.
+	 */
+	if (intel_dp->force_dsc_en)
+		return 18;
+
 	/*
 	 * Max Compressed bpp for Gen 13+ is 27bpp.
 	 * For earlier platform is 23bpp. (Bspec:49259).
-- 
2.45.2

