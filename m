Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B629BC70B4F
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Nov 2025 19:53:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE26A10E680;
	Wed, 19 Nov 2025 18:53:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nhGDMy1n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4619E10E268;
 Wed, 19 Nov 2025 18:53:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763578396; x=1795114396;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0fyteZ9AmIAvVb+5nTUEQRY4fFENNZRAHvpPTxahHvQ=;
 b=nhGDMy1nZBRhIP2hf14reMBF3K7IXcEeIONzCut5nMu6uAJo1XINDAYi
 zXhV4XykoBnaO9u0UsQhpxn5curpjMLykAeD6RTJR9TXDmDbJwvMINVaV
 0OP1/6L2//QN8EjFD7dI8C4H3qKB6dNtCG35EJgbgYSBvNHEtrx9PUnAu
 RITyRzu4RPCzXPNAY2gCGfyOEmpRR5Noi9I1rVvrXZPtQHK9WVB01+vQ5
 +BfGJzmeGGfMVJrZeTRIPUP8ciZylmR8HYmu62ITT8Qbv3+PF1HNWK8fu
 aVM1QxQ1g2+qugoOcHS2wq7MSvTU5SyFfMGG8B17cTv3Fji1qAGsVvIpi Q==;
X-CSE-ConnectionGUID: 3ZGp28A7QS6pVxIi6XucLQ==
X-CSE-MsgGUID: 01DvHiBZROyaZOgUVD/L+g==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="65334649"
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="65334649"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 10:53:16 -0800
X-CSE-ConnectionGUID: JoIgHEK0SdOcDyrTeEjKiQ==
X-CSE-MsgGUID: CvkFKkkJRC+S4Xd9OAkYQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="190948480"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.187])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 10:53:14 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 04/13] drm/xe: remove MISSING_CASE() from compat
 i915_utils.h
Date: Wed, 19 Nov 2025 20:52:43 +0200
Message-ID: <b967e605ff9d9ad459f3d12a9dfc9244458d83a1.1763578288.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1763578288.git.jani.nikula@intel.com>
References: <cover.1763578288.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
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

There are no longer users for MISSING_CASE() in the compat
i915_utils.h. Remove it to prevent new users from showing up.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/compat-i915-headers/i915_utils.h | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_utils.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_utils.h
index bcd441dc0fce..3639721f0bf8 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_utils.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_utils.h
@@ -3,11 +3,5 @@
  * Copyright © 2023 Intel Corporation
  */
 
-/* for soc/ */
-#ifndef MISSING_CASE
-#define MISSING_CASE(x) WARN(1, "Missing case (%s == %ld)\n", \
-			     __stringify(x), (long)(x))
-#endif
-
 /* for a couple of users under i915/display */
 #define i915_inject_probe_failure(unused) ((unused) && 0)
-- 
2.47.3

