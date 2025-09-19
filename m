Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE23EB8B156
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 21:30:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8374210EA7F;
	Fri, 19 Sep 2025 19:30:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z+IgIjSY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F067310EA83;
 Fri, 19 Sep 2025 19:30:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758310239; x=1789846239;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kgAPT5zj/MCMTERSaQUft8Xb/Gm0jTD9dMQphnrxZeI=;
 b=Z+IgIjSYfqISSBNrxERPnoX9I+Q7Lp/kU9n5hRXpHDe1nkvDEbLBIm63
 RIXiGurA9lWZy5YPd1XFwvm0mgN72l4r2WMlKMEEAWMs3y4kcWgVFzcim
 /iyJAo8q7uEy/cWhqaXjiOxWuKIwX7N9OEcMjSyqLC8gvtW7XmeCOOOsc
 cquRwifWfeR2+1GbXPY26KW9rINxAFlTmJSFFQwpzWrDx9y+eAc+1Zw0z
 TKpNryoGb6Kc+QRAZkAet/wjPWNqtV9lx8e00UG2aYurPK6b7e0DoXuXG
 TMBd6e5EMHJcB5jARCyZKrZ0Mj1Bk00SLq6aDBLuVjAHPs2O/jscyD6cY A==;
X-CSE-ConnectionGUID: 7dCCv/gRR++2Yhh6HxsSWg==
X-CSE-MsgGUID: pnFnRkQBQv2z6CtqeqhF4w==
X-IronPort-AV: E=McAfee;i="6800,10657,11558"; a="48240319"
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="48240319"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 12:30:39 -0700
X-CSE-ConnectionGUID: nM7kNQRiShe8SD13UkOV5w==
X-CSE-MsgGUID: K0M+DVv5TVWlc38wOHrxrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="175037313"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.112])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 12:30:37 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v2 08/13] drm/i915: Use increase_wm_latency() for the 16Gb
 DIMM w/a
Date: Fri, 19 Sep 2025 22:29:55 +0300
Message-ID: <20250919193000.17665-9-ville.syrjala@linux.intel.com>
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

Bump the latency for all watermark levels in the
16Gb+ DIMM w/a. The spec does ask us to do it only for level
0, but it seems more sane to bump all the levels. If the actual
memory access is slower then the wakeup (WM1+) should also
potentially happen earlier.

This also avoids the theoretical case that WM0 would get bumped
higher than WM1+. Not that it is likely to happen because the WM0
latency is always significantly lower than the WM1 latency.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 98ca592f6042..21dd15be74f9 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3256,7 +3256,7 @@ adjust_wm_latency(struct intel_display *display)
 	 * to avoid any underrun.
 	 */
 	if (need_16gb_dimm_wa(display))
-		wm[0] += 1;
+		increase_wm_latency(display, 1);
 }
 
 static void mtl_read_wm_latency(struct intel_display *display)
-- 
2.49.1

