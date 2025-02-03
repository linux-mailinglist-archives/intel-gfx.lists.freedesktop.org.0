Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C5DA259DB
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 13:50:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67FBD10E4B3;
	Mon,  3 Feb 2025 12:50:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OiPTeaZx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE23710E4AD;
 Mon,  3 Feb 2025 12:50:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738587010; x=1770123010;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SPxh7nubVmRVVKqHINP7678kjZUEBNG2p8qHwzoy1QM=;
 b=OiPTeaZxEDw0qckg8Rzu/arIC1FKMCuweQ2e53CiderKlC37bIMR4sNw
 X+tbsLGa1WJehGOaViEaU92d+lID1mSjiafk56MAaxAImSFYoBxzIfn2H
 V6tPD9A9nUs+gSSE2pCvPC5zCffBW9waucXWiRVhdkHkvAGObQM3azGOD
 K11RezKwd8+FMhUrT8ZuIdaDN/kpEV88AImxBuvKNRjT0/RMp8B369ret
 5NuuRJPBD8paNnRRGBPHuAGgp/sePFIgW5AqYACJ8onIXJLL/qO6VfHgE
 KqHFTiW45ovQ0TBCknU1+u5ff5P1hGarwBn22JG3vPvRstL+mYlhBzgpC Q==;
X-CSE-ConnectionGUID: NHCnfxoUR5GbKXvAMjvYnw==
X-CSE-MsgGUID: X8abMQdoR4atJQFTfYHQyQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="61548054"
X-IronPort-AV: E=Sophos;i="6.13,255,1732608000"; d="scan'208";a="61548054"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 04:50:10 -0800
X-CSE-ConnectionGUID: pCCfHAmZQ4Sy7Vdc5CxnJw==
X-CSE-MsgGUID: zorq8jypT02pKuDUkLGrhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="133528928"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 04:50:08 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 10/28] drm/i915/vrr: Disable CMRR
Date: Mon,  3 Feb 2025 18:08:22 +0530
Message-ID: <20250203123840.3855874-11-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250203123840.3855874-1-ankit.k.nautiyal@intel.com>
References: <20250203123840.3855874-1-ankit.k.nautiyal@intel.com>
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

Switching between variable and fixed timings is possible as for that we
just need to flip between VRR timings. However for CMRR along with the
timings, few other bits also need to be changed on the fly, which might
cause issues. So disable CMRR for now, till we have variable and fixed
timings sorted out.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index dc4923d49c29..56830513c10d 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -182,7 +182,8 @@ is_cmrr_frac_required(struct intel_crtc_state *crtc_state)
 	int calculated_refresh_k, actual_refresh_k, pixel_clock_per_line;
 	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 
-	if (!HAS_CMRR(display))
+	/* Avoid CMRR for now till we have VRR with fixed timings working */
+	if (!HAS_CMRR(display) || true)
 		return false;
 
 	actual_refresh_k =
-- 
2.45.2

