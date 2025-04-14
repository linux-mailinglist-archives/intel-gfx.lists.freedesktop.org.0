Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53FDFA87F09
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Apr 2025 13:30:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DFC510E588;
	Mon, 14 Apr 2025 11:30:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ACZFxu7y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54C1110E587;
 Mon, 14 Apr 2025 11:30:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744630207; x=1776166207;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=R6XJ/5knbIS4fJuepN6GxKWbgCV58k2bbDo5jLCbcw4=;
 b=ACZFxu7yVHalroDlyjqhRm63D/BuzPH7d2LPW6KJqv1CzHLHtyw+Ucdp
 vZEoQh72BIbTg3JTF1b8qCI2mtwZHfl8CkVG7jg0x8t/YIrLG860zKNIr
 F8p5HAwNDZTEiVW6TPL8MWrkYqu6+NFfX5U1Vk0ApXc5gHtKtMKy0q2bB
 GMNgV6PP+rNpU8MQqVs18TwCDpKwiPej+MBoQAU+YuXUuobKQKqCd7ZT2
 xjMdFxrRg8oiskLhps3NimeDBmUsYVW5Cx7IHB2GtHepV3yh8o4274u+J
 5fLJWe3HP+MhKOGQQJLgK+HU+kYnbbUiINHaQYpcxLuOWveht6POWZPKC A==;
X-CSE-ConnectionGUID: mr0r7D1ESUOSuK/MvlbgSw==
X-CSE-MsgGUID: w0O8S4C5RfaMZ2s/ewdplA==
X-IronPort-AV: E=McAfee;i="6700,10204,11402"; a="57481045"
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="57481045"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 04:29:58 -0700
X-CSE-ConnectionGUID: FlcOKWuqSZ6/NcU7HCKSIA==
X-CSE-MsgGUID: cR0X4W3XQLezTwLne+wLIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="129761594"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.205])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 04:29:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [CI v3 1/6] drm/i915: use 32-bit access for gen2 irq registers
Date: Mon, 14 Apr 2025 14:29:43 +0300
Message-Id: <5a56286c94e08a02435c60ce0fbff13aca6c0d1f.1744630147.git.jani.nikula@intel.com>
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

We've previously switched from 16-bit to 32-bit access for gen2 irq
registers, but one was left behind. Fix it.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_gpu_error.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index a6613eed3398..cf31e8fecd8d 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -1782,8 +1782,6 @@ static void gt_record_display_regs(struct intel_gt_coredump *gt)
 		gt->ier = intel_uncore_read(uncore, VLV_IER);
 	else if (HAS_PCH_SPLIT(i915))
 		gt->ier = intel_uncore_read(uncore, DEIER);
-	else if (GRAPHICS_VER(i915) == 2)
-		gt->ier = intel_uncore_read16(uncore, GEN2_IER);
 	else
 		gt->ier = intel_uncore_read(uncore, GEN2_IER);
 }
-- 
2.39.5

