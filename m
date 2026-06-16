Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zdGQDYDqMGrNYgUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 08:17:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5E5168C708
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 08:17:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Aq6Z81I7;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4844E10E83B;
	Tue, 16 Jun 2026 06:17:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DB9410E83B;
 Tue, 16 Jun 2026 06:17:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781590652; x=1813126652;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=/XGrpxPGb55IpTx7akQQugcWr2GN9ixap6aMES0KxIk=;
 b=Aq6Z81I7vhMfptIrx5JE13L+aMgNfMPJRLzB5WvIXBqdQpPMelq50j6i
 dqlAo9cKenRjyxRkFvoE58fktpZn8UWuG7ig2IgbJ0zoAhcyG27jsZrkj
 X9k78Cndy1EdCcpjNWhnRvagJA+APXobt6M7qDiw3mffO7VMZ7Sq4iafE
 hGZ1Zrrc+NdAYYCs5rQWsbs2KmEEfABiu+a2b9AB8t1rhOgz1MhfFUkXj
 CrkKiThhNV1WWBM0S1bDsRgAOmkuKlUR7SY4q6YtEHNywL4Ez8lLrLjnQ
 IlOU85RXYmC1sc3VZ/kgEMjTSdEuVJj9ndm177NR3O08AJwoNMxFLuLZS A==;
X-CSE-ConnectionGUID: usu+tGJYQ3uzATS3FmqrgA==
X-CSE-MsgGUID: 5tJCdcQ1TFKnK3Phm9Lnyg==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="82088145"
X-IronPort-AV: E=Sophos;i="6.24,207,1774335600"; d="scan'208";a="82088145"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 23:17:32 -0700
X-CSE-ConnectionGUID: BE64fp1eTlyaDsFN+y5xig==
X-CSE-MsgGUID: ArUsgMj/SdCJ4Hu2ES9qmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,207,1774335600"; d="scan'208";a="251973659"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orviesa004.jf.intel.com with ESMTP; 15 Jun 2026 23:17:31 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
Date: Tue, 16 Jun 2026 11:45:51 +0530
Subject: [PATCH v2 1/2] drm/i915/mst: Unify fec_enable across mst streams
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260616-fec-v2-1-49a22680138c@intel.com>
References: <20260616-fec-v2-0-49a22680138c@intel.com>
In-Reply-To: <20260616-fec-v2-0-49a22680138c@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>, 
 Stephen Fuhry <fuhrysteve@gmail.com>
X-Mailer: b4 0.15-dev
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[intel.com,gmail.com];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B5E5168C708

FEC is a link-wide property: DP_TP_CTL_FEC_ENABLE is a per-port HW bit
while crtc_state->fec_enable is per-stream. With DP MST several streams
share the same port, so if any sibling stream needs FEC the per-port HW
bit is on for every sibling. If sibling crtc_states disagree the
following two symptoms appear:

- intel_pipe_config_compare() rejects fastset on the sibling whose new
  crtc_state->fec_enable disagrees with the old (HW) value
  ("fastset requirement not met in fec_enable"), forcing an
  unnecessary full modeset.
- verify_crtc_state() after commit reports a fec_enable mismatch
  ("[CRTC:..] mismatch in fec_enable (expected no, found yes)") because
  the per-port HW bit is read back into every sibling's hw state.

Walk every MST connector on @mst_mgr, pulling currently-active siblings
into @state if they are not already in it (covers the case where the
user's commit touches only a subset of MST streams on the link). Then OR
all sibling fec_enable values together and write the unified result back
into every sibling crtc_state. The unification only widens
(false -> true), never narrows, so a stream that genuinely needs FEC
keeps it.

This runs from intel_dp_mst_atomic_check_link(), which is invoked after
intel_atomic_check_config_and_link() has finished all per-stream
compute_config and compute_config_late passes but before
intel_crtc_check_fastset() and the post-commit verify, so the unified
value is visible to both checks.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/16073
Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
Tested-by: Stephen Fuhry <fuhrysteve@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 70 +++++++++++++++++++++++++++++
 1 file changed, 70 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index bcdc504913471a1ac7d255cde49a907c9f3d88a6..d487f1c90dcd2671754e6c6f28f207f32ace9ee2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -881,6 +881,72 @@ static int intel_dp_mst_check_bw(struct intel_atomic_state *state,
 	return ret ? : -EAGAIN;
 }
 
+/*
+ * Unify crtc_state->fec_enable across every MST sibling stream on @mst_mgr.
+ */
+static int intel_dp_mst_unify_fec_enable(struct intel_atomic_state *state,
+					 struct drm_dp_mst_topology_mgr *mst_mgr)
+{
+	struct intel_display *display = to_intel_display(state);
+	struct drm_connector_list_iter connector_list_iter;
+	struct intel_connector *connector;
+	struct intel_crtc *crtcs[I915_MAX_PIPES];
+	int n_crtcs = 0;
+	bool need_fec = false;
+	int ret = 0;
+	int i;
+
+	drm_connector_list_iter_begin(display->drm, &connector_list_iter);
+	for_each_intel_connector_iter(connector, &connector_list_iter) {
+		struct intel_digital_connector_state *conn_state;
+		struct intel_crtc_state *crtc_state;
+		struct intel_crtc *crtc;
+
+		if (&connector->mst.dp->mst.mgr != mst_mgr)
+			continue;
+
+		conn_state = intel_atomic_get_digital_connector_state(state,
+								      connector);
+		if (IS_ERR(conn_state)) {
+			ret = PTR_ERR(conn_state);
+			break;
+		}
+
+		if (!conn_state->base.crtc)
+			continue;
+
+		crtc = to_intel_crtc(conn_state->base.crtc);
+		crtc_state = intel_atomic_get_crtc_state(&state->base, crtc);
+		if (IS_ERR(crtc_state)) {
+			ret = PTR_ERR(crtc_state);
+			break;
+		}
+
+		if (!crtc_state->hw.active)
+			continue;
+
+		if (drm_WARN_ON(display->drm, n_crtcs >= ARRAY_SIZE(crtcs)))
+			break;
+
+		crtcs[n_crtcs++] = crtc;
+		if (crtc_state->fec_enable)
+			need_fec = true;
+	}
+	drm_connector_list_iter_end(&connector_list_iter);
+
+	if (ret || !need_fec)
+		return ret;
+
+	for (i = 0; i < n_crtcs; i++) {
+		struct intel_crtc_state *crtc_state =
+			intel_atomic_get_new_crtc_state(state, crtcs[i]);
+
+		crtc_state->fec_enable = true;
+	}
+
+	return 0;
+}
+
 /**
  * intel_dp_mst_atomic_check_link - check all modeset MST link configuration
  * @state: intel atomic state
@@ -908,6 +974,10 @@ int intel_dp_mst_atomic_check_link(struct intel_atomic_state *state,
 	int i;
 
 	for_each_new_mst_mgr_in_state(&state->base, mgr, mst_state, i) {
+		ret = intel_dp_mst_unify_fec_enable(state, mgr);
+		if (ret)
+			return ret;
+
 		ret = intel_dp_mst_check_dsc_change(state, mgr, limits);
 		if (ret)
 			return ret;

-- 
2.25.1

