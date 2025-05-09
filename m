Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9015AAB0933
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 06:28:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F4A810E987;
	Fri,  9 May 2025 04:28:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TX69ge/r";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DCEA10E987;
 Fri,  9 May 2025 04:28:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746764921; x=1778300921;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dJRvx5gb1xXkhplkpip0Ns6PKFgM4wHnS9MoRauNbhE=;
 b=TX69ge/r4BUbMjiKoeOin12SyPjjpCzM8A0JAEA0rHzWomxE94ogCHVT
 FBiUHZnHd/sUcax7WoiEjD7Ox44T2RPhuFR3BFInGYBM9bKbBZ/IINdY0
 KJjGxytCEKqVVb/BPatvzKMT+q1OsIslQejGSBeEbloradcee3XWqoVxT
 DOxzaTk5uAgXnS8UQdTVOU4QO874g/pI1C/vbZUjpmiYIvyHBPDbFnvx6
 lBc5X3wQmLrfmoGAl4u97AI0ULHEsmXYglN/w+1EMjBtzDXMJ1x6jFEfi
 n1lOZlldR/9ZBiuCU8ah9RQ2T7Ny2ogitNJEu4ph/orCmtaBDJ+gM2aTB w==;
X-CSE-ConnectionGUID: LsvBtxxPR8W6qs8JLydCQg==
X-CSE-MsgGUID: 68bRS+J9SZGvClyJMYKSAQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="58794033"
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="58794033"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 21:28:41 -0700
X-CSE-ConnectionGUID: TzPSCZUoT0mGpcidrO27gQ==
X-CSE-MsgGUID: +Rm6+PD3TUyuLA8zzbopow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="137430617"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa008.jf.intel.com with ESMTP; 08 May 2025 21:28:39 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 18/18] drm/i915/dpll: Rename intel_update_active_dpll
Date: Fri,  9 May 2025 09:57:29 +0530
Message-Id: <20250509042729.1152004-19-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250509042729.1152004-1-suraj.kandpal@intel.com>
References: <20250509042729.1152004-1-suraj.kandpal@intel.com>
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

Rename intel_update_active_dpll to intel_dpll_update_active in an
effort to have function names which are exported to start with
filenames they are exported from.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      | 2 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 66dea34ebcd3..be26e6b4bc97 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3650,7 +3650,7 @@ void intel_ddi_update_active_dpll(struct intel_atomic_state *state,
 
 	for_each_intel_crtc_in_pipe_mask(display->drm, pipe_crtc,
 					 intel_crtc_joined_pipe_mask(crtc_state))
-		intel_update_active_dpll(state, pipe_crtc, encoder);
+		intel_dpll_update_active(state, pipe_crtc, encoder);
 }
 
 /*
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 05714e6fbad5..939d92b4cf0f 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4472,7 +4472,7 @@ void intel_dpll_release(struct intel_atomic_state *state,
 }
 
 /**
- * intel_update_active_dpll - update the active DPLL for a CRTC/encoder
+ * intel_dpll_update_active - update the active DPLL for a CRTC/encoder
  * @state: atomic state
  * @crtc: the CRTC for which to update the active DPLL
  * @encoder: encoder determining the type of port DPLL
@@ -4481,7 +4481,7 @@ void intel_dpll_release(struct intel_atomic_state *state,
  * from the port DPLLs reserved previously by intel_dpll_reserve(). The
  * DPLL selected will be based on the current mode of the encoder's port.
  */
-void intel_update_active_dpll(struct intel_atomic_state *state,
+void intel_dpll_update_active(struct intel_atomic_state *state,
 			      struct intel_crtc *crtc,
 			      struct intel_encoder *encoder)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index c2658ad409e4..821ffcc4b8d0 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -409,7 +409,7 @@ void intel_dpll_unreference_crtc(const struct intel_crtc *crtc,
 				 struct intel_dpll_state *shared_dpll_state);
 void icl_set_active_port_dpll(struct intel_crtc_state *crtc_state,
 			      enum icl_port_dpll_id port_dpll_id);
-void intel_update_active_dpll(struct intel_atomic_state *state,
+void intel_dpll_update_active(struct intel_atomic_state *state,
 			      struct intel_crtc *crtc,
 			      struct intel_encoder *encoder);
 int intel_dpll_get_freq(struct intel_crtc_state *crtc_state,
-- 
2.34.1

