Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E528B45B4E
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Sep 2025 16:59:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C33AD10EBDB;
	Fri,  5 Sep 2025 14:59:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WzY4VVHy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CCD110EBDC;
 Fri,  5 Sep 2025 14:59:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757084353; x=1788620353;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=03g3KneuXcYeqcrujvbgCN65qcFiFLAK4TJlnG99ZDM=;
 b=WzY4VVHyzkY+Qq10Fohaa9ruEw1QorM0J6GZfxL9ZBzhrlojsEgoO0ko
 pbSDfMiixyJVtjty5By0qcgdxkk3p5vv1re2q0BktR99ILSAbqCEaa6vB
 NvO2h+1riJlBkiqtQHK3ylaMFspRvFIiGaZ7b7WnbojpzvZM61jMhYACS
 OwKAIjVzah84d7oZJF2uISc06NGYqnaElzjQE9PF1wSzl00FMSF2SxeP4
 x1ud9ooXrInlYdwJQPTWEgSk+ab5Wr8h7VTwIi7Zy3LzXhXHOdbyRfaSb
 /q5xxjnH4753W4Xhg0977JikPc6XW7187EE18aE6tT15imej3Ax+4LQBP g==;
X-CSE-ConnectionGUID: cphm6yhLQGqfGDf6J/lOLg==
X-CSE-MsgGUID: awuBW/SjQRqrvVjfiCcn8A==
X-IronPort-AV: E=McAfee;i="6800,10657,11544"; a="70054400"
X-IronPort-AV: E=Sophos;i="6.18,241,1751266800"; d="scan'208";a="70054400"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 07:59:13 -0700
X-CSE-ConnectionGUID: Y/UnQnjGTviHPtS4jMRjuA==
X-CSE-MsgGUID: 93dv8IBSSY22eSZyTfun7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,241,1751266800"; d="scan'208";a="172987817"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.33])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 07:59:12 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 10/13] drm/i915: Flatten sanitize_wm_latency() a bit
Date: Fri,  5 Sep 2025 17:58:29 +0300
Message-ID: <20250905145832.12097-11-ville.syrjala@linux.intel.com>
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

Flatten the loop inside sanitize_wm_latency() a bit
by using 'continue'.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index e3305a399ddf..e11ba1a822f4 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3228,13 +3228,13 @@ static void sanitize_wm_latency(struct intel_display *display)
 	 * of the punit to satisfy this requirement.
 	 */
 	for (level = 1; level < num_levels; level++) {
-		if (wm[level] == 0) {
-			int i;
+		if (wm[level] != 0)
+			continue;
 
-			for (i = level + 1; i < num_levels; i++)
-				wm[i] = 0;
-			return;
-		}
+		for (level = level + 1; level < num_levels; level++)
+			wm[level] = 0;
+
+		return;
 	}
 }
 
-- 
2.49.1

