Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uG/XCqq43Gn2VgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 11:34:34 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CF4F3E9E29
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 11:34:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6895510E3A3;
	Mon, 13 Apr 2026 09:34:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U1nABkfO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77B1010E3A1;
 Mon, 13 Apr 2026 09:34:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776072870; x=1807608870;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DrLU6n0IIxKYVn+LVEpiG+PQs6YhuFefs3gRmJtMdx8=;
 b=U1nABkfO+oSxlmqose4KyKe4Csn7c1CY+F9mUYEabXLKMwpWF0ZtheQy
 9rnuYOlXgrW2MhWRHiTkyJ3DBnEY18wu8zpiKXEFa0BF9czvn4vukVGMD
 5uWkOD/ip3ue+0wFEwkk+KYGL/DRHriELBbpLsQIMHNAs4ywuWLpkJFQR
 YD9weEP0g9IVoMZpH7Or9iJZozea3PwETXZJZ1CL85pC5uQ403siL6/VV
 TWIClOIeynnF7QJ33cNXrUwmk8LN77UFzCI9s+npNH4HJqkvOSLFw1HEc
 k/sUNK0KH0LeZS6Lx3RfVqi35kagvy0ibnAZIkWQU4JWXOZIm0bLn82vp A==;
X-CSE-ConnectionGUID: NSe3GoZDRtao/RbPAqweFg==
X-CSE-MsgGUID: PUZFmoSKTHunmLvBSufmZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11757"; a="77073235"
X-IronPort-AV: E=Sophos;i="6.23,176,1770624000"; d="scan'208";a="77073235"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 02:34:30 -0700
X-CSE-ConnectionGUID: AfM763l+Twuc72LMHc9Y1g==
X-CSE-MsgGUID: ihvbETkDTmilk3dWR+D/8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,176,1770624000"; d="scan'208";a="234147666"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by orviesa004.jf.intel.com with ESMTP; 13 Apr 2026 02:34:29 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: gwan-gyeong.mun@intel.com, uma.shankar@intel.com, imre.deak@intel.com,
 chaitanya.kumar.borah@gmail.com
Subject: [PATCH] drm/i915/dp: Fix VSC dynamic range signaling for RGB formats
Date: Mon, 13 Apr 2026 14:39:49 +0530
Message-Id: <20260413090949.1425953-1-chaitanya.kumar.borah@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[intel.com,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,gitlab.freedesktop.org:url]
X-Rspamd-Queue-Id: 8CF4F3E9E29
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

For RGB, set dynamic_range to CTA or VESA based on
crtc_state->limited_color_range so sinks apply correct
quantization. YCbCr remains limited (CTA) range.
(DP v1.4, Table 5-1)

Cc: stable@vger.kernel.org #v5.8+
Fixes: 9799c4c3b76e ("drm/i915/dp: Add compute routine for DP VSC SDP")
Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/15874
Assisted-by: GitHub Copilot (GPT-5.4)
Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index b8b6d62fb275..2b6283b4dec6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3127,8 +3127,12 @@ static void intel_dp_compute_vsc_colorimetry(const struct intel_crtc_state *crtc
 	drm_WARN_ON(display->drm,
 		    vsc->bpc == 6 && vsc->pixelformat != DP_PIXELFORMAT_RGB);
 
-	/* all YCbCr are always limited range */
-	vsc->dynamic_range = DP_DYNAMIC_RANGE_CTA;
+	if (vsc->pixelformat == DP_PIXELFORMAT_RGB)
+		vsc->dynamic_range = crtc_state->limited_color_range ?
+			DP_DYNAMIC_RANGE_CTA : DP_DYNAMIC_RANGE_VESA;
+	else
+		vsc->dynamic_range = DP_DYNAMIC_RANGE_CTA;
+
 	vsc->content_type = DP_CONTENT_TYPE_NOT_DEFINED;
 }
 
-- 
2.25.1

