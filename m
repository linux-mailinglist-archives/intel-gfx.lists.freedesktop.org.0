Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 747D98470DF
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 14:12:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02E5910E3B7;
	Fri,  2 Feb 2024 13:12:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KloVCv0S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BFB410E3B7
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 13:12:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706879562; x=1738415562;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=t3H8undarwfrBKNQdsindYn+yErchJbVJWD1o5uJRSs=;
 b=KloVCv0SKv/jdFw5B5wLF7oPe+qSk7htExi0a8b5lyb3YIDfA4DIDyCf
 bZwT3jGWFfzXdj3OPTHjHmP+asH99Ct7Nc4jMMxEcFSYp916BH/n4jktV
 8GuygWODMFyOcEs5gqG1awhvSZDRd2bh9bXu6wZAILZ1svD8awcl50Quj
 EXichIf6Scn3z1u42gVzshSxVwe7hmI2bw1NShuUMJePP5Yf6C9Y9j4L2
 4tiP/VUokbE5hRWDY36IofKdz2ZS+87SuJxSKBQVLgQNfCA9WKhdMvwJK
 uuRRKZttADEr41U4fXq10F/9IBlwZMhaMHkWdH9FaVuC8ifulkMIorDUf g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="22638113"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; d="scan'208";a="22638113"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 05:12:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; 
   d="scan'208";a="380974"
Received: from vvagias-mobl1.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.246.112.101])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 05:12:36 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: gustavo.sousa@intel.com
Subject: [PATCH] drm/i915/cdclk: Rename intel_cdclk_needs_modeset to
 intel_cdclk_params_changed
Date: Fri,  2 Feb 2024 10:12:08 -0300
Message-ID: <20240202131208.453298-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.43.0
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

Looks like the name and description of intel_cdclk_needs_modeset()
became inacurate as of commit 59f9e9cab3a1 ("drm/i915: Skip modeset for
cdclk changes if possible"), when it became possible to update the cdclk
without requiring disabling the pipes when only changing the cd2x
divider was enough.

Later on we also added the same type of support with squash and crawling
with commit 25e0e5ae5610 ("drm/i915/display: Do both crawl and squash
when changing cdclk"), commit d4a23930490d ("drm/i915: Allow cdclk
squasher to be reconfigured live") and commit d62686ba3b54
("drm/i915/adl_p: CDCLK crawl support for ADL").

As such, update that function's name and documentation to something more
appropriate, since the real checks for requiring modeset are done
elsewhere.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---

One thing worth noting here is that, with this change, we are left with an
awkward situation where two function names related to checking changes in cdclk:

  intel_cdclk_params_changed() and intel_cdclk_changed()

,

and I find it weird that we have intel_cdclk_changed(), which checks for the
voltage level as well. Shouldn't the voltage level be a function of cdclk and
ddi clock? Why do we need that?

 drivers/gpu/drm/i915/display/intel_cdclk.c        | 15 +++++++--------
 drivers/gpu/drm/i915/display/intel_cdclk.h        |  4 ++--
 .../drm/i915/display/intel_display_power_well.c   |  4 ++--
 3 files changed, 11 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 26200ee3e23f..caadd880865f 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2233,17 +2233,16 @@ static bool intel_cdclk_can_squash(struct drm_i915_private *dev_priv,
 }
 
 /**
- * intel_cdclk_needs_modeset - Determine if changong between the CDCLK
- *                             configurations requires a modeset on all pipes
+ * intel_cdclk_params_changed - Check whether CDCLK parameters changed
  * @a: first CDCLK configuration
  * @b: second CDCLK configuration
  *
  * Returns:
- * True if changing between the two CDCLK configurations
- * requires all pipes to be off, false if not.
+ * True if parameters changed in a way that requires programming the CDCLK
+ * and False otherwise.
  */
-bool intel_cdclk_needs_modeset(const struct intel_cdclk_config *a,
-			       const struct intel_cdclk_config *b)
+bool intel_cdclk_params_changed(const struct intel_cdclk_config *a,
+				const struct intel_cdclk_config *b)
 {
 	return a->cdclk != b->cdclk ||
 		a->vco != b->vco ||
@@ -2295,7 +2294,7 @@ static bool intel_cdclk_can_cd2x_update(struct drm_i915_private *dev_priv,
 static bool intel_cdclk_changed(const struct intel_cdclk_config *a,
 				const struct intel_cdclk_config *b)
 {
-	return intel_cdclk_needs_modeset(a, b) ||
+	return intel_cdclk_params_changed(a, b) ||
 		a->voltage_level != b->voltage_level;
 }
 
@@ -3202,7 +3201,7 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 		drm_dbg_kms(&dev_priv->drm,
 			    "Can change cdclk cd2x divider with pipe %c active\n",
 			    pipe_name(pipe));
-	} else if (intel_cdclk_needs_modeset(&old_cdclk_state->actual,
+	} else if (intel_cdclk_params_changed(&old_cdclk_state->actual,
 					     &new_cdclk_state->actual)) {
 		/* All pipes must be switched off while we change the cdclk. */
 		ret = intel_modeset_all_pipes_late(state, "CDCLK change");
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index 48fd7d39e0cd..f8d3b2b3be6a 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -60,8 +60,8 @@ void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv);
 void intel_update_max_cdclk(struct drm_i915_private *dev_priv);
 void intel_update_cdclk(struct drm_i915_private *dev_priv);
 u32 intel_read_rawclk(struct drm_i915_private *dev_priv);
-bool intel_cdclk_needs_modeset(const struct intel_cdclk_config *a,
-			       const struct intel_cdclk_config *b);
+bool intel_cdclk_params_changed(const struct intel_cdclk_config *a,
+				const struct intel_cdclk_config *b);
 void intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state);
 void intel_set_cdclk_post_plane_update(struct intel_atomic_state *state);
 void intel_cdclk_dump_config(struct drm_i915_private *i915,
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 47cd6bb04366..7364ca520764 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -968,8 +968,8 @@ void gen9_disable_dc_states(struct drm_i915_private *dev_priv)
 	intel_cdclk_get_cdclk(dev_priv, &cdclk_config);
 	/* Can't read out voltage_level so can't use intel_cdclk_changed() */
 	drm_WARN_ON(&dev_priv->drm,
-		    intel_cdclk_needs_modeset(&dev_priv->display.cdclk.hw,
-					      &cdclk_config));
+		    intel_cdclk_params_changed(&dev_priv->display.cdclk.hw,
+					       &cdclk_config));
 
 	gen9_assert_dbuf_enabled(dev_priv);
 
-- 
2.43.0

