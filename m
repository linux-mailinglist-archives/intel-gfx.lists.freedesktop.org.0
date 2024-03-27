Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A2FE88ECE3
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Mar 2024 18:45:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4FD510FEC3;
	Wed, 27 Mar 2024 17:45:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oIJ2E8bJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80CAA10FEC3
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Mar 2024 17:45:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711561557; x=1743097557;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=8FCc/4O+eSxuuR+Hr3U0TKJ6+6lpkaKPBW5dFwIIeZ4=;
 b=oIJ2E8bJrHyjWYXxJIE7CrM5Fa4fSAVn1lRYpugWgTAqWSSrhLte5vzK
 qLym3F2htogjO1r17F98O8Tw+v3kPXH7Ue6EHePdZxtOQctDhbbJH5UVh
 PyqnZtRuTFcHXjHye/unWtpXd44Wc8uPJGXucPDluBmilr95znts3SAIh
 DUUqA1u2S8JdLOqxCuXQfMACFRFgVkb0FrIv0K/iO9CP9RmlEHIJWw9kA
 akWUvMztrxf+fCxsF+W8AAJXgg+CcK9MZrYNKifaKwHF0QloXKlsN5EUx
 IKa53Vgb03XP6JXxs+N838KrckLYGRuuUnZeRYna7k8ySSTcM1gJvDBKK Q==;
X-CSE-ConnectionGUID: UOjPZzPMR6WWetbeMqkWmA==
X-CSE-MsgGUID: 5SJ1cnSYTHmw4iA2ewaJEA==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="6795400"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; 
   d="scan'208";a="6795400"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 10:45:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="827785906"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; d="scan'208";a="827785906"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 27 Mar 2024 10:45:54 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 27 Mar 2024 19:45:53 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 03/13] drm/i915/cdclk: Drop tgl/dg2 cdclk bump hacks
Date: Wed, 27 Mar 2024 19:45:34 +0200
Message-ID: <20240327174544.983-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240327174544.983-1-ville.syrjala@linux.intel.com>
References: <20240327174544.983-1-ville.syrjala@linux.intel.com>
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

No ever figured out why bumping the cdclk helped
with whatever issue we were having at the time.
Remove the hacks and start from scratch so that we
can actually see if any problems still remain.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 19 -------------------
 1 file changed, 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 504c5cbbcfff..99d2657f29a7 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2802,25 +2802,6 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
 	if (crtc_state->dsc.compression_enable)
 		min_cdclk = max(min_cdclk, intel_vdsc_min_cdclk(crtc_state));
 
-	/*
-	 * HACK. Currently for TGL/DG2 platforms we calculate
-	 * min_cdclk initially based on pixel_rate divided
-	 * by 2, accounting for also plane requirements,
-	 * however in some cases the lowest possible CDCLK
-	 * doesn't work and causing the underruns.
-	 * Explicitly stating here that this seems to be currently
-	 * rather a Hack, than final solution.
-	 */
-	if (IS_TIGERLAKE(dev_priv) || IS_DG2(dev_priv)) {
-		/*
-		 * Clamp to max_cdclk_freq in case pixel rate is higher,
-		 * in order not to break an 8K, but still leave W/A at place.
-		 */
-		min_cdclk = max_t(int, min_cdclk,
-				  min_t(int, crtc_state->pixel_rate,
-					dev_priv->display.cdclk.max_cdclk_freq));
-	}
-
 	return min_cdclk;
 }
 
-- 
2.43.2

