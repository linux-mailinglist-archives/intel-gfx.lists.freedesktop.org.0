Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CEF6B8B159
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 21:30:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDF3410EA92;
	Fri, 19 Sep 2025 19:30:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lpCXOqUQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E8BA10EA8C;
 Fri, 19 Sep 2025 19:30:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758310243; x=1789846243;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mHespPv3BCBgbJu6Wwv8+vDQeyhI11Xt5r1lGa3Y2W4=;
 b=lpCXOqUQz+afrqFHLVPt6VadVkOfiLfpoVoW1re76VHlLfqo12svnLcE
 nvo/x0FiiWNI/rffoVgcu1KYew8WWCEZDBuYKkbbgSZJNo1guj8p6ixPZ
 iLwFYEXDMlp4shrYi/9heJnZCjDxjhY07FyZd05G0OKl55bfNNDQz1cw2
 R59kRv1/w+gyWtBkQHoS8eZGC1hTy+ouZ+mJjJB/D7VabfQK1ZAh2r0nV
 Rbozr+GOk2yU4yYbI4RamWXzCl0N2RNPzMwIyIMcp7HEHEqHK5DsGI6o3
 EjtkgnfgUo4ph4Db1x2GhC+c00/EDUZuZRk/DBkI3dzFtnHI2+NyxN4CL g==;
X-CSE-ConnectionGUID: V6bEEYU0SQS5crVkcfsmVQ==
X-CSE-MsgGUID: hBMl6tJAT5+evj0mINTs6g==
X-IronPort-AV: E=McAfee;i="6800,10657,11558"; a="48240328"
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="48240328"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 12:30:43 -0700
X-CSE-ConnectionGUID: mpzDYPcdTXm95pw/qAhHqQ==
X-CSE-MsgGUID: METwUKpFSYm90HmgyL7S8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="175037318"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.112])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 12:30:42 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v2 09/13] drm/i915: Extract sanitize_wm_latency()
Date: Fri, 19 Sep 2025 22:29:56 +0300
Message-ID: <20250919193000.17665-10-ville.syrjala@linux.intel.com>
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

Pull the "zero out invalid WM latencies" stuff into a helper.
Mainly to avoid mixing higher level and lower level stuff in
the same adjust_wm_latency() function.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 23 ++++++++++++++------
 1 file changed, 16 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 21dd15be74f9..1acb9285bd05 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3217,14 +3217,10 @@ static int wm_read_latency(struct intel_display *display)
 		return 2;
 }
 
-static void
-adjust_wm_latency(struct intel_display *display)
+static void sanitize_wm_latency(struct intel_display *display)
 {
 	u16 *wm = display->wm.skl_latency;
-	int i, level, num_levels = display->wm.num_levels;
-
-	if (display->platform.dg2)
-		multiply_wm_latency(display, 2);
+	int level, num_levels = display->wm.num_levels;
 
 	/*
 	 * If a level n (n > 1) has a 0us latency, all levels m (m >= n)
@@ -3233,11 +3229,24 @@ adjust_wm_latency(struct intel_display *display)
 	 */
 	for (level = 1; level < num_levels; level++) {
 		if (wm[level] == 0) {
+			int i;
+
 			for (i = level + 1; i < num_levels; i++)
 				wm[i] = 0;
-			break;
+			return;
 		}
 	}
+}
+
+static void
+adjust_wm_latency(struct intel_display *display)
+{
+	u16 *wm = display->wm.skl_latency;
+
+	if (display->platform.dg2)
+		multiply_wm_latency(display, 2);
+
+	sanitize_wm_latency(display);
 
 	/*
 	 * WaWmMemoryReadLatency
-- 
2.49.1

