Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED0DEA827AB
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Apr 2025 16:24:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6770B10E8E9;
	Wed,  9 Apr 2025 14:24:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f02dbfbX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D16A510E8F0;
 Wed,  9 Apr 2025 14:24:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744208658; x=1775744658;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MB9sXV0EV9vytKizT9tQKD54qTCTE3RIfJmAHI2bK3k=;
 b=f02dbfbXbHjEIk1ojgHPEwFz78i/RPsDKU+iA9ULbubO1aavl+nquHA1
 jpeJHYm6aulUEx98+TKGX77yd3Q+Q5J1KLreSB7z2wCosZJVZh4DQ+YpP
 fAUcx2y3wXB6Kf7dyepiHSz+2usnxINn1lRd4w7cvqnJ87EqdUPQ5hcJu
 04KHWZvpQQUlQ6kc1DKzotk5kjo9MlS9MiYxt6C8j9Wb0QccIGI2Tiwwf
 4fWFa9YWyJjPgmqdehFRPVj+of3/RzYHOAOHJFV0T57VZsBSlbpjRuIt2
 CzmfMp4C8xo4m26Db3vzwhvUPOmLLG5xRHNGeNkX8jiG/e/y2Npz7LmHg w==;
X-CSE-ConnectionGUID: 8PF5CMQOTPKyuRF4BIPcAw==
X-CSE-MsgGUID: SXO+Xk/3TH+sXNH6fR1LWQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="49534329"
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="49534329"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 07:24:17 -0700
X-CSE-ConnectionGUID: NQbteXrLQAaS31Bq1sKI0A==
X-CSE-MsgGUID: m73bEQukTpOFZ7V2Xsk5pA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="133591164"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 07:24:16 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 5/5] drm/i915: use graphics version instead of PCH split in
 error capture
Date: Wed,  9 Apr 2025 17:23:47 +0300
Message-Id: <786195f92466317f521404be744629b0a077c491.1744208554.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1744208554.git.jani.nikula@intel.com>
References: <cover.1744208554.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

