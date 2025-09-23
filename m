Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC02CB95FFE
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 15:24:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46FB310E60D;
	Tue, 23 Sep 2025 13:24:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EmfoG4G3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FDBD10E61D;
 Tue, 23 Sep 2025 13:24:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758633852; x=1790169852;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tvwOQbiBQ01ylkENYxmBuslY14Ot1PMfQKjXew/KJyM=;
 b=EmfoG4G3+IwGzU0pqVSMMxWsJvHkY4miOWFUhbyUsCPDeUGKGNABzIQV
 13Na4wYFw+4ORCXKsjfUTvGfQ7ymH3TQnZRTvj3d0+/+om4qvht+jy1OP
 CuPEkiS+hxuT500YFSKURRVjx7H5vGZA5HVQKGpcwqjm0jpbriWMxMvGP
 if9sb7JOOnyQejZ0foI5e3ZuAgwzijGgGwLobISNt3/Il0RMKfuoh/33X
 GemURZWdoYDnY5OO8xDL4VGlv9bRvcc2QNNsLbEPEP4tj8RoWALUvYDw5
 rSedXgsjRB2nzlaO12PF16+0iCTL9lGSKa2OeoxibhbwHGL7zvDrssSKg g==;
X-CSE-ConnectionGUID: 2kILMgcXSlyGzlZBVATfqw==
X-CSE-MsgGUID: 7Ffl6P67S/eOt98KlEvW9w==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="48480549"
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="48480549"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 06:24:12 -0700
X-CSE-ConnectionGUID: C7ThBvLXTAyJD1L2FUUjfg==
X-CSE-MsgGUID: srWx6mqlR9OU9ypYWk7A4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="207689552"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 06:24:10 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 4/9] drm/i915/vrr: Use SCL for computing guardband
Date: Tue, 23 Sep 2025 18:40:38 +0530
Message-ID: <20250923131043.2628282-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250923131043.2628282-1-ankit.k.nautiyal@intel.com>
References: <20250923131043.2628282-1-ankit.k.nautiyal@intel.com>
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

For now guardband is equal to the vblank length so ideally it should be
computed as difference between the vmin vtotal and vactive. However
since we are having few lines as SCL, we need to account for this while
computing the guardband.

Since the vblank start is moved by SCL lines from the vactive, the delta
between the vmin vtotal and new vblank start was used to account for this.
Now that SCL is explicitly tracked using the `set_context_latency` member,
use it directly in the guardband calculation.

In the future, when the guardband is shortened or optimized, we may need
to factor in both the change in the vblank start and SCL lines. For now,
explicitly accounting for SCL is sufficient.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 698b33b5b326..1b90eaa6a776 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -418,7 +418,9 @@ void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
 		return;
 
 	crtc_state->vrr.guardband =
-		crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start -
+		crtc_state->vrr.vmin -
+		adjusted_mode->vdisplay -
+		crtc_state->set_context_latency -
 		intel_vrr_extra_vblank_delay(display);
 
 	if (DISPLAY_VER(display) < 13) {
-- 
2.45.2

