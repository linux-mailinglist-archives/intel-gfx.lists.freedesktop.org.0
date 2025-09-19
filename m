Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1564B8B147
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 21:30:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 635A310EA7D;
	Fri, 19 Sep 2025 19:30:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HI/XsBSO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1261210EA7D;
 Fri, 19 Sep 2025 19:30:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758310217; x=1789846217;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wFJUg3uQnQXxxEc7T0ZWge7DVNAYrBryRTZgfL4tPz0=;
 b=HI/XsBSOp9YuX7VUMEViknFas5FzEB1FUr5iJwD+7NYovDBnHPvg/j7Q
 IR3Q9qTQePPpL10g7MOeTb8ZP+ss+zTqtRJXo2ay5vZGLNWS4AYacbxhF
 WJfW+2XadvPcePN0/60HP8QOVoS4vzvNC03Ynk0tdeTLu7PHlujWhZji2
 GQqATSWLuUcA+xNloi64ofDRWcpWR7biNXjlT99yOaEFSWksZL5XD7wMa
 I4y6XvtEfjV1CSC0v1tphZB2teLJlbn+xTeVjZ98BL1Yu1PRXD05LA1XZ
 cbV/c6o/oQ02THxTqZiq3/o8amC5ZzKK96VkS6ptWcIfoI46ejilO0ABM w==;
X-CSE-ConnectionGUID: UzImFAI2Q4y+W0JMgBGMZg==
X-CSE-MsgGUID: 3ftlnV92TnWhu+sgREGDVA==
X-IronPort-AV: E=McAfee;i="6800,10657,11558"; a="48240260"
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="48240260"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 12:30:17 -0700
X-CSE-ConnectionGUID: Ld6yqXkLSNmvtG3XHDp/+Q==
X-CSE-MsgGUID: SWDgacl0TpuzgkEtYMJ/1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="176722966"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.112])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 12:30:15 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v2 03/13] drm/i915: Tweak the read latency fixup code
Date: Fri, 19 Sep 2025 22:29:50 +0300
Message-ID: <20250919193000.17665-4-ville.syrjala@linux.intel.com>
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

If WM0 latency is zero we need to bump it (and the WM1+ latencies)
but a fixed amount. But any WM1+ level with zero latency must
not be touched since that indicates that corresponding WM level
isn't supported.

Currently the loop doing that adjustment does work, but only because
the previous loop modified the num_levels used as the loop boundary.
This all seems a bit too fragile. Remove the num_levels adjustment
and instead adjust the read latency loop to abort when it encounters
a zero latency value.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 2bf334fe63c9..2969cc58dabe 100644
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

