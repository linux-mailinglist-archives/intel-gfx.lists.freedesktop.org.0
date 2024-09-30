Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AFE098A9D6
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 18:34:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE1A410E55B;
	Mon, 30 Sep 2024 16:34:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D7u0BNKq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C2DF10E559;
 Mon, 30 Sep 2024 16:34:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727714043; x=1759250043;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=grTheZg0PaBfcWRFYZfgtE6oSwwzwej4Q0XahNZ4vjg=;
 b=D7u0BNKquC2BYSUTMO9xMKK3LJxmtX/buOeJEZnwbfpdGH2PCA5IB46k
 FQcySojSTLhdqA313F/QUSP8+pwgNqJAdFawNCZYj8T0XGAD6ejn7v+dc
 Xf/tirykoWP/syhfZApgmvdvhXJpqB9634EyaNXbh5ALlrON84aeHokZ+
 5ofQMwDKrpfmv4ZbnMjDhCX4f5e6RmcuGqbOUM2xX+yCkifLioEGXQCcy
 VMqqxBqX15DomHPSYykcSwMfRJ1YAvF25YDU2RlVXy0j+PfZK3+PjGHCm
 ymf1bPGnz2crgclKsU87f9WHX+3MyDB+Er1rJ92N0749tpywb+d5M8jwQ g==;
X-CSE-ConnectionGUID: /xFSyd0pRRaglbAcbwXsOQ==
X-CSE-MsgGUID: viJUetu5Q1aaMaZKnHhR5A==
X-IronPort-AV: E=McAfee;i="6700,10204,11211"; a="30700535"
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="30700535"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 09:34:03 -0700
X-CSE-ConnectionGUID: XWgVo7kGQLy6GP7h8b40NQ==
X-CSE-MsgGUID: aaDWh8qpQuO3gJP9yFCtMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="110839177"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 09:34:01 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 06/13] drm/i915/display/vdsc: Add ultrajoiner support with DSC
Date: Mon, 30 Sep 2024 22:05:42 +0530
Message-ID: <20240930163549.416410-7-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240930163549.416410-1-ankit.k.nautiyal@intel.com>
References: <20240930163549.416410-1-ankit.k.nautiyal@intel.com>
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

Add changes to DSC which are required for Ultrajoiner.

v2:
-Use correct helper for setting bits for bigjoiner secondary. (Ankit)
-Use primary/secondary instead of master/slave. (Suraj)
v3: Add the ultrajoiner helpers and use it for setting ultrajoiner
bits (Ankit)
v4: Use num_vdsc_instances *= num_joined_pipes (Ville)
v5: Align the helper to get ultrajoiner enabled pipes with other helpers
(Ville)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 42 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_display.h |  3 ++
 drivers/gpu/drm/i915/display/intel_vdsc.c    | 11 ++++-
 3 files changed, 54 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 099304a74203..40ad3fdaab10 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -312,6 +312,48 @@ u8 _intel_modeset_secondary_pipes(const struct intel_crtc_state *crtc_state)
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
+/*
+ * The ultrajoiner enable bit doesn't seem to follow primary/secondary logic or
+ * any other logic, so lets just add helper function to
+ * at least hide this hassle..
+ */
+static u8 ultrajoiner_enable_pipes(const struct intel_crtc_state *crtc_state)
+{
+	if (!intel_crtc_is_ultrajoiner(crtc_state))
+		return 0;
+
+	return crtc_state->joiner_pipes & (0b01110111 << joiner_primary_pipe(crtc_state));
+}
+
+bool intel_crtc_ultrajoiner_enable_needed(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+	return intel_crtc_is_ultrajoiner(crtc_state) &&
+	       BIT(crtc->pipe) & ultrajoiner_enable_pipes(crtc_state);
+}
+
 u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state)
 {
 	if (crtc_state->joiner_pipes)
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 1f0fed5ea7bc..61e1df878de9 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -441,6 +441,9 @@ bool intel_crtc_is_joiner_secondary(const struct intel_crtc_state *crtc_state);
 bool intel_crtc_is_joiner_primary(const struct intel_crtc_state *crtc_state);
 bool intel_crtc_is_bigjoiner_primary(const struct intel_crtc_state *crtc_state);
 bool intel_crtc_is_bigjoiner_secondary(const struct intel_crtc_state *crtc_state);
+bool intel_crtc_is_ultrajoiner(const struct intel_crtc_state *crtc_state);
+bool intel_crtc_is_ultrajoiner_primary(const struct intel_crtc_state *crtc_state);
+bool intel_crtc_ultrajoiner_enable_needed(const struct intel_crtc_state *crtc_state);
 u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state);
 u8 _intel_modeset_primary_pipes(const struct intel_crtc_state *crtc_state);
 u8 _intel_modeset_secondary_pipes(const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 208f117ece57..40525f5c4c42 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -385,9 +385,9 @@ static int intel_dsc_get_vdsc_per_pipe(const struct intel_crtc_state *crtc_state
 int intel_dsc_get_num_vdsc_instances(const struct intel_crtc_state *crtc_state)
 {
 	int num_vdsc_instances = intel_dsc_get_vdsc_per_pipe(crtc_state);
+	int num_joined_pipes = intel_crtc_num_joined_pipes(crtc_state);
 
-	if (crtc_state->joiner_pipes)
-		num_vdsc_instances *= 2;
+	num_vdsc_instances *= num_joined_pipes;
 
 	return num_vdsc_instances;
 }
@@ -776,7 +776,14 @@ void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
 		dss_ctl1_val |= JOINER_ENABLE;
 	}
 	if (crtc_state->joiner_pipes) {
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

