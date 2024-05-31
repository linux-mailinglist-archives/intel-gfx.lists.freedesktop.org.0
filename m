Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A020F8D60DA
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 13:41:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F102C10E4D7;
	Fri, 31 May 2024 11:41:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Slpt/SIU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4419610E4B8
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2024 11:41:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717155675; x=1748691675;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=+w7i77Ps4phzbfX9qHSmqRpTGsLdvzmZiKgrLm6Bh7A=;
 b=Slpt/SIUHq2XmRjjs7CnmsWysgChrK6wo7dvOo3/UIKPxH3bEMmUnNyF
 1Xkoz1vUEbhj+e1cQB0P5satdINDm7y+cfdssD3gzBMO5bgAxR30WznWg
 JOyX6WJlFUegzJ86T4zVWY6PoVKkXPBCHrL4am0HgKClIscSKoAI+oqWe
 7c7YdHVJRjJGrpewh1hF3mckzhQt74xdILtTbdWjX0teIYylV60+O+vol
 dIJHSxe1UKpSJEzjMC8C2EihRbUwrJBdaIh/go/pDi7EDuiPwBftynxmr
 OZM8FkGkefGDzQjpWUv60O08GUJsvLvvjIYSCgBlp73jq1OoTdtreKcv0 w==;
X-CSE-ConnectionGUID: MtitmOUDQp6sGtnhftFgyA==
X-CSE-MsgGUID: bakTDjBnRDy4WWZOwj+WVA==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="13863911"
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="13863911"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 04:41:15 -0700
X-CSE-ConnectionGUID: em9aS6FcRNi0gKx1Qi83tg==
X-CSE-MsgGUID: e++KcplhTcmqXoCAA4WUpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="36132744"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 31 May 2024 04:41:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 31 May 2024 14:41:12 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 4/4] drm/i915/dsb: Use intel_color_uses_dsb()
Date: Fri, 31 May 2024 14:41:01 +0300
Message-ID: <20240531114101.19994-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.1
In-Reply-To: <20240531114101.19994-1-ville.syrjala@linux.intel.com>
References: <20240531114101.19994-1-ville.syrjala@linux.intel.com>
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

Use intel_color_uses_dsb() instead of open coding it in
intel_vblank_evade_init(). Make the logic around DSB a bit
more isolated from the rest of the code.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vblank.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index eb80952b0cfd..789b2db4d95e 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -5,6 +5,7 @@
 
 #include "i915_drv.h"
 #include "i915_reg.h"
+#include "intel_color.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
@@ -637,7 +638,8 @@ void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
 	 * DSB execution waits for the transcoder's undelayed vblank,
 	 * hence we must kick off the commit before that.
 	 */
-	if (new_crtc_state->dsb || new_crtc_state->update_m_n || new_crtc_state->update_lrr)
+	if (intel_color_uses_dsb(new_crtc_state) ||
+	    new_crtc_state->update_m_n || new_crtc_state->update_lrr)
 		evade->min -= adjusted_mode->crtc_vblank_start - adjusted_mode->crtc_vdisplay;
 }
 
-- 
2.44.1

