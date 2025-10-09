Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEB91BCAE2B
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Oct 2025 23:13:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54E9D10EB21;
	Thu,  9 Oct 2025 21:13:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DpH491TG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41AED10EB1F;
 Thu,  9 Oct 2025 21:13:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760044405; x=1791580405;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2L1UdiWVnq8B/9T3IpE/kAxGh5SuiA1sFQ0KR44I52k=;
 b=DpH491TG5bo6uDH6iZG7vOJ/I0V6Ps9ZLNoVyx1VldEE7NXKGOJYLQFa
 u3SuZ20sfs/zPii5AC/74d/OUNDnUjw163cO3uudatuZhs57xA2jNDE6z
 i0IhX/PrtMZjBlNLUOB6nlALuTj6VzYzamqcQnpPmSPQuStjiIa+6bdu/
 KGMUWhNz9OdkL+KXvQpifPbbNX/Zb15Sv7//9HXIZFAfRu/JbJZuAM5Eg
 LtwHMk4HtwpOrrgnEWOLMI2aP8jaAcrCf9JQsLYGc1ZVr4sbKi/QDHVO+
 XfF1I9t5b+XNjQKRAH2NpmrxobCpZHMEWVxh7q03zDrAOKd/lja55d7ko Q==;
X-CSE-ConnectionGUID: qEFfLDg6S2mM8/ENmTDUTA==
X-CSE-MsgGUID: ULXU8X8tTj+7MBXYQ/uVmQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11577"; a="79910088"
X-IronPort-AV: E=Sophos;i="6.19,217,1754982000"; d="scan'208";a="79910088"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 14:13:25 -0700
X-CSE-ConnectionGUID: yqzWMKSRQ1So7OuDSEF0cw==
X-CSE-MsgGUID: 3r2p7cF/Rp6UNHGddW8wMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,217,1754982000"; d="scan'208";a="204516309"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.21])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 14:13:24 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 2/8] drm/i915: Drop the min plane width w/a adl+
Date: Fri, 10 Oct 2025 00:13:06 +0300
Message-ID: <20251009211313.30234-3-ville.syrjala@linux.intel.com>
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

ADL+ no longer need the plane min width w/a (Wa_14011264657 or
Wa_14011050563). Don't apply it there. DG2 still needs it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 153c76d00977..504871065e09 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -389,6 +389,13 @@ static int glk_plane_max_width(const struct drm_framebuffer *fb,
 	}
 }
 
+static int adl_plane_min_width(const struct drm_framebuffer *fb,
+			       int color_plane,
+			       unsigned int rotation)
+{
+	return 16 / fb->format->cpp[color_plane];
+}
+
 static int icl_plane_min_width(const struct drm_framebuffer *fb,
 			       int color_plane,
 			       unsigned int rotation)
@@ -2815,7 +2822,10 @@ skl_universal_plane_create(struct intel_display *display,
 		plane->max_height = icl_plane_max_height;
 		plane->min_cdclk = icl_plane_min_cdclk;
 	} else if (DISPLAY_VER(display) >= 11) {
-		plane->min_width = icl_plane_min_width;
+		if (DISPLAY_VER(display) >= 14 || display->platform.alderlake_p)
+			plane->min_width = adl_plane_min_width;
+		else
+			plane->min_width = icl_plane_min_width;
 		if (icl_is_hdr_plane(display, plane_id))
 			plane->max_width = icl_hdr_plane_max_width;
 		else
-- 
2.49.1

