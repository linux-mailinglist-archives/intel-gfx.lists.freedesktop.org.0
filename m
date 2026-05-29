Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OOkjFRzpGWpazwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 21:29:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06CFA607DE5
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 21:29:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 671B8112470;
	Fri, 29 May 2026 19:29:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dw2AX6Pe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59023112471;
 Fri, 29 May 2026 19:29:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780082968; x=1811618968;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/9IbWRBjb1snF1BlfYvq6we0ZnyE2zhy0QcdLp1+z5Q=;
 b=dw2AX6Ped8N4XwWFAUEwC0PbuCcaWMO9VevTIdMA6N+1dePw+AJIFZ3z
 UKw5JbLyKzur0zW4Nznmdk/qKB3MnaV5T+015HpwbxhLCcqHpmrATA4BR
 /oHbqN8hN7KUgF8RoaY7fvlqysmUhDl1ZRQTW9XxK85fUWtkj9U5+AnT6
 G+TM+5W3h8l1wBV1LdfJvrkcE1rtbkdH9gXKgwOBrJ8CzsJo2Zv4/F50J
 crrwnAIa/fIfINEVjGac/iLoMA3fBcDKzXvA5ZrQoV6yCRr8GntPc8LRj
 TVmKXhfxiuWXVMzlQmPoJkZiJWPiSSYCyDrH2sR284VmjWLnmnMUR2psL w==;
X-CSE-ConnectionGUID: X5WEyeHOR1iUbE+qRaHVNg==
X-CSE-MsgGUID: KiSvVtVqS9Kv1nvnw1G90w==
X-IronPort-AV: E=McAfee;i="6800,10657,11801"; a="103611815"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="103611815"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 12:29:28 -0700
X-CSE-ConnectionGUID: c9yCVTLzRpWgDBJXaBejTg==
X-CSE-MsgGUID: hRUE0KFnR/Ool4cT4g/RdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="240393501"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by fmviesa008.fm.intel.com with ESMTP; 29 May 2026 12:29:27 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v4 09/10] drm/i915: override Combo's VS/PE when requested
Date: Fri, 29 May 2026 21:28:58 +0200
Message-ID: <20260529192859.4172376-10-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260529192859.4172376-1-michal.grzelak@intel.com>
References: <20260529192859.4172376-1-michal.grzelak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 06CFA607DE5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add accessor function for Combo to read requested table from VBT #57.
Parse the requested table and transform data into port's buffer.

For EHL, in cases when eDP encoder uses low vswing, choose 3rd table if
encoder supports HBR3. Otherwise use 2nd table for eDP using low vswing.

In cases when eDP encoder does not use low vswing, choose 2nd table if
encoder supports mode higher or including HBR2. Otherwise use 3rd table
for eDP not using low vswing.

For external DP use 2nd table if encoder supports modes higher than or
including HBR2. Use 1st table if external DP encoder supports modes
lower than HBR2.

For JSL, always use 1st table for external DP. For eDPs not using low
vswing use 1st table as well.

In cases when eDP encoder uses low vswing, choose 1st table if encoder
supports HBR3. When encoder supports HBR2 choose 3rd table. When
encoder supports modes lower than HBR2 choose 2nd table.

There are no changes to intel_ddi_dp_level() since selection of correct
row of intel_ddi_buf_trans_entry is same as when no override request has
been done.

Looking from other OSes, in case when encoder does not support DP we
could theoretically use 1st table. However, as of now, use default
tables.

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 41 ++++++++++++++
 drivers/gpu/drm/i915/display/intel_bios.h     |  3 ++
 .../drm/i915/display/intel_ddi_buf_trans.c    | 54 +++++++++++++++++--
 .../drm/i915/display/intel_ddi_buf_trans.h    |  6 +++
 4 files changed, 101 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 2d357d332cb0..6adec6e60df3 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3933,6 +3933,47 @@ intel_bios_encoder_get_cx0_vspeo(const struct intel_bios_encoder_data *devdata,
 	return vspeo;
 }
 
+const struct intel_ddi_buf_trans *
+intel_bios_encoder_get_combo_vspeo(const struct intel_bios_encoder_data *devdata,
+				   int idx)
+{
+	struct intel_display *display = devdata->display;
+	struct intel_ddi_buf_trans *vspeo = (void *) devdata->vspeo;
+	union intel_ddi_buf_trans_entry *entries = (void *) vspeo->entries;
+	const u32 *tables = display->vbt.vspeo.tables;
+	int num_columns = display->vbt.vspeo.num_columns;
+	int num_rows = display->vbt.vspeo.num_rows;
+	size_t offset = 0;
+	int level;
+
+	INTEL_DISPLAY_STATE_WARN(display,
+				 idx < COMBO_HIGH_VSWING_HBR3 ||
+				 idx > COMBO_LOW_VSWING_EDP_HBR3,
+				 "Combo requested invalid VS/PE-O table: %d\n", idx);
+
+	offset += idx * num_rows * num_columns;
+
+	for (level = 0; level < num_rows; level++) {
+
+		u32 dw2_swing_sel = tables[offset];
+		u32 dw7_n_scalar = tables[offset+1];
+		u32 dw4_cursor_coeff = tables[offset+2];
+		u32 dw4_post_cursor_2 = tables[offset+3];
+		u32 dw4_post_cursor_1 = tables[offset+4];
+
+		entries[level].icl.dw2_swing_sel = dw2_swing_sel;
+		entries[level].icl.dw7_n_scalar = dw7_n_scalar;
+		entries[level].icl.dw4_cursor_coeff = dw4_cursor_coeff;
+		entries[level].icl.dw4_post_cursor_2 = dw4_post_cursor_2;
+		entries[level].icl.dw4_post_cursor_1 = dw4_post_cursor_1;
+
+		offset += num_columns;
+	}
+
+	vspeo->num_entries = num_rows;
+	return vspeo;
+}
+
 bool intel_bios_encoder_is_dedicated_external(const struct intel_bios_encoder_data *devdata)
 {
 	return devdata->display->vbt.version >= 264 &&
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index b153c009efc9..c6c1f73a774a 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -79,6 +79,9 @@ intel_bios_encoder_get_lt_vspeo(const struct intel_bios_encoder_data *devdata,
 const struct intel_ddi_buf_trans *
 intel_bios_encoder_get_cx0_vspeo(const struct intel_bios_encoder_data *devdata,
 				 int table);
+const struct intel_ddi_buf_trans *
+intel_bios_encoder_get_combo_vspeo(const struct intel_bios_encoder_data *devdata,
+				   int table);
 
 bool intel_bios_encoder_requests_vspeo(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_supports_dvi(const struct intel_bios_encoder_data *devdata);
diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index 3b444665c31d..d1503318636b 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1786,6 +1786,50 @@ xe3plpd_get_lt_buf_trans(struct intel_encoder *encoder,
 		return intel_get_buf_trans(&xe3plpd_lt_trans_dp14, n_entries);
 }
 
+static int
+jsl_get_combo_vspeo_index(struct intel_encoder *encoder,
+			  const struct intel_crtc_state *crtc_state)
+{
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP)) {
+		if (use_edp_low_vswing(encoder)) {
+			if (crtc_state->port_clock > 540000)
+				return COMBO_HIGH_VSWING_HBR3;
+			else if (crtc_state->port_clock > 270000)
+				return COMBO_LOW_VSWING_EDP_HBR3;
+			else
+				return COMBO_LOW_VSWING_EDP_HBR2;
+		}
+	}
+
+	if (intel_crtc_has_dp_encoder(crtc_state))
+		return COMBO_HIGH_VSWING_HBR3;
+
+	return -EINVAL;
+}
+
+static int
+ehl_get_combo_vspeo_index(struct intel_encoder *encoder,
+			  const struct intel_crtc_state *crtc_state)
+{
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP)) {
+		if (use_edp_low_vswing(encoder)) {
+			if (crtc_state->port_clock > 540000)
+				return COMBO_LOW_VSWING_EDP_HBR3;
+			else
+				return COMBO_LOW_VSWING_EDP_HBR2;
+		}
+	}
+
+	if (intel_crtc_has_dp_encoder(crtc_state)) {
+		if (crtc_state->port_clock > 270000)
+			return COMBO_LOW_VSWING_EDP_HBR2;
+		else
+			return COMBO_HIGH_VSWING_HBR3;
+	}
+
+	return -EINVAL;
+}
+
 static int
 snps_get_c10_vspeo_index(struct intel_encoder *encoder,
 			 const struct intel_crtc_state *crtc_state)
@@ -1881,11 +1925,15 @@ void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
 		else
 			encoder->get_buf_trans = tgl_get_dkl_buf_trans;
 	} else if (DISPLAY_VER(display) == 11) {
-		if (display->platform.jasperlake)
+		if (display->platform.jasperlake) {
 			encoder->get_buf_trans = jsl_get_combo_buf_trans;
-		else if (display->platform.elkhartlake)
+			encoder->get_phy_vspeo_index = jsl_get_combo_vspeo_index;
+			encoder->get_phy_vspeo = intel_bios_encoder_get_combo_vspeo;
+		} else if (display->platform.elkhartlake) {
 			encoder->get_buf_trans = ehl_get_combo_buf_trans;
-		else if (intel_encoder_is_combo(encoder))
+			encoder->get_phy_vspeo_index = ehl_get_combo_vspeo_index;
+			encoder->get_phy_vspeo = intel_bios_encoder_get_combo_vspeo;
+		} else if (intel_encoder_is_combo(encoder))
 			encoder->get_buf_trans = icl_get_combo_buf_trans;
 		else
 			encoder->get_buf_trans = icl_get_mg_buf_trans;
diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
index 7d3e0b7535fe..a72cf0ed7999 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
@@ -101,6 +101,12 @@ enum intel_c10_vspeo {
 	C10_EDP_HBR3
 };
 
+enum intel_combo_vspeo {
+	COMBO_HIGH_VSWING_HBR3 = 0,
+	COMBO_LOW_VSWING_EDP_HBR2,
+	COMBO_LOW_VSWING_EDP_HBR3
+};
+
 bool is_hobl_buf_trans(const struct intel_ddi_buf_trans *table);
 
 void intel_ddi_buf_trans_init(struct intel_encoder *encoder);
-- 
2.45.2

