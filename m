Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CCC47B844B
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Oct 2023 17:56:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D269210E17B;
	Wed,  4 Oct 2023 15:56:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78CCE10E17B
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 15:56:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696434979; x=1727970979;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Bc8XE5SjqnZImXYAE6C20yTDjkv4os72KNJ9T3JW4Qc=;
 b=NeokPGxWgQyQ1huEaZk4BlbwmjhIQb3DOLcRPNpX/3mnwfrAFqqaiOxr
 fqj82hkrsvKB9nMuVxWsL+pcTnbbImfKeBcEiMoWnoxvYCPaW3fhqim/I
 hHjA+w+odOeA5Be9ObqfHwteJKdXmNlQNy/ROKLKFbpcm8+KfyqEpZ1Jf
 xpECNxV60YHptHedrRcNm3IyqinKYg42P4r4Fb2U102skP2gjkeLukpVu
 ixElbJHeXVSIwOhg5ZSQDgtQw56inxIqTdWE7Qm7BQh4sJIfaU0UT49uD
 wAZaX9AWaKIV/SjVbkRGFXoU1m0Wpa/QzXAYBzKpDalnO2HGTiGUocQ2Q g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="363483779"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; d="scan'208";a="363483779"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 08:56:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="867440941"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; d="scan'208";a="867440941"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga002.fm.intel.com with SMTP; 04 Oct 2023 08:56:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 04 Oct 2023 18:56:16 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Oct 2023 18:55:58 +0300
Message-ID: <20231004155607.7719-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231004155607.7719-1-ville.syrjala@linux.intel.com>
References: <20231004155607.7719-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/12] drm/i915: Constify the crtc states in the
 DPLL checker
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

The DPLL state checker should not be modifying the crtc states,
so make the const.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 6 +++---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h | 4 ++--
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 86cdd8c9f2d8..237cfc8780a4 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4460,7 +4460,7 @@ static void
 verify_single_dpll_state(struct drm_i915_private *i915,
 			 struct intel_shared_dpll *pll,
 			 struct intel_crtc *crtc,
-			 struct intel_crtc_state *new_crtc_state)
+			 const struct intel_crtc_state *new_crtc_state)
 {
 	struct intel_dpll_hw_state dpll_hw_state;
 	u8 pipe_mask;
@@ -4513,8 +4513,8 @@ verify_single_dpll_state(struct drm_i915_private *i915,
 }
 
 void intel_shared_dpll_state_verify(struct intel_crtc *crtc,
-				    struct intel_crtc_state *old_crtc_state,
-				    struct intel_crtc_state *new_crtc_state)
+				    const struct intel_crtc_state *old_crtc_state,
+				    const struct intel_crtc_state *new_crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index 75d2ff977b4e..e184680606e9 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -370,8 +370,8 @@ enum intel_dpll_id icl_tc_port_to_pll_id(enum tc_port tc_port);
 bool intel_dpll_is_combophy(enum intel_dpll_id id);
 
 void intel_shared_dpll_state_verify(struct intel_crtc *crtc,
-				    struct intel_crtc_state *old_crtc_state,
-				    struct intel_crtc_state *new_crtc_state);
+				    const struct intel_crtc_state *old_crtc_state,
+				    const struct intel_crtc_state *new_crtc_state);
 void intel_shared_dpll_verify_disabled(struct drm_i915_private *i915);
 
 #endif /* _INTEL_DPLL_MGR_H_ */
-- 
2.41.0

