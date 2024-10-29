Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60ECC9B554B
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 22:52:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10B7C10E70F;
	Tue, 29 Oct 2024 21:52:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TH6hkYti";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DDC010E6F9
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2024 21:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730238754; x=1761774754;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=orWq+QtEQclefs0f4707RZvINCbSEVqemM3hZOMo6xE=;
 b=TH6hkYtitcltlwr7d2c9OJzh/FP8b0N9Tx4Ax9sGJ6TwD3Q3yFr0JOtn
 pQOc8XNrrkCoWY0ZtZpfkVVu5KeGH5FJnmy2ohaSnsNta3fLdlpBq3G+V
 nANgTYWc9wUueKp+D1XwFg+nQkgmitDgJEsxesWhwO3KRXOEge/Mrh7Zy
 iXsx8k/dIvwPv1oOThpyS4frywtE9AVfoEzsh153FD2n4YNKKWsFKhuCK
 +MxVVgqI68BLohnZKwr7YTZCh0CKrGRxUA3RWIQme/AgRDW9eRAw9NqS4
 tvUy9k61TnLscvY8yf6X1mbnAw7JWN73NjOb5HhtgMbXSi4JnoKQVavP3 A==;
X-CSE-ConnectionGUID: 2hGXYETgThaGJ8tickGh/w==
X-CSE-MsgGUID: 6cn6Hjn5TQ2tfwCQ9kTBiw==
X-IronPort-AV: E=McAfee;i="6700,10204,11240"; a="41275134"
X-IronPort-AV: E=Sophos;i="6.11,243,1725346800"; d="scan'208";a="41275134"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 14:52:29 -0700
X-CSE-ConnectionGUID: SLCDhYBrQZGUEQyVhQnaBQ==
X-CSE-MsgGUID: Ul7My1x9Qam8yptLEg0sWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,243,1725346800"; d="scan'208";a="82200228"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 29 Oct 2024 14:52:27 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 29 Oct 2024 23:52:26 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 03/11] drm/i915/cdclk: Extract hsw_ips_min_cdclk()
Date: Tue, 29 Oct 2024 23:52:09 +0200
Message-ID: <20241029215217.3697-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241029215217.3697-1-ville.syrjala@linux.intel.com>
References: <20241029215217.3697-1-ville.syrjala@linux.intel.com>
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

Pull the whole BDW IPS min CDCLK stuff into the IPS code
so that all the details around IPS are contained in once
place.

Note that while
- min_cdclk = DIV_ROUND_UP(min_cdclk * 100, 95);
vs.
+ min_cdclk = max(DIV_ROUND_UP(crtc_state->pixel_rate * 100, 95), min_cdclk)
may look different, they are in fact the same because
min_cdclk==crtc_state->pixel_rate at this point in
intel_crtc_compute_min_cdclk() on BDW.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/hsw_ips.c     | 16 +++++++++++++++-
 drivers/gpu/drm/i915/display/hsw_ips.h     |  6 +++---
 drivers/gpu/drm/i915/display/intel_cdclk.c |  5 +----
 3 files changed, 19 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/hsw_ips.c b/drivers/gpu/drm/i915/display/hsw_ips.c
index c571c6e76d4a..5a0fc9f2bd6f 100644
--- a/drivers/gpu/drm/i915/display/hsw_ips.c
+++ b/drivers/gpu/drm/i915/display/hsw_ips.c
@@ -186,7 +186,7 @@ bool hsw_crtc_supports_ips(struct intel_crtc *crtc)
 	return HAS_IPS(to_i915(crtc->base.dev)) && crtc->pipe == PIPE_A;
 }
 
-bool hsw_crtc_state_ips_capable(const struct intel_crtc_state *crtc_state)
+static bool hsw_crtc_state_ips_capable(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
@@ -215,6 +215,20 @@ bool hsw_crtc_state_ips_capable(const struct intel_crtc_state *crtc_state)
 	return true;
 }
 
+int hsw_ips_min_cdclk(const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+
+	if (!IS_BROADWELL(i915))
+		return 0;
+
+	if (!hsw_crtc_state_ips_capable(crtc_state))
+		return 0;
+
+	/* pixel rate mustn't exceed 95% of cdclk with IPS on BDW */
+	return DIV_ROUND_UP(crtc_state->pixel_rate * 100, 95);
+}
+
 int hsw_ips_compute_config(struct intel_atomic_state *state,
 			   struct intel_crtc *crtc)
 {
diff --git a/drivers/gpu/drm/i915/display/hsw_ips.h b/drivers/gpu/drm/i915/display/hsw_ips.h
index 35364228e1c1..7af12f88a8ce 100644
--- a/drivers/gpu/drm/i915/display/hsw_ips.h
+++ b/drivers/gpu/drm/i915/display/hsw_ips.h
@@ -19,7 +19,7 @@ bool hsw_ips_pre_update(struct intel_atomic_state *state,
 void hsw_ips_post_update(struct intel_atomic_state *state,
 			 struct intel_crtc *crtc);
 bool hsw_crtc_supports_ips(struct intel_crtc *crtc);
-bool hsw_crtc_state_ips_capable(const struct intel_crtc_state *crtc_state);
+int hsw_ips_min_cdclk(const struct intel_crtc_state *crtc_state);
 int hsw_ips_compute_config(struct intel_atomic_state *state,
 			   struct intel_crtc *crtc);
 void hsw_ips_get_config(struct intel_crtc_state *crtc_state);
@@ -42,9 +42,9 @@ static inline bool hsw_crtc_supports_ips(struct intel_crtc *crtc)
 {
 	return false;
 }
-static inline bool hsw_crtc_state_ips_capable(const struct intel_crtc_state *crtc_state)
+static inline int hsw_ips_min_cdclk(const struct intel_crtc_state *crtc_state)
 {
-	return false;
+	return 0;
 }
 static inline int hsw_ips_compute_config(struct intel_atomic_state *state,
 					 struct intel_crtc *crtc)
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 977fcdaa7372..3103ecab980c 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2857,10 +2857,7 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
 		return 0;
 
 	min_cdclk = intel_pixel_rate_to_cdclk(crtc_state);
-
-	/* pixel rate mustn't exceed 95% of cdclk with IPS on BDW */
-	if (IS_BROADWELL(dev_priv) && hsw_crtc_state_ips_capable(crtc_state))
-		min_cdclk = DIV_ROUND_UP(min_cdclk * 100, 95);
+	min_cdclk = max(hsw_ips_min_cdclk(crtc_state), min_cdclk);
 
 	/* BSpec says "Do not use DisplayPort with CDCLK less than 432 MHz,
 	 * audio enabled, port width x4, and link rate HBR2 (5.4 GHz), or else
-- 
2.45.2

