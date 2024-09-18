Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D6F97BE32
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 16:45:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C72C10E5CE;
	Wed, 18 Sep 2024 14:45:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KBqeLCes";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DCD410E5CE
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2024 14:45:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726670708; x=1758206708;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ddjvBPcGAKLTOxowU4etL/8NNcdA7a+Fus/PO493u9Q=;
 b=KBqeLCesMM2RLm9EKmL4Jw5ulO23jdhZSjCiONP712ykcCUpuGs3epFe
 kcCcbw1RfY+BwpIx8JNLIeQ/h/JqiRq1utx0uNuk2/3NWKDyLThpBcVY2
 AdWwaFi7vY/TbqJJZpe7TMOgTdPD8Ld2RFZZQ4Idtdr1GV48TPpyvOEQJ
 LSJmozTZ/afOCjgfVW65iHEOFBe6CNWiA+IVbHHV9GLbfCHbCzbXrisK8
 S98yVjvn+Sngayx8U8F7DyyN7XyfgpJzpH+5RdZQr2U2kZZiI4ouHFquL
 9U2LC2VyqDj10615ZK9ew8EFRPrp5WneePCIBnuXIGJkUqKc5/lvfdqCP A==;
X-CSE-ConnectionGUID: +owOYk1USKaK4U4vMGjQkA==
X-CSE-MsgGUID: GSjUK5g2QlWQBMwNXFwzhg==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="36963618"
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="36963618"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 07:45:08 -0700
X-CSE-ConnectionGUID: VJDbWfNJQgKJpNQAbRCz8A==
X-CSE-MsgGUID: EW0wA+4jS+CmgeTbD6RK4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="69711361"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 18 Sep 2024 07:45:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Sep 2024 17:45:05 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 7/7] drm/i915: s/gen12/tgl/ in the universal plane code
Date: Wed, 18 Sep 2024 17:44:45 +0300
Message-ID: <20240918144445.5716-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240918144445.5716-1-ville.syrjala@linux.intel.com>
References: <20240918144445.5716-1-ville.syrjala@linux.intel.com>
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

Using "gen12" in display code is not desirable. Replace
it with "tgl" to match how we talk about other platforms
in the same code.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/skl_universal_plane.c   | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index f56d679b0143..a82297fb4213 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2355,8 +2355,8 @@ static bool icl_plane_format_mod_supported(struct drm_plane *_plane,
 	}
 }
 
-static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
-					     u32 format, u64 modifier)
+static bool tgl_plane_format_mod_supported(struct drm_plane *_plane,
+					   u32 format, u64 modifier)
 {
 	struct intel_plane *plane = to_intel_plane(_plane);
 
@@ -2425,13 +2425,13 @@ static const struct drm_plane_funcs icl_plane_funcs = {
 	.format_mod_supported = icl_plane_format_mod_supported,
 };
 
-static const struct drm_plane_funcs gen12_plane_funcs = {
+static const struct drm_plane_funcs tgl_plane_funcs = {
 	.update_plane = drm_atomic_helper_update_plane,
 	.disable_plane = drm_atomic_helper_disable_plane,
 	.destroy = intel_plane_destroy,
 	.atomic_duplicate_state = intel_plane_duplicate_state,
 	.atomic_destroy_state = intel_plane_destroy_state,
-	.format_mod_supported = gen12_plane_format_mod_supported,
+	.format_mod_supported = tgl_plane_format_mod_supported,
 };
 
 static void
@@ -2473,8 +2473,8 @@ static bool skl_plane_has_rc_ccs(struct drm_i915_private *i915,
 		(plane_id == PLANE_1 || plane_id == PLANE_2);
 }
 
-static bool gen12_plane_has_mc_ccs(struct drm_i915_private *i915,
-				   enum plane_id plane_id)
+static bool tgl_plane_has_mc_ccs(struct drm_i915_private *i915,
+				 enum plane_id plane_id)
 {
 	if (DISPLAY_VER(i915) < 12)
 		return false;
@@ -2512,7 +2512,7 @@ static u8 skl_get_plane_caps(struct drm_i915_private *i915,
 			caps |= INTEL_PLANE_CAP_CCS_RC_CC;
 	}
 
-	if (gen12_plane_has_mc_ccs(i915, plane_id))
+	if (tgl_plane_has_mc_ccs(i915, plane_id))
 		caps |= INTEL_PLANE_CAP_CCS_MC;
 
 	if (DISPLAY_VER(i915) >= 14 && IS_DGFX(i915))
@@ -2603,7 +2603,7 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 						plane_id, &num_formats);
 
 	if (DISPLAY_VER(dev_priv) >= 12)
-		plane_funcs = &gen12_plane_funcs;
+		plane_funcs = &tgl_plane_funcs;
 	else if (DISPLAY_VER(dev_priv) == 11)
 		plane_funcs = &icl_plane_funcs;
 	else
-- 
2.44.2

