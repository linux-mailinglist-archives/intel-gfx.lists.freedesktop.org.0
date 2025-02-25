Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2319EA43700
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 09:10:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6FFA10E5B8;
	Tue, 25 Feb 2025 08:09:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NKULehh0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E08410E5B5;
 Tue, 25 Feb 2025 08:09:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740470995; x=1772006995;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oRA7kQNtX3UjVLHlZVNAaNTr37/G0jHOSnI9jbNgKxc=;
 b=NKULehh059OMI02KWOSYobrEUmARQYbrMJGxIg7BPUJasiFhbxFLP+Sq
 iEFtgc04H05R7ZlKUsTSAZsjQq4bD4yhDUGR9rxkUvVWSCm6oySnlH4kS
 uNKjk3XagbHNu8oz1aN3Y0WeB7FIi+uSF6yd/XNLD/BNxAOhf9cWjMJZH
 ebU1nVGiNxb4LqCIsclorMry4nEC2o0pHwLWacVrKUKUfxIMLyKWWSpF5
 vplK8QKoPQYcxUk3Qz7tWQDRvSf+QtjaBVjjN0k+Mo3hIIAqdet3NTvRs
 jSydWDceAX4AxpOrRcwx3FPY9rkx45rQ2ndm4lwSergatErvv9jeAvsAQ Q==;
X-CSE-ConnectionGUID: Mz9WaNqhTBGzMg3NNRsLCQ==
X-CSE-MsgGUID: M0OumvE+TIqu1Q/csmqOig==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="66634577"
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="66634577"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 00:09:54 -0800
X-CSE-ConnectionGUID: CF3SLZ/UR0aBR0HWNLv7lw==
X-CSE-MsgGUID: +X+GHBmkRvCN23Sb3IV9zQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="116519403"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa008.fm.intel.com with ESMTP; 25 Feb 2025 00:09:52 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com, mika.kahola@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 09/11] drm/i915/dpll: Introduce new hook in
 intel_global_dpll_func
Date: Tue, 25 Feb 2025 13:39:25 +0530
Message-Id: <20250225080927.157437-10-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250225080927.157437-1-suraj.kandpal@intel.com>
References: <20250225080927.157437-1-suraj.kandpal@intel.com>
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

Introduce the disable hook to disable individual dpll which is to
be used by DISPLAY_VER() >= 14.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 35fb0f6f5475..1014ce4941e7 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -69,6 +69,12 @@ struct intel_global_dpll_funcs {
 	void (*enable)(const struct intel_crtc_state *state,
 		       struct intel_encoder *encoder);
 
+	/*
+	 * Hook for disabling the individual pll, used from DISPLAY_VER() >= 14
+	 */
+	void (*disable)(struct intel_display *display,
+			struct intel_global_dpll *pll);
+
 	/*
 	 * Hook for disabling the shared pll, called from intel_disable_global_dpll()
 	 * only when it is safe to disable the pll, i.e., there are no more
-- 
2.34.1

