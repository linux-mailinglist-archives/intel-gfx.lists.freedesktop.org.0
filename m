Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E057DA78A04
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Apr 2025 10:32:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DC7810E708;
	Wed,  2 Apr 2025 08:32:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l+eqj21V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7295C10E706;
 Wed,  2 Apr 2025 08:32:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743582767; x=1775118767;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cKLvW09cQ9tisYdL/4Nh5kN/4eYEcJDPaBQupy+Qf2M=;
 b=l+eqj21V3TzbW/QUojmzliMLbzpshFtAlWJXQmC8uMaUtw/zhQ5tdz9D
 cdWCfwU1XGgxZpuSuWTb0wwbTAFQWmMLctws+JAG6bokfzeZ/AQJ8pMgV
 obG9omhg1q16sXkwDIBWTRQUHacNZpWl6Bb5y9oQpKlx8vHdNt5q53GrJ
 B426pcW9Locky5/P347gwVZ+bjrcQUo00rcGKbUczEi3cB0ZJ4ha2EDlN
 ZFPyhKH09lgMzDNYVtywdFcTBJv50YOwpIvnmcZXlLXb8q/84Ku4QjCmy
 l6oI4n7SxWno6TS3bn5vL0nax5OsgfvyJzoO7zCOS9dQpBz5+zWixpGrQ A==;
X-CSE-ConnectionGUID: shZNAGY1TX2IYEvKc2461g==
X-CSE-MsgGUID: AB4xn+OzSFS59xePZNurag==
X-IronPort-AV: E=McAfee;i="6700,10204,11391"; a="44828747"
X-IronPort-AV: E=Sophos;i="6.14,295,1736841600"; d="scan'208";a="44828747"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2025 01:32:43 -0700
X-CSE-ConnectionGUID: 45y4IOESSUiKA5SxttEjmw==
X-CSE-MsgGUID: CapqJ9tuT8iRHfIZk3A6bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,295,1736841600"; d="scan'208";a="126612501"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa007.fm.intel.com with ESMTP; 02 Apr 2025 01:32:40 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com, jani.nikula@intel.com,
 mika.kahola@intel.com, ville.syrjala@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 16/16] drm/i915/dpll: Rename intel_update_active_dpll
Date: Wed,  2 Apr 2025 14:02:04 +0530
Message-Id: <20250402083204.1523470-17-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250402083204.1523470-1-suraj.kandpal@intel.com>
References: <20250402083204.1523470-1-suraj.kandpal@intel.com>
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
index 2f1f7dd20e80..1253fa35a5d0 100644
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
index 03c08ada0261..2b86775c464e 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4474,7 +4474,7 @@ void intel_dpll_release(struct intel_atomic_state *state,
 }
 
 /**
- * intel_update_active_dpll - update the active DPLL for a CRTC/encoder
+ * intel_dpll_update_active - update the active DPLL for a CRTC/encoder
  * @state: atomic state
  * @crtc: the CRTC for which to update the active DPLL
  * @encoder: encoder determining the type of port DPLL
@@ -4483,7 +4483,7 @@ void intel_dpll_release(struct intel_atomic_state *state,
  * from the port DPLLs reserved previously by intel_dpll_reserve(). The
  * DPLL selected will be based on the current mode of the encoder's port.
  */
-void intel_update_active_dpll(struct intel_atomic_state *state,
+void intel_dpll_update_active(struct intel_atomic_state *state,
 			      struct intel_crtc *crtc,
 			      struct intel_encoder *encoder)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index 9bd71aba6c6a..b6d985e4e3ec 100644
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

