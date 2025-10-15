Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA75CBDD1DE
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 09:35:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 149A810E31F;
	Wed, 15 Oct 2025 07:35:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kxFTHqkw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3099410E31F;
 Wed, 15 Oct 2025 07:35:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760513734; x=1792049734;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kpp8C3R51Gz4vQQa+dyhawDbNS9mxI8zMvC1Vvq8+8s=;
 b=kxFTHqkw6wm2veBj8ZNdglBZxyO0fqJtkg5S4anipxeAQVUsuQUBVIff
 nzEyNgY0DSarlDRnt7BC4qmCPFnOOVsZiMn83vWxGiWOKNaj/+rAqZTvE
 rdv7PeX2naqQUoKky0Y0P3a0k/BFOE4BLYdSTiJIHw59tpPbLWW28edPZ
 JY5nMqe7rtq/X709/84GtsQNaSofwX0cGKJ24PmoLuCCu5oAEzNiob5ra
 5rTPOd9GmX8okIWadB8EOtM1AfctArnxFlrVF+pN77NhLKMqrSUa6fPOF
 nqd2+eReVp1yADo4bkHi6DonxeZiG9p+20lprIAMlusodTYrHCQ7HSL1o A==;
X-CSE-ConnectionGUID: FlXyw2P/QoeGymMQraTkBg==
X-CSE-MsgGUID: vUs+wDZ4SdurECkS9M6mFQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="62573608"
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="62573608"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 00:35:27 -0700
X-CSE-ConnectionGUID: U5TPq6YeSmaR5+1MQ7Wq5A==
X-CSE-MsgGUID: rdpjTCdITymm9gxbmv6S2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="182882206"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 00:35:25 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH 01/10] drm/i915/vrr: Use crtc_vsync_start/end for computing
 vrr.vsync_start/end
Date: Wed, 15 Oct 2025 12:52:08 +0530
Message-ID: <20251015072217.1710717-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251015072217.1710717-1-ankit.k.nautiyal@intel.com>
References: <20251015072217.1710717-1-ankit.k.nautiyal@intel.com>
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

Use adjusted_mode->crtc_vsync_start/end instead of
adjusted_mode->vsync_start while computing vrr.vsync_start/end.
For most modes, these are same but for 3D/stereo modes the
crtc_vsync_start is different than vsync_start.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 190c51be5cbc..4bc14b5e685f 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -394,10 +394,10 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	if (HAS_AS_SDP(display)) {
 		crtc_state->vrr.vsync_start =
 			(crtc_state->hw.adjusted_mode.crtc_vtotal -
-			 crtc_state->hw.adjusted_mode.vsync_start);
+			 crtc_state->hw.adjusted_mode.crtc_vsync_start);
 		crtc_state->vrr.vsync_end =
 			(crtc_state->hw.adjusted_mode.crtc_vtotal -
-			 crtc_state->hw.adjusted_mode.vsync_end);
+			 crtc_state->hw.adjusted_mode.crtc_vsync_end);
 	}
 }
 
-- 
2.45.2

