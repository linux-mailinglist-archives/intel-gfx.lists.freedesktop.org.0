Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84B94AB092C
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 06:28:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 244A610E972;
	Fri,  9 May 2025 04:28:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HP5/RGD0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF8BF10E3B6;
 Fri,  9 May 2025 04:28:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746764906; x=1778300906;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=G3eJuP21FHwIzIMQFcgJ2NnjTSTXNPGSq7PWM6kPzeg=;
 b=HP5/RGD05cjKCzpR++aQO+nBzoDiv5nuU2+3lvVEeFVeIi4/1bzJ505E
 3xX+fwdDUSzXgTJJHdHNB4kyqQw+gJF7PU3NXLOlfihfO9qyeyVlbvsC9
 PTExa0UwkqaRpfhKrzNoT/LTSqDDHP6mnX9CNP+GJyj03Oa1l36Dl900Z
 Gx8cqfwUJMziL0VNLRECkDTwKWV8/zB82zPUEyU2JU4GryuVzo/mj/QpL
 +Tj4Sdy9hbU+t29VZw40EEs0/OQHl467EFS2e4T/YspNHdkP9YZgtuUlS
 4PamB8fZ++Bc4quNyux67U+XEGqbKBb8e3kE+uoiAMQ90XrqAFmH0T3eI w==;
X-CSE-ConnectionGUID: 0VxdvQ8uRvWyFIWFNnpCBw==
X-CSE-MsgGUID: Ou7zWUr5TyqZlx/XdCppGQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="58794012"
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="58794012"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 21:28:26 -0700
X-CSE-ConnectionGUID: dL12ktlwSSirmj/0WSO/LQ==
X-CSE-MsgGUID: su51fowzRRyByT3OiY2xXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="137430560"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa008.jf.intel.com with ESMTP; 08 May 2025 21:28:25 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 11/18] drm/i915/dpll: Introduce new hook in intel_dpll_funcs
Date: Fri,  9 May 2025 09:57:22 +0530
Message-Id: <20250509042729.1152004-12-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250509042729.1152004-1-suraj.kandpal@intel.com>
References: <20250509042729.1152004-1-suraj.kandpal@intel.com>
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

Introduce disable hook to disable individual dpll which is to
be used by DISPLAY_VER() >= 14.

--v2
-Rename intel_global_dpll to intel_dpll_global [Jani/Ville]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 51dab49d4fc1..85f726b1c5c8 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -73,7 +73,13 @@ struct intel_dpll_funcs {
 		       struct intel_encoder *encoder);
 
 	/*
-	 * Hook for disabling the shared pll, called from _intel_disable_shared_dpll()
+	 * Hook for disabling the individual pll, used from DISPLAY_VER() >= 14
+	 */
+	void (*disable)(struct intel_display *display,
+			struct intel_dpll *pll);
+
+	/*
+	 * Hook for disabling the shared pll, called from intel_disable_global_dpll()
 	 * only when it is safe to disable the pll, i.e., there are no more
 	 * tracked users for it.
 	 */
-- 
2.34.1

