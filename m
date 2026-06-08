Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4X6DMeQXJ2oorgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 21:28:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53BA065A0E1
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 21:28:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=i+Sqi99X;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D92FC10F91C;
	Mon,  8 Jun 2026 19:28:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E82F10F91D;
 Mon,  8 Jun 2026 19:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780946914; x=1812482914;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=p1/OxZxNjat3EfisIFgmZX/OHH5A+CXf+SJgpD95D8k=;
 b=i+Sqi99Xx8Y3McLcooz7LvJC1Gk+hkzlPvdcHkcHsobl3X5tIblfb/Sh
 P6eW8IOWObv81GW7wMGI6qSmlwfTxIqVBWXYY07hu6tlCmb4hbr7Wd8za
 FJz0hpWn0ulkAQ0W49wmQYxoH30k66gzReQQCA1iecoc4m3/lNn6gg3VE
 ENbxuoRdtS0IbJYFqHqk0+5KDscrb8dlxStXEBh+g2b7cgXEMHbViJtvC
 +Bm+Dkb3WzzKCxtPrBNKwIT9pt4CmZQh6mPDlUkutDG7TfZGgXDM+yQg+
 Be5FS54P6BAgAre2zMogu6gpt8rKdq3V7MzarsVkhYH3KTDh4BQQcx+TJ Q==;
X-CSE-ConnectionGUID: qD07XCjyRB2o3E7liFcJVA==
X-CSE-MsgGUID: B/bah1lYR7y0/yHc+t4glg==
X-IronPort-AV: E=McAfee;i="6800,10657,11811"; a="85324023"
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="85324023"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 12:28:34 -0700
X-CSE-ConnectionGUID: QmGtlpk6RJqBp8X4QhO+RQ==
X-CSE-MsgGUID: TonrQhxHQ9uFBHkxPc87dQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="244513600"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa006.jf.intel.com with ESMTP; 08 Jun 2026 12:28:33 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v7 6/8] drm/i915: override Combo's VS/PE when requested
Date: Mon,  8 Jun 2026 21:28:19 +0200
Message-ID: <20260608192821.3414590-7-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260608192821.3414590-1-michal.grzelak@intel.com>
References: <20260608192821.3414590-1-michal.grzelak@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 53BA065A0E1

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

v6->v7
- handle VS/PE-O's VBT details in intel_bios_* functions (Jani)
- remove vspeo's cast to (void *) (Jani)
- call encoder->get_buf_trans() once (Jani)
- return NULL from intel_bios_get_* when using default (Jani)
- validate VS/PE-O in intel_bios.c (Jani)
- check devdata->vspeo if VS/PE-O was requested
- inline {jsl,ehl}_combo_get_vspeo_buf_trans()
- remove temporarily LT

v4->v5
- blend index computation with table parsing
- remove enums entirely
- add spaces around operators (Suraj)
- remove spaces after type casting (Suraj)
- remove INTEL_DISPLAY_STATE_WARN (Suraj)

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 98 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_bios.h     |  6 ++
 .../drm/i915/display/intel_ddi_buf_trans.c    |  6 ++
 3 files changed, 110 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 59ffb5bc8848..46766dfb8989 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3961,6 +3961,104 @@ intel_bios_get_c10_vspeo(const struct intel_bios_encoder_data *devdata,
 	return vspeo;
 }
 
+const struct intel_ddi_buf_trans *
+intel_bios_get_ehl_combo_vspeo(const struct intel_bios_encoder_data *devdata,
+			       bool has_dp, int port_clock, bool has_edp)
+{
+	struct intel_display *display;
+	union intel_ddi_buf_trans_entry *entries;
+	int num_columns, num_rows, level, idx;
+	struct intel_ddi_buf_trans *vspeo;
+	const u32 *tables;
+	size_t offset = 0;
+
+	if (!validate_vspeo(devdata, has_dp))
+		return NULL;
+
+	display = devdata->display;
+	vspeo = devdata->vspeo;
+	entries = (void *)vspeo->entries;
+	tables = display->vbt.vspeo.tables;
+	num_columns = display->vbt.vspeo.num_columns;
+	num_rows = display->vbt.vspeo.num_rows;
+
+	idx = port_clock > 270000 ? 1 : 0;
+	if (has_edp)
+		idx = port_clock > 540000 ? 2 : 1;
+
+	offset += idx * num_rows * num_columns;
+
+	for (level = 0; level < num_rows; level++) {
+		u32 dw2_swing_sel = tables[offset];
+		u32 dw7_n_scalar = tables[offset + 1];
+		u32 dw4_cursor_coeff = tables[offset + 2];
+		u32 dw4_post_cursor_2 = tables[offset + 3];
+		u32 dw4_post_cursor_1 = tables[offset + 4];
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
+	return vspeo;
+}
+
+const struct intel_ddi_buf_trans *
+intel_bios_get_jsl_combo_vspeo(const struct intel_bios_encoder_data *devdata,
+			       bool has_dp, int port_clock, bool low_vswing_edp)
+{
+	struct intel_display *display;
+	union intel_ddi_buf_trans_entry *entries;
+	int num_columns, num_rows, level, idx;
+	struct intel_ddi_buf_trans *vspeo;
+	const u32 *tables;
+	size_t offset = 0;
+
+	if (!validate_vspeo(devdata, has_dp))
+		return NULL;
+
+	display = devdata->display;
+	vspeo = devdata->vspeo;
+	entries = (void *)vspeo->entries;
+	tables = display->vbt.vspeo.tables;
+	num_columns = display->vbt.vspeo.num_columns;
+	num_rows = display->vbt.vspeo.num_rows;
+
+	idx = 0;
+	if (low_vswing_edp) {
+		if (port_clock > 540000)
+			idx = 0;
+		else if (port_clock > 270000)
+			idx = 1;
+		else
+			idx = 2;
+	}
+
+	offset += idx * num_rows * num_columns;
+
+	for (level = 0; level < num_rows; level++) {
+		u32 dw2_swing_sel = tables[offset];
+		u32 dw7_n_scalar = tables[offset + 1];
+		u32 dw4_cursor_coeff = tables[offset + 2];
+		u32 dw4_post_cursor_2 = tables[offset + 3];
+		u32 dw4_post_cursor_1 = tables[offset + 4];
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
+	return vspeo;
+}
+
 bool intel_bios_encoder_is_dedicated_external(const struct intel_bios_encoder_data *devdata)
 {
 	return devdata->display->vbt.version >= 264 &&
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index 49acf8c405e2..c55765a94594 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -79,6 +79,12 @@ intel_bios_get_c20_vspeo(const struct intel_bios_encoder_data *devdata,
 const struct intel_ddi_buf_trans *
 intel_bios_get_c10_vspeo(const struct intel_bios_encoder_data *devdata,
 			 bool has_dp, int port_clock, bool has_edp);
+const struct intel_ddi_buf_trans *
+intel_bios_get_ehl_combo_vspeo(const struct intel_bios_encoder_data *devdata,
+			       bool has_dp, int port_clock, bool has_edp);
+const struct intel_ddi_buf_trans *
+intel_bios_get_jsl_combo_vspeo(const struct intel_bios_encoder_data *devdata,
+			       bool has_dp, int port_clock, bool low_vswing_edp);
 
 bool intel_bios_encoder_requests_vspeo(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_supports_dvi(const struct intel_bios_encoder_data *devdata);
diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index b4120b9c49b2..b62ce58b9bdc 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1873,6 +1873,12 @@ const struct intel_ddi_buf_trans *intel_ddi_buf_trans_get(struct intel_encoder *
 			buf_trans = intel_bios_get_c10_vspeo(devdata, has_dp, port_clock, has_edp);
 		else
 			buf_trans = intel_bios_get_c20_vspeo(devdata, has_dp, is_uhbr);
+	} else if (DISPLAY_VER(display) == 11) {
+		if (display->platform.jasperlake)
+			buf_trans = intel_bios_get_jsl_combo_vspeo(devdata, has_dp, port_clock,
+								   has_edp && use_edp_low_vswing(encoder));
+		else if (display->platform.elkhartlake)
+			buf_trans = intel_bios_get_ehl_combo_vspeo(devdata, has_dp, port_clock, has_edp);
 	}
 
 	if (buf_trans)
-- 
2.45.2

