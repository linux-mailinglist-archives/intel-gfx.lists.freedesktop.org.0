Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SNaRJ+no4WmKzgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 10:01:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B7FA41855F
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 10:01:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9101F10E98B;
	Fri, 17 Apr 2026 08:01:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JYnyjzNQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB2BD10E98A;
 Fri, 17 Apr 2026 08:01:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776412893; x=1807948893;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bQ+CuGNiKglsQjgY4G6chuhKAHfL4cXReHP6blUUmKQ=;
 b=JYnyjzNQGxx0rTAkbenkVxdmgdW+v9IQsmDM9zkJ6C17nqUqe08JeUYo
 hm48MT2jg6nLOnQnl4qbwlCMu4UYmMImdM/w6DTIQ+GMSZ5ss0CAs6g8h
 VtKNQlTY+iSak/kXoXxJ+lBDUAeu9nfClsbqmNDk3fVJzftW/e6MuSkeN
 3a9/2QXDDwJseJknLhLlGZ/Y/rfU9En1WOROeyrN/yynJ2gfAIR2CcAy7
 BViTsKPWLoe8drwMsMBE/wbQnWdFEs8TqbKhS5G6ZRQFeBRKIx8vyVemN
 +szJilzTO2qqcUeliBr75KUczbEh3p2zRcjBH9MBgS/DTsyKtKPYL1snG A==;
X-CSE-ConnectionGUID: EhDR3GmpS4OyMzv6sa7aeA==
X-CSE-MsgGUID: 2vNfcDHZTAC4pWYyxotQEw==
X-IronPort-AV: E=McAfee;i="6800,10657,11761"; a="77334571"
X-IronPort-AV: E=Sophos;i="6.23,183,1770624000"; d="scan'208";a="77334571"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2026 01:01:32 -0700
X-CSE-ConnectionGUID: 3ERD1iJ/TmmX26J16lawZA==
X-CSE-MsgGUID: Vglf28RdS3SkHn6WHFioDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,183,1770624000"; d="scan'208";a="254445216"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa001.fm.intel.com with ESMTP; 17 Apr 2026 01:01:29 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-gfx-trybot@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, swati2.sharma@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/dp: Ignore HPD when in DPLL enable/disable cycle
Date: Fri, 17 Apr 2026 13:31:18 +0530
Message-Id: <20260417080118.2352283-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ASN_FAIL(0.00)[177.210.252.131.asn.rspamd.com:query timed out];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 0B7FA41855F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

When we are enable/disable DPLL cycle there are chances the connected
monitors is still sending us HPD signals. This causes us to handle them
which require DPCD read. These sometimes race with the DPLL getting
disabled in between causing AUX failures via Timeout.
Introduce atomic variable link_teardown which is used to track if
we are in DPLL enable/disable cycle. We ignore HPDs during this time.
Re-enable after DPLL is up so that we can avoid populating logs
with expected logs AUX timeout failures.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c           | 5 +++++
 drivers/gpu/drm/i915/display/intel_display_types.h | 1 +
 drivers/gpu/drm/i915/display/intel_dp.c            | 5 +++++
 3 files changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 178074316a2c..4a523eb56bc4 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2086,8 +2086,12 @@ static struct intel_dpll *hsw_ddi_get_pll(struct intel_encoder *encoder)
 void intel_ddi_enable_clock(struct intel_encoder *encoder,
 			    const struct intel_crtc_state *crtc_state)
 {
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+
 	if (encoder->enable_clock)
 		encoder->enable_clock(encoder, crtc_state);
+
+	atomic_set(&dig_port->link_teardown, 0);
 }
 
 void intel_ddi_disable_clock(struct intel_encoder *encoder)
@@ -3181,6 +3185,7 @@ static void intel_ddi_post_disable_dp(struct intel_atomic_state *state,
 					dig_port->ddi_io_power_domain,
 					wakeref);
 
+	atomic_set(&dig_port->link_teardown, 1);
 	intel_ddi_disable_clock(encoder);
 
 	/* De-select Thunderbolt */
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index c81916761850..f59bbb2fb260 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1985,6 +1985,7 @@ struct intel_digital_port {
 	enum intel_display_power_domain ddi_io_power_domain;
 	struct ref_tracker *ddi_io_wakeref;
 	struct ref_tracker *aux_wakeref;
+	atomic_t link_teardown;
 
 	struct intel_tc_port *tc;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 35b8fb5740aa..9177fe9b3e84 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6889,6 +6889,11 @@ intel_dp_hpd_pulse(struct intel_digital_port *dig_port, bool long_hpd)
 	struct intel_dp *intel_dp = &dig_port->dp;
 	u8 dpcd[DP_RECEIVER_CAP_SIZE];
 
+	if (atomic_read(&dig_port->link_teardown)) {
+		drm_dbg_kms("Ignoring HPD since DPLL is getting disabled\n");
+		return IRQ_NONE;
+	}
+
 	if (dig_port->base.type == INTEL_OUTPUT_EDP &&
 	    (long_hpd ||
 	     intel_display_rpm_suspended(display) ||
-- 
2.34.1

