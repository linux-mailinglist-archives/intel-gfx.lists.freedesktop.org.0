Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF591A7E216
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Apr 2025 16:39:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4971510E4D6;
	Mon,  7 Apr 2025 14:39:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HU5e1ryL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D95DA10E4C2;
 Mon,  7 Apr 2025 14:39:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744036773; x=1775572773;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RbmUkdsAdPqfGls3CfKAnUQOZbWj0q9G3H/OEfWK+Jc=;
 b=HU5e1ryL4Y00sDNJigrSTQ+rKw+7W0XUXU1vd0dGTEymAHOXH80JWB4N
 4TduAQzqb+JZlbWnc6kdwVUAa5aVWrtfd4sjWHKrDtWf0Y5eYctx9KmTP
 vAXdPUAQfAbbZTDyBiL4t5BHdE2za7Yv2dFBj/aOwkxJTn6vw4DFro9Qb
 m4HNUo7xfgs5HCJYqvvlGvjtlOedXdn1S/LmvC0BHiMDX1Drv2RZTqF7/
 oyb3Fd/WW5jD2AlNEvxMCcQ9LiPDc6oglL/FvsNqgZPxszXkeL22SOt9z
 NcADx2P62XxcLPG9WKoMAc6yPkK9n+QMxpt5IeEBeSGxBM3a2YbSUIX59 A==;
X-CSE-ConnectionGUID: EcuUNDIuRoWhUHA+2ryUOw==
X-CSE-MsgGUID: gj5AzSqFRMWF6m4jY4EASg==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="44572469"
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="44572469"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 07:39:32 -0700
X-CSE-ConnectionGUID: +YZsQvMGS+mNV1ZVNNTGOA==
X-CSE-MsgGUID: nF/o7gh0QwKZW+0bcWnMkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="158963769"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa001.fm.intel.com with ESMTP; 07 Apr 2025 07:39:30 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 chaitanya.kumar.borah@intel.com, animesh.manna@intel.com
Subject: [PATCH 10/11] drm/i915/color: Do not pre-load LUTs with DB registers
Date: Mon,  7 Apr 2025 19:53:58 +0530
Message-Id: <20250407142359.1398410-11-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250407142359.1398410-1-chaitanya.kumar.borah@intel.com>
References: <20250407142359.1398410-1-chaitanya.kumar.borah@intel.com>
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

Since Double Buffered LUT registers can be written in active region
no need to preload them.

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 49429404bd82..ba2b2498d1da 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -2027,9 +2027,13 @@ bool intel_color_uses_dsb(const struct intel_crtc_state *crtc_state)
 static bool intel_can_preload_luts(struct intel_atomic_state *state,
 				   struct intel_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(state);
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
 
+	if (HAS_DOUBLE_BUFFERED_LUT(display))
+		return false;
+
 	return !old_crtc_state->post_csc_lut &&
 		!old_crtc_state->pre_csc_lut;
 }
-- 
2.25.1

