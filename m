Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39B699A0B5D
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2024 15:24:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D99C10E6FD;
	Wed, 16 Oct 2024 13:24:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kN1UldbT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3665210E097
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2024 13:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729085040; x=1760621040;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=snogfWKry1NK+xutXL5UIFaGlIhlrbu9xtQzAQEAtyo=;
 b=kN1UldbTouT1yl00tROwEg1xzxViSZXbJySkZqbvIhIJd1ZkHnaMTKmX
 UjXG2U/dJhcogGqsl3DRi7YkfD3rPwiwRHuk9KgYeNTzFwgKyPZJtteAn
 y1k2ahf1+savow/IFGVejAgH+IcvX06eBmUmkGxDQzPZddvUuzuAi4oq4
 2kxynKhRm5KyDEp6XU0p45QrNUfuyzS52Dtb+H8WJHKrwsDhM/9oqzDrI
 eVUYkaix7x+Xs7kRW0REET1QUe326I33JGjuYRTQlIY4MMkymO18zCMzi
 IOgLocjMxpLgKg6lwGDAXsLAXbMhBx2eKF5IJBSm2q7j8ohIHkqy6w7iN w==;
X-CSE-ConnectionGUID: rZAGUDNyRB+1+kZNyg5AVg==
X-CSE-MsgGUID: nGZ9a++dTp6xVMIoey7dgw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="46005970"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="46005970"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 06:23:40 -0700
X-CSE-ConnectionGUID: FOUB25nhRUKH5ObGLFL+9g==
X-CSE-MsgGUID: i4DZhxFNQn2psI49uo+CEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,208,1725346800"; d="scan'208";a="78384455"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 06:23:39 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 3/8] drm/i915/dp: Initialize the source OUI write timestamp
 always
Date: Wed, 16 Oct 2024 16:24:00 +0300
Message-ID: <20241016132405.2231744-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20241016132405.2231744-1-imre.deak@intel.com>
References: <20241016132405.2231744-1-imre.deak@intel.com>
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

If the source OUI DPCD register value matches the expected Intel OUI
value, the write timestamp doesn't get updated leaving it at the 0
initial value if the OUI wasn't written before. This can lead to an
incorrect wait duration in intel_dp_wait_source_oui(), since jiffies is
not inited to 0 in general (on a 32 bit system INITIAL_JIFFIES is set to
5 minutes ahead of wrap-around). Fix this by intializing the write
timestamp in the above case as well.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3da06d25bc4ef..0b9981f7f1a68 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3414,8 +3414,11 @@ intel_edp_init_source_oui(struct intel_dp *intel_dp, bool careful)
 		if (drm_dp_dpcd_read(&intel_dp->aux, DP_SOURCE_OUI, buf, sizeof(buf)) < 0)
 			drm_err(&i915->drm, "Failed to read source OUI\n");
 
-		if (memcmp(oui, buf, sizeof(oui)) == 0)
+		if (memcmp(oui, buf, sizeof(oui)) == 0) {
+			/* Assume the OUI was written now. */
+			intel_dp->last_oui_write = jiffies;
 			return;
+		}
 	}
 
 	if (drm_dp_dpcd_write(&intel_dp->aux, DP_SOURCE_OUI, oui, sizeof(oui)) < 0)
-- 
2.44.2

