Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39019B45B40
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Sep 2025 16:58:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C90CE10EBCE;
	Fri,  5 Sep 2025 14:58:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PMjAzCOM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C954010EBD1;
 Fri,  5 Sep 2025 14:58:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757084327; x=1788620327;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rrXUBahVdDk6PD65PXIv2VcMCclUP+46zS4RuNZCMtc=;
 b=PMjAzCOMo+nH1jFxhb8rYY7GCYHls2Q4vzWf4WYws1AwnhoeE7+r8ZfD
 iit00x3aB6L8iERtLQbc/f6xckE4YmAX1KOBG3YH3byHcsIMPqt7ZfUma
 AK51mYe8PSaSYBRTmGGzo5B4lQsLjFNJCOsQ/C1BkkRmkK73oTLg86OEd
 lRj7WkQZaACunhcUyudjrjzWcKpdlQbWnUJKcEiyzUUX4CCiE0AvCkeZN
 ep6MACC/Euqkv5q1V4M0/J5eFCvMqIkiFaTByBhkA/RbaYRP1RLZDj6fW
 D8dgVTkczKjK3ScRpfu016seXJYiwLLoA19tDVTr9++1obNAUYeYJ5+Ta A==;
X-CSE-ConnectionGUID: t0zHZsSdQkGc0w1eh4vWPw==
X-CSE-MsgGUID: ez4r4ZebQ+K8L9b6GVWIiQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11544"; a="58469650"
X-IronPort-AV: E=Sophos;i="6.18,241,1751266800"; d="scan'208";a="58469650"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 07:58:47 -0700
X-CSE-ConnectionGUID: ou1tI1heRLOnRLVbCSd8jw==
X-CSE-MsgGUID: a3LfckoOQySpxZKxWc96xA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,241,1751266800"; d="scan'208";a="172105294"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.33])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 07:58:46 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 03/13] drm/i915: Tweak the read latency fixup code
Date: Fri,  5 Sep 2025 17:58:22 +0300
Message-ID: <20250905145832.12097-4-ville.syrjala@linux.intel.com>
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

