Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wKZBGV9fV2p2KgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2026 12:22:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C63E75CEE6
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2026 12:22:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=eU4ueQlj;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9545310EF93;
	Wed, 15 Jul 2026 10:22:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A67910EF91;
 Wed, 15 Jul 2026 10:22:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784110940; x=1815646940;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7kib2SsV4E9erkKElamD7tpJ22q71EG2oELIZnif9xE=;
 b=eU4ueQljiqmX6kQ4gLI5VPIrrv6h27VexdjPW5RKDnB1ieYulftJqNyn
 NSDzCzZn/C61OrYy79p5Vef1NA5PQmiI67Dk0dbUtA3sVQwYa2pVRnQGl
 ZII58n0vpdbP+51Ul7kXNQPV4+mj1B6M++vSPEhIyqtmCzyABmMwpmUbk
 NLMnY+CK2p1kQff408f76tEiJdkxilLvJ4N76TLV5JfkvIjI87u2nFw6Y
 7JYPZtPOzRuFqKYBA4ekp661WTv4kvUbuqYpLbhQkHIyRbR2ULPE71T5w
 uwOmMDN1wp+mMYGJmfQ+Xx/I+sNByW0NqblcHhw0EDv++JlB+YbLomv93 Q==;
X-CSE-ConnectionGUID: Kv5oVmKBTP2mEdTUPvIAVQ==
X-CSE-MsgGUID: w+nJdZQeRl2dHLcHRVLZeQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11847"; a="102299911"
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; d="scan'208";a="102299911"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2026 03:22:20 -0700
X-CSE-ConnectionGUID: f+RHi65LRuGZhqQvSDRB7w==
X-CSE-MsgGUID: 7/MrC1LRQqaA7vmVnRukcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; d="scan'208";a="252743644"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa007.fm.intel.com with ESMTP; 15 Jul 2026 03:22:18 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, suraj.kandpal@intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [v2 2/2] drm/i915/dram: Interpret 0xF populated-channel count as 16
Date: Wed, 15 Jul 2026 16:11:19 +0530
Message-ID: <20260715104119.4128662-3-uma.shankar@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260715104119.4128662-1-uma.shankar@intel.com>
References: <20260715104119.4128662-1-uma.shankar@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:from_mime,intel.com:mid,intel.com:email,intel.com:dkim,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0C63E75CEE6

The register MEM_SS_INFO_GLOBAL [Number of populated channels] field
definition is updated with an encoding for 16 channels.

For 16-channel configuration, program 1111b. A programmed value of 1111b
must be interpreted as 16 channels for memory bandwidth calculations.

The MEM_SS_INFO_GLOBAL populated-channel field is only 4 bits and cannot
encode 16, so on Xe3p the BIOS programs the saturated field value (0xf)
to indicate the fully-populated 16-channel config (4 memory controllers
x 4 channels). Interpret it as 16 and let the bandwidth math handle the
larger channel count.

Gate the behaviour through intel_display_wa(INTEL_DISPLAY_WA_16030862157)
instead of an open-coded DISPLAY_VER() check.

v2: Switched to intel_display_wa.c framework (Suraj)

WA: 16030862157
Bspec: 69131, 68859
Assisted-by: Claude:claude-opus-4-8
Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c   | 20 +++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_dram.c | 12 ++++++++++++
 2 files changed, 29 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 41539fdfeac5..aaa0350dca78 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -14,6 +14,7 @@
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
 #include "intel_display_utils.h"
+#include "intel_display_wa.h"
 #include "intel_dram.h"
 #include "intel_mchbar.h"
 #include "intel_parent.h"
@@ -272,7 +273,14 @@ static int icl_get_qgv_points(struct intel_display *display,
 		case INTEL_DRAM_LPDDR4:
 		case INTEL_DRAM_LPDDR5:
 			qi->t_bl = 16;
-			qi->max_numchannels = 8;
+			/*
+			 * Wa_16030862157
+			 * Xe3p supports a fully-populated 16-channel LPDDR
+			 * config (4 memory controllers x 4 channels); earlier
+			 * D14+ platforms top out at 8.
+			 */
+			qi->max_numchannels =
+				intel_display_wa(display, INTEL_DISPLAY_WA_16030862157) ? 16 : 8;
 			qi->channel_width = 16;
 			qi->deinterleave = 4;
 			break;
@@ -624,10 +632,16 @@ static int tgl_get_bw_info(struct intel_display *display,
 
 	ipqdepth = min(ipqdepthpch, display_bw_params->displayrtids / num_channels);
 	/*
+	 * Wa_16030862157
 	 * clperchgroup = 4kpagespermempage * clperchperblock,
-	 * clperchperblock = 8 / num_channels * interleave
+	 * clperchperblock = max(8 / num_channels, 1) * interleave
+	 *
+	 * The 8 / num_channels truncating divide collapses to 0 for
+	 * >8-channel configs (16-channel: 8 / 16 = 0); the max(..., 1) floor
+	 * keeps clperchperblock >= 1 there while preserving the literal
+	 * truncating divide for <=8-channel configs.
 	 */
-	clperchgroup = 4 * (8 / num_channels) * qi.deinterleave;
+	clperchgroup = 4 * max(8 / num_channels, 1) * qi.deinterleave;
 
 	display->bw.num_qgv_points = qi.num_qgv_points;
 	display->bw.num_psf_gv_points = qi.num_psf_points;
diff --git a/drivers/gpu/drm/i915/display/intel_dram.c b/drivers/gpu/drm/i915/display/intel_dram.c
index f103f7cba018..7e2fc24e240c 100644
--- a/drivers/gpu/drm/i915/display/intel_dram.c
+++ b/drivers/gpu/drm/i915/display/intel_dram.c
@@ -13,6 +13,7 @@
 #include "intel_display_core.h"
 #include "intel_display_utils.h"
 #include "intel_display_regs.h"
+#include "intel_display_wa.h"
 #include "intel_dram.h"
 #include "intel_mchbar.h"
 #include "intel_parent.h"
@@ -796,6 +797,17 @@ static int xelpdp_get_dram_info(struct intel_display *display, struct dram_info
 	dram_info->num_qgv_points = REG_FIELD_GET(MTL_N_OF_ENABLED_QGV_POINTS_MASK, val);
 	/* PSF GV points not supported in D14+ */
 
+	/*
+	 * Wa_16030862157
+	 * MEM_SS_INFO_GLOBAL populated-channel field is only 4 bits and
+	 * cannot encode 16, so on Xe3p the BIOS programs the saturated field
+	 * value (0xf) to indicate the fully-populated 16-channel config (4
+	 * memory controllers x 4 channels). Interpret it as 16.
+	 */
+	if (intel_display_wa(display, INTEL_DISPLAY_WA_16030862157) &&
+	    dram_info->num_channels == REG_FIELD_MAX(MTL_N_OF_POPULATED_CH_MASK))
+		dram_info->num_channels = 16;
+
 	if (DISPLAY_VER(display) >= 35)
 		dram_info->ecc_impacting_de_bw = REG_FIELD_GET(XE3P_ECC_IMPACTING_DE, val);
 
-- 
2.50.1

