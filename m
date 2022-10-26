Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B35D60DFBA
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 13:39:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E230E10E4B8;
	Wed, 26 Oct 2022 11:39:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1545210E4B8
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 11:39:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666784361; x=1698320361;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ya+qjiRwTDUVlcTkQ7TaGXDPpPoml9QDQklzvAVGzHM=;
 b=HYjlyNICiYzdAo4o+Q7HUb9qWFBtSH8RxPqCTnKTxlPMLnUjKAY5Lj2b
 qnaHjHMnV2Bds73buVuZLdtC6jmtEzuQN7OEa+tKvpabMFWKm/KzgfPcI
 Jub09LGMNMxCZ6JgqiV6CWVxU7iZOAlXw3aemGhrQYlrHpolevnsDlYb6
 Ii8vJfGPVQdX3HVy6y4Gp1clg9zuDR/Jt3eaRrhh7WDMpbcfRy+71X2Iz
 x1nYsCAUUFtE+rGxS/CyUgHXMyhV58nN3C25Gr5vGsuIeFVADMhkUEP+a
 xHmaYOWM0JviFMFgsG4jiRMBUjnvPZwGxUT13lvFkmMAxjkg40GFNXUt9 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="309614240"
X-IronPort-AV: E=Sophos;i="5.95,214,1661842800"; d="scan'208";a="309614240"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 04:39:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="663164436"
X-IronPort-AV: E=Sophos;i="5.95,214,1661842800"; d="scan'208";a="663164436"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga008.jf.intel.com with SMTP; 26 Oct 2022 04:39:18 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Oct 2022 14:39:18 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Oct 2022 14:38:59 +0300
Message-Id: <20221026113906.10551-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221026113906.10551-1-ville.syrjala@linux.intel.com>
References: <20221026113906.10551-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/11] drm/i915:
 s/icl_load_gcmax/ivb_load_lut_max/
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

Unify icl_load_gcmax() with the rest of the function
naming scheme by calling it ivb_load_lut_max() instead.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 415e0a6839a4..e73e6ea6f82f 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -935,8 +935,8 @@ static u32 ilk_lut_12p4_ldw(const struct drm_color_lut *color)
 }
 
 static void
-icl_load_gcmax(const struct intel_crtc_state *crtc_state,
-	       const struct drm_color_lut *color)
+ivb_load_lut_max(const struct intel_crtc_state *crtc_state,
+		 const struct drm_color_lut *color)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	enum pipe pipe = crtc->pipe;
@@ -1028,7 +1028,7 @@ icl_program_gamma_multi_segment(const struct intel_crtc_state *crtc_state)
 
 	/* The last entry in the LUT is to be programmed in GCMAX */
 	entry = &lut[256 * 8 * 128];
-	icl_load_gcmax(crtc_state, entry);
+	ivb_load_lut_max(crtc_state, entry);
 	ivb_load_lut_ext_max(crtc_state);
 }
 
-- 
2.37.4

