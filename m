Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93867A5512B
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Mar 2025 17:35:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED00610EA0D;
	Thu,  6 Mar 2025 16:35:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E+y9dsFt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED20B10EA08
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Mar 2025 16:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741278901; x=1772814901;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5qUtzQy+LwiOwjQlO1hIXmwEO+d6U17bCkaQfSgamjs=;
 b=E+y9dsFt4FDuqQ82gQtgI6RqPQl6hZt0Hh+8jXSv13FF+Thvs16p3nH0
 85p4Oqv//vPzCZXLEKkTve7oawQEX+MqxHBBAwUcqmS1lHfOZ9Xtol1XB
 15LdDZTN18O4quDcqES1YpOmpHYZQytdCFdBUMI7k45QDItbdsznt5pzs
 U8h3frHZKfWUnvCuhF2s5xIKalrM0HC63igGt4bmrh3b0EeXoESWFkO2a
 4dLAW/CmMds5RhrZ4RXOnoegq/hUrJlhw/v2Gcu7E6+2m/GeeWI6KNAKb
 q7Y6g82dDOzSFomeUYe/NcTSdwj2rjF5TdKBcJk5pn2OB9AiJOPXMqsvU w==;
X-CSE-ConnectionGUID: +ZngTHpGQ+eIKX7rb57Fbg==
X-CSE-MsgGUID: cSkpGcDkRBaohaVxoY4Ymw==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="53704374"
X-IronPort-AV: E=Sophos;i="6.14,226,1736841600"; d="scan'208";a="53704374"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 08:35:01 -0800
X-CSE-ConnectionGUID: vYCX3TEjSduan4i59GlKhA==
X-CSE-MsgGUID: AMXQxHk/S46eafRrAGLCYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="124289122"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 06 Mar 2025 08:34:58 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 06 Mar 2025 18:34:57 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: [PATCH v2 12/18] drm/i915: Skip some bw_state readout on pre-icl
Date: Thu,  6 Mar 2025 18:34:14 +0200
Message-ID: <20250306163420.3961-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250306163420.3961-1-ville.syrjala@linux.intel.com>
References: <20250306163420.3961-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

We only compute bw_state->data_rate and bw_state->num_active_planes
on icl+. Do the same during readout so that we don't leave random
junk inside the state.

v2: Skip the whole intel_bw_crtc_update() (Vinod)

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 30e6f33d6f30..e4d79b496e12 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -1441,7 +1441,8 @@ void intel_bw_update_hw_state(struct intel_display *display)
 		if (crtc_state->hw.active)
 			bw_state->active_pipes |= BIT(pipe);
 
-		intel_bw_crtc_update(bw_state, crtc_state);
+		if (DISPLAY_VER(display) >= 11)
+			intel_bw_crtc_update(bw_state, crtc_state);
 	}
 }
 
-- 
2.45.3

