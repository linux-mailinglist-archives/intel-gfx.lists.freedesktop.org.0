Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C740C97B7F3
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 08:28:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C602110E53A;
	Wed, 18 Sep 2024 06:28:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kVfRZxjL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4515A10E538;
 Wed, 18 Sep 2024 06:28:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726640910; x=1758176910;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eaLhcj9V7/tgNU72TNQmHYqLtW3KsFGxl9ZYRLkFwsk=;
 b=kVfRZxjL2DzvJYidEVNiaDROw8KEbo0K1UDvIKg5Avgzh1TWgED1YFL6
 s78H6asqGIdx0iLCVJRZQduClLWC82VsbvNAJYfR3M/QLeuciBO1pxz2Q
 00AzPtA+Sy8TTMX21yYgheTPwIEPAf4GbH43SngzpfWxliJ98B6HRKPNG
 j8duxTMJ2j82lwcjXijGEdUgTRgSlVOyqqMW8cRmFr1d1xxjCBFNpZZeD
 fOBsGF6JMPiXb010GmEedcmwtVBL+9y8FZiFwGbKQYNQyBrpBvjpz0kox
 460f8BOp93OhXkVLLjpMGhQ2vSdL9tLMkuOADk2UaYhMcMfgE1JBxDV6r A==;
X-CSE-ConnectionGUID: NtDJqtTbTdmqn5Xyvy/uIA==
X-CSE-MsgGUID: sVSuHyH/T6acs+DdGA7+Cg==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="25410747"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="25410747"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 23:28:30 -0700
X-CSE-ConnectionGUID: WyVu+rVMQBWATm3SLe+kEA==
X-CSE-MsgGUID: LmSGxSnNTmCu66N12DdFCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="69668059"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 23:28:28 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: suraj.kandpal@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 1/2] drm/i915: Add some essential functionality for joiners
Date: Wed, 18 Sep 2024 12:00:15 +0530
Message-ID: <20240918063016.2667721-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240918063016.2667721-1-ankit.k.nautiyal@intel.com>
References: <20240918063016.2667721-1-ankit.k.nautiyal@intel.com>
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
index 426074afef43..83ea188cbe21 100644
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
index 4bdb48084cab..27c6a5940991 100644
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

