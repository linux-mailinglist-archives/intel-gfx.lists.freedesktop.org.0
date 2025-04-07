Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E900A7D77A
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Apr 2025 10:17:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80C3B10E3DA;
	Mon,  7 Apr 2025 08:17:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XoAvm711";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60F2D10E3D5;
 Mon,  7 Apr 2025 08:17:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744013858; x=1775549858;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EHrnMo1n6SLPeiabMR9+0jXoLReyo3dfh49F8RM0IuA=;
 b=XoAvm711pGEwMKuOYa+HhP8YLaFBUPtfCV5bl2vV4GMFAuik3f+/zHYY
 MijiLg1/uV5bLaeP6IxhOTj9cyo2PkChcl3lt1r7QqGsvgFRKj+MtdNNK
 +V84wybhbBaKWg+DX/raJZooq0mSb9igN+/+mfKuj8MF86D2KhHrW7ipa
 VaNKsQEic/LAyAdkZfU7XrO6DSUBNbgKkf8GIaPZQ4GAgeolhyzlutJI6
 txBwGIEmDXARO4DzHZlfl36UNK9sJt+46T3GsQR3EHO8RxuAShLAsrU2T
 kLFcmyYivrO0X2tqqyXmFjpdERzUAvq1JFSQPOuypI/wwo0SijKwIfg9i Q==;
X-CSE-ConnectionGUID: 2LrLjw9uQVakJiMulnxjaw==
X-CSE-MsgGUID: XDqG1IeqT46hCxPJHFprGg==
X-IronPort-AV: E=McAfee;i="6700,10204,11396"; a="56755824"
X-IronPort-AV: E=Sophos;i="6.15,193,1739865600"; d="scan'208";a="56755824"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 01:17:37 -0700
X-CSE-ConnectionGUID: cnNyXyMDRYGVoaHebk8xnA==
X-CSE-MsgGUID: 4pk38jn0SP6w9JQqHAtFhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,193,1739865600"; d="scan'208";a="127728227"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa006.fm.intel.com with ESMTP; 07 Apr 2025 01:17:35 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com, jani.nikula@intel.com,
 mika.kahola@intel.com, ville.syrjala@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 18/18] drm/i915/dpll: Rename intel_update_active_dpll
Date: Mon,  7 Apr 2025 13:46:54 +0530
Message-Id: <20250407081654.2013680-19-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250407081654.2013680-1-suraj.kandpal@intel.com>
References: <20250407081654.2013680-1-suraj.kandpal@intel.com>
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
index 7a47cf449342..b1aa22d29e0e 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3647,7 +3647,7 @@ void intel_ddi_update_active_dpll(struct intel_atomic_state *state,
 
 	for_each_intel_crtc_in_pipe_mask(display->drm, pipe_crtc,
 					 intel_crtc_joined_pipe_mask(crtc_state))
-		intel_update_active_dpll(state, pipe_crtc, encoder);
+		intel_dpll_update_active(state, pipe_crtc, encoder);
 }
 
 /*
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 4d1ab06237f8..8bd976ae9c26 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4473,7 +4473,7 @@ void intel_dpll_release(struct intel_atomic_state *state,
 }
 
 /**
- * intel_update_active_dpll - update the active DPLL for a CRTC/encoder
+ * intel_dpll_update_active - update the active DPLL for a CRTC/encoder
  * @state: atomic state
  * @crtc: the CRTC for which to update the active DPLL
  * @encoder: encoder determining the type of port DPLL
@@ -4482,7 +4482,7 @@ void intel_dpll_release(struct intel_atomic_state *state,
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

