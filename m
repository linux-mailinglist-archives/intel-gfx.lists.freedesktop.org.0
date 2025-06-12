Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77842AD6FDF
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 14:13:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F2BD10E80A;
	Thu, 12 Jun 2025 12:13:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cAIBxhJk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E19F310E808;
 Thu, 12 Jun 2025 12:13:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749730400; x=1781266400;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dororpghovdEovL6QNd1NG1Zbj0fbkgEkOIhCA8nR1o=;
 b=cAIBxhJkUVsVfpOrJBFH6U4SfAqN6KmCObawnKgdmXcz0KQzo5HjFRcs
 a1YC44J7xvIU2dPzBMi++15zu5eaWXYECh6sSxyKxEHMr8rXQpWzJFjKD
 1vVaLYFPfw8js6XCiqSE7lC0YY9mdr7apk9RzwWAk/bTqZKnMv32PlEM/
 IrydEO09k15wozW/jAi7JlmHe8BhhMgq5yk3UC+2hltOeamb7FxFs5Sm/
 dMkvSIQYp06naXL5oVgafNGWQEZGLjBYz5iYLksRL8KMpZl5Z3Vlj6e4B
 aPVpW99Hu63es16hniMQilSeodiT6OBmJlLplDR6VmVUnDBBOekc9R0Mi Q==;
X-CSE-ConnectionGUID: WDdsF/WvSbKfak64b9xuVw==
X-CSE-MsgGUID: vzr9UuVPSOaC+JHYN/wHEQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="74438585"
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="74438585"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 05:13:20 -0700
X-CSE-ConnectionGUID: VSszWBz1TN6aG3EKwZcohA==
X-CSE-MsgGUID: Rh4voh3MTtK8kb6acGXQBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="152493883"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.242])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 05:13:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 13/16] drm/i915/cdclk: abstract intel_cdclk_force_min_cdclk()
Date: Thu, 12 Jun 2025 15:12:08 +0300
Message-Id: <777a281f575bffb27648361836f397a6cde46fb7.1749730224.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1749730224.git.jani.nikula@intel.com>
References: <cover.1749730224.git.jani.nikula@intel.com>
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

Add intel_cdclk_force_min_cdclk() helper to avoid modifying struct
intel_cdclk_state internals outside of intel_cdclk.c.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 2 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c | 5 +++++
 drivers/gpu/drm/i915/display/intel_cdclk.h | 1 +
 3 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 55af3a553c58..5bdaef38f13d 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -951,7 +951,7 @@ static int glk_force_audio_cdclk_commit(struct intel_atomic_state *state,
 	if (IS_ERR(cdclk_state))
 		return PTR_ERR(cdclk_state);
 
-	cdclk_state->force_min_cdclk = enable ? 2 * 96000 : 0;
+	intel_cdclk_force_min_cdclk(cdclk_state, enable ? 2 * 96000 : 0);
 
 	return drm_atomic_commit(&state->base);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index ed6c407f66c7..f63b6b3b5476 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3867,3 +3867,8 @@ bool intel_cdclk_pmdemand_needs_update(struct intel_atomic_state *state)
 
 	return false;
 }
+
+void intel_cdclk_force_min_cdclk(struct intel_cdclk_state *cdclk_state, int force_min_cdclk)
+{
+	cdclk_state->force_min_cdclk = force_min_cdclk;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index 8527a6e44ee5..ff10ed526bd4 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -101,5 +101,6 @@ int intel_cdclk_logical(const struct intel_cdclk_state *cdclk_state);
 int intel_cdclk_min_cdclk(const struct intel_cdclk_state *cdclk_state, enum pipe pipe);
 int intel_cdclk_bw_min_cdclk(const struct intel_cdclk_state *cdclk_state);
 bool intel_cdclk_pmdemand_needs_update(struct intel_atomic_state *state);
+void intel_cdclk_force_min_cdclk(struct intel_cdclk_state *cdclk_state, int force_min_cdclk);
 
 #endif /* __INTEL_CDCLK_H__ */
-- 
2.39.5

