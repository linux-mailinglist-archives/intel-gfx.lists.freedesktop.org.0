Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0611BC24985
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Oct 2025 11:48:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5254F10EB92;
	Fri, 31 Oct 2025 10:48:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D0xuLRjT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5A2A10EB72;
 Fri, 31 Oct 2025 10:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761907697; x=1793443697;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lf18gOPqojXQ346HX0kCDu0OHMoJHioh7SJ1M0hxmBM=;
 b=D0xuLRjTtQkNu08D9wHNShJQz/aBEWA6shVKvuspiQa/w5CBur+Ushd0
 owR8Cv76ZQ89uPRBcBj5Bg+y+OcpmMLzUx6V2ML0ZjkWldCKHsRwlJMTe
 o1fSoZIDWJ4jcnEdgmKeZaMXEqcP01lNAhTOeWiA+kJ8sUG1dDcYBxzmF
 1isDCZHtpXj1luRdHbfgfubZiMfYIY1jofGH9Nql54jY67Od56aiyCThD
 GVB82dPYJz3bUAQFdu0+qTVjxSvSj3/wIXuSLP19qv6MzwqMCnVL5S4Yf
 Dl08KCHdS059L2tgx93uIwjFkrYtWTG5Qx8lS2Iu7AorS9vxOsl0IzoHv Q==;
X-CSE-ConnectionGUID: egKOgItdTC+Hz52UfkEoZg==
X-CSE-MsgGUID: tDIeW4TeTE2ZEHAIJl9VuA==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="64217589"
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="64217589"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 03:48:17 -0700
X-CSE-ConnectionGUID: S5YEaS0MT0Gd96XS7n29LQ==
X-CSE-MsgGUID: ykJz+ijfQnm4QJljU1XGiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="223441436"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa001.jf.intel.com with ESMTP; 31 Oct 2025 03:48:16 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [CI 27/32] drm/i915/display: Add .crtc_get_dpll hook
Date: Fri, 31 Oct 2025 12:35:44 +0200
Message-Id: <20251031103549.173208-28-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251031103549.173208-1-mika.kahola@intel.com>
References: <20251031103549.173208-1-mika.kahola@intel.com>
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

Add .crtc_get_dpll function pointer to support MTL+
platforms.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 7a48d6f0db10..46ae05976191 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1693,6 +1693,7 @@ static int i8xx_crtc_compute_clock(struct intel_atomic_state *state,
 
 static const struct intel_dpll_global_funcs mtl_dpll_funcs = {
 	.crtc_compute_clock = mtl_crtc_compute_clock,
+	.crtc_get_dpll = hsw_crtc_get_dpll,
 };
 
 static const struct intel_dpll_global_funcs dg2_dpll_funcs = {
-- 
2.34.1

