Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B36CB45AFB
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Sep 2025 16:52:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA23610EBD4;
	Fri,  5 Sep 2025 14:52:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oDW8chwm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6243410EBBD;
 Fri,  5 Sep 2025 14:52:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757083948; x=1788619948;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rrXUBahVdDk6PD65PXIv2VcMCclUP+46zS4RuNZCMtc=;
 b=oDW8chwm2y7u1yHNpYvw5PEdfhv7B9nC8SNP3rIoDUocMugiAM4WKjyp
 hTvUh1sUOZ2kic2+J3BVMdH9ApTQsR61DBIZ7x8WnsggeVBe6h1FDPED+
 3Su/ul9QuWo/77BQAr+XHT6pCdB4FTOSzbAnFaPySnFHETIvXvDJQK/k5
 asJOl+G2mkDUlYUyzMhlyq7wbDAfltQ9Gmp6J/J97P1ihoYT1AIreru//
 +UqAe6Sh5nKm2HkUw7aqCe0eGhq/2fqsjbUOfDEi8+WGQJNADj1RRPu3e
 F+syNxPsyxfEf1bT1+MPB0lP5Z86RP2SjJRdEC/dd+DRt1qbCNu+CApl7 Q==;
X-CSE-ConnectionGUID: fMMH7nSSRo68VdcTjXKH1w==
X-CSE-MsgGUID: 0B1yZdF0TLGPO/CobmcHjg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="82027612"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="82027612"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 07:52:28 -0700
X-CSE-ConnectionGUID: +raCmq1GSY6tagN3kVjmVg==
X-CSE-MsgGUID: Zpr9VuoyTdmR+g44K1dzog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,241,1751266800"; d="scan'208";a="195837339"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.33])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 07:52:26 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 03/13] drm/i915: Tweak the read latency fixup code
Date: Fri,  5 Sep 2025 17:52:02 +0300
Message-ID: <20250905145212.10845-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250905145212.10845-1-ville.syrjala@linux.intel.com>
References: <20250905145212.10845-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

If WM0 latency is zero we need to bump it (and the WM1+ latencies)
but a fixed amount. But any WM1+ level with zero latency must
not be touched since that indicates that corresponding WM level
isn't supported.

Currently the loop doing that adjustment does work, but only because
the previous loop modified the num_levels used as the loop boundary.
This all seems a bit too fragile. Remove the num_levels adjustment
and instead adjust the read latency loop to abort when it encounters
a zero latency value.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 8c434bc96971..805481c92154 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3198,8 +3198,6 @@ adjust_wm_latency(struct intel_display *display,
 		if (wm[level] == 0) {
 			for (i = level + 1; i < num_levels; i++)
 				wm[i] = 0;
-
-			num_levels = level;
 			break;
 		}
 	}
@@ -3212,8 +3210,14 @@ adjust_wm_latency(struct intel_display *display,
 	 * from the punit when level 0 response data is 0us.
 	 */
 	if (wm[0] == 0) {
-		for (level = 0; level < num_levels; level++)
+		wm[0] += read_latency;
+
+		for (level = 1; level < num_levels; level++) {
+			if (wm[level] == 0)
+				break;
+
 			wm[level] += read_latency;
+		}
 	}
 
 	/*
-- 
2.49.1

