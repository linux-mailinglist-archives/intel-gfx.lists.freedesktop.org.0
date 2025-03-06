Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D16F3A54BF3
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Mar 2025 14:23:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61DD410E972;
	Thu,  6 Mar 2025 13:23:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X+tuYYjT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F45B10E972;
 Thu,  6 Mar 2025 13:23:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741267392; x=1772803392;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=73c77X2jtrQLzajo0bb/IL2SbaXrtR99nV38+tucoMI=;
 b=X+tuYYjTnRhfx7jQMH+PO/Ot8MNPrgW09Ail0nNbh159UKeLL9PsKYdw
 uU6io7J7eGhJB/RU7StOBKhvXDId9VWX5ZB7YDFNE0ma9KB3KaRSoQ4FQ
 hAETLRHoDB7L+FtSsisnUT9M3VQEmKIOzqkNCJ6Ae/lLxZjOBmd1HIJ+B
 H9lcWIwwWTnEdgK8c/AGfRBP+qhGwD0BhtSAOPSMVsS9i/OltO9kDhcqP
 ndDwzKhBbgYDwLD2x75R2voJpeFf0Oea6cf2Pj5GyPVwVb0ESfyPj5wyG
 jyPuum6V+IMt0+AgMlHTe8A7gFHXSITa/esWPtVwo2m7+aaY1UHJvj6WW A==;
X-CSE-ConnectionGUID: AKmsyKIwRkCbGrtTtJgXfg==
X-CSE-MsgGUID: i+D6+Fq8QQ+nrcZMk0lWwg==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="41524614"
X-IronPort-AV: E=Sophos;i="6.14,226,1736841600"; d="scan'208";a="41524614"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 05:23:12 -0800
X-CSE-ConnectionGUID: OsuN7sBtQNSsAAouoWhHzQ==
X-CSE-MsgGUID: RpujWMP2T8OHCX17utdSEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,226,1736841600"; d="scan'208";a="142243114"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 05:23:10 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 04/21] drm/i915/vrr: Disable CMRR
Date: Thu,  6 Mar 2025 18:40:43 +0530
Message-ID: <20250306131100.3989503-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250306131100.3989503-1-ankit.k.nautiyal@intel.com>
References: <20250306131100.3989503-1-ankit.k.nautiyal@intel.com>
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

Switching between variable and fixed timings is possible as for that we
just need to flip between VRR timings. However for CMRR along with the
timings, few other bits also need to be changed on the fly, which might
cause issues. So disable CMRR for now, till we have variable and fixed
timings sorted out.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index db0ea206e26e..a57659820f4b 100644
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

