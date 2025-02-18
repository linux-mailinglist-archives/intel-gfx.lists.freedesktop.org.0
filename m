Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A308EA3AAB6
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2025 22:20:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 434E610E772;
	Tue, 18 Feb 2025 21:20:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ns3J5Fyg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3502B10E772
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2025 21:20:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739913606; x=1771449606;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=GhaJb0ZViU/9R7+ackDQjnQD9FIBgH4muoewP872S9U=;
 b=ns3J5FygjE2bdVq64yrRFaCS2v1VwQJNNxNw76B5lopioZWx+CwcxuGc
 uGAvtI+6jfiBghESpLRktAqbsl7OH2ZDtiTzwm2qaf39hl/L7nCVkgVAW
 ukEEYDqD42sE/yir5sYmsnoBTx2ncboLEL6h52KM4bWR4Cs4rVSnai5B9
 apiIw2VnWdNgKu2kBm8FAueXzs+2N3sV0OG3mgPo/IV5ozUG8TZM/ckEx
 Cr6im4H8unSfx6J1wVlwia/0/JXo3Lp8OsyJJzA+IYBZ+ytseIxs4ACUT
 3kch9Sr/Io5HPDNGcrIVLNuk8CnuBEEPueXojg+zYDoxbeM0K+QhynU7x w==;
X-CSE-ConnectionGUID: OtRFZVW8QCynvHNXDdw+Gg==
X-CSE-MsgGUID: pE5gSpArRoGK4PrXH2XNfg==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="39862330"
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="39862330"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 13:20:06 -0800
X-CSE-ConnectionGUID: 7oCf8L8cQx2sXS8B9PbEeg==
X-CSE-MsgGUID: 5n/ZnoxiTMOeKoMAw8g2Lg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="114693526"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 18 Feb 2025 13:20:04 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Feb 2025 23:20:03 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 15/19] drm/i915: Simplify cdclk_disable_noatomic()
Date: Tue, 18 Feb 2025 23:19:09 +0200
Message-ID: <20250218211913.27867-16-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
References: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
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

Instead of hand rolling the cdclk state disabling for a
pipe in noatomic() let's just recompute the whole thing
from scratch. Less code we have to remember to keep in sync.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 62caee4a8b64..2a8749a0213e 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3364,13 +3364,8 @@ void intel_cdclk_update_hw_state(struct intel_display *display)
 void intel_cdclk_crtc_disable_noatomic(struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(crtc);
-	struct intel_cdclk_state *cdclk_state =
-		to_intel_cdclk_state(display->cdclk.obj.state);
-	enum pipe pipe = crtc->pipe;
 
-	cdclk_state->min_cdclk[pipe] = 0;
-	cdclk_state->min_voltage_level[pipe] = 0;
-	cdclk_state->active_pipes &= ~BIT(pipe);
+	intel_cdclk_update_hw_state(display);
 }
 
 static int intel_compute_max_dotclk(struct intel_display *display)
-- 
2.45.3

