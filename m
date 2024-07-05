Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B88928AFC
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2024 16:53:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E05110EBEC;
	Fri,  5 Jul 2024 14:53:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Hwsxj5wJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F9D910EBEC;
 Fri,  5 Jul 2024 14:53:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720191218; x=1751727218;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=s/gNmJFhSQs9V374cJ+h+SeL8x5dmp4mWRKyYVJ0w9U=;
 b=Hwsxj5wJFPXkyCBbRED/4ktiECLY3sVmzPwKPqWKiU95MkHzJofI1vd7
 HUDwKvBkTaiE0ytmqOlFbewMEC5ZfWW2sb2xTz3nXHRXtITwkUmH33WIb
 fuFN5doKpbnMImdlKJKxBEKpkOhBeEe+Wu66nf06k1lrT14xr4Q2hEIrp
 5Ktoc+7YMuFMOtH/WOqZuL3NlLT0VmPGveOXlq9oObER19j5pF7xSWquN
 2YQjjTF4rDruzfBVLhCQhv5UbGTq8URRT7M8/UJmgtibOhg+7meDrX8vn
 RegiUc8DexOWE77StXp9hk1tbzmqUuScXegOEZJKtywmLM6H1sC3160kn Q==;
X-CSE-ConnectionGUID: s/wU8f6JQoK9VgtiD9p9og==
X-CSE-MsgGUID: I3/rA/3vR+qV2qa6ld+ZmA==
X-IronPort-AV: E=McAfee;i="6700,10204,11123"; a="17204784"
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="17204784"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2024 07:53:38 -0700
X-CSE-ConnectionGUID: 7rOFe5RTSAOfJp/lb66jAg==
X-CSE-MsgGUID: Z0mGrn0STHmy4Uxfe1qLyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="46864544"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 05 Jul 2024 07:53:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Jul 2024 17:53:35 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 14/20] drm/i915/fbc: Introduce intel_fbc_preferred_cfb_size()
Date: Fri,  5 Jul 2024 17:52:48 +0300
Message-ID: <20240705145254.3355-15-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240705145254.3355-1-ville.syrjala@linux.intel.com>
References: <20240705145254.3355-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Allow the code to declare roughly how much stolen memory
should remain available for the CFB. Since we don't know
the actual resolutions that will eventually be used simply
assume that the maximum plane size (with no extra stride
padding) is enough, with 1:1 compression ratio limit.

This should be useful for the fbdev code to determine
whether to allocate/keep the fbdev framebuffer in stolen
or not.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 17 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_fbc.h |  1 +
 2 files changed, 18 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index a0e539bc80f1..efe0a554a281 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1911,6 +1911,23 @@ static int intel_sanitize_fbc_option(struct intel_display *display)
 	return 0;
 }
 
+unsigned int intel_fbc_preferred_cfb_size(struct intel_display *display)
+{
+	unsigned int cpp, width, height, stride;
+
+	if (!HAS_FBC(display))
+		return 0;
+
+	intel_fbc_max_plane_size(display, &width, &height);
+
+	cpp = intel_fbc_cfb_cpp();
+
+	/* assume stride matches width to keep this simple */
+	stride = _intel_fbc_cfb_stride(display, cpp, width, width * cpp);
+
+	return _intel_fbc_cfb_size(display, height, stride);
+}
+
 void intel_fbc_add_plane(struct intel_fbc *fbc, struct intel_plane *plane)
 {
 	plane->fbc = fbc;
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.h b/drivers/gpu/drm/i915/display/intel_fbc.h
index 834b271505b1..40d8efec6d9d 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.h
+++ b/drivers/gpu/drm/i915/display/intel_fbc.h
@@ -46,6 +46,7 @@ void intel_fbc_flush(struct drm_i915_private *dev_priv,
 void intel_fbc_add_plane(struct intel_fbc *fbc, struct intel_plane *plane);
 void intel_fbc_handle_fifo_underrun_irq(struct intel_display *display);
 void intel_fbc_reset_underrun(struct intel_display *display);
+unsigned int intel_fbc_preferred_cfb_size(struct intel_display *display);
 void intel_fbc_crtc_debugfs_add(struct intel_crtc *crtc);
 void intel_fbc_debugfs_register(struct intel_display *display);
 
-- 
2.44.2

