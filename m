Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D1A488D2A6
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Mar 2024 00:11:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2FC510F4A8;
	Tue, 26 Mar 2024 23:11:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Av8CtCiH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 157AB10F4A8
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Mar 2024 23:11:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711494669; x=1743030669;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fd5RgPwiKof32Y+wHI2Xb9gbyniHPPp03YcxhRp/Bl8=;
 b=Av8CtCiHQMRJdMGYFmWRBzen+D3+9TzswcLh4InJ4aMh+KvopnrkLvmN
 x0PPRI72EkboifvduHQ6dKUqMyicUgbTT6veyM+TVO5ZFoLniWBn66g37
 HCJ68zEsgGvDnTIAA8Ciiw8UDL+4KTnE46a93edhyOrQKnbKWwl8u1KFv
 805pQIKq7RpbALzohlkIG3U6E4+78qltklS5zM12HTENUIPsYl2xFrKTf
 CxmNE+aHnsFcGWWyfE9fXOpZc9zgyMuIDNRS4z/CZQROmrjwvL+C/yKf7
 tup2nyTg0pXwaYy3orRPb9anpmytpn7sbBvHR2cDCOexRUxOAJBP/sefz A==;
X-CSE-ConnectionGUID: N2PEyFxWTw6kNbk9ELqO0A==
X-CSE-MsgGUID: pnTW6wrnTEqpih/mK/TP1Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="6703022"
X-IronPort-AV: E=Sophos;i="6.07,157,1708416000"; 
   d="scan'208";a="6703022"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 16:11:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,157,1708416000"; d="scan'208";a="16101400"
Received: from dfantini-mobl.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.249.33.69])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 16:11:06 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, stanislav.lisovskiy@intel.com,
 ville.syrjala@intel.com, jani.saarinen@intel.com
Subject: [PATCH v9 6/6] drm/i915/display: force qgv check after the hw state
 readout
Date: Wed, 27 Mar 2024 01:10:21 +0200
Message-Id: <20240326231021.281780-7-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240326231021.281780-1-vinod.govindapillai@intel.com>
References: <20240326231021.281780-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
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

The current intel_bw_atomic_check do not check the possbility
of a sagv configuration change after the hw state readout.
Hence cannot update the sagv configuration until some other
relevant changes like data rates, number of planes etc. happen.
Introduce a flag to force qgv check in such cases.

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 8 ++++++--
 drivers/gpu/drm/i915/display/intel_bw.h | 6 ++++++
 2 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index f6690d545d95..ecb9600cb69a 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -755,6 +755,7 @@ void intel_bw_crtc_update(struct intel_bw_state *bw_state,
 		intel_bw_crtc_data_rate(crtc_state);
 	bw_state->num_active_planes[crtc->pipe] =
 		intel_bw_crtc_num_active_planes(crtc_state);
+	bw_state->force_check_qgv = true;
 
 	drm_dbg_kms(&i915->drm, "pipe %c data rate %u num active planes %u\n",
 		    pipe_name(crtc->pipe),
@@ -1341,8 +1342,9 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
 	new_bw_state = intel_atomic_get_new_bw_state(state);
 
 	if (new_bw_state &&
-	    intel_can_enable_sagv(i915, old_bw_state) !=
-	    intel_can_enable_sagv(i915, new_bw_state))
+	    (intel_can_enable_sagv(i915, old_bw_state) !=
+	     intel_can_enable_sagv(i915, new_bw_state) ||
+	     new_bw_state->force_check_qgv))
 		changed = true;
 
 	/*
@@ -1356,6 +1358,8 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
 	if (ret)
 		return ret;
 
+	new_bw_state->force_check_qgv = false;
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
index fa1e924ec961..161813cca473 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.h
+++ b/drivers/gpu/drm/i915/display/intel_bw.h
@@ -47,6 +47,12 @@ struct intel_bw_state {
 	 */
 	u16 qgv_points_mask;
 
+	/*
+	 * Flag to force the QGV comparison in atomic check right after the
+	 * hw state readout
+	 */
+	bool force_check_qgv;
+
 	int min_cdclk[I915_MAX_PIPES];
 	unsigned int data_rate[I915_MAX_PIPES];
 	u8 num_active_planes[I915_MAX_PIPES];
-- 
2.34.1

