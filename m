Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id sHRxHkUMH2q2eQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 19:00:53 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 235AA630742
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 19:00:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=LrvNdxoW;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A059310F2F4;
	Tue,  2 Jun 2026 17:00:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0CC810F2E6;
 Tue,  2 Jun 2026 17:00:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780419650; x=1811955650;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dBCXzMG0Swc7E14Ea6yeP1pObRWgQrogEOqdDbJD8dU=;
 b=LrvNdxoWFRSpwX1IRS7+ZuBW0TC8jV5DV5fenS841hoyifhQOpT6xQ/N
 vLL2AJt59+0HjY3iSKRQQ3eszycthrGp2AxNQQIiQPTd5vckUq0Ua/6jp
 YpCyCL5uggGq3sijqOsLxObGRQjXhGdHsothAD+gHLb8mTHQ/7GYRZZ0b
 s8XjcIYrmlmMyGuAXa7v7ezT5AetNyx3OV0+e0ToQxC/UNei71oWE5F+1
 dwu4+pLpqwd6LZz8IEfTKtvTc8lZ/xK6IBFs68wjBeZDttl8Qoz8+aWc2
 kFzElf+tumwo8RkcjZOlR/GmTmZhaM/bd1l8uyIHpNX+bENtZrIorHXbV g==;
X-CSE-ConnectionGUID: P4KqvURpStqegtrOfJMa8w==
X-CSE-MsgGUID: KYNCc+npQHyxTlDv81PaNA==
X-IronPort-AV: E=McAfee;i="6800,10657,11805"; a="68755483"
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="68755483"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 10:00:50 -0700
X-CSE-ConnectionGUID: F6PsZ356R02ODomtP5MbJQ==
X-CSE-MsgGUID: 1ih008uHT2qnNTYmokslXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="239795617"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by fmviesa010.fm.intel.com with ESMTP; 02 Jun 2026 10:00:48 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v5 5/8] drm/i915: override LT's VS/PE when requested
Date: Tue,  2 Jun 2026 19:00:28 +0200
Message-ID: <20260602170031.1163205-6-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260602170031.1163205-1-michal.grzelak@intel.com>
References: <20260602170031.1163205-1-michal.grzelak@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 235AA630742

Add accessor function for LT to read requested table from VBT #57.
Parse the requested table and transform data into port's buffer.

LT's VS/PE-O tables have less columns than xe3plpd_lt_phy_buf_trans
contains fields. Warn about missing fields.

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
 drivers/gpu/drm/i915/display/intel_bios.c     | 35 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_bios.h     |  4 +++
 .../drm/i915/display/intel_ddi_buf_trans.c    | 30 +++++++++++++++-
 3 files changed, 68 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index bc48ed9a7cbf5..97026d3cf6441 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3861,6 +3861,41 @@ bool intel_bios_encoder_supports_tbt(const struct intel_bios_encoder_data *devda
 	return devdata->display->vbt.version >= 209 && devdata->child.tbt;
 }
 
+const struct intel_ddi_buf_trans *
+intel_bios_get_lt_vspeo(const struct intel_bios_encoder_data *devdata,
+			int idx)
+{
+	struct intel_display *display = devdata->display;
+	struct intel_ddi_buf_trans *vspeo = (void *)devdata->vspeo;
+	union intel_ddi_buf_trans_entry *entries = (void *)vspeo->entries;
+	const u32 *tables = display->vbt.vspeo.tables;
+	int num_columns = display->vbt.vspeo.num_columns;
+	int num_rows = display->vbt.vspeo.num_rows;
+	size_t offset = 0;
+	int level;
+
+	drm_WARN_ONCE(display->drm, 1,
+		      "setting txswing & _level to 0 on LT's VS/PE-O request\n");
+
+	offset += idx * num_rows * num_columns;
+
+	for (level = 0; level < num_rows; level++) {
+		u32 main_cursor = tables[offset];
+		u32 pre_cursor = tables[offset + 1];
+		u32 post_cursor = tables[offset + 2];
+
+		entries[level].lt.txswing = 0;
+		entries[level].lt.txswing_level = 0;
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
 bool intel_bios_encoder_is_dedicated_external(const struct intel_bios_encoder_data *devdata)
 {
 	return devdata->display->vbt.version >= 264 &&
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index 7a50a272cd27d..4a2fd30314fd6 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -73,6 +73,10 @@ bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
 const struct intel_bios_encoder_data *
 intel_bios_encoder_data_lookup(struct intel_display *display, enum port port);
 
+const struct intel_ddi_buf_trans *
+intel_bios_get_lt_vspeo(const struct intel_bios_encoder_data *devdata,
+			int idx);
+
 bool intel_bios_encoder_requests_vspeo(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_supports_dvi(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_supports_hdmi(const struct intel_bios_encoder_data *devdata);
diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index 4cd1e4d76c7af..6f3eb0fa16c66 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1784,6 +1784,21 @@ xe3plpd_get_lt_buf_trans(struct intel_encoder *encoder,
 		return intel_get_buf_trans(&xe3plpd_lt_trans_dp14, n_entries);
 }
 
+static const struct intel_ddi_buf_trans *
+xe3plpd_get_lt_vspeo_buf_trans(struct intel_encoder *encoder,
+			       const struct intel_crtc_state *crtc_state,
+			       int *n_entries)
+{
+	if (intel_crtc_has_dp_encoder(crtc_state)) {
+		if (intel_dp_is_uhbr(crtc_state))
+			return intel_bios_get_lt_vspeo(encoder->devdata, 5);
+		else
+			return intel_bios_get_lt_vspeo(encoder->devdata, 4);
+	}
+
+	return encoder->get_buf_trans(encoder, crtc_state, n_entries);
+}
+
 void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
@@ -1857,5 +1872,18 @@ const struct intel_ddi_buf_trans *intel_ddi_buf_trans_get(struct intel_encoder *
 							  const struct intel_crtc_state *crtc_state,
 							  int *n_entries)
 {
-	return encoder->get_buf_trans(encoder, crtc_state, n_entries);
+	struct intel_display *display = to_intel_display(encoder);
+	const struct intel_ddi_buf_trans *buf_trans;
+	bool vspeo;
+
+	vspeo = intel_bios_encoder_requests_vspeo(encoder->devdata);
+	if (!vspeo)
+		return encoder->get_buf_trans(encoder, crtc_state, n_entries);
+
+	if (HAS_LT_PHY(display))
+		buf_trans = xe3plpd_get_lt_vspeo_buf_trans(encoder, crtc_state, n_entries);
+	else
+		buf_trans = encoder->get_buf_trans(encoder, crtc_state, n_entries);
+
+	return intel_get_buf_trans(buf_trans, n_entries);
 }
-- 
2.45.2

