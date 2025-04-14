Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83437A87F0E
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Apr 2025 13:30:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0753610E58C;
	Mon, 14 Apr 2025 11:30:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FE8PJ6xo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A6B810E58C;
 Mon, 14 Apr 2025 11:30:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744630223; x=1776166223;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=61+CIJVx6TEWrhaF9DHG6UIOVojOY9b+XfpnS48yYf4=;
 b=FE8PJ6xoBQMcAmOsP7aSepuT89yXuDQFv86HGOyqXtx3I25gBRg/H23f
 80u4IZ9e7iGEKne4/p/sxbwdAwFCcX3ek3eijig1g9ZpIkUoRX2c3ewIQ
 OBNkeFfSrtEdr5Rst9cISgN+UA6rp3l09z4xMnFFKZiwSu/nzGXJCepf7
 wCVZGXzwMf/HLAxFvnyGICaW1pjTryehc4e372Fpl0mDOPtAi7KHSCSVX
 ynuzYG2SmyNxT1JRYQM2xLgaaY6C9b6HRkOj5FM7Dgn52zoWWBcd/NRks
 xB0qMN5FqaoUP+In4q+RVGjpKvbS/g/EryD/rqFcKiKyK19MyAZmaysuC w==;
X-CSE-ConnectionGUID: TgdWqGReRiSAKsSJIpjJ5Q==
X-CSE-MsgGUID: S1jrYs5LTdS778iPdo1QQg==
X-IronPort-AV: E=McAfee;i="6700,10204,11402"; a="45802042"
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="45802042"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 04:30:23 -0700
X-CSE-ConnectionGUID: 1x0IJcS2StOUHGGOBEuRuQ==
X-CSE-MsgGUID: 7NpUWF48REyqfqcICDu5qQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="130338031"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.205])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 04:30:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [CI v3 6/6] drm/i915: use graphics version instead of PCH split in
 error capture
Date: Mon, 14 Apr 2025 14:29:48 +0300
Message-Id: <8d73eb1d56603210003554bc6a875c53ed4c692a.1744630147.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1744630147.git.jani.nikula@intel.com>
References: <cover.1744630147.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Avoid using PCH checks in core i915 code, in preparation for moving PCH
handling to display.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_gpu_error.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 62e4a293ed9b..aa2cad910902 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -1792,7 +1792,7 @@ static void gt_record_global_nonguc_regs(struct intel_gt_coredump *gt)
 			gt->gtier[i] =
 				intel_uncore_read(uncore, GEN8_GT_IER(i));
 		gt->ngtier = 4;
-	} else if (HAS_PCH_SPLIT(i915)) {
+	} else if (GRAPHICS_VER(i915) >= 5) {
 		gt->gtier[0] = intel_uncore_read(uncore, GTIER);
 		gt->ngtier = 1;
 	} else {
-- 
2.39.5

