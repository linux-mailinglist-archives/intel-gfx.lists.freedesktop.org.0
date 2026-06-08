Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id sdncCukXJ2osrgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 21:28:41 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AECD065A0EF
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 21:28:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=nzlTlxr0;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E8A210F924;
	Mon,  8 Jun 2026 19:28:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FFA710F923;
 Mon,  8 Jun 2026 19:28:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780946918; x=1812482918;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HKNfq1XeMCPspHFBDgm9ryd8dK6ERvi8u70RObb/l7E=;
 b=nzlTlxr05hF/j19KGmRI13VOGRyME0STl1X7Nm7Jt8HvI+Em8vkY+Nxt
 Eeknftf4KksV1LalraAsxtiywhy1t8t8J/wgKpRO8S4/zRqtk3Fe/qCn3
 qzQu8yxKiAS0IIAsQhoaWSm2aj1szKftd8Q517aegYolzuGi4mNJZ5ILH
 bJvdpx/p/dUivw+xSIUhjSsS80DdymOeeN2ZbtpijkURejlZReysvnEjy
 HjTv/VtQAtolv67miXKH6sIJE+9wDiVHy5FqcooRjz6UV0iWx3frRdT7U
 L14gsP0NQPRg8txF1MDpClEWuKNKG6lJ2xMXQNsiKR2EgwBazgW0vPcz8 Q==;
X-CSE-ConnectionGUID: gyciQIxJSR2ctordLi08Iw==
X-CSE-MsgGUID: gCj66AMmSYyb51XHfJA1oA==
X-IronPort-AV: E=McAfee;i="6800,10657,11811"; a="85324026"
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="85324026"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 12:28:37 -0700
X-CSE-ConnectionGUID: h/h9yRiITv2s/rV/Mngcdw==
X-CSE-MsgGUID: 0uPUFGGCR92J3TJnnOQd6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="244513615"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa006.jf.intel.com with ESMTP; 08 Jun 2026 12:28:36 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v7 8/8] drm/i915: override LT's VS/PE when requested
Date: Mon,  8 Jun 2026 21:28:21 +0200
Message-ID: <20260608192821.3414590-9-michal.grzelak@intel.com>
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
X-Rspamd-Queue-Id: AECD065A0EF

Add accessor function for LT to read requested table from VBT #57.
Parse the requested table and transform data into port's buffer.

LT's VS/PE-O tables have less columns than xe3plpd_lt_phy_buf_trans
contains fields. Thus copy txswing and txswing_level from default VS/PE
values onto VS/PE-O tables.

Use 6th table if encoder supports DP 2.0 or higher. Otherwise use 5th
table for DP.

There are no changes to intel_ddi_dp_level() since selection of correct
row of intel_ddi_buf_trans_entry is same as when no override request has
been done.

Tables 1-4 are not used at all and are most likely to be zeroed. 5th
table is used for any mode below DP 2.0 (exclusive). 6th table is used
for any mode above DP 2.0 (inclusive).

Indices for other tables have not yet been observed to be used as of
now.

v6->v7
- handle VS/PE-O's VBT details in intel_bios_* functions (Jani)
- remove vspeo's cast to (void *) (Jani)
- check devdata->vspeo if VS/PE-O was requested
- call encoder->get_buf_trans() once (Jani)
- return NULL from intel_bios_get_* when using default (Jani)
- validate VS/PE-O in intel_bios.c (Jani)
- inline xe3plpd_lt_get_vspeo_buf_trans()
- remove temporarily LT

v5->v6
- remove drm_WARN_ONCE (Suraj)
- pass default VS/PE tables to LT's VBT accessor (Suraj)
- set txswing & _level from default VS/PE tables (Suraj)
- add helper checking if VS/PE-O has been allocated (Suraj)
- check if devdata is not NULL

v4->v5
- add if-ladder instead of function pointer
- blend index computation with table parsing
- remove WARN and debug messages
- remove enums entirely
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
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 43 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_bios.h     |  4 ++
 .../drm/i915/display/intel_ddi_buf_trans.c    |  4 +-
 3 files changed, 50 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 3b0f30ea7135..b9c168d7e4e6 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3872,6 +3872,49 @@ validate_vspeo(const struct intel_bios_encoder_data *devdata, bool has_dp)
 	return true;
 }
 
+const struct intel_ddi_buf_trans *
+intel_bios_get_lt_vspeo(const struct intel_bios_encoder_data *devdata,
+			const struct intel_ddi_buf_trans *buf_trans,
+			bool has_dp, bool is_uhbr)
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
+	entries = (void *)vspeo->entries;
+	tables = display->vbt.vspeo.tables;
+	num_columns = display->vbt.vspeo.num_columns;
+	num_rows = display->vbt.vspeo.num_rows;
+	idx = is_uhbr ? 5 : 4;
+
+	offset += idx * num_rows * num_columns;
+
+	for (level = 0; level < num_rows; level++) {
+		u8 txswing = buf_trans->entries[level].lt.txswing;
+		u8 txswing_level = buf_trans->entries[level].lt.txswing_level;
+		u32 main_cursor = tables[offset];
+		u32 pre_cursor = tables[offset + 1];
+		u32 post_cursor = tables[offset + 2];
+
+		entries[level].lt.txswing = txswing;
+		entries[level].lt.txswing_level = txswing_level;
+		entries[level].lt.main_cursor = main_cursor;
+		entries[level].lt.pre_cursor = pre_cursor;
+		entries[level].lt.post_cursor = post_cursor;
+
+		offset += num_columns;
+	}
+
+	return vspeo;
+}
+
 const struct intel_ddi_buf_trans *
 intel_bios_get_c20_vspeo(const struct intel_bios_encoder_data *devdata,
 			 bool has_dp, bool is_uhbr)
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index c55765a94594..e8c82f1e876f 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -73,6 +73,10 @@ bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
 const struct intel_bios_encoder_data *
 intel_bios_encoder_data_lookup(struct intel_display *display, enum port port);
 
+const struct intel_ddi_buf_trans *
+intel_bios_get_lt_vspeo(const struct intel_bios_encoder_data *devdata,
+			const struct intel_ddi_buf_trans *buf_trans,
+			bool has_dp, bool is_uhbr);
 const struct intel_ddi_buf_trans *
 intel_bios_get_c20_vspeo(const struct intel_bios_encoder_data *devdata,
 			 bool has_dp, bool is_uhbr);
diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index b62ce58b9bdc..7fccb21f9e89 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1868,7 +1868,9 @@ const struct intel_ddi_buf_trans *intel_ddi_buf_trans_get(struct intel_encoder *
 	is_uhbr = intel_dp_is_uhbr(crtc_state);
 	port_clock = crtc_state->port_clock;
 
-	if (DISPLAY_VER(display) >= 14) {
+	if (HAS_LT_PHY(display)) {
+		buf_trans = intel_bios_get_lt_vspeo(devdata, buf_trans, has_dp, is_uhbr);
+	} else if (DISPLAY_VER(display) >= 14) {
 		if (intel_encoder_is_c10phy(encoder))
 			buf_trans = intel_bios_get_c10_vspeo(devdata, has_dp, port_clock, has_edp);
 		else
-- 
2.45.2

