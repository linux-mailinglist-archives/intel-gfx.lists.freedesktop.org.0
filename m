Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61B4FA1B436
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 11:56:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2FEA10E7D5;
	Fri, 24 Jan 2025 10:56:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i0GQlEZT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8E6E10E058;
 Fri, 24 Jan 2025 10:56:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737716209; x=1769252209;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZnpNxyCt/SESQRMOgdSoc4EfACvPbbG7VfnXhZoUnLU=;
 b=i0GQlEZT99B5JXY7VOH+zyGLXIYEeYofFmAkiq8VMbbYmFkonnv8e2sE
 4KhFg2/OarGpBWcVziU5rvawxTsMWFR06tpZKiZWhPEZX7zKrb+uw1g0H
 vRUpDlBvtmwF4rf1fd6Ukw6Hnx4hiN6iDUXe3bM7JAF2nvIL2aQVvfEx9
 EKrwpJOdg8Ix+ozjOh+MzJAjQ/Sd46hrdn9HgBwf4YA2w0/YZTNDiWx6N
 n8vom+ALcU+KgfBTg/de8eWoa2pGi3FlUkE4wmfL0riRYpTtBHaFcOC+f
 z88HW0vilHiOuk/1Af54PZvi/DV/imEHbVT7D/E/3CkywaEAmQDi0npdw g==;
X-CSE-ConnectionGUID: gRZ5J/j8RGSAwfy9SoYUow==
X-CSE-MsgGUID: T+xaDcBZTaiUg82FPpvIZA==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="55660058"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="55660058"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 02:56:48 -0800
X-CSE-ConnectionGUID: lCjBObLVRZOFJInH4YEZHA==
X-CSE-MsgGUID: WxtUih9WSD+v0UReioGPug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="107864230"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.138])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 02:56:46 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com, ville.syrjala@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 01/13] drm/i915/psr: Use PSR2_MAN_TRK_CTL CFF bit only to
 send full update
Date: Fri, 24 Jan 2025 12:56:12 +0200
Message-ID: <20250124105625.822459-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250124105625.822459-1-jouni.hogander@intel.com>
References: <20250124105625.822459-1-jouni.hogander@intel.com>
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

We are preparing for a change where only frontbuffer flush will use
single full frame bit of a new register (SFF_CTL) available on LunarLake
onwards.

It shouldn't be necessary to have SFF bit set if CFF bit is set in
PSR2_MAN_TRK_CTL -> removing setting it on all platforms as there is not
reason to have it different on older platforms.

v2: commit message improved

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 0b021acb330f4..476305010e113 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2381,7 +2381,6 @@ static void psr2_man_trk_ctl_calc(struct intel_crtc_state *crtc_state,
 	val |= man_trk_ctl_partial_frame_bit_get(display);
 
 	if (full_update) {
-		val |= man_trk_ctl_single_full_frame_bit_get(display);
 		val |= man_trk_ctl_continuos_full_frame(display);
 		goto exit;
 	}
-- 
2.43.0

