Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C73B6634E5E
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 04:33:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA7CB10E03E;
	Wed, 23 Nov 2022 03:33:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41B5810E03E
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 03:33:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669174423; x=1700710423;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=X6xQTq3XPTBD3YA/lYQrdIK4Z+0Mkc6e5whFjyCwKEk=;
 b=ms8ZJrdS0pGDN8cwdZBz4ifXen1Yww46mjyqbxzeSuDAC6LZxafRdKvj
 OBF+8hkVg7fbVhP2EJk7mAmANSCMAVHqXkLKoW4btNVVRsDEuXJNnh5tl
 S/NebwUXnXtKeORzD7R4RWVnWNBAF7JXLMc+53sf4Nm5oXYmqGPQgoAF1
 vn3cpe6kPCY8nzpYC/nArjhyyMzE4NfZVijwq6oWl7o/coxwnnEo4lfml
 IBoiptM+1fjVBITAM8YH0D0sLg0N6ui4TkEA7Eb3hs8rK2sid4B8bHogn
 Bzp7TUnHg9atz/C73BIksfseHmUHY63666uQEXCdzSPlp7zoVV7dDGasS g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="376117002"
X-IronPort-AV: E=Sophos;i="5.96,186,1665471600"; d="scan'208";a="376117002"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 19:33:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="674571789"
X-IronPort-AV: E=Sophos;i="5.96,186,1665471600"; d="scan'208";a="674571789"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orsmga001.jf.intel.com with ESMTP; 22 Nov 2022 19:33:06 -0800
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org, ville.syrjala@linux.intel.com,
 jani.nikula@intel.com
Date: Wed, 23 Nov 2022 09:03:08 +0530
Message-Id: <20221123033308.3717361-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCHv3] drm/i915/fbc: Disable FBC when VT-d is enabled
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

The WaFbcTurnOffFbcWhenHyperVisorIsUsed is applicable for SKL, BXT and
KBL.

Bspec: 0852

v2: Updated commit msg and corrected Bspec format(Jani N)
v3: Updated the stepping information

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index b5ee5ea0d010..7c06ad454a7d 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1652,9 +1652,10 @@ static int intel_sanitize_fbc_option(struct drm_i915_private *i915)
 
 static bool need_fbc_vtd_wa(struct drm_i915_private *i915)
 {
-	/* WaFbcTurnOffFbcWhenHyperVisorIsUsed:skl,bxt */
+	/* WaFbcTurnOffFbcWhenHyperVisorIsUsed:skl,bxt,kbl */
 	if (i915_vtd_active(i915) &&
-	    (IS_SKYLAKE(i915) || IS_BROXTON(i915))) {
+			(IS_SKYLAKE(i915) || IS_BROXTON(i915) ||
+			IS_KBL_DISPLAY_STEP(i915, STEP_A0, STEP_B0))) {
 		drm_info(&i915->drm,
 			 "Disabling framebuffer compression (FBC) to prevent screen flicker with VT-d enabled\n");
 		return true;
-- 
2.25.1

