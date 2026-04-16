Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CE4oMchQ4GkiewAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 05:00:24 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B350B409D06
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 05:00:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F3D410E7EE;
	Thu, 16 Apr 2026 03:00:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YgSakuZn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD30710E7DF;
 Thu, 16 Apr 2026 03:00:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776308419; x=1807844419;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8zLtyp2CMraiW3gQOLaEWG2TsS2iZ24nzxdWw+6k2/4=;
 b=YgSakuZnqq3EGC6WH52pedydpyzliKO50MWgliQx2bILmBcpSfuUP09s
 gN535vYe6js2RE7V5L5ByiMLJc8Lb1J0cVmIcyWqGs2R/Mfrp06l0AMdm
 cZ6A41hAJQX70Z94bs8abIioIyMlgEw/AOzQRD9HGCEFqOebVRuHRFPiM
 Vho5euS8NgH6AlvjmlGy9DGJLkJxOLMeSw4M7FosMxbJGzUiq7AAlONyi
 VcWmGWNgw7jPUT3cOvwwXyR/tNZzjh3EAeNQUNGBwlVthJA1m1M5ulwnf
 9V5X7e8fUQZH26qzmRX/SGcFVJV6khrYK95MuhuQKF8FUee6oCt22Qsgy w==;
X-CSE-ConnectionGUID: 0mP9w0wsS0qsf/+TMiWMTQ==
X-CSE-MsgGUID: nwLcSFqaToG1GJZ/BzVAxA==
X-IronPort-AV: E=McAfee;i="6800,10657,11760"; a="76997582"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="76997582"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 20:00:19 -0700
X-CSE-ConnectionGUID: DcAep59vQzWfV3Td7HtT6g==
X-CSE-MsgGUID: HEtyAwwJQnCtrcamE1mx4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="229755280"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 20:00:18 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, arun.r.murthy@intel.com,
 jani.nikula@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 11/12] drm/i915/dip: Enable Common SDP Transmission line
Date: Thu, 16 Apr 2026 08:15:01 +0530
Message-ID: <20260416024504.1925195-12-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260416024504.1925195-1-ankit.k.nautiyal@intel.com>
References: <20260416024504.1925195-1-ankit.k.nautiyal@intel.com>
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
	ASN_FAIL(0.00)[177.210.252.131.asn.rspamd.com:server fail];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: B350B409D06
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Enable programming of the common SDP transmission line on platforms that
support it. Compute and program the common base transmission line and
per-SDP stagger values from the crtc state during modeset, and disable the
feature on pipe disable.

Currently, the stagger values are set as per the default policy of the
Hardware. This can be optimized later if we come up with a specific driver
policy to sequence the SDPs better.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c |  3 +
 drivers/gpu/drm/i915/display/intel_dip.c | 90 ++++++++++++++++++++++++
 2 files changed, 93 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index f85fbbc4fe9b..78faa662d48d 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2727,6 +2727,8 @@ static void mtl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	/* 6.o Configure and enable FEC if needed */
 	intel_ddi_enable_fec(encoder, crtc_state);
 
+	intel_dip_cmn_sdp_transmission_line_enable(crtc_state);
+
 	/* 7.a 128b/132b SST. */
 	if (!is_mst && intel_dp_is_uhbr(crtc_state)) {
 		/* VCPID 1, start slot 0 for 128b/132b, tu slots */
@@ -3114,6 +3116,7 @@ static void intel_ddi_buf_disable(struct intel_encoder *encoder,
 			     DP_TP_CTL_ENABLE, 0);
 	}
 
+	intel_dip_cmn_sdp_transmission_line_disable(crtc_state);
 	intel_ddi_disable_fec(encoder, crtc_state);
 
 	if (DISPLAY_VER(display) < 14)
diff --git a/drivers/gpu/drm/i915/display/intel_dip.c b/drivers/gpu/drm/i915/display/intel_dip.c
index ef00842ca53e..f2fed3102f8e 100644
--- a/drivers/gpu/drm/i915/display/intel_dip.c
+++ b/drivers/gpu/drm/i915/display/intel_dip.c
@@ -11,6 +11,7 @@
 #include "intel_dip_regs.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
+#include "intel_hdmi.h"
 
 u16 intel_dip_read_emp_as_sdp_tl(const struct intel_crtc_state *crtc_state)
 {
@@ -42,14 +43,103 @@ void intel_dip_write_emp_as_sdp_tl(const struct intel_crtc_state *crtc_state)
 			       EMP_AS_SDP_DB_TL(crtc_state->dip.emp_as_sdp_tl));
 }
 
+static int intel_dip_sdp_stagger_to_tl(struct intel_crtc_state *crtc_state,
+				       int stagger)
+{
+	return crtc_state->dip.cmn_sdp_tl + stagger;
+}
+
+static
+void intel_dip_cmn_sdp_tl_compute_config_late(struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	bool as_sdp;
+
+	if (!HAS_COMMON_SDP_TL(display))
+		return;
+
+	as_sdp = crtc_state->infoframes.enable &
+		 intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
+	/*
+	 * When AS SDP is enabled :
+	 *  - The common SDP Transmission Line matches the EMP SDP Transmission Line.
+	 *
+	 * When AS SDP is disabled:
+	 *  - Bspec mentions the positions as lines of delayed vblank.
+	 *  - Guardband = 1st line of delayed vblank
+	 *  - Common SDP Transmission line is set to 2nd line of delayed vblank.
+	 */
+
+	if (as_sdp)
+		crtc_state->dip.cmn_sdp_tl = crtc_state->dip.emp_as_sdp_tl;
+	else
+		crtc_state->dip.cmn_sdp_tl = crtc_state->vrr.guardband - 1;
+
+	/*
+	 * Currently we are programming the default stagger values, but these
+	 * can be optimized if required, based on number of SDPs enabled.
+	 *
+	 * Default values of the Transmission lines for SDPs other than AS SDP:
+	 * VSC : CMN SDP Transmission line
+	 * GMP : CMN SDP Transmission line
+	 * PPS : CMN SDP Transmission line + 1
+	 * VSC_EXT: CMN SDP Transmission line + 2
+	 */
+	crtc_state->dip.vsc_sdp_tl = crtc_state->dip.cmn_sdp_tl;
+	crtc_state->dip.gmp_sdp_tl =
+		intel_dip_sdp_stagger_to_tl(crtc_state, GMP_STAGGER_DEFAULT);
+	crtc_state->dip.pps_sdp_tl =
+		intel_dip_sdp_stagger_to_tl(crtc_state, PPS_STAGGER_DEFAULT);
+	crtc_state->dip.vsc_ext_sdp_tl =
+		intel_dip_sdp_stagger_to_tl(crtc_state, VSC_EXT_STAGGER_DEFAULT);
+}
+
 void intel_dip_sdp_tl_compute_config_late(struct intel_crtc_state *crtc_state)
 {
 	crtc_state->dip.emp_as_sdp_tl = intel_dp_get_as_sdp_transmission_line(crtc_state);
+
+	intel_dip_cmn_sdp_tl_compute_config_late(crtc_state);
+}
+
+static
+void intel_dip_cmn_sdp_transmission_line_get_config(struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	u16 vsc_ext_stagger, pps_stagger, gmp_stagger;
+	u32 val;
+
+	if (!HAS_COMMON_SDP_TL(display))
+		return;
+
+	val = intel_de_read(display, CMN_SDP_TL(display, cpu_transcoder));
+
+	if (!(val & TRANSMISSION_LINE_ENABLE))
+		return;
+
+	crtc_state->dip.cmn_sdp_tl = REG_FIELD_GET(BASE_TRANSMISSION_LINE_MASK, val);
+
+	/* SDP VSC uses same transmission line as CMN base transmission line */
+	crtc_state->dip.vsc_sdp_tl = crtc_state->dip.cmn_sdp_tl;
+
+	val = intel_de_read(display, CMN_SDP_TL_STGR_CTL(display, cpu_transcoder));
+
+	vsc_ext_stagger = REG_FIELD_GET(VSC_EXT_STAGGER_MASK, val);
+	pps_stagger = REG_FIELD_GET(PPS_STAGGER_MASK, val);
+	gmp_stagger = REG_FIELD_GET(GMP_STAGGER_MASK, val);
+
+	crtc_state->dip.vsc_ext_sdp_tl =
+		intel_dip_sdp_stagger_to_tl(crtc_state, vsc_ext_stagger);
+	crtc_state->dip.pps_sdp_tl =
+		intel_dip_sdp_stagger_to_tl(crtc_state, pps_stagger);
+	crtc_state->dip.gmp_sdp_tl =
+		intel_dip_sdp_stagger_to_tl(crtc_state, gmp_stagger);
 }
 
 void intel_dip_sdp_transmission_line_get_config(struct intel_crtc_state *crtc_state)
 {
 	crtc_state->dip.emp_as_sdp_tl = intel_dip_read_emp_as_sdp_tl(crtc_state);
+	intel_dip_cmn_sdp_transmission_line_get_config(crtc_state);
 }
 
 static int intel_dip_sdp_tl_to_stagger(const struct intel_crtc_state *crtc_state,
-- 
2.45.2

