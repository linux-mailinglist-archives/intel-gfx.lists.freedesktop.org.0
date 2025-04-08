Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A3EA7FEC5
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 13:15:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72FBA10E668;
	Tue,  8 Apr 2025 11:15:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fvADJt8M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B5B010E660;
 Tue,  8 Apr 2025 11:15:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744110956; x=1775646956;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VAXb1KmDJhW8TF9sV7++g3pjicCEuxm+FFvaYC0aEHk=;
 b=fvADJt8MkAmnnWrwwQjjq/FJx/x9ndQKstJIJYfcYN5G+jJhwfn8qL74
 VRqouIyJktnPV4Ez902IUStyxMaKw51Eqx1AE7HHHIUXkJKj8fBq+EMfw
 jxVgxao3bM7O3Ilj7BTdcr+/JZR1Uw28LCZj/eNkG8Ckwa8rzv3zeGI/B
 e2le7D1OHpBOQp2BkxCwo/eHKUNDNZQOG9eOzCzJ24A49BiOggLwdS0rO
 UicJoDTpVL5jd02i6Fs/cLhufZmkLqH+EmHSvoJKSpIMQFKV6Nun1U9pQ
 0GljzjTcWS0ghfwfEkcA4mGxlUr/9RFFtDKeu/QDIrD5i6k+XbH4XpNh3 Q==;
X-CSE-ConnectionGUID: GTiOV5TdT0un9jdI+9IM6g==
X-CSE-MsgGUID: wc9o8YEVQty3y9WVqB75qg==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="45655937"
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; d="scan'208";a="45655937"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 04:15:56 -0700
X-CSE-ConnectionGUID: EEJm3B5RRH+Ggk7wOlU1Nw==
X-CSE-MsgGUID: YcNz0GJvReaX0+GDiv9Lgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; d="scan'208";a="133210021"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by orviesa004.jf.intel.com with ESMTP; 08 Apr 2025 04:15:54 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 chaitanya.kumar.borah@intel.com, animesh.manna@intel.com
Subject: [PATCH 10/11] drm/i915/color: Do not pre-load LUTs with DB registers
Date: Tue,  8 Apr 2025 16:30:21 +0530
Message-Id: <20250408110022.1907802-11-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250408110022.1907802-1-chaitanya.kumar.borah@intel.com>
References: <20250408110022.1907802-1-chaitanya.kumar.borah@intel.com>
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

Since Double Buffered LUT registers can be written in active region
no need to preload them.

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index ac00b86798fb..671db6926e4c 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -2041,9 +2041,13 @@ void intel_color_wait_commit(const struct intel_crtc_state *crtc_state)
 static bool intel_can_preload_luts(struct intel_atomic_state *state,
 				   struct intel_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(state);
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
 
+	if (HAS_DOUBLE_BUFFERED_LUT(display))
+		return false;
+
 	return !old_crtc_state->post_csc_lut &&
 		!old_crtc_state->pre_csc_lut;
 }
-- 
2.25.1

