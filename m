Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fgPaDGKzIGp76wAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Jun 2026 01:06:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E75F63BBAC
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Jun 2026 01:06:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=aKb4JUN8;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32553112477;
	Wed,  3 Jun 2026 23:06:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 604AE112476;
 Wed,  3 Jun 2026 23:06:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780527967; x=1812063967;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=surx9G1klNtuIcpPydR68Ym4/nIiglFaw6vrKC+3Hfk=;
 b=aKb4JUN8z6SDhqkr8UFtefdaV+6Id0bucBGs1bHyQwakcmGPC8JbI1KB
 Jp0FcoZ/wTDYmktp6uTpASnXnOINmDM6y/ZRZyMhtYY4uNud29CSCzO8V
 n38L1/RFYb3RCuypUQA7z218RYACgNJXlBBWRVnH0mCQNSsIum75N5b9p
 K8sm4UmMW9e5o0pbPtnGFbDvlwomfc7iFUQT7rftdEQA58ufldxc9++AD
 iSXdESHoFO3ZnGnRg0LE6sYQZR+sQeYY+QpVL//vxN0ruHaqyUL1DUW09
 icbWoRk6noKFQi1KOqdF8X4AzirpWzIKicqPZRnf/Esy6/hQhWQPEHOFQ Q==;
X-CSE-ConnectionGUID: GTLrIF86RT2F8iwRQqe7RQ==
X-CSE-MsgGUID: NoBUl0IMSqKdIOPEn3O+Qg==
X-IronPort-AV: E=McAfee;i="6800,10657,11806"; a="104013977"
X-IronPort-AV: E=Sophos;i="6.24,186,1774335600"; d="scan'208";a="104013977"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 16:06:07 -0700
X-CSE-ConnectionGUID: /WboagSJRsKryuHNY+1Wkg==
X-CSE-MsgGUID: eGgM9mJmRJGZNmO/ARDXMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,186,1774335600"; d="scan'208";a="244223647"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa008.jf.intel.com with ESMTP; 03 Jun 2026 16:06:05 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v6 6/8] drm/i915: override Snps's VS/PE when requested
Date: Thu,  4 Jun 2026 01:05:42 +0200
Message-ID: <20260603230544.1993439-7-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260603230544.1993439-1-michal.grzelak@intel.com>
References: <20260603230544.1993439-1-michal.grzelak@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9E75F63BBAC

Add accessor function for Snps to read requested table from VBT #57.
Parse the requested table and transform data into port's buffer.

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
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 30 ++++++++++++
 drivers/gpu/drm/i915/display/intel_bios.h     |  3 ++
 .../drm/i915/display/intel_ddi_buf_trans.c    | 47 ++++++++++++++++++-
 3 files changed, 78 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 302a9465a637b..040f3aa053d46 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3901,6 +3901,36 @@ intel_bios_get_lt_vspeo(const struct intel_bios_encoder_data *devdata,
 	return vspeo;
 }
 
+const struct intel_ddi_buf_trans *
+intel_bios_get_cx0_vspeo(const struct intel_bios_encoder_data *devdata,
+			 int idx)
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
index 1a9b27d8e5789..f88546ff57a5b 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -77,6 +77,9 @@ const struct intel_ddi_buf_trans *
 intel_bios_get_lt_vspeo(const struct intel_bios_encoder_data *devdata,
 			const struct intel_ddi_buf_trans *buf_trans,
 			int idx);
+const struct intel_ddi_buf_trans *
+intel_bios_get_cx0_vspeo(const struct intel_bios_encoder_data *devdata,
+			 int idx);
 
 bool intel_bios_encoder_allocated_vspeo(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_requests_vspeo(const struct intel_bios_encoder_data *devdata);
diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index f936868d6113a..5a808cea344c9 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1784,6 +1784,43 @@ xe3plpd_get_lt_buf_trans(struct intel_encoder *encoder,
 		return intel_get_buf_trans(&xe3plpd_lt_trans_dp14, n_entries);
 }
 
+static const struct intel_ddi_buf_trans *
+mtl_get_c10_vspeo_buf_trans(struct intel_encoder *encoder,
+			    const struct intel_crtc_state *crtc_state,
+			    int *n_entries)
+{
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP)) {
+		if (crtc_state->port_clock > 540000)
+			return intel_bios_get_cx0_vspeo(encoder->devdata, 3);
+		else
+			return intel_bios_get_cx0_vspeo(encoder->devdata, 2);
+	}
+
+	if (intel_crtc_has_dp_encoder(crtc_state)) {
+		if (crtc_state->port_clock > 270000)
+			return intel_bios_get_cx0_vspeo(encoder->devdata, 1);
+		else
+			return intel_bios_get_cx0_vspeo(encoder->devdata, 0);
+	}
+
+	return encoder->get_buf_trans(encoder, crtc_state, n_entries);
+}
+
+static const struct intel_ddi_buf_trans *
+mtl_get_c20_vspeo_buf_trans(struct intel_encoder *encoder,
+			    const struct intel_crtc_state *crtc_state,
+			    int *n_entries)
+{
+	if (intel_crtc_has_dp_encoder(crtc_state)) {
+		if (intel_dp_is_uhbr(crtc_state))
+			return intel_bios_get_cx0_vspeo(encoder->devdata, 5);
+		else
+			return intel_bios_get_cx0_vspeo(encoder->devdata, 4);
+	}
+
+	return encoder->get_buf_trans(encoder, crtc_state, n_entries);
+}
+
 static const struct intel_ddi_buf_trans *
 xe3plpd_get_lt_vspeo_buf_trans(struct intel_encoder *encoder,
 			       const struct intel_crtc_state *crtc_state,
@@ -1887,10 +1924,16 @@ const struct intel_ddi_buf_trans *intel_ddi_buf_trans_get(struct intel_encoder *
 	if (!intel_bios_encoder_allocated_vspeo(encoder->devdata))
 		return encoder->get_buf_trans(encoder, crtc_state, n_entries);
 
-	if (HAS_LT_PHY(display))
+	if (HAS_LT_PHY(display)) {
 		buf_trans = xe3plpd_get_lt_vspeo_buf_trans(encoder, crtc_state, n_entries);
-	else
+	} else if (DISPLAY_VER(display) >= 14) {
+		if (intel_encoder_is_c10phy(encoder))
+			buf_trans = mtl_get_c10_vspeo_buf_trans(encoder, crtc_state, n_entries);
+		else
+			buf_trans = mtl_get_c20_vspeo_buf_trans(encoder, crtc_state, n_entries);
+	} else {
 		buf_trans = encoder->get_buf_trans(encoder, crtc_state, n_entries);
+	}
 
 	return intel_get_buf_trans(buf_trans, n_entries);
 }
-- 
2.45.2

