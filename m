Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3h/yN40OP2ohOgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 27 Jun 2026 01:43:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BE986D08F1
	for <lists+intel-gfx@lfdr.de>; Sat, 27 Jun 2026 01:43:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=GzjaenDX;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EAE110E248;
	Fri, 26 Jun 2026 23:43:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B75210F73F;
 Fri, 26 Jun 2026 23:43:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782517386; x=1814053386;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0fIkryUzcin4ZV0PLsgZjfRrvWClxAcHssaAbX7/C0Y=;
 b=GzjaenDXWm5zpADH3iCZUFv00O+BfBUr2TWYejEkpu1ypj0rSV3vYxD4
 12EAz25pQe5E3yTJKN80cS6fkzQu+u7rWQh/6GaRoiAzSnICxGUsPAM0X
 u8fPZFz8A1y7tnMGncCFCEyLEvTQBYettHA9wSOtLP8R6k0wHXj5JcV4k
 kdJqqiYuXPLbQeZGUZZ1u2hLPjZgmBg3h4lRls+Frvn5yn5UCeRT/zdRq
 RF2UObm6A2SkeCZzALucRl01kVrwlUe8CoAFXkVbtzqkWNEAwbgXUw1/O
 Q5XoOsZ/s8gxxybJqQM/ALc2OaMBAzqxV1ezaASBRM6tgcy2MXG21j2MR A==;
X-CSE-ConnectionGUID: kqzJdV4kR+e1YRNtFDfNtQ==
X-CSE-MsgGUID: 08pMXOIiRamfaFiNeV9jOA==
X-IronPort-AV: E=McAfee;i="6800,10657,11829"; a="85861092"
X-IronPort-AV: E=Sophos;i="6.24,227,1774335600"; d="scan'208";a="85861092"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2026 16:43:06 -0700
X-CSE-ConnectionGUID: /u4Iuau6QoKRM/hRLS4mkQ==
X-CSE-MsgGUID: Btpk+TscQ3KiwUkD5MadTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,227,1774335600"; d="scan'208";a="248073760"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by fmviesa007.fm.intel.com with ESMTP; 26 Jun 2026 16:43:05 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v9 6/8] drm/i915: override Snps's VS/PE when requested
Date: Sat, 27 Jun 2026 01:42:44 +0200
Message-ID: <20260626234246.2446451-7-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260626234246.2446451-1-michal.grzelak@intel.com>
References: <20260626234246.2446451-1-michal.grzelak@intel.com>
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
X-Rspamd-Queue-Id: 8BE986D08F1

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
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com> # v7
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 99 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_bios.h     |  7 ++
 .../drm/i915/display/intel_ddi_buf_trans.c    | 21 ++++
 3 files changed, 127 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 83cc0b388ed3d..0da87ff9a905a 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3861,6 +3861,105 @@ bool intel_bios_encoder_supports_tbt(const struct intel_bios_encoder_data *devda
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
+	entries = vspeo->entries;
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
+	entries = vspeo->entries;
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
+	return vspeo;
+}
+
 bool intel_bios_encoder_is_dedicated_external(const struct intel_bios_encoder_data *devdata)
 {
 	return devdata->display->vbt.version >= 264 &&
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index 7a50a272cd27d..49acf8c405e2b 100644
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
index 2fad9909c78bd..9a294011ea4fa 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1857,5 +1857,26 @@ const struct intel_ddi_buf_trans *intel_ddi_buf_trans_get(struct intel_encoder *
 							  const struct intel_crtc_state *crtc_state,
 							  int *n_entries)
 {
+	struct intel_display *display = to_intel_display(encoder);
+	const struct intel_bios_encoder_data *devdata = encoder->devdata;
+	const struct intel_ddi_buf_trans *buf_trans = NULL;
+	bool has_edp, has_dp, is_uhbr;
+	int port_clock;
+
+	has_edp = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP);
+	has_dp = intel_crtc_has_dp_encoder(crtc_state);
+	is_uhbr = intel_dp_is_uhbr(crtc_state);
+	port_clock = crtc_state->port_clock;
+
+	if (!HAS_LT_PHY(display) && DISPLAY_VER(display) >= 14) {
+		if (intel_encoder_is_c10phy(encoder))
+			buf_trans = intel_bios_get_c10_vspeo(devdata, has_dp, port_clock, has_edp);
+		else
+			buf_trans = intel_bios_get_c20_vspeo(devdata, has_dp, is_uhbr);
+	}
+
+	if (buf_trans)
+		return intel_get_buf_trans(buf_trans, n_entries);
+
 	return encoder->get_buf_trans(encoder, crtc_state, n_entries);
 }
-- 
2.45.2

