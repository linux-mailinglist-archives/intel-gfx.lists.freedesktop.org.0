Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 286FAA81221
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 18:22:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B9ED10E6FA;
	Tue,  8 Apr 2025 16:22:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MeXTvaop";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F38FB10E6FA;
 Tue,  8 Apr 2025 16:22:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744129349; x=1775665349;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=I97T2OTQnQPOZP/oiNA6Qd9KoPmrSCOVojqHeGXxu0I=;
 b=MeXTvaopYalmVkO9QlJ7yVaIP5SJ7OZ6kegLOykiJB8HG1Y9+WsuJDV7
 LuWddOGUJaFJh4VZxhULLtTMe+jHN7Uj0QsbkfaJQgmu0ZGIyvUZEVf5u
 ThvHgxznLFctPhbLMHH2LM6K0CUTlJHO2hGSehCSeuEUp5eioD3uvzE/m
 Of97vI/MTuif4XhM7BpTHb+yEPcjnb89tkKJyJSMbXApQQ6TDEyxTMoEX
 Bh6Vv0b9XmfWkQVoXattxAynBsF6hnEf1Ypr9OgDeMqDAVhxu8P2A9P5C
 Afclgu+UIX6NkFCIb9mxrQJINy46JxzbK+ghWESaW6ROi7c7pZl4HLjTd g==;
X-CSE-ConnectionGUID: US7kpPS7QUiKe3Bc6RAQTQ==
X-CSE-MsgGUID: /EY6vL2qTHe/R3NIKgDBeQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="62973727"
X-IronPort-AV: E=Sophos;i="6.15,198,1739865600"; d="scan'208";a="62973727"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 09:22:29 -0700
X-CSE-ConnectionGUID: ybFFdUUZT6K8gb12uGZayw==
X-CSE-MsgGUID: Cu9pQk4gQj2bMhJpbXgWBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,198,1739865600"; d="scan'208";a="159310870"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.137])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 09:22:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 4/5] drm/i915/plane: rename intel_atomic_check_planes() to
 intel_plane_atomic_check()
Date: Tue,  8 Apr 2025 19:22:03 +0300
Message-Id: <2ade5d7957b8a89112d7a7512461f3d6302f5a17.1744129283.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1744129283.git.jani.nikula@intel.com>
References: <cover.1744129283.git.jani.nikula@intel.com>
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
index 5e2ae066848f..0e00e0cd9330 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6441,7 +6441,7 @@ int intel_atomic_check(struct drm_device *dev,
 		goto fail;
 	}
 
-	ret = intel_atomic_check_planes(state);
+	ret = intel_plane_atomic_check(state);
 	if (ret)
 		goto fail;
 
diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index eb4fb7ed5e43..aa0dc11eab56 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -1513,7 +1513,7 @@ static int intel_add_affected_planes(struct intel_atomic_state *state)
 	return 0;
 }
 
-int intel_atomic_check_planes(struct intel_atomic_state *state)
+int intel_plane_atomic_check(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc_state *old_crtc_state, *new_crtc_state;
diff --git a/drivers/gpu/drm/i915/display/intel_plane.h b/drivers/gpu/drm/i915/display/intel_plane.h
index 4d7f39acef65..6bcae6312e30 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.h
+++ b/drivers/gpu/drm/i915/display/intel_plane.h
@@ -84,7 +84,7 @@ void intel_plane_init_cursor_vblank_work(struct intel_plane_state *old_plane_sta
 					 struct intel_plane_state *new_plane_state);
 int intel_atomic_add_affected_planes(struct intel_atomic_state *state,
 				     struct intel_crtc *crtc);
-int intel_atomic_check_planes(struct intel_atomic_state *state);
+int intel_plane_atomic_check(struct intel_atomic_state *state);
 
 u32 intel_plane_ggtt_offset(const struct intel_plane_state *plane_state);
 
-- 
2.39.5

