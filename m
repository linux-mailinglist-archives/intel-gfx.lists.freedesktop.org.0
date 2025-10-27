Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9905DC0E1BE
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Oct 2025 14:40:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0215610E4A7;
	Mon, 27 Oct 2025 13:40:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RCc4tcNA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EC7810E4A7;
 Mon, 27 Oct 2025 13:40:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761572436; x=1793108436;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AGBqwYybkkP3h6NMCCQd7hWTN+C9zZXwoTFM0Dtpf/4=;
 b=RCc4tcNAMh2lXylrryTtRkUpZUjFJRdHEyxjMp6+FOE0FSYuRtHg+GqO
 uXUGyRjXOhN5KszJ1FXuRKqEZcZKBNFZGH2DOZV/dNFUxbv43BzFYqdmx
 XoWLSFRdRRx+IVqYxSUvF3xjBwDXAoGqIlHrg62FJFm1vb/YXttDZhA3t
 hVg5Ev9gQ14lw/5RRfXGBYsyCKXAPEAwvpPCMECY7Wnwmb9iCrxuLM9oL
 RDlsXvOXJ7W4hctoJtxfqyKgIhD6xb3Xd+QRFJNSjNQhqQEV08Yb1BIQn
 ieUU8TxN6QowJopNFpZUbW4URVCDPU/f4KOz+OfSJ5S/x6RQ8b0I+Yl8W w==;
X-CSE-ConnectionGUID: xWL9WSLFQ42oKWDNhe61Fg==
X-CSE-MsgGUID: +vbWuSLTTomp7U1Ok9a2DA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="75096389"
X-IronPort-AV: E=Sophos;i="6.19,258,1754982000"; d="scan'208";a="75096389"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 06:40:36 -0700
X-CSE-ConnectionGUID: TFrZKOKjRgWRtYAkosKNSQ==
X-CSE-MsgGUID: He/eiAXWTCy4Z1voQaj1uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,258,1754982000"; d="scan'208";a="184271227"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO
 vgovind2-mobl4.intel.com) ([10.245.246.54])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 06:40:34 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, gustavo.sousa@intel.com,
 jani.nikula@intel.com, ville.syrjala@intel.com, uma.shankar@intel.com
Subject: [PATCH v2 3/4] drm/i915/xe3p_lpd: extract pixel format valid routine
 for FP16 formats
Date: Mon, 27 Oct 2025 15:40:00 +0200
Message-ID: <20251027134001.325064-4-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251027134001.325064-1-vinod.govindapillai@intel.com>
References: <20251027134001.325064-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
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

As the pixel normalizer block is needed only for the FP16 formats,
separating out the FP16 formats handling will benefit in selectively
enabling the pixel normalizer block in the following patch.

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 19 +++++++++++++++++--
 1 file changed, 17 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index c831bd883395..6cab6e7cead3 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1084,6 +1084,20 @@ static bool lnl_fbc_pixel_format_is_valid(const struct intel_plane_state *plane_
 	}
 }
 
+static bool
+xe3p_lpd_fbc_fp16_format_is_valid(const struct intel_plane_state *plane_state)
+{
+	const struct drm_framebuffer *fb = plane_state->hw.fb;
+
+	switch (fb->format->format) {
+	case DRM_FORMAT_ARGB16161616F:
+	case DRM_FORMAT_ABGR16161616F:
+		return true;
+	default:
+		return false;
+	}
+}
+
 static bool xe3p_lpd_fbc_pixel_format_is_valid(const struct intel_plane_state *plane_state)
 {
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
@@ -1091,13 +1105,14 @@ static bool xe3p_lpd_fbc_pixel_format_is_valid(const struct intel_plane_state *p
 	if (lnl_fbc_pixel_format_is_valid(plane_state))
 		return true;
 
+	if (xe3p_lpd_fbc_fp16_format_is_valid(plane_state))
+		return true;
+
 	switch (fb->format->format) {
 	case DRM_FORMAT_XRGB16161616:
 	case DRM_FORMAT_XBGR16161616:
 	case DRM_FORMAT_ARGB16161616:
 	case DRM_FORMAT_ABGR16161616:
-	case DRM_FORMAT_ARGB16161616F:
-	case DRM_FORMAT_ABGR16161616F:
 		return true;
 	default:
 		return false;
-- 
2.43.0

