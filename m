Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C688A2D016
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2025 22:54:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3691910E22A;
	Fri,  7 Feb 2025 21:54:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oJ+FHMaz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 707FB10E143;
 Fri,  7 Feb 2025 21:54:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738965259; x=1770501259;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gnN/dqvkd38aSewVvmVQpjU4mH7/pHlU3T0W5Fu0P5k=;
 b=oJ+FHMaz3VzZoawqtg5pUtd2ARQe93QUfmyzySKP1R+1cwnyUJYY705P
 HR0FmmjkHn3yIY33/1xqwAeaGQs70Nzw6IuFm0y8QKuEkQ0/y3FBqRajJ
 YV3KRFczOQfjBu7+tuSgZOwU4l9mXGMNEIjIk7Q03KGTQbkUX9ZjbU0Au
 2U2WVVUgdJ8ANlyy2ke0TdRR70mhwUn45DLnVXlX58WII+8tY8AOuYVjz
 A/1OW64psC562RrKui1+mHfq98zbpP54SdEb7Z1G+LzW6tgUW3hAAPfIC
 C2fhGRJP9xWjIknh1CFzc890FAPAJJbrevisDCNlwvLO0TAsyBOzT12d3 Q==;
X-CSE-ConnectionGUID: a/AMGsdsQQGhsvkLqDkb6g==
X-CSE-MsgGUID: NaPlgN5bTECUfcPz1ViwNg==
X-IronPort-AV: E=McAfee;i="6700,10204,11338"; a="39745992"
X-IronPort-AV: E=Sophos;i="6.13,268,1732608000"; d="scan'208";a="39745992"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 13:54:19 -0800
X-CSE-ConnectionGUID: +NQvYhSVR42sUcPESnrhqQ==
X-CSE-MsgGUID: D0Ssor2ET829LJc0vfkrhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,268,1732608000"; d="scan'208";a="111851047"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 07 Feb 2025 13:54:16 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 07 Feb 2025 23:54:15 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 3/3] drm/i915: Replace the HAS_DDI() in
 intel_crtc_scanline_offset() with specific platform checks
Date: Fri,  7 Feb 2025 23:54:06 +0200
Message-ID: <20250207215406.19348-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250207215406.19348-1-ville.syrjala@linux.intel.com>
References: <20250207215406.19348-1-ville.syrjala@linux.intel.com>
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

The HDMI vs. not scanline offset stuff no longer applies to the
latest platforms, so using HAS_DDI() is a bit confusing. Replace
with a more specific set of conditions.

Also let's just deal with the platform types in the if ladder
itself, and handle the HDMI vs. not within the specific branch
for those platforms.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vblank.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index dd928d890e3a..139fa5deba80 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -224,8 +224,9 @@ int intel_crtc_scanline_offset(const struct intel_crtc_state *crtc_state)
 	 */
 	if (DISPLAY_VER(display) >= 20 || display->platform.battlemage)
 		return 1;
-	else if (HAS_DDI(display) && intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
-		return 2;
+	else if (DISPLAY_VER(display) >= 9 ||
+		 display->platform.broadwell || display->platform.haswell)
+		return intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) ? 2 : 1;
 	else if (DISPLAY_VER(display) >= 3)
 		return 1;
 	else
-- 
2.45.3

