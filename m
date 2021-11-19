Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F850456F65
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Nov 2021 14:14:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA4BE6F8C7;
	Fri, 19 Nov 2021 13:14:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44D6C6F5BA
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Nov 2021 13:14:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10172"; a="215124506"
X-IronPort-AV: E=Sophos;i="5.87,247,1631602800"; d="scan'208";a="215124506"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2021 05:14:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,247,1631602800"; d="scan'208";a="507894083"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga008.jf.intel.com with ESMTP; 19 Nov 2021 05:14:36 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 19 Nov 2021 15:13:48 +0200
Message-Id: <20211119131348.725220-6-mika.kahola@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20211119131348.725220-1-mika.kahola@intel.com>
References: <20211119131348.725220-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 5/5] drm/i915: Allow cdclk squasher to be
 reconfigured live
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

Supposedly we should be able to change the cdclk squasher waveform
even when many pipes are active. Make it so.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 40 ++++++++++++++++++++--
 1 file changed, 37 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 5fcb393079f7..075ad6055765 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1951,6 +1951,25 @@ static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
 		a->ref == b->ref;
 }
 
+static bool intel_cdclk_can_squash(struct drm_i915_private *dev_priv,
+				   const struct intel_cdclk_config *a,
+				   const struct intel_cdclk_config *b)
+{
+	/*
+	 * FIXME should store a bit more state in intel_cdclk_config
+	 * to differentiate squasher vs. cd2x divider properly. For
+	 * the moment all platforms with squasher use a fixed cd2x
+	 * divider.
+	 */
+	if (!has_cdclk_squasher(dev_priv))
+		return false;
+
+	return a->cdclk != b->cdclk &&
+		a->vco != 0 &&
+		a->vco == b->vco &&
+		a->ref == b->ref;
+}
+
 /**
  * intel_cdclk_needs_modeset - Determine if changong between the CDCLK
  *                             configurations requires a modeset on all pipes
@@ -1988,7 +2007,17 @@ static bool intel_cdclk_can_cd2x_update(struct drm_i915_private *dev_priv,
 	if (DISPLAY_VER(dev_priv) < 10 && !IS_BROXTON(dev_priv))
 		return false;
 
+	/*
+	 * FIXME should store a bit more state in intel_cdclk_config
+	 * to differentiate squasher vs. cd2x divider properly. For
+	 * the moment all platforms with squasher use a fixed cd2x
+	 * divider.
+	 */
+	if (has_cdclk_squasher(dev_priv))
+		return false;
+
 	return a->cdclk != b->cdclk &&
+		a->vco != 0 &&
 		a->vco == b->vco &&
 		a->ref == b->ref;
 }
@@ -2672,9 +2701,14 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 			pipe = INVALID_PIPE;
 	}
 
-	if (intel_cdclk_can_crawl(dev_priv,
-				  &old_cdclk_state->actual,
-				  &new_cdclk_state->actual)) {
+	if (intel_cdclk_can_squash(dev_priv,
+				   &old_cdclk_state->actual,
+				   &new_cdclk_state->actual)) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "Can change cdclk via squasher\n");
+	} else if (intel_cdclk_can_crawl(dev_priv,
+					 &old_cdclk_state->actual,
+					 &new_cdclk_state->actual)) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Can change cdclk via crawl\n");
 	} else if (pipe != INVALID_PIPE) {
-- 
2.27.0

