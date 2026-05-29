Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cApqBxnpGWpazwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 21:29:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C352F607DCD
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 21:29:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE3B411246E;
	Fri, 29 May 2026 19:29:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iPWsQi4I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2522B112467;
 Fri, 29 May 2026 19:29:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780082965; x=1811618965;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=R+XqUJJnFSK2woZssT2/B4Kn5d72uJ2519v9ri8/lxs=;
 b=iPWsQi4IJJ1a3DAN6If5hJqie1giBfys5418BOiPv9zynr0SXSdEfDIY
 fi9RRSssiuAXW1/TtDJ6a5lbQp9W5ukHIANGWxVcfKKreBJCPF4678ABE
 daPizONkpzJ9PXr/ialYOZSsFv7/yCBkxhRkO+YP6JFD2VOvVgfgWuoZj
 s/p6E7vJ9pP8VWqFShj22Qpq51aqhI+411blENf84E5lsw7t+QY4f9vBf
 0GH+23yuykSyBFdVtsvxVqLLxVTA2gwsUDjx6XDNf+CrKPktJoFrtDSvr
 qanedLM9GQrxVYuX1S8Y1MTFYFSE7R5+Z2Scjrf/Trt3Z+WAeLNzdRKv9 w==;
X-CSE-ConnectionGUID: 77XlW1tSTxWV+GUKN4u26w==
X-CSE-MsgGUID: KdlJRMAhQS+UzX5cOdzibA==
X-IronPort-AV: E=McAfee;i="6800,10657,11801"; a="103611811"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="103611811"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 12:29:25 -0700
X-CSE-ConnectionGUID: BauWEs+JS6qJdNH36AQYjQ==
X-CSE-MsgGUID: /dJGsU3vTsCXYsZvy1legA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="240393495"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by fmviesa008.fm.intel.com with ESMTP; 29 May 2026 12:29:24 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v4 07/10] drm/i915: override LT's VS/PE when requested
Date: Fri, 29 May 2026 21:28:56 +0200
Message-ID: <20260529192859.4172376-8-michal.grzelak@intel.com>
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
X-Rspamd-Queue-Id: C352F607DCD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add accessor function for LT to read requested table from VBT #57.
Parse the requested table and transform data into port's buffer.

LT's VS/PE-O tables have less columns than xe3plpd_lt_phy_buf_trans
contains fields. Warn about missing fields.

Use 6th table if encoder supports DP 2.0 or higher. Otherwise use 5th
table for DP.

Warn if encoder does not support DP. In that case fallback to using
default VS/PE tables.

There are no changes to intel_ddi_dp_level() since selection of correct
row of intel_ddi_buf_trans_entry is same as when no override request has
been done.

Tables 1-4 are not used at all and are most likely to be zeroed. 5th
table is used for any mode below DP 2.0 (exclusive). 6th table is used
for any mode above DP 2.0 (inclusive).

Indices for other tables have not yet been observed to be used as of
now.

v3->v4
- stick to solely changing VBT data into current structures (Jani)
- move iterator declaration to declaration block (Suraj)

v2->v3
- remove unnecessary braces from if block (Suraj)
- return -EINVAL instead of -1 (Suraj)

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 39 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_bios.h     |  4 ++
 .../drm/i915/display/intel_ddi_buf_trans.c    | 24 +++++++++++-
 .../drm/i915/display/intel_ddi_buf_trans.h    | 10 +++++
 4 files changed, 76 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index e47ac169271f..4f1a7d5101c6 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3860,6 +3860,45 @@ bool intel_bios_encoder_supports_tbt(const struct intel_bios_encoder_data *devda
 	return devdata->display->vbt.version >= 209 && devdata->child.tbt;
 }
 
+const struct intel_ddi_buf_trans *
+intel_bios_encoder_get_lt_vspeo(const struct intel_bios_encoder_data *devdata,
+				int idx)
+{
+	struct intel_display *display = devdata->display;
+	struct intel_ddi_buf_trans *vspeo = (void *) devdata->vspeo;
+	union intel_ddi_buf_trans_entry *entries = (void *) devdata->vspeo->entries;
+	const u32 *tables = display->vbt.vspeo.tables;
+	int num_columns = display->vbt.vspeo.num_columns;
+	int num_rows = display->vbt.vspeo.num_rows;
+	size_t offset = 0;
+	int level;
+
+	INTEL_DISPLAY_STATE_WARN(display, idx < _LT_unused0 || idx > LT_DP2X,
+				 "LT requested invalid VS/PE-O table: %d\n", idx);
+
+	drm_WARN_ONCE(display->drm, 1,
+		      "setting txswing & _level to 0 on LT's VS/PE-O request\n");
+
+	offset += idx * num_rows * num_columns;
+
+	for (level = 0; level < num_rows; level++) {
+		u32 main_cursor = tables[offset];
+		u32 pre_cursor = tables[offset+1];
+		u32 post_cursor = tables[offset+2];
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
+	vspeo->num_entries = num_rows;
+	return vspeo;
+}
+
 bool intel_bios_encoder_is_dedicated_external(const struct intel_bios_encoder_data *devdata)
 {
 	return devdata->display->vbt.version >= 264 &&
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index 7a50a272cd27..73786832b402 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -73,6 +73,10 @@ bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
 const struct intel_bios_encoder_data *
 intel_bios_encoder_data_lookup(struct intel_display *display, enum port port);
 
+const struct intel_ddi_buf_trans *
+intel_bios_encoder_get_lt_vspeo(const struct intel_bios_encoder_data *devdata,
+				int table);
+
 bool intel_bios_encoder_requests_vspeo(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_supports_dvi(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_supports_hdmi(const struct intel_bios_encoder_data *devdata);
diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index fbd5efc5ca6c..68258fbfa43e 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -3,6 +3,8 @@
  * Copyright © 2020 Intel Corporation
  */
 
+#include <drm/drm_print.h>
+
 #include "intel_cx0_phy.h"
 #include "intel_ddi.h"
 #include "intel_ddi_buf_trans.h"
@@ -1784,6 +1786,20 @@ xe3plpd_get_lt_buf_trans(struct intel_encoder *encoder,
 		return intel_get_buf_trans(&xe3plpd_lt_trans_dp14, n_entries);
 }
 
+static int
+xe3plpd_get_lt_vspeo_index(struct intel_encoder *encoder,
+			   const struct intel_crtc_state *crtc_state)
+{
+	if (intel_crtc_has_dp_encoder(crtc_state)) {
+		if (intel_dp_is_uhbr(crtc_state))
+			return LT_DP2X;
+		else
+			return LT_DP14;
+	}
+
+	return -EINVAL;
+}
+
 static int
 _get_phy_vspeo_index(struct intel_encoder *encoder,
 		     const struct intel_crtc_state *crtc_state)
@@ -1800,6 +1816,8 @@ void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
 
 	if (HAS_LT_PHY(display)) {
 		encoder->get_buf_trans = xe3plpd_get_lt_buf_trans;
+		encoder->get_phy_vspeo_index = xe3plpd_get_lt_vspeo_index;
+		encoder->get_phy_vspeo = intel_bios_encoder_get_lt_vspeo;
 	} else if (DISPLAY_VER(display) >= 14) {
 		if (intel_encoder_is_c10phy(encoder))
 			encoder->get_buf_trans = mtl_get_c10_buf_trans;
@@ -1878,9 +1896,13 @@ const struct intel_ddi_buf_trans *intel_ddi_buf_trans_get(struct intel_encoder *
 
 	table = encoder->get_phy_vspeo_index(encoder, crtc_state);
 	if (table < 0) {
-		drm_WARN_ONCE(display->drm, 1,
+		drm_WARN_ONCE(display->drm, table == EOPNOTSUPP,
 			      "platform does not support VS/PE-O, setting default\n");
 
+		drm_WARN_ONCE(display->drm, table != EOPNOTSUPP,
+			      "non-DP (%d) encoder asks for VS/PE-O, setting default\n",
+			      crtc_state->output_types);
+
 		return encoder->get_buf_trans(encoder, crtc_state, n_entries);
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
index 9698697f3917..560892b4ef8c 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
@@ -74,6 +74,16 @@ struct intel_ddi_buf_trans {
 	u8 hdmi_default_entry;
 };
 
+enum intel_lt_vspeo {
+	_LT_unused0 = 0,
+	_LT_unused1,
+	_LT_unused2,
+	_LT_unused3,
+
+	LT_DP14 = 4,
+	LT_DP2X
+};
+
 bool is_hobl_buf_trans(const struct intel_ddi_buf_trans *table);
 
 void intel_ddi_buf_trans_init(struct intel_encoder *encoder);
-- 
2.45.2

