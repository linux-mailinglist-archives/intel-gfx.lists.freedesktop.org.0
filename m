Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id cO5LGMRpMmp3zgUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 11:32:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F32F697EFB
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 11:32:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=GzQPm3MK;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8724810EF00;
	Wed, 17 Jun 2026 09:32:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9ED2A10E9B9;
 Wed, 17 Jun 2026 09:32:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781688767; x=1813224767;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hpFwdCynFNDpWX1t/LwH4Hki4nNVS7qU9FK75QxxIII=;
 b=GzQPm3MKVRKI2Dxk/EMS2cIgpiKW2PIS/Cq54+VYhvEONn057LQudFsp
 5IP2UFKqaI23cdqp124mTFnZW51AaAriqUBWtyBV0o4zeDZF9gtMCOxKT
 QNzKIRNZyVWdeU0QdehiP5rCON4BVsGWyAdlgY3ENB0GNqDpNSAbRYY85
 gWDxbRhKNb0iLC3MxCZCIQwpPqP4a4d/OJXRSRqDLjjsMsyIna4hQuiNH
 Bc9++mKBQqP/Yi9IdDeetpuWKU2cGVGr5F4mQ82AzSqPbvQ+vkaTpS70R
 lWQGUDHHfkRxqrmBVVhj8xiiFm+0svZIPmUEfIjKiVARlFd5zooIQ1dkd A==;
X-CSE-ConnectionGUID: Rw3TZZnlToK/e6Fb7mBtdQ==
X-CSE-MsgGUID: PFFBD9t4QKSzZ3iK0z/zHw==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="81605268"
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="81605268"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 02:32:46 -0700
X-CSE-ConnectionGUID: SPIOF24kQGyUbrLrKXZZ6w==
X-CSE-MsgGUID: sJHV2kYBQVCwz5O7OuSAiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="245114434"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa007.fm.intel.com with ESMTP; 17 Jun 2026 02:32:43 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Subject: [v3 04/14] drm/i915/display: simplify glk_plane_color_ctl_input_csc
Date: Wed, 17 Jun 2026 14:38:09 +0530
Message-Id: <20260617090819.1735153-5-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260617090819.1735153-1-chaitanya.kumar.borah@intel.com>
References: <20260617090819.1735153-1-chaitanya.kumar.borah@intel.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2F32F697EFB

Add early return for non-YUV formats and hoist the duplicated
color_range check out of the if/else branches. No functional change.

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 50c6ceef9b9a..da2df5be9848 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1247,7 +1247,10 @@ static u32 glk_plane_color_ctl_input_csc(const struct intel_plane_state *plane_s
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 	u32 ctl = 0;
 
-	if (fb->format->is_yuv && !icl_is_hdr_plane(display, plane->id)) {
+	if (!fb->format->is_yuv)
+		return 0;
+
+	if (!icl_is_hdr_plane(display, plane->id)) {
 		switch (plane_state->hw.color_encoding) {
 		case DRM_COLOR_YCBCR_BT709:
 			ctl |= PLANE_COLOR_CSC_MODE_YUV709_TO_RGB709;
@@ -1258,14 +1261,13 @@ static u32 glk_plane_color_ctl_input_csc(const struct intel_plane_state *plane_s
 		default:
 			ctl |= PLANE_COLOR_CSC_MODE_YUV601_TO_RGB601;
 		}
-		if (plane_state->hw.color_range == DRM_COLOR_YCBCR_FULL_RANGE)
-			ctl |= PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE;
-	} else if (fb->format->is_yuv) {
+	} else {
 		ctl |= PLANE_COLOR_INPUT_CSC_ENABLE;
-		if (plane_state->hw.color_range == DRM_COLOR_YCBCR_FULL_RANGE)
-			ctl |= PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE;
 	}
 
+	if (plane_state->hw.color_range == DRM_COLOR_YCBCR_FULL_RANGE)
+		ctl |= PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE;
+
 	return ctl;
 }
 
-- 
2.25.1

