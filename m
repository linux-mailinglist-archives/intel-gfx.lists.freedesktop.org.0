Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59071A7B8A8
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Apr 2025 10:17:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E38410EA61;
	Fri,  4 Apr 2025 08:17:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MOlDocqH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 720EE10EA61
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Apr 2025 08:17:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743754644; x=1775290644;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=e02cM4R1rabkKdpv0fMVX5NelBsQhTZnE1vEIOu25tQ=;
 b=MOlDocqHRXDzzCqPffcNLQ7BbR3P2Ln7c7zfWr98DEWkImNO9BQQrRQw
 Lx5HuJvmeZlbQtI7zWJihHjAKjWweVTLyZwxMrzL4qYAXrvzheeONteOS
 Rh1wsrfa7K5SNhuIAFMZpOdnFWUjMZtuvj/FBD3xIzwPNdLilhSFoIin8
 jCuhsk38nDh9x6cNCgMjeIo2x+q7XoKSi4nt7Qh0tSeKrHjqQ91sHOH4c
 FWALxDtxWCRk2IgK5li0Bz3fuPg7DsWdnJ1feVt0dtMLsVAmTdsqyCPbL
 Io6Eu6LqVbb6sFgPWzFcwmVO6bKXld3060RRymrTQFgGrIN8I5pDtD028 g==;
X-CSE-ConnectionGUID: RpJVWyrdRaGl/5jLiG4O4A==
X-CSE-MsgGUID: wmG2uNb/ReeuxljVvHmeaw==
X-IronPort-AV: E=McAfee;i="6700,10204,11393"; a="45078275"
X-IronPort-AV: E=Sophos;i="6.15,187,1739865600"; d="scan'208";a="45078275"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2025 01:17:23 -0700
X-CSE-ConnectionGUID: hcnaVYezRkKOHWodik+HRw==
X-CSE-MsgGUID: jBT1B4KuQ3ulxn2lV0uSXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,187,1739865600"; d="scan'208";a="132453241"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2025 01:17:21 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com,
 arun.r.murthy@intel.com, stable@vger.kernel.org,
 ville.syrjala@linux.intel.com
Subject: [PATCH] drm/i915/vrr: Add vrr.vsync_{start, end} in vrr_params_changed
Date: Fri,  4 Apr 2025 13:35:40 +0530
Message-ID: <20250404080540.2059511-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
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

Add the missing vrr parameters in vrr_params_changed() helper.
This ensures that changes in vrr.vsync_{start,end} trigger a call to
appropriate helpers to update the VRR registers.

Fixes: e8cd188e91bb ("drm/i915/display: Compute vrr_vsync params")
Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: <stable@vger.kernel.org> # v6.10+
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c540e2cae1f0..ced8ba0f8d6d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -969,7 +969,9 @@ static bool vrr_params_changed(const struct intel_crtc_state *old_crtc_state,
 		old_crtc_state->vrr.vmin != new_crtc_state->vrr.vmin ||
 		old_crtc_state->vrr.vmax != new_crtc_state->vrr.vmax ||
 		old_crtc_state->vrr.guardband != new_crtc_state->vrr.guardband ||
-		old_crtc_state->vrr.pipeline_full != new_crtc_state->vrr.pipeline_full;
+		old_crtc_state->vrr.pipeline_full != new_crtc_state->vrr.pipeline_full ||
+		old_crtc_state->vrr.vsync_start != new_crtc_state->vrr.vsync_start ||
+		old_crtc_state->vrr.vsync_end != new_crtc_state->vrr.vsync_end;
 }
 
 static bool cmrr_params_changed(const struct intel_crtc_state *old_crtc_state,
-- 
2.45.2

