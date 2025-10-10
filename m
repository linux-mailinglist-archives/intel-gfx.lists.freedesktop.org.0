Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 427A8BCC029
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Oct 2025 10:00:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC41210EB45;
	Fri, 10 Oct 2025 08:00:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YQybUPmQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 702A110EB45
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Oct 2025 08:00:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760083227; x=1791619227;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+9u6G5/CNyQbo0NsvMqpw856nmLKu8EnjQMxGhj/KUQ=;
 b=YQybUPmQsRuAg7SZfMZpzFkzomhZoD8+xLr3jHCF66wG5vXp1mbF/0Tq
 T+GM6Mbq051bmBmgL9fQLtay4pPVHNB0ZsEWAJeLDxa6mVk5mttgbBxz0
 n+T3JiuqbYiA25yMgF3/kCALgRKzF3Or5ifN/eQMNkX1pFaClT2Vwh3v8
 AorDRyPCT7v6Timvn5HYN/FpfjqlMJRmvMBzibbEd5sFVZ0vj/YzTDfMS
 3wHy6diBj8oy/rf5RajYwD1SvaGMg+1fw+HZ+v0zsyuhHtFevIJtlcCoF
 rcKbt9isXKOCk3MwszO2+LiAMSss222nLfHFt6pl+DmScoXNbFEBQJVuW A==;
X-CSE-ConnectionGUID: iv9ys5QERRy1zTR610xttw==
X-CSE-MsgGUID: lDBtc1I9QpefQ3rGlV8wBQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11577"; a="61333056"
X-IronPort-AV: E=Sophos;i="6.19,218,1754982000"; d="scan'208";a="61333056"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 01:00:27 -0700
X-CSE-ConnectionGUID: Nb8TQs+/ScGw/mU+S3nOcQ==
X-CSE-MsgGUID: g+9Oz8l3Tg670owLOHz3tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,218,1754982000"; d="scan'208";a="186040150"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.168])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 01:00:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH] drm/i915: drop unused non-i915 IS_<PLATFORM> macros
Date: Fri, 10 Oct 2025 11:00:21 +0300
Message-ID: <20251010080021.1087315-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
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

The IS_LUNARLAKE(), IS_BATTLEMAGE(), and IS_PANTHERLAKE() macros were
added for compatibility with the xe driver, for display needs, even
though i915 does not support the platforms in question. Display has
since moved away from the macros, and they are no longer needed. Remove.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 6e159bb8ad2f..adadb7e7836f 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -488,16 +488,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_ALDERLAKE_P(i915) IS_PLATFORM(i915, INTEL_ALDERLAKE_P)
 #define IS_DG2(i915)	IS_PLATFORM(i915, INTEL_DG2)
 #define IS_METEORLAKE(i915) IS_PLATFORM(i915, INTEL_METEORLAKE)
-/*
- * Display code shared by i915 and Xe relies on macros like IS_LUNARLAKE,
- * so we need to define these even on platforms that the i915 base driver
- * doesn't support.  Ensure the parameter is used in the definition to
- * avoid 'unused variable' warnings when compiling the shared display code
- * for i915.
- */
-#define IS_LUNARLAKE(i915) (0 && i915)
-#define IS_BATTLEMAGE(i915)  (0 && i915)
-#define IS_PANTHERLAKE(i915) (0 && i915)
 
 #define IS_ARROWLAKE_H(i915) \
 	IS_SUBPLATFORM(i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_ARL_H)
-- 
2.47.3

