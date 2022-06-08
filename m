Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2EAC543D99
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jun 2022 22:33:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BB8E1135AE;
	Wed,  8 Jun 2022 20:33:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F14081135A6
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jun 2022 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654720434; x=1686256434;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6NaCYbWROsNDJ1T5HTbef6EzIQr6bfLRCLi8c5JzHes=;
 b=BuMd6QdSM6n9L5TRQOWahCgqritZIpDB9jEuqbBdTrIwmojbRBLx/mBj
 J8TQFNmAYiHNVjKtvlWtO8wO/Ym7orgr9rTnbSPDstp8EZDZN49zMyM7a
 wbPyFugeM2BVapsI6rEqQ5BOEpQaH87S6Z0hnGFWZpdKzbig9udCQ8SPm
 NdI8fAqfNuiRzQfg8DuINaor1ZlJayCBopU1TbbdeDOOqDlS5ngpFEIxQ
 AD+VrHXzFBHf23EekjQJa1OA/OOb3nWJzuqllaXSJZAQ3Md4eKysCuAJa
 xV+YgMiQ8KBNNSnrnZcTFnvmK3utYc1tYofgkR0HqnaPe9Un8bjUnByRs w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10372"; a="274564031"
X-IronPort-AV: E=Sophos;i="5.91,286,1647327600"; d="scan'208";a="274564031"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2022 13:33:53 -0700
X-IronPort-AV: E=Sophos;i="5.91,286,1647327600"; d="scan'208";a="609846736"
Received: from josouza-mobl2.fso.intel.com ([10.230.19.134])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2022 13:33:50 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Jun 2022 13:33:44 -0700
Message-Id: <20220608203344.513082-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Fix handling of enable_psr
 parameter
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Commit 3cf050762534 ("drm/i915/bios: Split VBT data into per-panel vs.
global parts") cause PSR to be disabled when enable_psr has the
default value and there is at least one DP port that do not supports
PSR.

That was happening because intel_psr_init() is called for every DP
port and then enable_psr is globaly set to 0 based on the PSR support
of the DP port.

Here dropping the enable_psr overwritten and using the VBT PSR value
when enable_psr is set as default.

Fixes: 3cf050762534 ("drm/i915/bios: Split VBT data into per-panel vs. global parts")
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Jouni Högander <jouni.hogander@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index aedb3e0e69ecd..7d61c55184e51 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -86,10 +86,13 @@
 
 static bool psr_global_enabled(struct intel_dp *intel_dp)
 {
+	struct intel_connector *connector = intel_dp->attached_connector;
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 
 	switch (intel_dp->psr.debug & I915_PSR_DEBUG_MODE_MASK) {
 	case I915_PSR_DEBUG_DEFAULT:
+		if (i915->params.enable_psr == -1)
+			return connector->panel.vbt.psr.enable;
 		return i915->params.enable_psr;
 	case I915_PSR_DEBUG_DISABLE:
 		return false;
@@ -2394,10 +2397,6 @@ void intel_psr_init(struct intel_dp *intel_dp)
 
 	intel_dp->psr.source_support = true;
 
-	if (dev_priv->params.enable_psr == -1)
-		if (!connector->panel.vbt.psr.enable)
-			dev_priv->params.enable_psr = 0;
-
 	/* Set link_standby x link_off defaults */
 	if (DISPLAY_VER(dev_priv) < 12)
 		/* For new platforms up to TGL let's respect VBT back again */
-- 
2.36.1

