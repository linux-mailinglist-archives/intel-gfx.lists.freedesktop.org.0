Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4939397BE23
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 16:42:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7E3D10E5C9;
	Wed, 18 Sep 2024 14:42:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F/SbHXdV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F9C610E5BF;
 Wed, 18 Sep 2024 14:42:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726670536; x=1758206536;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hliqqEKs1edkPFlsTi9rBNSGuYc7boVrVDs3WuHg228=;
 b=F/SbHXdVJLLFVbdA9FALgWYysq3LbzRNu+PllqUuJV9qB7RlIkStdBgI
 ub/DEnDlFO5pfCDi4cYJVqos2ezyIv7YbR5fS5uDbKWz6WPpuNJQFDkmx
 R5ULTNichcMLSXKhcCdF9JmCYtQc7E5GcXkVKTAnydL/M1EsLSAtAP9Kn
 PNMZnO252bz2s6K7OXS+sGogEpyNNZ/bGJ/RJUuNDpeBF2TxrSUQUhWjC
 kSiWk6Y8hyrXNMM7OFDB8uvSrOxTc55A4ozdyTnd88OQsEWA/tiu4Ar4x
 sn2JveDCtToS5ahSfOFpBtmi0aLzgu+LO6Fxa8KauczOItwrYGWhu+oFg g==;
X-CSE-ConnectionGUID: GlZ+eohzQYqOwdQXv7Eqbg==
X-CSE-MsgGUID: 4orziOIVQF2shelo0x6WHw==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="29481763"
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="29481763"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 07:42:16 -0700
X-CSE-ConnectionGUID: 2L04csFMQPyI6z7s3Umhbg==
X-CSE-MsgGUID: 8A3JEo2xSD6NWXiOEbR7bg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="69200397"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 07:42:14 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 12/15] drm/i915/display/vdsc: Add ultrajoiner support with DSC
Date: Wed, 18 Sep 2024 20:13:40 +0530
Message-ID: <20240918144343.2876184-13-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240918144343.2876184-1-ankit.k.nautiyal@intel.com>
References: <20240918144343.2876184-1-ankit.k.nautiyal@intel.com>
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

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Add changes to DSC which are required for Ultrajoiner.

v2:
-Use correct helper for setting bits for bigjoiner secondary. (Ankit)
-Use primary/secondary instead of master/slave. (Suraj)
v3: Add the ultrajoiner helpers and use it for setting ultrajoiner
bits (Ankit)
v4: Use num_vdsc_instances *= num_joined_pipes (Ville)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 21 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_display.h |  2 ++
 drivers/gpu/drm/i915/display/intel_vdsc.c    | 24 ++++++++++++++++++--
 3 files changed, 45 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 65119c26ec88..044f91359c42 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -314,6 +314,27 @@ u8 _intel_modeset_secondary_pipes(const struct intel_crtc_state *crtc_state)
 	return bigjoiner_secondary_pipes(crtc_state);
 }
 
+bool intel_crtc_is_ultrajoiner(const struct intel_crtc_state *crtc_state)
+{
+	return intel_crtc_num_joined_pipes(crtc_state) >= 4;
+}
+
+static u8 ultrajoiner_primary_pipes(const struct intel_crtc_state *crtc_state)
+{
+	if (!intel_crtc_is_ultrajoiner(crtc_state))
+		return 0;
+
+	return crtc_state->joiner_pipes & (0b00010001 << joiner_primary_pipe(crtc_state));
+}
+
+bool intel_crtc_is_ultrajoiner_primary(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+	return intel_crtc_is_ultrajoiner(crtc_state) &&
+	       BIT(crtc->pipe) & ultrajoiner_primary_pipes(crtc_state);
+}
+
 u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state)
 {
 	if (crtc_state->joiner_pipes)
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 783562dc013b..6f470ffc61ea 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -442,6 +442,8 @@ bool intel_crtc_is_joiner_secondary(const struct intel_crtc_state *crtc_state);
 bool intel_crtc_is_joiner_primary(const struct intel_crtc_state *crtc_state);
 bool intel_crtc_is_bigjoiner_primary(const struct intel_crtc_state *crtc_state);
 bool intel_crtc_is_bigjoiner_secondary(const struct intel_crtc_state *crtc_state);
+bool intel_crtc_is_ultrajoiner(const struct intel_crtc_state *crtc_state);
+bool intel_crtc_is_ultrajoiner_primary(const struct intel_crtc_state *crtc_state);
 u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state);
 u8 _intel_modeset_primary_pipes(const struct intel_crtc_state *crtc_state);
 u8 _intel_modeset_secondary_pipes(const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 8158e3702ed5..990abac12779 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -379,9 +379,9 @@ static int intel_dsc_get_vdsc_per_pipe(const struct intel_crtc_state *crtc_state
 int intel_dsc_get_num_vdsc_instances(const struct intel_crtc_state *crtc_state)
 {
 	int num_vdsc_instances = intel_dsc_get_vdsc_per_pipe(crtc_state);
+	int num_joined_pipes = intel_crtc_num_joined_pipes(crtc_state);
 
-	if (crtc_state->joiner_pipes)
-		num_vdsc_instances *= 2;
+	num_vdsc_instances *= num_joined_pipes;
 
 	return num_vdsc_instances;
 }
@@ -751,6 +751,14 @@ void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc_state)
 	}
 }
 
+static bool intel_crtc_ultrajoiner_enable_needed(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+	return intel_crtc_is_ultrajoiner(crtc_state) &&
+	       crtc->pipe != PIPE_D;
+}
+
 void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -770,7 +778,19 @@ void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
 		dss_ctl1_val |= JOINER_ENABLE;
 	}
 	if (crtc_state->joiner_pipes) {
+		/*
+		 * This bit doesn't seem to follow primary/secondary logic or
+		 * any other logic, so lets just add helper function to
+		 * at least hide this hassle..
+		 */
+		if (intel_crtc_ultrajoiner_enable_needed(crtc_state))
+			dss_ctl1_val |= ULTRA_JOINER_ENABLE;
+
+		if (intel_crtc_is_ultrajoiner_primary(crtc_state))
+			dss_ctl1_val |= PRIMARY_ULTRA_JOINER_ENABLE;
+
 		dss_ctl1_val |= BIG_JOINER_ENABLE;
+
 		if (intel_crtc_is_bigjoiner_primary(crtc_state))
 			dss_ctl1_val |= PRIMARY_BIG_JOINER_ENABLE;
 	}
-- 
2.45.2

