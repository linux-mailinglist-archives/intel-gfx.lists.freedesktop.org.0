Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8029BCAE3B
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Oct 2025 23:14:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CE8710EB28;
	Thu,  9 Oct 2025 21:13:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kHaE9jSn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F42810EB22;
 Thu,  9 Oct 2025 21:13:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760044431; x=1791580431;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2w2R/0lm+O+tUoBcIvtGBw7R+xiW/3p8VbsPlpiAf7M=;
 b=kHaE9jSnVYYor31vtCjbXEnJh/ABQHyaHQZY83kqgHx7qsUi7GRwx8/K
 +qOBlIQwjYmiDqrwwnwkg/RMI68Cj5p/Uk9y0WZNjTfYWh1dE3Ul7Ym9D
 BTyF3OSMlQV64BKhPFbuMo82ZkvjOXakIzSaC544Fq0A5Dzh+qdttAHLU
 7klK5kgRJv1uxawqc84933Svc4jKLHkiBNkXEEvlrLTZEofcR/b66sAxs
 kOXTnke18zSkiExK6zXtltdoOIGWzMNVgjsYO8Q4oHKdvs45R009v23m9
 hoZAa28QJjPUEHzOJoRexaouNR1JgoN46Ngz0HQEAzGlwwh6Gtx/GdTRX A==;
X-CSE-ConnectionGUID: 94H6Vx08QoqPKh/gz6WR4g==
X-CSE-MsgGUID: pacf0OSMTWK5FdunFsdDhw==
X-IronPort-AV: E=McAfee;i="6800,10657,11577"; a="62306753"
X-IronPort-AV: E=Sophos;i="6.19,217,1754982000"; d="scan'208";a="62306753"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 14:13:51 -0700
X-CSE-ConnectionGUID: 5Lv7rgIJTB6qVzOTsgaDHw==
X-CSE-MsgGUID: cHjCpy1kQeyTLcJzhpyOSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,217,1754982000"; d="scan'208";a="185933292"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.21])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 14:13:49 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 8/8] drm/i915: Unify the logic in {skl,glk}_plane_has_*()
Date: Fri, 10 Oct 2025 00:13:12 +0300
Message-ID: <20251009211313.30234-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251009211313.30234-1-ville.syrjala@linux.intel.com>
References: <20251009211313.30234-1-ville.syrjala@linux.intel.com>
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

Use the similar logic in skl_plane_has_planar(),
glk_plane_has_planar() and skl_plane_has_rc_ccs() to avoid
having to think too much when comparing the three.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/skl_universal_plane.c   | 16 ++++++----------
 1 file changed, 6 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 53130b5e4249..d056fc549c7e 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2427,10 +2427,7 @@ static bool skl_plane_has_planar(struct intel_display *display,
 	if (pipe == PIPE_C)
 		return false;
 
-	if (plane_id != PLANE_1 && plane_id != PLANE_2)
-		return false;
-
-	return true;
+	return plane_id == PLANE_1 || plane_id == PLANE_2;
 }
 
 static const u32 *skl_get_plane_formats(struct intel_display *display,
@@ -2449,10 +2446,7 @@ static const u32 *skl_get_plane_formats(struct intel_display *display,
 static bool glk_plane_has_planar(struct intel_display *display,
 				 enum pipe pipe, enum plane_id plane_id)
 {
-	if (plane_id != PLANE_1 && plane_id != PLANE_2)
-		return false;
-
-	return true;
+	return plane_id == PLANE_1 || plane_id == PLANE_2;
 }
 
 static const u32 *glk_get_plane_formats(struct intel_display *display,
@@ -2699,8 +2693,10 @@ skl_plane_disable_flip_done(struct intel_plane *plane)
 static bool skl_plane_has_rc_ccs(struct intel_display *display,
 				 enum pipe pipe, enum plane_id plane_id)
 {
-	return pipe != PIPE_C &&
-		(plane_id == PLANE_1 || plane_id == PLANE_2);
+	if (pipe == PIPE_C)
+		return false;
+
+	return plane_id == PLANE_1 || plane_id == PLANE_2;
 }
 
 static u8 skl_plane_caps(struct intel_display *display,
-- 
2.49.1

