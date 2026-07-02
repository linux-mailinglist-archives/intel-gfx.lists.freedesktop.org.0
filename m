Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id T442N/a0Rmq4bwsAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 20:59:02 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D26EA6FC5D1
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 20:59:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=mBTgktuF;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0C8E10F58E;
	Thu,  2 Jul 2026 18:58:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7591310F599;
 Thu,  2 Jul 2026 18:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783018739; x=1814554739;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=j0t5j6myPfZpovr2QcmsookMq6cnUp1Dnls5D5mk+yQ=;
 b=mBTgktuFcp/nj9Rb9qtC05p0hYpbOLvgh382qD0Ub55FFuf0rqC/CaDA
 Gest7lVhMalkW/IXIgMhGkqHNUgK5CMe6hjQL7Myf46sjq68Vil6qy5K7
 oC3vgywUC4EvvTym7cIko73yb0xb3RPxlpVtF53cWMkFFFhDbg4cg3f4X
 Jezgsle5rii4a+6FLYyRxwXMdPz+HC/cBPbl37OzpBEBxCbDUkhxdyP0A
 LG1YoGtpLddGDvF+CP8vyqQ+86KvTs6Hw1SL87Bw6Me0aaO0belyeCZAG
 wwGsY1coZc+fbjctTOSyPdP3o3XsFv2+kKlhREOlUd1fOn5Loq3hUf4aL w==;
X-CSE-ConnectionGUID: aIjKROB4SyiEVJ8MYybJFQ==
X-CSE-MsgGUID: R2KzK6BSQEOxFpQAKy56lg==
X-IronPort-AV: E=McAfee;i="6800,10657,11835"; a="71300040"
X-IronPort-AV: E=Sophos;i="6.25,144,1779174000"; d="scan'208";a="71300040"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 11:58:58 -0700
X-CSE-ConnectionGUID: B7RcvXzkRNy9jXoWBhMH2w==
X-CSE-MsgGUID: TYvt3LtVSeyqKb2oOBRUfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,144,1779174000"; d="scan'208";a="251862172"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa010.jf.intel.com with ESMTP; 02 Jul 2026 11:58:57 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v10 6/8] drm/i915: override Snps's VS/PE when requested
Date: Thu,  2 Jul 2026 20:58:37 +0200
Message-ID: <20260702185839.4042397-7-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260702185839.4042397-1-michal.grzelak@intel.com>
References: <20260702185839.4042397-1-michal.grzelak@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D26EA6FC5D1

Add accessor function for Snps to read requested table from VBT #57.
Parse the requested table and transform data into port's buffer.

Choose appropriate accessor function in intel_ddi_buf_trans_get() based
on display version and PHY type.

For C20, use 6th table if encoder supports DP 2.0 or higher. Otherwise
use 5th table for DP.

For C20, tables 1-4 are not used at all and are most likely to be
zeroed. 5th table is used for any mode below DP 2.0 (exclusive). 6th
table is used for any mode above DP 2.0 (inclusive).

For C10, use 2nd table for external DP if encoder supports any mode
beyond or including HBR2. Use 1st table if external DP encoder supports
anything lower than HBR2. For eDP, use 4th table if encoder supports
HBR3. Otherwise use 3rd table for eDP.

For C10, 1st table is used for external DP with modes below HBR2
(exclusive). 1st table is also used as a fallback for non-DPs. 2nd
table is used for external DP with modes higher than HBR2 (inclusive).
3rd table is used for eDP with modes lower than HBR3 (exclusive). 4th
table is used for eDP with modes higher than HBR3 (inclusive).

Indices for other tables have not yet been observed to be used as of
now.

There are no changes to intel_ddi_dp_level() since selection of correct
row of intel_ddi_buf_trans_entry is same as when no override request has
been done.

v9->v10
- call dedicated VS/PE-O vfunc
- drop deconstifying default tables (Suraj, Jani)
- cache `entries` into const field after data is overwritten (Jani)

v8->v9
- init vspeo before using it
- deconstify intel_ddi_buf_trans_entry

v7->v8
- remove comments (Suraj)
- add check for LT (Suraj)

v6->v7
- handle VS/PE-O's VBT details in intel_bios_* functions (Jani)
- remove vspeo's cast to (void *) (Jani)
- check devdata->vspeo if VS/PE-O was requested
- call encoder->get_buf_trans() once (Jani)
- return NULL from intel_bios_get_* when using default (Jani)
- validate VS/PE-O in intel_bios.c (Jani)
- inline mtl_{c10,c20}_get_vspeo_buf_trans()
- remove temporarily LT

v4->v5
- blend index computation with table parsing
- remove enums entirely
- change funcs prefix from snps_ to mtl_ (Suraj)
- add spaces around operators (Suraj)
- remove spaces after type casting (Suraj)
- remove INTEL_DISPLAY_STATE_WARN (Suraj)

v3->v4
- stick to solely changing VBT data into current structures (Jani)
- move iterator declaration to declaration block (Suraj)

v2->v3
- remove unnecessary braces from if block (Suraj)
- return -EINVAL instead of -1 (Suraj)

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 104 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_bios.h     |   7 ++
 .../drm/i915/display/intel_ddi_buf_trans.c    |  37 ++++++-
 3 files changed, 146 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index a491b8500611..f897ac067585 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3881,6 +3881,110 @@ bool intel_bios_encoder_supports_tbt(const struct intel_bios_encoder_data *devda
 	return devdata->display->vbt.version >= 209 && devdata->child.tbt;
 }
 
+static bool
+validate_vspeo(const struct intel_bios_encoder_data *devdata, bool has_dp)
+{
+	struct intel_ddi_buf_trans *vspeo;
+
+	if (!devdata)
+		return false;
+
+	vspeo = devdata->vspeo;
+	if (!vspeo)
+		return false;
+
+	if (!has_dp)
+		return false;
+
+	return true;
+}
+
+const struct intel_ddi_buf_trans *
+intel_bios_get_c20_vspeo(const struct intel_bios_encoder_data *devdata,
+			 bool has_dp, bool is_uhbr)
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
+	entries = devdata->entries;
+	tables = display->vbt.vspeo.tables;
+	num_columns = display->vbt.vspeo.num_columns;
+	num_rows = display->vbt.vspeo.num_rows;
+	idx = is_uhbr ? 5 : 4;
+
+	offset += idx * num_rows * num_columns;
+
+	for (level = 0; level < num_rows; level++) {
+		u32 vswing = tables[offset];
+		u32 pre_cursor = tables[offset + 1];
+		u32 post_cursor = tables[offset + 2];
+
+		entries[level].snps.vswing = vswing;
+		entries[level].snps.pre_cursor = pre_cursor;
+		entries[level].snps.post_cursor = post_cursor;
+
+		offset += num_columns;
+	}
+
+	vspeo->entries = entries;
+	vspeo->num_entries = num_rows;
+	return vspeo;
+}
+
+const struct intel_ddi_buf_trans *
+intel_bios_get_c10_vspeo(const struct intel_bios_encoder_data *devdata,
+			 bool has_dp, int port_clock, bool has_edp)
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
+	entries = devdata->entries;
+	tables = display->vbt.vspeo.tables;
+	num_columns = display->vbt.vspeo.num_columns;
+	num_rows = display->vbt.vspeo.num_rows;
+
+	idx = port_clock > 270000 ? 1 : 0;
+	if (has_edp)
+		idx = port_clock > 540000 ? 3 : 2;
+
+	offset += idx * num_rows * num_columns;
+
+	for (level = 0; level < num_rows; level++) {
+		u32 vswing = tables[offset];
+		u32 pre_cursor = tables[offset + 1];
+		u32 post_cursor = tables[offset + 2];
+
+		entries[level].snps.vswing = vswing;
+		entries[level].snps.pre_cursor = pre_cursor;
+		entries[level].snps.post_cursor = post_cursor;
+
+		offset += num_columns;
+	}
+
+	vspeo->entries = entries;
+	vspeo->num_entries = num_rows;
+
+	return vspeo;
+}
+
 bool intel_bios_encoder_is_dedicated_external(const struct intel_bios_encoder_data *devdata)
 {
 	return devdata->display->vbt.version >= 264 &&
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index 7a50a272cd27..49acf8c405e2 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -73,6 +73,13 @@ bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
 const struct intel_bios_encoder_data *
 intel_bios_encoder_data_lookup(struct intel_display *display, enum port port);
 
+const struct intel_ddi_buf_trans *
+intel_bios_get_c20_vspeo(const struct intel_bios_encoder_data *devdata,
+			 bool has_dp, bool is_uhbr);
+const struct intel_ddi_buf_trans *
+intel_bios_get_c10_vspeo(const struct intel_bios_encoder_data *devdata,
+			 bool has_dp, int port_clock, bool has_edp);
+
 bool intel_bios_encoder_requests_vspeo(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_supports_dvi(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_supports_hdmi(const struct intel_bios_encoder_data *devdata);
diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index f31283a0331b..92c0d0f933ab 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1784,6 +1784,36 @@ xe3plpd_get_lt_buf_trans(struct intel_encoder *encoder,
 		return intel_get_buf_trans(&xe3plpd_lt_trans_dp14, n_entries);
 }
 
+static const struct intel_ddi_buf_trans *
+mtl_get_c10_buf_trans_override(struct intel_encoder *encoder,
+			       const struct intel_crtc_state *crtc_state,
+			       int *n_entries)
+{
+	const struct intel_bios_encoder_data *devdata = encoder->devdata;
+	bool has_edp, has_dp;
+	int port_clock;
+
+	has_edp = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP);
+	has_dp = intel_crtc_has_dp_encoder(crtc_state);
+	port_clock = crtc_state->port_clock;
+
+	return intel_bios_get_c10_vspeo(devdata, has_dp, port_clock, has_edp);
+}
+
+static const struct intel_ddi_buf_trans *
+mtl_get_c20_buf_trans_override(struct intel_encoder *encoder,
+			       const struct intel_crtc_state *crtc_state,
+			       int *n_entries)
+{
+	const struct intel_bios_encoder_data *devdata = encoder->devdata;
+	bool has_dp, is_uhbr;
+
+	has_dp = intel_crtc_has_dp_encoder(crtc_state);
+	is_uhbr = intel_dp_is_uhbr(crtc_state);
+
+	return intel_bios_get_c20_vspeo(devdata, has_dp, is_uhbr);
+}
+
 void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
@@ -1791,10 +1821,13 @@ void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
 	if (HAS_LT_PHY(display)) {
 		encoder->get_buf_trans = xe3plpd_get_lt_buf_trans;
 	} else if (DISPLAY_VER(display) >= 14) {
-		if (intel_encoder_is_c10phy(encoder))
+		if (intel_encoder_is_c10phy(encoder)) {
 			encoder->get_buf_trans = mtl_get_c10_buf_trans;
-		else
+			encoder->get_buf_trans_override = mtl_get_c10_buf_trans_override;
+		} else {
 			encoder->get_buf_trans = mtl_get_c20_buf_trans;
+			encoder->get_buf_trans_override = mtl_get_c20_buf_trans_override;
+		}
 	} else if (display->platform.dg2) {
 		encoder->get_buf_trans = dg2_get_snps_buf_trans;
 	} else if (display->platform.alderlake_p) {
-- 
2.45.2

