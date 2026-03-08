Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EJ3+A7h4rWlv3QEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sun, 08 Mar 2026 14:25:12 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B419523066B
	for <lists+intel-gfx@lfdr.de>; Sun, 08 Mar 2026 14:25:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90B7510E166;
	Sun,  8 Mar 2026 13:25:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hT4okZvy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F93610E13E;
 Sun,  8 Mar 2026 13:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772976308; x=1804512308;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Mni1LSH9yMCezEMqfoMKKfl8JVI30n1O7gdM60IJ23Y=;
 b=hT4okZvy0LbVTv3zDndVSBIO0eifaOkx1+pxAp0FCRK/Z55hVzQUtmwd
 ocVurdHXFRNb9cjRAKb0yrBgSmTMb8NIsDzXMZkszUzM33kiK9JUMLbIX
 t2hbCsqOh3XIH5zbUY1xhTmeGwRX2sqYtUjEUk6cmoTVbMIhE67/pjK94
 apfBj+6KmzEfLFTC9VeCMwCBEXDfvY24cTY1BxIdbF36kAFsOLHSsDaFj
 JX5zIaCARvUtIuYjsblIXEq6AzeaFZY+azV3V/IDLVoOTyuvYxn/kjrg3
 GGvGimlRq75BIzfS/8U5Ey7AWYDvRKoOG7l6IUcD3wWYn1xKY3g281ejK g==;
X-CSE-ConnectionGUID: ahYVrVwlRGy0EGOjrvXDVg==
X-CSE-MsgGUID: KOgd0LSpSHaUWkgag+aHkA==
X-IronPort-AV: E=McAfee;i="6800,10657,11722"; a="77871402"
X-IronPort-AV: E=Sophos;i="6.23,108,1770624000"; d="scan'208";a="77871402"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2026 06:25:08 -0700
X-CSE-ConnectionGUID: INOiRSY8SWC9x97YOSB7Qw==
X-CSE-MsgGUID: DqZ3yg2rRGGbQLQA4Pqu9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,108,1770624000"; d="scan'208";a="217598123"
Received: from administrator-system-product-name.igk.intel.com (HELO
 dev-417.igk.intel.com) ([10.91.214.181])
 by fmviesa008.fm.intel.com with ESMTP; 08 Mar 2026 06:25:07 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [RFC v1 05/11] drm/i915/buf_trans: add intel_dp_above_hbr1() helper
Date: Sun,  8 Mar 2026 14:24:40 +0100
Message-ID: <20260308132446.3320848-6-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260308132446.3320848-1-michal.grzelak@intel.com>
References: <20260308132446.3320848-1-michal.grzelak@intel.com>
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
X-Rspamd-Queue-Id: B419523066B
X-Rspamd-Server: lfdr
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
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.994];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Action: no action

Check if port_clock is above HBR1 inside separate function.

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 .../drm/i915/display/intel_ddi_buf_trans.c    | 27 ++++++++++++-------
 1 file changed, 17 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index 395dba8c9e4d..ee6a78a20dac 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1184,6 +1184,13 @@ bool is_hobl_buf_trans(const struct intel_ddi_buf_trans *table)
 	return table == &tgl_combo_phy_trans_edp_hbr2_hobl;
 }
 
+static bool intel_dp_above_hbr1(const struct intel_crtc_state *crtc_state)
+{
+	if (crtc_state->port_clock > 270000)
+		return true;
+	return false;
+}
+
 static bool use_edp_hobl(struct intel_encoder *encoder)
 {
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
@@ -1396,7 +1403,7 @@ icl_get_mg_buf_trans_dp(struct intel_encoder *encoder,
 			const struct intel_crtc_state *crtc_state,
 			int *n_entries)
 {
-	if (crtc_state->port_clock > 270000) {
+	if (intel_dp_above_hbr1(crtc_state)) {
 		return intel_get_buf_trans(&icl_mg_phy_trans_hbr2_hbr3,
 					   n_entries);
 	} else {
@@ -1421,7 +1428,7 @@ ehl_get_combo_buf_trans_edp(struct intel_encoder *encoder,
 			    const struct intel_crtc_state *crtc_state,
 			    int *n_entries)
 {
-	if (crtc_state->port_clock > 270000)
+	if (intel_dp_above_hbr1(crtc_state))
 		return intel_get_buf_trans(&ehl_combo_phy_trans_edp_hbr2, n_entries);
 	else
 		return intel_get_buf_trans(&icl_combo_phy_trans_edp_hbr2, n_entries);
@@ -1446,7 +1453,7 @@ jsl_get_combo_buf_trans_edp(struct intel_encoder *encoder,
 			    const struct intel_crtc_state *crtc_state,
 			    int *n_entries)
 {
-	if (crtc_state->port_clock > 270000)
+	if (intel_dp_above_hbr1(crtc_state))
 		return intel_get_buf_trans(&jsl_combo_phy_trans_edp_hbr2, n_entries);
 	else
 		return intel_get_buf_trans(&jsl_combo_phy_trans_edp_hbr, n_entries);
@@ -1473,7 +1480,7 @@ tgl_get_combo_buf_trans_dp(struct intel_encoder *encoder,
 {
 	struct intel_display *display = to_intel_display(encoder);
 
-	if (crtc_state->port_clock > 270000) {
+	if (intel_dp_above_hbr1(crtc_state)) {
 		if (display->platform.tigerlake_uy) {
 			return intel_get_buf_trans(&tgl_uy_combo_phy_trans_dp_hbr2,
 						   n_entries);
@@ -1524,7 +1531,7 @@ dg1_get_combo_buf_trans_dp(struct intel_encoder *encoder,
 			   const struct intel_crtc_state *crtc_state,
 			   int *n_entries)
 {
-	if (crtc_state->port_clock > 270000)
+	if (intel_dp_above_hbr1(crtc_state))
 		return intel_get_buf_trans(&dg1_combo_phy_trans_dp_hbr2_hbr3,
 					   n_entries);
 	else
@@ -1568,7 +1575,7 @@ rkl_get_combo_buf_trans_dp(struct intel_encoder *encoder,
 			   const struct intel_crtc_state *crtc_state,
 			   int *n_entries)
 {
-	if (crtc_state->port_clock > 270000)
+	if (intel_dp_above_hbr1(crtc_state))
 		return intel_get_buf_trans(&rkl_combo_phy_trans_dp_hbr2_hbr3, n_entries);
 	else
 		return intel_get_buf_trans(&rkl_combo_phy_trans_dp_hbr, n_entries);
@@ -1611,7 +1618,7 @@ adls_get_combo_buf_trans_dp(struct intel_encoder *encoder,
 			    const struct intel_crtc_state *crtc_state,
 			    int *n_entries)
 {
-	if (crtc_state->port_clock > 270000)
+	if (intel_dp_above_hbr1(crtc_state))
 		return intel_get_buf_trans(&adls_combo_phy_trans_dp_hbr2_hbr3, n_entries);
 	else
 		return intel_get_buf_trans(&tgl_combo_phy_trans_dp_hbr, n_entries);
@@ -1650,7 +1657,7 @@ adlp_get_combo_buf_trans_dp(struct intel_encoder *encoder,
 			    const struct intel_crtc_state *crtc_state,
 			    int *n_entries)
 {
-	if (crtc_state->port_clock > 270000)
+	if (intel_dp_above_hbr1(crtc_state))
 		return intel_get_buf_trans(&adlp_combo_phy_trans_dp_hbr2_hbr3, n_entries);
 	else
 		return intel_get_buf_trans(&adlp_combo_phy_trans_dp_hbr, n_entries);
@@ -1693,7 +1700,7 @@ tgl_get_dkl_buf_trans_dp(struct intel_encoder *encoder,
 			 const struct intel_crtc_state *crtc_state,
 			 int *n_entries)
 {
-	if (crtc_state->port_clock > 270000) {
+	if (intel_dp_above_hbr1(crtc_state)) {
 		return intel_get_buf_trans(&tgl_dkl_phy_trans_dp_hbr2,
 					   n_entries);
 	} else {
@@ -1718,7 +1725,7 @@ adlp_get_dkl_buf_trans_dp(struct intel_encoder *encoder,
 			  const struct intel_crtc_state *crtc_state,
 			  int *n_entries)
 {
-	if (crtc_state->port_clock > 270000) {
+	if (intel_dp_above_hbr1(crtc_state)) {
 		return intel_get_buf_trans(&adlp_dkl_phy_trans_dp_hbr2_hbr3,
 					   n_entries);
 	} else {
-- 
2.45.2

