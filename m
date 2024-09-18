Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF6E097BE17
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 16:41:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5938F10E26C;
	Wed, 18 Sep 2024 14:41:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="meSbickG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FFC610E26C;
 Wed, 18 Sep 2024 14:41:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726670517; x=1758206517;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NCzu5JstytLaVY/Vsi+d8vmUdQk2y8laA8HS026amP0=;
 b=meSbickGspyXQA45iHXDthmqpKxmmmgt5Ri4C1TZ1zMrc2AjR4gxAW5C
 zkZbHTlEDV/enlrNY/wYeZUcgBJHeY5JKrEX+HpkbQNvjz/yZ1aI6wY25
 z+aP5w/DxD9xsnhaF+n2LC8krbAHxuJcMIZTMa0K1uXzaTlLMxrzw845h
 LlFd9exco4SMffMUWGAwymNBRUKs4waty/OBV+5Z8yDA8eeGBh4cCcQiE
 AgraGv01AmwE1la3ey0JNx8yQtyjY9eT3kI0a+zkKnAElX9pS/MqZHQoF
 DBRL+WFC5bYVoNRBThKeAvxMdUsvQYNkXOsAOdf77E7LgbNzkdqUIAQqv w==;
X-CSE-ConnectionGUID: 9KD/ez78S82hWQUJGy9fTg==
X-CSE-MsgGUID: o7O3cPtuRsOQppEILviBAQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="29481713"
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="29481713"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 07:41:57 -0700
X-CSE-ConnectionGUID: jbRmNdGbQSmUwTzkEGrjVw==
X-CSE-MsgGUID: J+0+h9zCSpqbtDjbZl60Lw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="69200360"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 07:41:54 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 01/15] drm/i915: Add some essential functionality for joiners
Date: Wed, 18 Sep 2024 20:13:29 +0530
Message-ID: <20240918144343.2876184-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240918144343.2876184-1-ankit.k.nautiyal@intel.com>
References: <20240918144343.2876184-1-ankit.k.nautiyal@intel.com>
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

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

In most of the cases we now try to avoid mentioning things like
"bigjoiner" or "ultrajoiner" trying to unify the API and refer
mostly to all this functionality as "joiner".
In majority cases that should be way to go.
However in some cases we still need to distinguish between
bigjoiner primaries and secondaries(such as DSC register programming).

Create correspondent helper functions and start using them,
in order be prepared for adding ultrajoiner functionality.

v2: Fixed checkpatch warnings (Ankit)
v3: Introduce ultrajoiner helpers in next patch.
v4: Streamline the helpers and add few more. (Ville)
v5: Add comment to clarify that helpers apply to both bigjoiner and
uncompressed joiner configurations. (Ville)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 45 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_display.h |  2 +
 drivers/gpu/drm/i915/display/intel_vdsc.c    |  4 +-
 3 files changed, 49 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 886abed1783b..9f108d5e00ef 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -254,6 +254,51 @@ static enum pipe joiner_primary_pipe(const struct intel_crtc_state *crtc_state)
 	return ffs(crtc_state->joiner_pipes) - 1;
 }
 
+/*
+ * The following helper functions, despite being named for bigjoiner,
+ * are applicable to both bigjoiner and uncompressed joiner configurations.
+ */
+static bool is_bigjoiner(const struct intel_crtc_state *crtc_state)
+{
+	return hweight8(crtc_state->joiner_pipes) >= 2;
+}
+
+static u8 bigjoiner_primary_pipes(const struct intel_crtc_state *crtc_state)
+{
+	if (!is_bigjoiner(crtc_state))
+		return 0;
+
+	return crtc_state->joiner_pipes & (0b01010101 << joiner_primary_pipe(crtc_state));
+}
+
+static unsigned int bigjoiner_secondary_pipes(const struct intel_crtc_state *crtc_state)
+{
+	if (!is_bigjoiner(crtc_state))
+		return 0;
+
+	return crtc_state->joiner_pipes & (0b10101010 << joiner_primary_pipe(crtc_state));
+}
+
+bool intel_crtc_is_bigjoiner_primary(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+	if (!is_bigjoiner(crtc_state))
+		return false;
+
+	return BIT(crtc->pipe) & bigjoiner_primary_pipes(crtc_state);
+}
+
+bool intel_crtc_is_bigjoiner_secondary(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+	if (!is_bigjoiner(crtc_state))
+		return false;
+
+	return BIT(crtc->pipe) & bigjoiner_secondary_pipes(crtc_state);
+}
+
 u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state)
 {
 	if (crtc_state->joiner_pipes)
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index e48461410632..64ca0f1ae013 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -416,6 +416,8 @@ bool is_trans_port_sync_master(const struct intel_crtc_state *state);
 u8 intel_crtc_joined_pipe_mask(const struct intel_crtc_state *crtc_state);
 bool intel_crtc_is_joiner_secondary(const struct intel_crtc_state *crtc_state);
 bool intel_crtc_is_joiner_primary(const struct intel_crtc_state *crtc_state);
+bool intel_crtc_is_bigjoiner_primary(const struct intel_crtc_state *crtc_state);
+bool intel_crtc_is_bigjoiner_secondary(const struct intel_crtc_state *crtc_state);
 u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state);
 struct intel_crtc *intel_primary_crtc(const struct intel_crtc_state *crtc_state);
 bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 2e849b015e74..8158e3702ed5 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -742,7 +742,7 @@ void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc_state)
 	u32 dss_ctl1_val = 0;
 
 	if (crtc_state->joiner_pipes && !crtc_state->dsc.compression_enable) {
-		if (intel_crtc_is_joiner_secondary(crtc_state))
+		if (intel_crtc_is_bigjoiner_secondary(crtc_state))
 			dss_ctl1_val |= UNCOMPRESSED_JOINER_SECONDARY;
 		else
 			dss_ctl1_val |= UNCOMPRESSED_JOINER_PRIMARY;
@@ -771,7 +771,7 @@ void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
 	}
 	if (crtc_state->joiner_pipes) {
 		dss_ctl1_val |= BIG_JOINER_ENABLE;
-		if (!intel_crtc_is_joiner_secondary(crtc_state))
+		if (intel_crtc_is_bigjoiner_primary(crtc_state))
 			dss_ctl1_val |= PRIMARY_BIG_JOINER_ENABLE;
 	}
 	intel_de_write(dev_priv, dss_ctl1_reg(crtc, crtc_state->cpu_transcoder), dss_ctl1_val);
-- 
2.45.2

