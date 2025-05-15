Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD7FDAB7EA3
	for <lists+intel-gfx@lfdr.de>; Thu, 15 May 2025 09:18:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC2DF10E773;
	Thu, 15 May 2025 07:18:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GzBn9x5Q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 256CB10E772;
 Thu, 15 May 2025 07:18:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747293510; x=1778829510;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JQ5cO1m1mw1n1t1aFa8FeqcgdLffQuD6tdTM9w2grrE=;
 b=GzBn9x5Q3Fp3ebmL6rXGbikit+q/rqnXJkHtJJfETR90rPkyuWC3evA8
 ayhe4aF2kLki+AKmJfzVb8+4N2l1YwdYf7edhDXSIp7Y0jS35n4UF1/6i
 njcwW6I3W1mukChmFPlPrFHFSnFTgKSy4oyz/RUWnsKuX5M4yjDEtIe0E
 Ta6qbZZz8t3FiriyrVR0d+7CQgw0h2AGNG1mJ7DOR6D3HNl/PRwQb9BS7
 74mz9FRxd8clpFdZ6hST26sx6sGLBgb2z0e+tHHwN9pFFO7FTw0etpbVr
 bYze64bPy2i7KZIvgOlkLSKZ1Vc8DR00WDSt+0L4s0aJqXOLIPpGPxhpe A==;
X-CSE-ConnectionGUID: RXhhOsqGTm2ZopvDPsZxOQ==
X-CSE-MsgGUID: 7mmdV2CEQ224VTBNxQR4FQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11433"; a="48901334"
X-IronPort-AV: E=Sophos;i="6.15,290,1739865600"; d="scan'208";a="48901334"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2025 00:18:30 -0700
X-CSE-ConnectionGUID: +J+oE30zQ2CT0mlGlfAH4Q==
X-CSE-MsgGUID: XSTVC1nbSOGTg7zR0WXNFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,290,1739865600"; d="scan'208";a="142290294"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa003.fm.intel.com with ESMTP; 15 May 2025 00:18:28 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, jani.nikula@intel.com,
 mika.kahola@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 01/14] drm/i915/dpll: Rename intel_dpll
Date: Thu, 15 May 2025 12:47:48 +0530
Message-Id: <20250515071801.2221120-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250515071801.2221120-1-suraj.kandpal@intel.com>
References: <20250515071801.2221120-1-suraj.kandpal@intel.com>
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

Rename intel_dpll to intel_dpll_global so that intel_shared_dpll
can be renamed to intel_dpll in an effort to move away from the shared
naming convention.
Also intel_dpll according to it's comment tracks global dpll rather
than individual hence making more sense this gets changed.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_core.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index b4937e102360..6fc213f84e73 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -122,7 +122,7 @@ struct intel_audio {
  * intel_{prepare,enable,disable}_shared_dpll.  Must be global rather than per
  * dpll, because on some platforms plls share registers.
  */
-struct intel_dpll {
+struct intel_dpll_global {
 	struct mutex lock;
 
 	int num_shared_dpll;
@@ -570,7 +570,7 @@ struct intel_display {
 	/* Grouping using named structs. Keep sorted. */
 	struct drm_dp_tunnel_mgr *dp_tunnel_mgr;
 	struct intel_audio audio;
-	struct intel_dpll dpll;
+	struct intel_dpll_global dpll;
 	struct intel_fbc *fbc[I915_MAX_FBCS];
 	struct intel_frontbuffer_tracking fb_tracking;
 	struct intel_hotplug hotplug;
-- 
2.34.1

