Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40B62B8B15F
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 21:30:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C787110EA84;
	Fri, 19 Sep 2025 19:30:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ifcxCrFK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F8BF10EA85;
 Fri, 19 Sep 2025 19:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758310252; x=1789846252;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zd2HzF95uTX5n4VOPWcWZRVjzrowpL+dtbQA45GkaqQ=;
 b=ifcxCrFKlFOSMWH61MAOXFt78exCCjMdTX6SPsdFldQ/TAJj6jt1aRiU
 P2e9j3qLhCx/ekmyveoK+pjaT+gi6ROsueak3e9N7agj2IGpUt8180gNk
 F6EzQpkwtJRvaVZu6YDOf6fNUroebjhRHZRnrDlu4o3GdsIzyiK0F0NfD
 J7Dc4BuCAyZX3eU08yaE+H/H0jY8SnjXoE9yF+Wz0R/JwIMiwKWPqD0QJ
 zpQJo0NJsDcutSZNHRFZP2xjRLfrigdYLlb8j+PSYN2OWv+i2KTrAf3aZ
 mpKeNmCqPpm/oKv+fDJ+iGTD9LnarUW0EpD/hcpgpVOL2Y2J6W9yjUVSf g==;
X-CSE-ConnectionGUID: c82uMO9MQ2aXRRDueu6zuw==
X-CSE-MsgGUID: 0jNgW17zQ+OOlB3fqo/fSQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11558"; a="48240338"
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="48240338"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 12:30:52 -0700
X-CSE-ConnectionGUID: Pp806AlgTGOUd51Hvz1DbQ==
X-CSE-MsgGUID: BMnlPb0GSmuSCo4Zs7IwHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="175037332"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.112])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 12:30:51 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v2 11/13] drm/i915: Make wm latencies monotonic
Date: Fri, 19 Sep 2025 22:29:58 +0300
Message-ID: <20250919193000.17665-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250919193000.17665-1-ville.syrjala@linux.intel.com>
References: <20250919193000.17665-1-ville.syrjala@linux.intel.com>
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

Some systems (eg. LNL Lenovo Thinkapd X1 Carbon) declare
semi-bogus non-monotonic WM latency values:
 WM0 latency not provided
 WM1 latency 100 usec
 WM2 latency 100 usec
 WM3 latency 100 usec
 WM4 latency 93 usec
 WM5 latency 100 usec

Apparently Windows just papers over the issue by bumping the
latencies for the higher watermark levels to make them monotonic
again. Do the same.

Cc: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index d83772c6ea9a..2a40c135cb96 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3236,6 +3236,19 @@ static void sanitize_wm_latency(struct intel_display *display)
 		wm[level] = 0;
 }
 
+static void make_wm_latency_monotonic(struct intel_display *display)
+{
+	u16 *wm = display->wm.skl_latency;
+	int level, num_levels = display->wm.num_levels;
+
+	for (level = 1; level < num_levels; level++) {
+		if (wm[level] == 0)
+			break;
+
+		wm[level] = max(wm[level], wm[level-1]);
+	}
+}
+
 static void
 adjust_wm_latency(struct intel_display *display)
 {
@@ -3246,6 +3259,8 @@ adjust_wm_latency(struct intel_display *display)
 
 	sanitize_wm_latency(display);
 
+	make_wm_latency_monotonic(display);
+
 	/*
 	 * WaWmMemoryReadLatency
 	 *
-- 
2.49.1

