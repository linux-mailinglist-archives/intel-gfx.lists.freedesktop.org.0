Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A04A55119
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Mar 2025 17:34:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 351CA10E9FD;
	Thu,  6 Mar 2025 16:34:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PEys71nk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F024A10E9FD
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Mar 2025 16:34:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741278873; x=1772814873;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+1CptuL0IKJxGTN6DK8drjIhgdWHKcRgzwMU+qlf4O4=;
 b=PEys71nkw9bBG4/9JkuB8Ki4qjPgp0hjbMKxbCgU0R28qPEyw/1no0a0
 fNqOI3fjFfo2jOgiDAAbgFjrqkw6EeftZ8Rw/whW5z35mLkZnl3y83ywW
 jjrmIhzZXXbyFyxW7pFr5K7GaIvDth7qrWP99l5kE5CTYaSkpWSD+AHX8
 VXN5zabHUOjwlbNEmaB/PpuFIP31bPWciE2aDV0jFeaD0uZi2Gjt+YTTN
 PxtuWedKL4BTqU7rGZ/KGyapZW1h5380hZVn7IwlZdfyE54y7gYlMVMX3
 OYLjVsMYHTaGa6Wt6Bloip3AS9h3aCBP+MICMIbLS2xIVRpb+03XJGUpt w==;
X-CSE-ConnectionGUID: IDfl2XuDQPWHqzV9z17v4Q==
X-CSE-MsgGUID: +xyG9KLjSH2hRfzPK7p26w==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="53704302"
X-IronPort-AV: E=Sophos;i="6.14,226,1736841600"; d="scan'208";a="53704302"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 08:34:33 -0800
X-CSE-ConnectionGUID: dslckpXERjWu/OhZ4JPSHA==
X-CSE-MsgGUID: Y9435oWpTRKe+V6+hlJ0MA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="124288845"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 06 Mar 2025 08:34:30 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 06 Mar 2025 18:34:29 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: [PATCH v2 03/18] drm/i915: Use intel_plane_set_invisible() in
 intel_plane_disable_noatomic()
Date: Thu,  6 Mar 2025 18:34:05 +0200
Message-ID: <20250306163420.3961-4-ville.syrjala@linux.intel.com>
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

Reuse intel_plane_set_invisible() in intel_plane_disable_noatomic()
instead of hand rolling the same stuff.

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 8d94ab7de669..5d7b28f6009f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -674,13 +674,9 @@ void intel_plane_disable_noatomic(struct intel_crtc *crtc,
 		    plane->base.base.id, plane->base.name,
 		    crtc->base.base.id, crtc->base.name);
 
+	intel_plane_set_invisible(crtc_state, plane_state);
 	intel_set_plane_visible(crtc_state, plane_state, false);
 	intel_plane_fixup_bitmasks(crtc_state);
-	crtc_state->data_rate[plane->id] = 0;
-	crtc_state->data_rate_y[plane->id] = 0;
-	crtc_state->rel_data_rate[plane->id] = 0;
-	crtc_state->rel_data_rate_y[plane->id] = 0;
-	crtc_state->min_cdclk[plane->id] = 0;
 
 	if ((crtc_state->active_planes & ~BIT(PLANE_CURSOR)) == 0 &&
 	    hsw_ips_disable(crtc_state)) {
-- 
2.45.3

