Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF76BAFB11
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 10:39:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 644A310E6A6;
	Wed,  1 Oct 2025 08:39:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F6zO4qYQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8DA010E6E7;
 Wed,  1 Oct 2025 08:39:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759307952; x=1790843952;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qLwvPzwDw9JsAFIcAFF+nnH9iqQ9XFl5nA8M0Vd02GU=;
 b=F6zO4qYQNzAe4JaX8KfBgbHiBfXbd5sFY2aCIVegTzuhxDxHAQTg39HA
 ii1rqkWruGQjDm0tSS54peHUiO9viBnV0wxEdRHY821or8IahRDuAJLbq
 7onBMq6xHOyGhjaY9Nje8zdw6G//kDTbryK99xcWtwKsSgK0oKRDJgkQ/
 Si2yoAlzWlViJsTacph7pCLPnq5YWtwHUAGaG/nhe5gnuf7Ka21LH9QLl
 v6HLCvvn/FGpUFEK/zIE08IsQSVE7Ma0XVBIJxZL9Pc0o9+mI6NMehf3m
 WuVoxUzYyW8jPwmDWd4NlYOtcQ5RCwhShrYnH1zngUtlfkMclqVBkjGGQ w==;
X-CSE-ConnectionGUID: IM4vPaPkR765UYq4B9y6mg==
X-CSE-MsgGUID: FGBipvzxRM6mK62wzqeOYg==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="61742786"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="61742786"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 01:39:12 -0700
X-CSE-ConnectionGUID: hLGmxi49QPCPWOOIQ1kIdw==
X-CSE-MsgGUID: o6f6UkdQSMeX4yteq+xWxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="179142812"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa008.fm.intel.com with ESMTP; 01 Oct 2025 01:39:10 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [RFC PATCH 28/39] drm/i915/display: Add .update_active_dpll
Date: Wed,  1 Oct 2025 11:28:28 +0300
Message-Id: <20251001082839.2585559-29-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251001082839.2585559-1-mika.kahola@intel.com>
References: <20251001082839.2585559-1-mika.kahola@intel.com>
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

For MTL+ platforms, add .update_active_dpll function pointer
to support dpll framework. Reusing ICL function pointer.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index af318a23f1f1..8970c2fad5a5 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4432,6 +4432,7 @@ static const struct intel_dpll_mgr mtl_pll_mgr = {
 	.compute_dplls = mtl_compute_dplls,
 	.get_dplls = icl_get_dplls,
 	.put_dplls = icl_put_dplls,
+	.update_active_dpll = icl_update_active_dpll,
 };
 
 /**
-- 
2.34.1

