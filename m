Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8655EBE1A41
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 08:07:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92F9E10E935;
	Thu, 16 Oct 2025 06:07:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jw7uUcS8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E42C10E2D4;
 Thu, 16 Oct 2025 06:07:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760594846; x=1792130846;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VTofNjQbmDrlYVI+gHuodsNRHzxYtnrwwZoilCrGpFs=;
 b=jw7uUcS8wQK3pLk8WVGJidiKfj9ss+OryyFHtyDwTgx0lmhW0hsIVNP4
 V4xj8Wb+ZVOqU4nvoa+142tK5grJsdE8LVeqVbEiv+6Ggupo7xL67GfRH
 4TVNBav4fZtG5n0ZJWRkRZmYUenb2M66bd+b0CDdVL0FYVo24zO7NhDmp
 eX4hdSIcW/C8PebNY/Xk6/ymkp1gEA2LWzZMGe+nwFadwUlfEmsQDLcVs
 LxEQCx2m9HmYRcV1oIT2doT1itCdfFKlOSGghcEsBJpsghZxs69RhrgDv
 B0j6j6nTFWK415Zc/tDPviEFE4MpbER+uGg3LjSK7TjL29lfug5Nx68Z/ w==;
X-CSE-ConnectionGUID: uaTKw8YLS0mkQCnLuo5qHg==
X-CSE-MsgGUID: zIHn06ZrTyG+YDjlHEQeXA==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="74120405"
X-IronPort-AV: E=Sophos;i="6.19,233,1754982000"; d="scan'208";a="74120405"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 23:07:26 -0700
X-CSE-ConnectionGUID: 8OSWYLlpSBSVX3apDucDSw==
X-CSE-MsgGUID: j6K/jOXfSnWOLWR+a6Cu3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,233,1754982000"; d="scan'208";a="187650787"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 23:07:23 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 02/10] drm/i915/display: Move intel_dpll_crtc_compute_clock
 early
Date: Thu, 16 Oct 2025 11:24:06 +0530
Message-ID: <20251016055415.2101347-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251016055415.2101347-1-ankit.k.nautiyal@intel.com>
References: <20251016055415.2101347-1-ankit.k.nautiyal@intel.com>
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

Move intel_dpll_crtc_compute_clock in the beginning of the function so that
clocks are set before other things.

This will help in subsequent changes when the vrr guardband computation
is moved to intel_crtc_compute_config().

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d5b2612d4ec2..3f725553599e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2410,11 +2410,11 @@ static int intel_crtc_compute_config(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	int ret;
 
-	ret = intel_crtc_compute_set_context_latency(state, crtc);
+	ret = intel_dpll_crtc_compute_clock(state, crtc);
 	if (ret)
 		return ret;
 
-	ret = intel_dpll_crtc_compute_clock(state, crtc);
+	ret = intel_crtc_compute_set_context_latency(state, crtc);
 	if (ret)
 		return ret;
 
-- 
2.45.2

