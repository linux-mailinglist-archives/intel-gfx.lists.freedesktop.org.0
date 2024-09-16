Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80B1597A5E5
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Sep 2024 18:24:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22D6D10E3B0;
	Mon, 16 Sep 2024 16:24:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gL+9QTSK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D1E310E3B0
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Sep 2024 16:24:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726503859; x=1758039859;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ew/BgYJZtMJHnVDxwEny69Bv//WQVCazEVhsWyKvN6g=;
 b=gL+9QTSKJk4xV8Tzw/wGQ6QwtoCshPnEzG7T0w92TwUNJzjMuwE6K/kY
 Wm7wD4muexQyNQ1mKwPNWr4vFQP8ELKgjOQ5FZmkUD+oBRp6lZs33qNPA
 hzPW5H3wfyirUrIGjOdNmjQLJ1GxpcnpS1ODn+4nOUkit/dCRO7hiyg4M
 m7LhbwADM5xyYx9Hcme1dbhhlukMhqPrP2j0uk3k2UIOAlY7tabZAedPa
 E+KgrsaBOBntSHoZXuGD6kX+IbE9xaJYmsVWeRPKf2MXDU2ip/pD4PEw0
 HJvf3r8Jk/D9jzrdrkjLOgiliZ8PwB/DW6MVSIffQm2JCgojb1HNT/x3n w==;
X-CSE-ConnectionGUID: AYOIGWriR626oGsf+EMrmA==
X-CSE-MsgGUID: Y/OsNoSxQyiY/TZb51xd4A==
X-IronPort-AV: E=McAfee;i="6700,10204,11197"; a="42811715"
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="42811715"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 09:24:19 -0700
X-CSE-ConnectionGUID: QDzYS1slT3yct7qJ4rCQ3g==
X-CSE-MsgGUID: LV5fV5HGRd+iGm+Uo9DKEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="69029943"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 Sep 2024 09:24:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 16 Sep 2024 19:24:15 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/7] drm/i915: Remove leftover
 intel_sprite_set_colorkey_ioctl() prototype
Date: Mon, 16 Sep 2024 19:24:07 +0300
Message-ID: <20240916162413.8555-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240916162413.8555-1-ville.syrjala@linux.intel.com>
References: <20240916162413.8555-1-ville.syrjala@linux.intel.com>
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

intel_sprite_set_colorkey_ioctl() lives in intel_sprice_uapi.{c,h}
these days. For some reason the old protoype was left behind
in intel_sprite.h and even used by i915_driver.c. Remove the
leftovers and switch to including the correct header for the
prototype.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_sprite.h | 3 ---
 drivers/gpu/drm/i915/i915_driver.c          | 2 +-
 2 files changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sprite.h b/drivers/gpu/drm/i915/display/intel_sprite.h
index 044a032e41b9..f22abeb82032 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.h
+++ b/drivers/gpu/drm/i915/display/intel_sprite.h
@@ -10,7 +10,6 @@
 
 struct drm_device;
 struct drm_display_mode;
-struct drm_file;
 struct drm_i915_private;
 struct intel_crtc_state;
 struct intel_plane_state;
@@ -19,8 +18,6 @@ enum pipe;
 #ifdef I915
 struct intel_plane *intel_sprite_plane_create(struct drm_i915_private *dev_priv,
 					      enum pipe pipe, int plane);
-int intel_sprite_set_colorkey_ioctl(struct drm_device *dev, void *data,
-				    struct drm_file *file_priv);
 int intel_plane_check_src_coordinates(struct intel_plane_state *plane_state);
 int chv_plane_check_rotation(const struct intel_plane_state *plane_state);
 
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 943e938040c0..b0ec54a4e033 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -59,7 +59,7 @@
 #include "display/intel_overlay.h"
 #include "display/intel_pch_refclk.h"
 #include "display/intel_pps.h"
-#include "display/intel_sprite.h"
+#include "display/intel_sprite_uapi.h"
 #include "display/skl_watermark.h"
 
 #include "gem/i915_gem_context.h"
-- 
2.44.2

