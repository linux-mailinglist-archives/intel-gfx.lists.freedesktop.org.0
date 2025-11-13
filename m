Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 652DBC56B82
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Nov 2025 10:58:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0FD510E756;
	Thu, 13 Nov 2025 09:58:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AgMmMWZn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6207810E168;
 Thu, 13 Nov 2025 09:58:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763027910; x=1794563910;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0fyteZ9AmIAvVb+5nTUEQRY4fFENNZRAHvpPTxahHvQ=;
 b=AgMmMWZnoFyjXd54TnElnFeMdCeKzH2h5lt8rXuOj7kRHk5Zaw/4p2YF
 Cs2BVG4xJ5YSTLxfwAA8qdQtLJxUI2hIi17pgXOUtsJy1KL57AUCbBaXF
 ofWKGLRfPNRJ8U5hRW8ZQF2yDm5SFemPz+9/jDQrrKW7rMnqPQ24cueIX
 exlX7fcrLFrwnLp50AgF9VCeZ8LPqwOMa1mHqM3t45tCADiNUEHc1cxVG
 w9ZOqJVe9qlabsUp0xgHrfiHNeML9g/iweyyUG6W+WIfAMsAgRYDfRPiC
 7oz9Fyhu9d2sL/3lhPrLEvWr/TVGANOeowmR408vHrT+k0TgZoWuXFNr8 g==;
X-CSE-ConnectionGUID: NA3HAUBeQ3S06np3ZJVrYw==
X-CSE-MsgGUID: ZXgwcKA4RoOcUHLJumUk/g==
X-IronPort-AV: E=McAfee;i="6800,10657,11611"; a="75418427"
X-IronPort-AV: E=Sophos;i="6.19,301,1754982000"; d="scan'208";a="75418427"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 01:58:29 -0800
X-CSE-ConnectionGUID: Qn9E2qGpTP6oB4dmMzwDlg==
X-CSE-MsgGUID: qEKURTG3RBWd3fYiBkF5nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,301,1754982000"; d="scan'208";a="189732406"
Received: from aotchere-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.135])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 01:58:27 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com, uma.shankar@intel.com
Subject: [PATCH 4/8] drm/xe: remove MISSING_CASE() from compat i915_utils.h
Date: Thu, 13 Nov 2025 11:58:01 +0200
Message-ID: <b7ec43c506953176dc0169281073c1f336c57ed8.1763027774.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1763027774.git.jani.nikula@intel.com>
References: <cover.1763027774.git.jani.nikula@intel.com>
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

