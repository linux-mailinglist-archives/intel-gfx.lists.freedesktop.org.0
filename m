Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D540BA9E817
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Apr 2025 08:23:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD05D10E382;
	Mon, 28 Apr 2025 06:23:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YyWOxHIh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2D3910E37F;
 Mon, 28 Apr 2025 06:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745821380; x=1777357380;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iVoT7PVzKtYXZ7uhpJNNx4C/MbRzeUsKvoy3fq4IHwM=;
 b=YyWOxHIh23+F4udWiycFtWRc8biR7mrdtySIHnsqzIzTnxbdAddS+xRr
 fxQ/geaJjqDNWs56o7DdHi/8cLCQ/VXvjxoBfcxjTSdu4K+aLC344Rc6z
 hDeTP80lL/OvXyZoFQblRC1nxqJsWnyM2AoGmTCuvczxw8ZjQP4pH3Kc5
 3bgv2owzhfvwz91doVeOcVA1iRLO8L5zJewJgcHRu+wGybWjGoWwpi3V7
 P8lC0p9LSE5j5YmhQ+JlMdmspFMD5QP9uVXi/wopVM4Eqf5oykz3BAH5t
 SRlL3aSBUZUkrNfeuBFClNbYJ8+tnNQhdRhVzQE9dp00G6rcDWXxy8BSv A==;
X-CSE-ConnectionGUID: rFbRlv9zQiiG6tptgySopg==
X-CSE-MsgGUID: NHwQUJ6qTvGLAj54JpjhZg==
X-IronPort-AV: E=McAfee;i="6700,10204,11416"; a="51204150"
X-IronPort-AV: E=Sophos;i="6.15,245,1739865600"; d="scan'208";a="51204150"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2025 23:23:00 -0700
X-CSE-ConnectionGUID: duyqRZ0SSRe4yyG7ixmD9Q==
X-CSE-MsgGUID: 3Jcsvc2iRfa2rdlcDF35xA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,245,1739865600"; d="scan'208";a="138231194"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa005.fm.intel.com with ESMTP; 27 Apr 2025 23:22:59 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	ville.syrjala@intel.com
Subject: [PATCH v3 01/15] drm/i915/vrr: Fix the adjustment for the fixed rr
 vtotal for Display < 13
Date: Mon, 28 Apr 2025 11:50:44 +0530
Message-ID: <20250428062058.2811655-2-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250428062058.2811655-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250428062058.2811655-1-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Correct the adjustment required for fixed refresh rate mode for Display
< 13. The vblank delay must be added and not subtracted to get the fixed
rr vtotal.

Fixes: bef1e60c7087 ("drm/i915/vrr: Prepare for fixed refresh rate timings")
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index c6565baf815a..45445198129f 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -263,7 +263,7 @@ int intel_vrr_fixed_rr_vtotal(const struct intel_crtc_state *crtc_state)
 	if (DISPLAY_VER(display) >= 13)
 		return crtc_vtotal;
 	else
-		return crtc_vtotal -
+		return crtc_vtotal +
 			intel_vrr_real_vblank_delay(crtc_state);
 }
 
-- 
2.48.1

