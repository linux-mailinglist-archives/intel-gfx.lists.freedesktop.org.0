Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ICRTHRrpGWpazwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 21:29:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C380607DD7
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 21:29:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 898D711246A;
	Fri, 29 May 2026 19:29:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CPlFA0yW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA83411246A;
 Fri, 29 May 2026 19:29:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780082967; x=1811618967;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UPXOeJMqx8LvzF4+ZKoHmNemuvWhNKQbLk4FmsBtqFI=;
 b=CPlFA0yWrV/fvBU3dm5yvDtvQ/EIlJ0xPovZz7+R0iElk/Ioxq9EiNFF
 oeLGv6zf9PmH5qxsPV/sfS2dEIE9QlI/N8ksCTnGNk7bHan9we3PnuOeV
 /HcJhgFpNvG59ig4jyLSSZ1scLr5buXzSoqwJpGcTclrH18OCoEUoEbXe
 Kgm/jDdQBxfs2OL1XyfaLljSbiB0855DdybDt1k+I68NQum06AWZrON+H
 i8vxo6NgZD4F5Z43uPELoQoSsn4japSvK3WmqaKdvb0dynAWQZQku2b6j
 sLX/0G4b87+fvZFDY1XWF3e0DF1yX6W7IwRfOxEzA5QpArzVH5R4K9hv8 g==;
X-CSE-ConnectionGUID: BGY0zvLXRJWUvizxwt1pxg==
X-CSE-MsgGUID: AY4SLcMqTVa40ghI/1ySig==
X-IronPort-AV: E=McAfee;i="6800,10657,11801"; a="103611813"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="103611813"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 12:29:26 -0700
X-CSE-ConnectionGUID: 3rVgP72HR0WK/2ZUMlnBjA==
X-CSE-MsgGUID: uoaE0TUqTm2UrMM0MIMtOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="240393498"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by fmviesa008.fm.intel.com with ESMTP; 29 May 2026 12:29:25 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v4 08/10] drm/i915: override Snps's VS/PE when requested
Date: Fri, 29 May 2026 21:28:57 +0200
Message-ID: <20260529192859.4172376-9-michal.grzelak@intel.com>
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
X-Rspamd-Queue-Id: 0C380607DD7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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

v3->v4
- stick to solely changing VBT data into current structures (Jani)
- move iterator declaration to declaration block (Suraj)

v2->v3
- remove unnecessary braces from if block (Suraj)
- return -EINVAL instead of -1 (Suraj)

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 34 +++++++++++++++
 drivers/gpu/drm/i915/display/intel_bios.h     |  3 ++
 .../drm/i915/display/intel_ddi_buf_trans.c    | 43 ++++++++++++++++++-
 .../drm/i915/display/intel_ddi_buf_trans.h    | 17 ++++++++
 4 files changed, 95 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 4f1a7d5101c6..2d357d332cb0 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3899,6 +3899,40 @@ intel_bios_encoder_get_lt_vspeo(const struct intel_bios_encoder_data *devdata,
 	return vspeo;
 }
 
+const struct intel_ddi_buf_trans *
+intel_bios_encoder_get_cx0_vspeo(const struct intel_bios_encoder_data *devdata,
+				 int idx)
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
+	INTEL_DISPLAY_STATE_WARN(display, idx < _C20_unused0 || idx > C20_DP2X,
+				 "Cx0 requested invalid VS/PE-O table: %d\n", idx);
+
+	offset += idx * num_rows * num_columns;
+
+	for (level = 0; level < num_rows; level++) {
+		u32 vswing = tables[offset];
+		u32 pre_cursor = tables[offset+1];
+		u32 post_cursor = tables[offset+2];
+
+		entries[level].snps.vswing = vswing;
+		entries[level].snps.pre_cursor = pre_cursor;
+		entries[level].snps.post_cursor = post_cursor;
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
index 73786832b402..b153c009efc9 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -76,6 +76,9 @@ intel_bios_encoder_data_lookup(struct intel_display *display, enum port port);
 const struct intel_ddi_buf_trans *
 intel_bios_encoder_get_lt_vspeo(const struct intel_bios_encoder_data *devdata,
 				int table);
+const struct intel_ddi_buf_trans *
+intel_bios_encoder_get_cx0_vspeo(const struct intel_bios_encoder_data *devdata,
+				 int table);
 
 bool intel_bios_encoder_requests_vspeo(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_supports_dvi(const struct intel_bios_encoder_data *devdata);
diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index 68258fbfa43e..3b444665c31d 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1786,6 +1786,41 @@ xe3plpd_get_lt_buf_trans(struct intel_encoder *encoder,
 		return intel_get_buf_trans(&xe3plpd_lt_trans_dp14, n_entries);
 }
 
+static int
+snps_get_c10_vspeo_index(struct intel_encoder *encoder,
+			 const struct intel_crtc_state *crtc_state)
+{
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP)) {
+		if (crtc_state->port_clock > 540000)
+			return C10_EDP_HBR3;
+		else
+			return C10_EDP_NON_HBR3;
+	}
+
+	if (intel_crtc_has_dp_encoder(crtc_state)) {
+		if (crtc_state->port_clock > 270000)
+			return C10_DP14_HBR2_HBR3;
+		else
+			return C10_DP14_RBR_HBR;
+	}
+
+	return -EINVAL;
+}
+
+static int
+snps_get_c20_vspeo_index(struct intel_encoder *encoder,
+			 const struct intel_crtc_state *crtc_state)
+{
+	if (intel_crtc_has_dp_encoder(crtc_state)) {
+		if (intel_dp_is_uhbr(crtc_state))
+			return C20_DP2X;
+		else
+			return C20_DP14;
+	}
+
+	return -EINVAL;
+}
+
 static int
 xe3plpd_get_lt_vspeo_index(struct intel_encoder *encoder,
 			   const struct intel_crtc_state *crtc_state)
@@ -1819,10 +1854,14 @@ void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
 		encoder->get_phy_vspeo_index = xe3plpd_get_lt_vspeo_index;
 		encoder->get_phy_vspeo = intel_bios_encoder_get_lt_vspeo;
 	} else if (DISPLAY_VER(display) >= 14) {
-		if (intel_encoder_is_c10phy(encoder))
+		encoder->get_phy_vspeo = intel_bios_encoder_get_cx0_vspeo;
+		if (intel_encoder_is_c10phy(encoder)) {
 			encoder->get_buf_trans = mtl_get_c10_buf_trans;
-		else
+			encoder->get_phy_vspeo_index = snps_get_c10_vspeo_index;
+		} else {
 			encoder->get_buf_trans = mtl_get_c20_buf_trans;
+			encoder->get_phy_vspeo_index = snps_get_c20_vspeo_index;
+		}
 	} else if (display->platform.dg2) {
 		encoder->get_buf_trans = dg2_get_snps_buf_trans;
 	} else if (display->platform.alderlake_p) {
diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
index 560892b4ef8c..7d3e0b7535fe 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
@@ -84,6 +84,23 @@ enum intel_lt_vspeo {
 	LT_DP2X
 };
 
+enum intel_c20_vspeo {
+	_C20_unused0 = 0,
+	_C20_unused1,
+	_C20_unused2,
+	_C20_unused3,
+
+	C20_DP14 = 4,
+	C20_DP2X
+};
+
+enum intel_c10_vspeo {
+	C10_DP14_RBR_HBR = 0,
+	C10_DP14_HBR2_HBR3,
+	C10_EDP_NON_HBR3,
+	C10_EDP_HBR3
+};
+
 bool is_hobl_buf_trans(const struct intel_ddi_buf_trans *table);
 
 void intel_ddi_buf_trans_init(struct intel_encoder *encoder);
-- 
2.45.2

