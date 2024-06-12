Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20E6D904E44
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jun 2024 10:37:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF45810E7E7;
	Wed, 12 Jun 2024 08:37:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F81Qenyr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 496DC10E7CA;
 Wed, 12 Jun 2024 08:37:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718181421; x=1749717421;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=umfXjJKpjbpmhctF9rGc+mUS/UEwHcN8p/THBpo5awY=;
 b=F81QenyrkcG+MgyXan6zUQjswYoa+49zjQXrCwuvUEjAmDZ/dFYOLwCG
 UCAarsVm3pGPVJydtYQEqeyaHmdnF2QDpNdUapCGXjAMC4g7aTHTsILHJ
 /yVlbEGxlCIuuWJfop7shlGCiyGuyIi30Bz1l2L8kiWCTwpb8HRhyGw4J
 IPZFKxcefpXq5YYZ4WNLPyOC5Rf15YQi8h5MEuLvOKy/xR/w5oExhLysY
 jLvt4ZLgNWlJzZ8too/MYHQk2RoKtgcvBiBV0zysvDU9BIfop2uuW4vFX
 if85aQGtweifvSex8dFvOol/yoj8LURmKtUK4L5+sVo+vwL4MOdKzNaIZ g==;
X-CSE-ConnectionGUID: apBRwsFoTZOVHShQHfqhfg==
X-CSE-MsgGUID: FnCqh79GSW2aa7IrKmzc8g==
X-IronPort-AV: E=McAfee;i="6600,9927,11100"; a="40339683"
X-IronPort-AV: E=Sophos;i="6.08,232,1712646000"; d="scan'208";a="40339683"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2024 01:37:01 -0700
X-CSE-ConnectionGUID: Hd/OFc5TSoCeY2LkUelBzg==
X-CSE-MsgGUID: OtvNGyIqRt+L8kaIM5HUlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,232,1712646000"; d="scan'208";a="39679871"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa008.fm.intel.com with ESMTP; 12 Jun 2024 01:37:00 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx-trybot@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Subject: drm/i915/display: Update vtotal math to address 32b build
Date: Wed, 12 Jun 2024 14:07:07 +0530
Message-ID: <20240612055203.270550-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240612083707.309659-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20240612083707.309659-1-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
X-Patchwork-Id: 598300
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

Fix vtotal division calculation which works for 32b systems.

Fixes: 1676ecd303ac ("drm/i915: Compute CMRR and calculate vtotal")
Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 05f67dc9d98d..1e37383e14e7 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -149,7 +149,8 @@ cmrr_get_vtotal(struct intel_crtc_state *crtc_state, bool video_mode_required)
 
 	crtc_state->cmrr.cmrr_n =
 		desired_refresh_rate * adjusted_mode->crtc_htotal * multiplier_n;
-	vtotal = (adjusted_mode->crtc_clock * 1000 * multiplier_n) / crtc_state->cmrr.cmrr_n;
+	vtotal = DIV_ROUND_UP_ULL(adjusted_mode->crtc_clock * 1000 * multiplier_n,
+				  crtc_state->cmrr.cmrr_n);
 	adjusted_pixel_rate = adjusted_mode->crtc_clock * 1000 * multiplier_m;
 	crtc_state->cmrr.cmrr_m = do_div(adjusted_pixel_rate, crtc_state->cmrr.cmrr_n);
 
