Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72145AB7EB0
	for <lists+intel-gfx@lfdr.de>; Thu, 15 May 2025 09:19:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A06010E793;
	Thu, 15 May 2025 07:19:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H9+gwBd1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AA3F10E78E;
 Thu, 15 May 2025 07:19:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747293545; x=1778829545;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XBtAG/6wrZgZDqugZMdWQlovnld1+Wn1KSY8CaeZgq4=;
 b=H9+gwBd1dqnF657hZlgyHmA/zNSH/xT5CM3ZHvpfGXWJZmX4/D1d3VMp
 3ohWxMGYDTe/1iFkDrrIUQV/IeN6uFUs0i0fgtcA01uGM561wwWiB1afQ
 xmoNfmG8DY9If6nOxzwrm/Ds9a8IwPB0Rt6pLLZFin4E//Wjt9pDe5G1V
 8o+nc5YUaZnlmmfnKMjTj3O48bkaiz6DY/mcjIQwnuI6sYKNvIQH1l795
 scQvTu+AAC9We50/Le1JVaZod9ab5vtTXr5qVY2TXcd17vR11c01Xrz+S
 P6aHasi6cq2C5QEDsWh1a5Kj1E9nc339cl5sT5tzWdUjbtZlM8NW8InAg Q==;
X-CSE-ConnectionGUID: ofBPOUgCQA6Si/9dEigK8w==
X-CSE-MsgGUID: qMliBG80SV2gN611hsjiUQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11433"; a="48901368"
X-IronPort-AV: E=Sophos;i="6.15,290,1739865600"; d="scan'208";a="48901368"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2025 00:19:05 -0700
X-CSE-ConnectionGUID: EfRszFBTRpa7QgZ102fHJA==
X-CSE-MsgGUID: C9vlvj6IQtmp9HbXHJgUjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,290,1739865600"; d="scan'208";a="142290396"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa003.fm.intel.com with ESMTP; 15 May 2025 00:19:02 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, jani.nikula@intel.com,
 mika.kahola@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 14/14] drm/i915/dpll: Rename intel_update_active_dpll
Date: Thu, 15 May 2025 12:48:01 +0530
Message-Id: <20250515071801.2221120-15-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250515071801.2221120-1-suraj.kandpal@intel.com>
References: <20250515071801.2221120-1-suraj.kandpal@intel.com>
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
index 11ebcb40c91f..0e6d618b5356 100644
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
index bf66cbe5a11c..28b3f5ea4219 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4450,7 +4450,7 @@ void intel_dpll_release(struct intel_atomic_state *state,
 }
 
 /**
- * intel_update_active_dpll - update the active DPLL for a CRTC/encoder
+ * intel_dpll_update_active - update the active DPLL for a CRTC/encoder
  * @state: atomic state
  * @crtc: the CRTC for which to update the active DPLL
  * @encoder: encoder determining the type of port DPLL
@@ -4459,7 +4459,7 @@ void intel_dpll_release(struct intel_atomic_state *state,
  * from the port DPLLs reserved previously by intel_dpll_reserve(). The
  * DPLL selected will be based on the current mode of the encoder's port.
  */
-void intel_update_active_dpll(struct intel_atomic_state *state,
+void intel_dpll_update_active(struct intel_atomic_state *state,
 			      struct intel_crtc *crtc,
 			      struct intel_encoder *encoder)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index b388310af9c3..f131bdd1c975 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -409,7 +409,7 @@ void intel_dpll_crtc_put(const struct intel_crtc *crtc,
 			 struct intel_dpll_state *shared_dpll_state);
 void icl_set_active_port_dpll(struct intel_crtc_state *crtc_state,
 			      enum icl_port_dpll_id port_dpll_id);
-void intel_update_active_dpll(struct intel_atomic_state *state,
+void intel_dpll_update_active(struct intel_atomic_state *state,
 			      struct intel_crtc *crtc,
 			      struct intel_encoder *encoder);
 int intel_dpll_get_freq(struct intel_display *display,
-- 
2.34.1

