Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B69889AF979
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 08:02:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83A1C10E374;
	Fri, 25 Oct 2024 06:02:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mnduXuoc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCE3310E374;
 Fri, 25 Oct 2024 06:02:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729836125; x=1761372125;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0+VnajePGJn0Rhz1VQ8RRir4y8c8EsosToMhEwOtdb4=;
 b=mnduXuocrEVy+0ESDjkm0W2tVlqU2KEhcsg4nL3AsDxpuAQeiiWD1/e4
 mqG9j+te0lFIdPhaTUUH1Q9NaoX3sVwnKkpUYDfSw+tzzr+neBFuqMfeQ
 S2kOi30on2On0Ldyda9qTPE+CM4SULyrWJvV4acxnEtkeh8qV9qFlKNIp
 OjM5w3zGBqA4o5LgW+Im11H1dlyPdUYqe6sNX7PoIGqXJsagWZpY/GlO6
 /YoSeMdUNbgeHN/u55a6MHn0Gz/01WjVSLpDEZflzcN78FthH0RaYdsOm
 sqEdzpFNnVgPri4W7r3s2oOAKak9eAiFBwbZinxdlmYUMvMvzCMX6khwl Q==;
X-CSE-ConnectionGUID: QaqnLeHLS/6tgwdyvj6l7Q==
X-CSE-MsgGUID: 9wlHBwi9RsmxJBURGTuOOw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29620705"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29620705"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 23:02:05 -0700
X-CSE-ConnectionGUID: tVBiqPUDSAmUsggctLn+5w==
X-CSE-MsgGUID: oheKCwKJSOuM5Cy/xnx8kQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,231,1725346800"; d="scan'208";a="80734438"
Received: from unknown (HELO kandpal-X299-UD4-Pro.iind.intel.com)
 ([10.190.239.10])
 by orviesa009.jf.intel.com with ESMTP; 24 Oct 2024 23:02:03 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, matthew.d.roper@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 5/5] drm/i914/xe3lpd: Increase bigjoiner limitations
Date: Fri, 25 Oct 2024 11:31:36 +0530
Message-Id: <20241025060136.9884-6-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241025060136.9884-1-suraj.kandpal@intel.com>
References: <20241025060136.9884-1-suraj.kandpal@intel.com>
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

With 6k resolution support for a single crtc being added
bigjoiner will only come into picture when hdisplay > 6144

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7e29619ba040..9dd4610c749a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1315,14 +1315,17 @@ bool intel_dp_needs_joiner(struct intel_dp *intel_dp,
 			   int num_joined_pipes)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	int hdisplay_limit;
 
 	if (!intel_dp_has_joiner(intel_dp))
 		return false;
 
 	num_joined_pipes /= 2;
 
+	hdisplay_limit = DISPLAY_VER(i915) >= 30 ? 6144 : 5120;
+
 	return clock > num_joined_pipes * i915->display.cdclk.max_dotclk_freq ||
-	       hdisplay > num_joined_pipes * 5120;
+	       hdisplay > num_joined_pipes * hdisplay_limit;
 }
 
 int intel_dp_num_joined_pipes(struct intel_dp *intel_dp,
-- 
2.34.1

