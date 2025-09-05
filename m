Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60814B45B50
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Sep 2025 16:59:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D26E410EBDD;
	Fri,  5 Sep 2025 14:59:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QI7GcCbQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FF0C10EBDC;
 Fri,  5 Sep 2025 14:59:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757084357; x=1788620357;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MHaFNd8DVZHFhYYOnygWZuePyooFa+eSPPBbgvTEu5w=;
 b=QI7GcCbQvdlxqQ38v5M06ng6o8Of31mUDYrF6ECY7QnkuwWaMUYhMrT7
 QGrKOO9gfHgXw5YXcpkWEK7f5SjflHwQc3RnNl2t8hG75aOZh+FEg1+Ix
 cELyqfgLmU6Ulkwh3QMFYs1q+4Aj1ksOLd+KDGlcJ5G2aLjWzpV6zl0C8
 WI7Ezp2FMpXgob4QT7iJ7vNcYlDd///m72cVtsJ1idTFqwfVepjf5qwaz
 zyfNRM6QumsC8qT2gYDG91kpeTTiSn0JCED/MoRuaP+EQ8e/0qAjO4m1u
 NOqrWKRhoXYCa/K263FY/7nze2HcoafbYj9N6ixujBLXC+K50YvuQeHMx A==;
X-CSE-ConnectionGUID: sDYURmmBQ0SQvCFFyvuCvA==
X-CSE-MsgGUID: wtKYQ03OSTSUx+JnGqRQMg==
X-IronPort-AV: E=McAfee;i="6800,10657,11544"; a="70054404"
X-IronPort-AV: E=Sophos;i="6.18,241,1751266800"; d="scan'208";a="70054404"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 07:59:17 -0700
X-CSE-ConnectionGUID: 1suUuSQYSj+E30di07cjfw==
X-CSE-MsgGUID: FeSqG+TcQ1CbeUh5pDe7ew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,241,1751266800"; d="scan'208";a="172987818"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.33])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 07:59:16 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 11/13] drm/i915: Make wm latencies monotonic
Date: Fri,  5 Sep 2025 17:58:30 +0300
Message-ID: <20250905145832.12097-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250905145832.12097-1-ville.syrjala@linux.intel.com>
References: <20250905145832.12097-1-ville.syrjala@linux.intel.com>
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index e11ba1a822f4..d334cc661328 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3238,6 +3238,19 @@ static void sanitize_wm_latency(struct intel_display *display)
 	}
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
@@ -3248,6 +3261,8 @@ adjust_wm_latency(struct intel_display *display)
 
 	sanitize_wm_latency(display);
 
+	make_wm_latency_monotonic(display);
+
 	/*
 	 * WaWmMemoryReadLatency
 	 *
-- 
2.49.1

