Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66EF5B8B15C
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 21:30:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D851710EA80;
	Fri, 19 Sep 2025 19:30:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="igDAdfGW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0405110EA87;
 Fri, 19 Sep 2025 19:30:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758310248; x=1789846248;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iU6+gF42JHyL3lqKtzdSZpt26J6rcrvtlCKD7BIZclE=;
 b=igDAdfGWEm2Gsb7pjBnDuEjWx8AcMPF6ZRABHb2IuFh387ay+bjl2jU0
 SS6zyzRYmoSa2Z9ZXJn0RoQs7o4LeksK4McM7djbEBlebQYU2CiSs1cgs
 AYI57LgRKLmyGriovvLTRS99/rvicxo6ZkON5i0SNIVseYIpykF2oKp3Z
 n4RuxngsOlOmllTh1MvlxlO281zU+VuZ9tJRxmKAQa/ZOwLP9Kd7rT79m
 5aiSFO2f1T+hegA0xDELEkaJFFnxocGjKb8X7giv4HS7om9RhTv+RM8wA
 2EMYQykleTw3ARyztIo9uHH9JRCqcEdhDRuDuYx69Pk9AwriEUeGlUw40 g==;
X-CSE-ConnectionGUID: /Z6bf51fRU6QYvXkvhDa5A==
X-CSE-MsgGUID: U598uegJRUKjduQB6mNJfg==
X-IronPort-AV: E=McAfee;i="6800,10657,11558"; a="48240331"
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="48240331"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 12:30:48 -0700
X-CSE-ConnectionGUID: JLvUzxubSgGGhlpxqASj8Q==
X-CSE-MsgGUID: oLD0/C/kRYieiCVq3dvWZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="175037321"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.112])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 12:30:46 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v2 10/13] drm/i915: Flatten sanitize_wm_latency() a bit
Date: Fri, 19 Sep 2025 22:29:57 +0300
Message-ID: <20250919193000.17665-11-ville.syrjala@linux.intel.com>
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

Move the inner loop out from the outer loop in
sanitize_wm_latency() to flatten things a bit.
Easier to read flat code.

v2: Move the inner loop out completely (Luca)

Cc: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 1acb9285bd05..d83772c6ea9a 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3228,14 +3228,12 @@ static void sanitize_wm_latency(struct intel_display *display)
 	 * of the punit to satisfy this requirement.
 	 */
 	for (level = 1; level < num_levels; level++) {
-		if (wm[level] == 0) {
-			int i;
-
-			for (i = level + 1; i < num_levels; i++)
-				wm[i] = 0;
-			return;
-		}
+		if (wm[level] == 0)
+			break;
 	}
+
+	for (level = level + 1; level < num_levels; level++)
+		wm[level] = 0;
 }
 
 static void
-- 
2.49.1

