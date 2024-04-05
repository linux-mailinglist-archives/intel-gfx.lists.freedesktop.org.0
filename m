Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ECE8899BEC
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 13:36:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0C24113B43;
	Fri,  5 Apr 2024 11:36:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ux+9ZLPp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFE99113B43
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Apr 2024 11:36:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712316968; x=1743852968;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=y+mWvyxtNCZI/PpFUc+IA3vX2/zbzQGJFubCj51e/cg=;
 b=Ux+9ZLPpU2hkBYM21AjS6C+qdJ8kVWAa2fJ4vqFNNwJc6NvfDN3ItrPy
 ryGnu1ePAuIpNysE8IvZ6NSrqp8ThcAmcIfs8wgb8eqfGA7iKiP9WyGHz
 ugz9kwxmWBDzgq1HYaQS93/fQHCN24EyTljg+aqdYMOtB9GH1iz2MKTWx
 DbhzhNs32vaTMZm+t9vcTlAD1eM0dx9AZ+D54KIH9Bcf2TcK+vDd7uyC5
 s3cIBkiOBxuC13mMuboff76eYpcIS8rDGbpK+VyKqB8UepUEgpNWj8hnN
 mmKHdmza65OZTrdB/P5z2PeKMgiVrgJKlA+Du5RWlVGn3kRXvxlqNXieX g==;
X-CSE-ConnectionGUID: H5i46bqERfiTVeYPHtZzDw==
X-CSE-MsgGUID: /RlUbdPtSliI3njaegWv9g==
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="7540259"
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; 
   d="scan'208";a="7540259"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 04:36:08 -0700
X-CSE-ConnectionGUID: URzhsf7ATWaNfm1aZpXekw==
X-CSE-MsgGUID: zLsNEtWNSqyNfw1xH3cRsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="19066090"
Received: from pfilseth-mobl.amr.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.252.58.154])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 04:36:05 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, stanislav.lisovskiy@intel.com,
 ville.syrjala@intel.com, jani.saarinen@intel.com
Subject: [PATCH v10 6/6] drm/i915/display: force qgv check after the hw state
 readout
Date: Fri,  5 Apr 2024 14:35:33 +0300
Message-Id: <20240405113533.338553-7-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240405113533.338553-1-vinod.govindapillai@intel.com>
References: <20240405113533.338553-1-vinod.govindapillai@intel.com>
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
index 6fb228a1a28f..1b190be745a0 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -755,6 +755,7 @@ void intel_bw_crtc_update(struct intel_bw_state *bw_state,
 		intel_bw_crtc_data_rate(crtc_state);
 	bw_state->num_active_planes[crtc->pipe] =
 		intel_bw_crtc_num_active_planes(crtc_state);
+	bw_state->force_check_qgv = true;
 
 	drm_dbg_kms(&i915->drm, "pipe %c data rate %u num active planes %u\n",
 		    pipe_name(crtc->pipe),
@@ -1339,8 +1340,9 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
 	new_bw_state = intel_atomic_get_new_bw_state(state);
 
 	if (new_bw_state &&
-	    intel_can_enable_sagv(i915, old_bw_state) !=
-	    intel_can_enable_sagv(i915, new_bw_state))
+	    (intel_can_enable_sagv(i915, old_bw_state) !=
+	     intel_can_enable_sagv(i915, new_bw_state) ||
+	     new_bw_state->force_check_qgv))
 		changed = true;
 
 	/*
@@ -1354,6 +1356,8 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
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

