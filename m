Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A33CB9216
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 16:29:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 047CD10E8C0;
	Fri, 12 Dec 2025 15:29:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d1DWwsV1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FD2510E8C0;
 Fri, 12 Dec 2025 15:29:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765553354; x=1797089354;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CSGcUOQVT/8ESreHDHKm5SLVsw785MNfDctgxtSXtW8=;
 b=d1DWwsV1ZDpOaR+mhV8s1mX412woJK2vMMZmvu5ngQhy0+wYuWpag6Vf
 ugWHA03uZdHj7D2mAEu5AExcpy5xwCC8I9smLqfn0zOoxHy3SuCZu3mMt
 jH20tKH5VUd8rKnbOMt5M9DV2H74O+iEm1+LWo2cdMOy34zjthyq3Utzt
 uvx+Dq+2LTCNjclVPAPE8iz/s03cFbTHc9QtxN4jRXVgETgu4IpEdL/Yt
 460u5y/EljYXxqmdxK8UZ1pYgkNmgzCvhyfHulXZ/a+hXp3/Y7WhAMsZG
 E5v2hPP9IJjOZ8V1uoKKpMgxfQyYJe3lGk3bxzXuiyDbtpLcId4FU4sA0 A==;
X-CSE-ConnectionGUID: 4JpaNGb5RmyJwFDzyQiUAA==
X-CSE-MsgGUID: 0sbciDQARQeXkE9obJlaMg==
X-IronPort-AV: E=McAfee;i="6800,10657,11640"; a="67716382"
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="67716382"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 07:29:14 -0800
X-CSE-ConnectionGUID: wpn7LzfTTa6CJDHvl6zAyg==
X-CSE-MsgGUID: zTcDI06pTlS+vAO8Mjko/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="197935066"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.245.152])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 07:29:12 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 06/13] drm/i915: Make intel_crtc_needs_vblank_work() easier on
 the eye
Date: Fri, 12 Dec 2025 17:28:40 +0200
Message-ID: <20251212152847.13679-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20251212152847.13679-1-ville.syrjala@linux.intel.com>
References: <20251212152847.13679-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

We will never use the vblank worker based LUT update path on
hardware with double buffered LUTs. Split that check out from
the semi-illegble mess in intel_crtc_needs_vblank_work()
so that it's clear what's happening.

The rest of the checks in that mess are more about dynamic
runtime state, so keeping those together makes some sense.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 1b5b73f643bc..6dadffc63988 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -444,11 +444,13 @@ static bool intel_crtc_needs_vblank_work(const struct intel_crtc_state *crtc_sta
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 
+	if (HAS_DOUBLE_BUFFERED_LUT(display))
+		return false;
+
 	return crtc_state->hw.active &&
+		intel_crtc_needs_color_update(crtc_state) &&
 		!crtc_state->preload_luts &&
 		!intel_crtc_needs_modeset(crtc_state) &&
-		(intel_crtc_needs_color_update(crtc_state) &&
-		 !HAS_DOUBLE_BUFFERED_LUT(display)) &&
 		!intel_color_uses_dsb(crtc_state);
 }
 
-- 
2.51.2

