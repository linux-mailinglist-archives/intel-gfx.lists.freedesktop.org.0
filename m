Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WLmSOJqVV2rtXQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2026 16:13:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA71C75F387
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2026 16:13:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=DyJfNkpE;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAF4510F0D4;
	Wed, 15 Jul 2026 14:13:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCAFC10F0D4;
 Wed, 15 Jul 2026 14:13:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784124824; x=1815660824;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vIGKMt0FVnblZLljLmC0u3HBZcTQXjIZStmvz8fbfso=;
 b=DyJfNkpEUhCjbVhIzWEMhFWASAUsbne+h3b4MI4ichwdhlpS2VKnyFle
 g8lWtLgm/L5mM21/zOicDuexBSZP1YQ9K+Pdd6pM+39QoXFElYamwB0i9
 jHw02ehN2XjoJhR7KwjIWROBGno/LPm2o0IPLi4lVT53IYzN+Y0QW4lvU
 9FlNAzLGIaRqLLV3l9HgUJua2oFshVsjhQqi18MeoMpUW/XZHU+KYZ6J0
 ca4Ko1JQ55bE3m1HcST4ouxCbLpBRxGQ9GrTo3ErqYn/FZN6AVTPmPV99
 E0+xWvpgoxhk5EWgAVtVItNRm2rc6ZZwB36aypdjifEJeDMONxJ693ixj w==;
X-CSE-ConnectionGUID: RvkAm7gQRPO7u5qHyOyiBw==
X-CSE-MsgGUID: cIaE1s4vRGa8bd0/RdvzkQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11847"; a="110310300"
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; d="scan'208";a="110310300"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2026 07:13:44 -0700
X-CSE-ConnectionGUID: 5jcM97dRQzOal3x0mh9OKQ==
X-CSE-MsgGUID: 81QxOCwDSZWMwabBbU/MLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; d="scan'208";a="260008539"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by orviesa004.jf.intel.com with ESMTP; 15 Jul 2026 07:13:42 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, suraj.kandpal@intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [v3 2/2] drm/i915/xe3p/bw: Update bw calculation to account for 16
 channels
Date: Wed, 15 Jul 2026 20:02:43 +0530
Message-ID: <20260715143243.4141208-3-uma.shankar@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260715143243.4141208-1-uma.shankar@intel.com>
References: <20260715143243.4141208-1-uma.shankar@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AA71C75F387
X-Rspamd-Action: no action

Wa_16030862157:
Update Bandwidth Calculation to account for 16channel memory
config.

v2: Logical separation of changes (Suraj, Vinod)

WA: 16030862157, 16030875223
Bspec: 69131, 68859
Assisted-by: Claude:claude-opus-4-8
Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 20 +++++++++++++++++---
 1 file changed, 17 insertions(+), 3 deletions(-)

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
-- 
2.50.1

