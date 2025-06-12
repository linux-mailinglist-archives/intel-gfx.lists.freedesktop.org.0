Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD83EAD6F27
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 13:37:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6603F10E7E1;
	Thu, 12 Jun 2025 11:37:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IGx0B5nx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85C3010E7E1;
 Thu, 12 Jun 2025 11:37:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749728259; x=1781264259;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0F8fPOlwu2G59WeuopxqxjaGuYt+AoZ7pC7F4wP7EW8=;
 b=IGx0B5nxLOBmp9j+a5NXoX4QT3jXm5TugjbAOsJ8TrV51DAtKZ3Q5GOg
 ocpu5KFOLXGE4h6QzWNIRkVsichgwa+9gGs1dcm+LkDL8O/kQeAhY/O6P
 CaATiQiQi/alG6fkgRxV2WoQf1pWmqDqibKLqQ9rqyHjVwu80HRQ5y8t1
 OCteobSmW0VpQnfmpTgA1eDRyhhgSqt38YkeNw/9TVfjv0kjzhDrUHdhb
 S68z5ey4j9r2Ggmp6dm2ceFG1j6hy/tk0lfKsJ8jVwSoPw9mc6RYQhIB9
 e0dDCf+I/ipHpmSho8YKybmk4OFkjOHZ08FFjj6KvfSwe32JWWdtv5n/f g==;
X-CSE-ConnectionGUID: q/TCrIe5QB6vkhXAvPkEoA==
X-CSE-MsgGUID: yakGa3owRRex7Ye3xn6U4A==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="51820238"
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="51820238"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 04:37:38 -0700
X-CSE-ConnectionGUID: t77ywGn3RHey10ZZIKOMcw==
X-CSE-MsgGUID: X9b3w8UMSBm529eAhHPRWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="152484585"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.242])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 04:37:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RESEND 4/5] drm/i915/plane: rename intel_atomic_check_planes() to
 intel_plane_atomic_check()
Date: Thu, 12 Jun 2025 14:37:10 +0300
Message-Id: <140b888883c04a1b12bc573045fc22100267eb5a.1749728173.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1749728173.git.jani.nikula@intel.com>
References: <cover.1749728173.git.jani.nikula@intel.com>
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

Align with all the other atomic check functions.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 2 +-
 drivers/gpu/drm/i915/display/intel_plane.c   | 2 +-
 drivers/gpu/drm/i915/display/intel_plane.h   | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index acc03b4c9e89..bd81ff9e3854 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6447,7 +6447,7 @@ int intel_atomic_check(struct drm_device *dev,
 		goto fail;
 	}
 
-	ret = intel_atomic_check_planes(state);
+	ret = intel_plane_atomic_check(state);
 	if (ret)
 		goto fail;
 
diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index fbbe957d3f04..2ac7a4e655f5 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -1528,7 +1528,7 @@ static int intel_add_affected_planes(struct intel_atomic_state *state)
 	return 0;
 }
 
-int intel_atomic_check_planes(struct intel_atomic_state *state)
+int intel_plane_atomic_check(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc_state *old_crtc_state, *new_crtc_state;
diff --git a/drivers/gpu/drm/i915/display/intel_plane.h b/drivers/gpu/drm/i915/display/intel_plane.h
index 4d69a868265c..5cb995b2940f 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.h
+++ b/drivers/gpu/drm/i915/display/intel_plane.h
@@ -85,7 +85,7 @@ void intel_plane_init_cursor_vblank_work(struct intel_plane_state *old_plane_sta
 					 struct intel_plane_state *new_plane_state);
 int intel_atomic_add_affected_planes(struct intel_atomic_state *state,
 				     struct intel_crtc *crtc);
-int intel_atomic_check_planes(struct intel_atomic_state *state);
+int intel_plane_atomic_check(struct intel_atomic_state *state);
 
 u32 intel_plane_ggtt_offset(const struct intel_plane_state *plane_state);
 bool intel_plane_format_mod_supported_async(struct drm_plane *plane,
-- 
2.39.5

