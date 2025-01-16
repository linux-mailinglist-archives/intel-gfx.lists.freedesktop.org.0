Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2BEA142ED
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 21:17:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7448F10E9F7;
	Thu, 16 Jan 2025 20:17:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eW30hEdy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2231F10E9FA
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2025 20:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737058625; x=1768594625;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=r5AUeADN+C3fFAGQmFI1/3rIHXDxN5ESb3SUxYVcq3k=;
 b=eW30hEdyUiEOt2D/3R/WO9W1KRTjX24osBzHVyjFHTqlHkw1FO4fHZCT
 o7rtQcNVkpeLDEsbRHiZc7KcMzw/hm/EJsNUE+7JKy0rWwdeXqJ8PAnQu
 Zr+8bxtLgRE0u5cTk1pcvDPrDnwaCATT/YHwezuoxNZS3PnlyV78nG5zL
 EMkAZ7u7BfUjdzQ24GckWZNKxbjhRq9ndSIdtmyOpiEz8c1diOGpLqrOZ
 GIyTTHu/LLhKAen4/EaCxtdDsRd4Br1FQIjM5Pn2tbgEcpAitm5ijYQ8K
 1kirp0molmfAPSOxBVkAgQGVrARGYGTSYdKk1Gyyhy0eH/3D9Ifa68vl9 g==;
X-CSE-ConnectionGUID: o55za+PmSQS+HceGhR9o3Q==
X-CSE-MsgGUID: x+0yMW8YSMuolgbB2G3a+g==
X-IronPort-AV: E=McAfee;i="6700,10204,11317"; a="40279251"
X-IronPort-AV: E=Sophos;i="6.13,210,1732608000"; d="scan'208";a="40279251"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 12:17:05 -0800
X-CSE-ConnectionGUID: Qg09QsCWSlKStg3/ke2WWA==
X-CSE-MsgGUID: U6tTGZsXQoqCm/mHo3g+1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,210,1732608000"; d="scan'208";a="105743509"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 Jan 2025 12:17:02 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 Jan 2025 22:17:02 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Paz Zcharya <pazz@chromium.org>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 8/8] drm/i915/dsb: Allow DSB to perform commits when VRR is
 enabled
Date: Thu, 16 Jan 2025 22:16:37 +0200
Message-ID: <20250116201637.22486-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250116201637.22486-1-ville.syrjala@linux.intel.com>
References: <20250116201637.22486-1-ville.syrjala@linux.intel.com>
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

Now that we know how to issue the push with the DSB we can
allow the DSB to drive the commits even when VRR is active.

Cc: Paz Zcharya <pazz@chromium.org>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 82c27da45d33..a3269d5b954e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7728,7 +7728,6 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 	/* FIXME deal with everything */
 	new_crtc_state->use_dsb =
 		new_crtc_state->update_planes &&
-		!new_crtc_state->vrr.enable &&
 		!new_crtc_state->do_async_flip &&
 		!new_crtc_state->has_psr &&
 		!new_crtc_state->scaler_state.scaler_users &&
-- 
2.45.2

