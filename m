Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UFokMchQ4GkhewAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 05:00:24 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86367409D04
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 05:00:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2077D10E7ED;
	Thu, 16 Apr 2026 03:00:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OAl6CvVp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D92510E7DF;
 Thu, 16 Apr 2026 03:00:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776308417; x=1807844417;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nEy1SP0gminGS00cA/CFSX6Vlzy2/JdzNcFjVq6Ym0c=;
 b=OAl6CvVpHPLbBmVEa/nx5v84scPwK1whACsUq3LfGheUCBQA/BJ0t66H
 fHUBZahFx2/irit14T1Ow41LOmoVUZetbRtF9GLyIcuXJ1pJ2lKO0UlqC
 Em4uuKCwGNky0fF3cOpTPVm742NrIc6zGGqCanYVrXGsGMSI8nRoegDAb
 h3ld/dyGboiwS4bWCGKPrslcmMyI7oRx5bm21fSarGhOfiXUZtu6Rw8xV
 hZl+az8YqwcEg/+oQcE6fqM+BaSzZ9EFozkx7PSMi2nCANpFBiC6RYXD8
 mzgSGlWFwlFvVAwtzcOBAS/06mr7Rh2Nx41EDuU0eY/qLYKQNLpRMmQaw g==;
X-CSE-ConnectionGUID: 3rN9nDy+S6+svEnNo7WdyA==
X-CSE-MsgGUID: N41RjzfiRvKcKciCo8H+fA==
X-IronPort-AV: E=McAfee;i="6800,10657,11760"; a="76997579"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="76997579"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 20:00:17 -0700
X-CSE-ConnectionGUID: 5nE2aByeQ/CSsocZvY5V9A==
X-CSE-MsgGUID: cA3XqiEdRvq8wKaNP+i6Qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="229755250"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 20:00:15 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, arun.r.murthy@intel.com,
 jani.nikula@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 10/12] drm/i915/dp: Introduce helpers to enable/disable CMN
 SDP Transmission line
Date: Thu, 16 Apr 2026 08:15:00 +0530
Message-ID: <20260416024504.1925195-11-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: 86367409D04
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Introduce helpers to program or disable CMN_SDP_TL and stagger registers
using the state stored in crtc_state.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dip.c | 56 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dip.h |  2 +
 2 files changed, 58 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dip.c b/drivers/gpu/drm/i915/display/intel_dip.c
index 8b3e72c1c2a8..ef00842ca53e 100644
--- a/drivers/gpu/drm/i915/display/intel_dip.c
+++ b/drivers/gpu/drm/i915/display/intel_dip.c
@@ -4,6 +4,8 @@
  *
  */
 
+#include <drm/drm_print.h>
+
 #include "intel_de.h"
 #include "intel_dip.h"
 #include "intel_dip_regs.h"
@@ -49,3 +51,57 @@ void intel_dip_sdp_transmission_line_get_config(struct intel_crtc_state *crtc_st
 {
 	crtc_state->dip.emp_as_sdp_tl = intel_dip_read_emp_as_sdp_tl(crtc_state);
 }
+
+static int intel_dip_sdp_tl_to_stagger(const struct intel_crtc_state *crtc_state,
+				       u16 sdp_transmission_line)
+{
+	return sdp_transmission_line - crtc_state->dip.cmn_sdp_tl;
+}
+
+void intel_dip_cmn_sdp_transmission_line_enable(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	int gmp_stagger;
+	int pps_stagger;
+	int vsc_ext_stagger;
+
+	if (!crtc_state->dip.cmn_sdp_tl)
+		return;
+
+	gmp_stagger = intel_dip_sdp_tl_to_stagger(crtc_state,
+						  crtc_state->dip.gmp_sdp_tl);
+
+	pps_stagger = intel_dip_sdp_tl_to_stagger(crtc_state,
+						  crtc_state->dip.pps_sdp_tl);
+
+	vsc_ext_stagger = intel_dip_sdp_tl_to_stagger(crtc_state,
+						      crtc_state->dip.vsc_ext_sdp_tl);
+
+	if (drm_WARN_ON(display->drm, gmp_stagger < 0))
+		return;
+	if (drm_WARN_ON(display->drm, pps_stagger < 0))
+		return;
+	if (drm_WARN_ON(display->drm, vsc_ext_stagger < 0))
+		return;
+
+	intel_de_write(display, CMN_SDP_TL_STGR_CTL(display, cpu_transcoder),
+		       GMP_STAGGER(gmp_stagger) |
+		       PPS_STAGGER(pps_stagger) |
+		       VSC_EXT_STAGGER(vsc_ext_stagger));
+
+	intel_de_write(display, CMN_SDP_TL(display, cpu_transcoder),
+		       TRANSMISSION_LINE_ENABLE |
+		       BASE_TRANSMISSION_LINE(crtc_state->dip.cmn_sdp_tl));
+}
+
+void intel_dip_cmn_sdp_transmission_line_disable(const struct intel_crtc_state *old_crtc_state)
+{
+	struct intel_display *display = to_intel_display(old_crtc_state);
+	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
+
+	if (!old_crtc_state->dip.cmn_sdp_tl)
+		return;
+
+	intel_de_write(display, CMN_SDP_TL(display, cpu_transcoder), 0);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dip.h b/drivers/gpu/drm/i915/display/intel_dip.h
index 03ef749a79ca..24d6228c2f8d 100644
--- a/drivers/gpu/drm/i915/display/intel_dip.h
+++ b/drivers/gpu/drm/i915/display/intel_dip.h
@@ -61,5 +61,7 @@ struct intel_dip {
 
 void intel_dip_sdp_tl_compute_config_late(struct intel_crtc_state *crtc_state);
 void intel_dip_sdp_transmission_line_get_config(struct intel_crtc_state *crtc_state);
+void intel_dip_cmn_sdp_transmission_line_enable(const struct intel_crtc_state *crtc_state);
+void intel_dip_cmn_sdp_transmission_line_disable(const struct intel_crtc_state *old_crtc_state);
 
 #endif /* __INTEL_DIP_H__ */
-- 
2.45.2

