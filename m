Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FF28A446C4
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 17:49:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCA2F10E751;
	Tue, 25 Feb 2025 16:49:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bZXjOoU/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B880F10E751;
 Tue, 25 Feb 2025 16:49:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740502164; x=1772038164;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ChoM9bOw4NOX4KvjNvXlYGlCMli+j29UVkFX/kmpKHo=;
 b=bZXjOoU/d7G4rmyOHGu7n6mAXmZI4jpBJaiuZNjD1YPCgUbVi//J+np6
 GWe/rx7s56sWsWi1pej824Nhh54mwxFf6S+BIa8bNom/oItaiiSeuBeqb
 01MZmhiUqKDtp/GPW/f7VHx3RGSHkc8O99jGvwichxqL+UjpFa8ZtYxjy
 lxw4srd/qo6sBsLevDKS307V2M434iqBk1TZtGpHJwcWGdi3/4oz0cDfB
 4tWA3YamDqbu6chfLbBcJa98nUDhDw3AcbrP+CJ9MLdDe483hqz9FtALG
 0ZgZe8/Bf2DNenm8ah/nmalOsFBiRVudHlZLeSVizeJdbry9iv0wtfhIW Q==;
X-CSE-ConnectionGUID: TEv1cC1oRyih+SRil5KMkw==
X-CSE-MsgGUID: TtRJNGgHTeeRXpPBlo+m0g==
X-IronPort-AV: E=McAfee;i="6700,10204,11356"; a="41454398"
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="41454398"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 08:49:23 -0800
X-CSE-ConnectionGUID: MeCzxJ0yTACozIDGD24zaA==
X-CSE-MsgGUID: EuTkT3dSRzGZPG89kP5yaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="116930143"
Received: from monicael-mobl3 (HELO localhost) ([10.245.246.246])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 08:49:21 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 01/12] drm/i915/display: remove leftover struct
 drm_i915_private forward declarations
Date: Tue, 25 Feb 2025 18:49:02 +0200
Message-Id: <ef354c3d812ac33061628063548b932507fdc9b7.1740502116.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1740502116.git.jani.nikula@intel.com>
References: <cover.1740502116.git.jani.nikula@intel.com>
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

A number of unused struct drm_i915_private forward declarations have
been left behind. Remove them.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic.h        | 1 -
 drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h | 1 -
 drivers/gpu/drm/i915/display/intel_hdmi.h          | 1 -
 drivers/gpu/drm/i915/display/intel_overlay.h       | 1 -
 drivers/gpu/drm/i915/display/intel_pipe_crc.h      | 1 -
 5 files changed, 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic.h b/drivers/gpu/drm/i915/display/intel_atomic.h
index e506f6a87344..a5a7e2906ba8 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.h
+++ b/drivers/gpu/drm/i915/display/intel_atomic.h
@@ -14,7 +14,6 @@ struct drm_connector_state;
 struct drm_crtc;
 struct drm_crtc_state;
 struct drm_device;
-struct drm_i915_private;
 struct drm_property;
 struct intel_atomic_state;
 struct intel_connector;
diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
index 2133984a572b..29a190390192 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
@@ -8,7 +8,6 @@
 
 #include <linux/types.h>
 
-struct drm_i915_private;
 struct intel_encoder;
 struct intel_crtc_state;
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.h b/drivers/gpu/drm/i915/display/intel_hdmi.h
index d237fe08c3e6..dec2ad7dd8a2 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.h
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
@@ -14,7 +14,6 @@ enum port;
 struct drm_connector;
 struct drm_connector_state;
 struct drm_encoder;
-struct drm_i915_private;
 struct intel_connector;
 struct intel_crtc_state;
 struct intel_digital_port;
diff --git a/drivers/gpu/drm/i915/display/intel_overlay.h b/drivers/gpu/drm/i915/display/intel_overlay.h
index 45a42fce754e..d259e4c74b03 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.h
+++ b/drivers/gpu/drm/i915/display/intel_overlay.h
@@ -10,7 +10,6 @@
 
 struct drm_device;
 struct drm_file;
-struct drm_i915_private;
 struct drm_printer;
 struct intel_display;
 struct intel_overlay;
diff --git a/drivers/gpu/drm/i915/display/intel_pipe_crc.h b/drivers/gpu/drm/i915/display/intel_pipe_crc.h
index 43012b189415..6ddcea38488b 100644
--- a/drivers/gpu/drm/i915/display/intel_pipe_crc.h
+++ b/drivers/gpu/drm/i915/display/intel_pipe_crc.h
@@ -9,7 +9,6 @@
 #include <linux/types.h>
 
 struct drm_crtc;
-struct drm_i915_private;
 struct intel_crtc;
 
 #ifdef CONFIG_DEBUG_FS
-- 
2.39.5

