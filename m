Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89246A827A7
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Apr 2025 16:24:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0664C10E8E8;
	Wed,  9 Apr 2025 14:24:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LEIv3lHz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E0C810E8E6;
 Wed,  9 Apr 2025 14:24:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744208644; x=1775744644;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5c/FDmHRMD6LNvz17/oBOD43vVXsf3LawdQfWpaYRK0=;
 b=LEIv3lHz5J6Lz7hdoKZvenIyoBYxXTRZmPmHdaJJ5IooR6Yt9nuKjtAP
 lIPPs8Eu6gz51S/XmBNWUMq+hCLdKAC3qFpK0zsdGWcW4tRzAlN9LvIk1
 Ap9Q7xvcta1JIElu8etSqoeXx4+RYMy1p3+YwC9fy6Q6hCI/9hUvbGWPc
 NeMG5xuW0WfQO1K+q5UFyaamVyjuqaI17f7iW8AaIhhgZMVn707UrNORC
 iOYdZa3dgaUUFHJ0T1IVaL6vBQsYaQ4dHB23zXS+7q3XVy5vY6mssD+i0
 +0oIdJwSShpO2Eqn4Ut5wRmIVtYMJauBAPHu0lzsFIr8pLR8cndGedOb5 A==;
X-CSE-ConnectionGUID: 0XZ9KSYITHy5sHu3qJYuOQ==
X-CSE-MsgGUID: i7nqExn4ST2WEZeX+D7bEA==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="49534305"
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="49534305"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 07:24:04 -0700
X-CSE-ConnectionGUID: BS4YJlxfTv6NqTZtIH/M2Q==
X-CSE-MsgGUID: iKwlEepjTlKHZ12js+jMbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="133591087"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 07:24:02 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 2/5] drm/i915: record GEN2_IER in gtier[0] for pre-ilk
 error capture
Date: Wed,  9 Apr 2025 17:23:44 +0300
Message-Id: <5f908dd866fa61b1b1abc17813b32918129f1d82.1744208554.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1744208554.git.jani.nikula@intel.com>
References: <cover.1744208554.git.jani.nikula@intel.com>
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

In pre-ilk platforms the engine interrupts live in GEN2_IER. Capture it
as part of gtier instead of display.

Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_gpu_error.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index cf31e8fecd8d..64c760e7b7ee 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -1782,8 +1782,6 @@ static void gt_record_display_regs(struct intel_gt_coredump *gt)
 		gt->ier = intel_uncore_read(uncore, VLV_IER);
 	else if (HAS_PCH_SPLIT(i915))
 		gt->ier = intel_uncore_read(uncore, DEIER);
-	else
-		gt->ier = intel_uncore_read(uncore, GEN2_IER);
 }
 
 /* Capture all other registers that GuC doesn't capture. */
@@ -1822,6 +1820,9 @@ static void gt_record_global_nonguc_regs(struct intel_gt_coredump *gt)
 	} else if (HAS_PCH_SPLIT(i915)) {
 		gt->gtier[0] = intel_uncore_read(uncore, GTIER);
 		gt->ngtier = 1;
+	} else {
+		gt->gtier[0] = intel_uncore_read(uncore, GEN2_IER);
+		gt->ngtier = 1;
 	}
 
 	gt->eir = intel_uncore_read(uncore, EIR);
-- 
2.39.5

