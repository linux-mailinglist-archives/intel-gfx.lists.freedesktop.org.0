Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6FliEIO5+WmNBAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 05 May 2026 11:33:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C041F4C9CCD
	for <lists+intel-gfx@lfdr.de>; Tue, 05 May 2026 11:33:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAF7C10EA17;
	Tue,  5 May 2026 09:33:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WdmNz7MT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D11310EA16;
 Tue,  5 May 2026 09:33:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777973631; x=1809509631;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zC85hwRfuu/eBQfcZfR1bL5Fss7ScSU6b2YmZVq7/+c=;
 b=WdmNz7MT91BEak6ik5ZbJRNgAS1VdyVbHSd8UGWC0g0Y6Pmwatxb4sTX
 HFUQl6Ke8oLO/w4570tcrWnS5ZNMdLyV0yWc2ZPsGzbrXCgkz7NcUMwkz
 FQ/VDiFahzzCAJeeZWZApFgpZqiGEbm9s1KQmEJ8VJGHIEtD62qS1BPnO
 GQdTOzX2AUjH1Epl+YiCClEmdleaFRL663ypzlhVUICjYAxJ050UGqbTh
 ho+kgIQQL33H3mzWbFC61+DJouc9ASgVReT5mof42ZM+UKuYdgx16ggZV
 eXXisvoRw5IwqgJd3Tdy1v1vXXi56+z79reM1kOoKSVWEaYexptPf7TAN w==;
X-CSE-ConnectionGUID: r63gVZwMQNakGC9KxvpSkA==
X-CSE-MsgGUID: tB16RGEMTwy8uQYPn9Pa3Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11776"; a="78889688"
X-IronPort-AV: E=Sophos;i="6.23,217,1770624000"; d="scan'208";a="78889688"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2026 02:33:51 -0700
X-CSE-ConnectionGUID: T1BvX/UeStKHKMntSqpvDg==
X-CSE-MsgGUID: GHyA6LkjRPyLNrVcee55zQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,217,1770624000"; d="scan'208";a="273915241"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by orviesa001.jf.intel.com with ESMTP; 05 May 2026 02:33:49 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: gwan-gyeong.mun@intel.com, uma.shankar@intel.com, imre.deak@intel.com,
 chaitanya.kumar.borah@gmail.com, stable@vger.kernel.org,
 suraj.kandpal@intel.com
Subject: [PATCH v3] drm/i915/dp: Fix VSC dynamic range signaling for RGB
 formats
Date: Tue,  5 May 2026 14:39:20 +0530
Message-Id: <20260505090920.2479112-1-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
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
X-Rspamd-Queue-Id: C041F4C9CCD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[intel.com,gmail.com,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[outlook.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]

For RGB, set dynamic_range to CTA or VESA based on
crtc_state->limited_color_range so sinks apply correct
quantization. YCbCr remains limited (CTA) range.
(DP v1.4, Table 5-1)

v2:
- Added Reported-by and Tested-by tags

v3:
- Add back YCbCr comment(Suraj)

Cc: stable@vger.kernel.org #v5.8+
Reported-by: DeepChirp <DeepChirp@outlook.com>
Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/15874
Tested-by: DeepChirp <DeepChirp@outlook.com>
Fixes: 9799c4c3b76e ("drm/i915/dp: Add compute routine for DP VSC SDP")
Assisted-by: GitHub Copilot (GPT-5.4)
Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 98df93884e9a..c1279afe0224 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3163,8 +3163,13 @@ static void intel_dp_compute_vsc_colorimetry(const struct intel_crtc_state *crtc
 	drm_WARN_ON(display->drm,
 		    vsc->bpc == 6 && vsc->pixelformat != DP_PIXELFORMAT_RGB);
 
-	/* all YCbCr are always limited range */
-	vsc->dynamic_range = DP_DYNAMIC_RANGE_CTA;
+	if (vsc->pixelformat == DP_PIXELFORMAT_RGB)
+		vsc->dynamic_range = crtc_state->limited_color_range ?
+			DP_DYNAMIC_RANGE_CTA : DP_DYNAMIC_RANGE_VESA;
+	/* All YCbCr formats are always limited range. */
+	else
+		vsc->dynamic_range = DP_DYNAMIC_RANGE_CTA;
+
 	vsc->content_type = DP_CONTENT_TYPE_NOT_DEFINED;
 }
 
-- 
2.25.1

