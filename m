Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90BF3B0DA30
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jul 2025 14:56:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D58D10E67D;
	Tue, 22 Jul 2025 12:56:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OwVI5VWE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79EF710E67D;
 Tue, 22 Jul 2025 12:56:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753188995; x=1784724995;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nnW9oyTmua5ujxRg9SO3/mgVOuLozjej/L8qKZpR62c=;
 b=OwVI5VWEwEhwtMJzpccWBcXtwVeDw89IGzvHRohqSONYay4Eyo6E2GLj
 NgADycotfU7UikzVH0oo6YMsHirFlMq5yFuiMQ4Nv7H/lQbpQFfwfgDfA
 5g2lsKms1m9z9SZTmvZhIJcg+EFHJZcN2vj1tUt3+yjBGSaFYwr6c1ZxQ
 u7TOafMeKf5GHU8C910VeNEHx3d6wADCyOJbIZMLIBVVK++EnXFZ9k69Q
 H+eCKiKhahT5l/mTyCogBRR91khPEagcSeHJFUfbmAyJxMnQXlzsQWba9
 NeZPt/bUmfuhu4rShqSn9JuSmPqDqm4Qs7txLZNViL+Y3SumqcmM/32B7 w==;
X-CSE-ConnectionGUID: 2UOTKSQ4S9SgegA64h4S6Q==
X-CSE-MsgGUID: T/MtHHBxQrm9TlZKrO7z2w==
X-IronPort-AV: E=McAfee;i="6800,10657,11500"; a="66121543"
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="66121543"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 05:56:35 -0700
X-CSE-ConnectionGUID: EsF7mxa5RPyw+fUqXSJx1A==
X-CSE-MsgGUID: BDkJAJ2UTbGe8ESBxlWRcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="164604142"
Received: from agladkov-desk.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.0])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 05:56:34 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: gustavo.sousa@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 2/4] drm/i915/display: Avoid unnecessarily calling
 intel_cx0_get_owned_lane_mask
Date: Tue, 22 Jul 2025 15:56:16 +0300
Message-ID: <20250722125618.1842615-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250722125618.1842615-1-jouni.hogander@intel.com>
References: <20250722125618.1842615-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Currently we are always calling intel_cx0_get_owned_lane_mask when
intel_lnl_mac_transmit_lfps is called. Avoid this in cases where it's not
needed.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 2b0305bb04cd..2993dabdbee6 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -3239,13 +3239,14 @@ void intel_lnl_mac_transmit_lfps(struct intel_encoder *encoder,
 				 const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	u8 owned_lane_mask = intel_cx0_get_owned_lane_mask(encoder);
 	int i;
+	u8 owned_lane_mask;
 
 	if (DISPLAY_VER(display) < 20 ||
 	    !intel_alpm_is_alpm_aux_less(enc_to_intel_dp(encoder), crtc_state))
 		return;
 
+	owned_lane_mask = intel_cx0_get_owned_lane_mask(encoder);
 	for (i = 0; i < 4; i++) {
 		int tx = i % 2 + 1;
 		u8 lane_mask = i < 2 ? INTEL_CX0_LANE0 : INTEL_CX0_LANE1;
-- 
2.43.0

