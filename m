Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 214F1ADC44D
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jun 2025 10:14:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B12AF10E508;
	Tue, 17 Jun 2025 08:14:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Bsv8DAa1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0F3E10E508;
 Tue, 17 Jun 2025 08:14:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750148044; x=1781684044;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0/uDrt7wR2l8F5WXafqjqGAe+191piPvOkOSkN0vM84=;
 b=Bsv8DAa1j4Q1sQIymNq1HNU7DRW9L57Ij2IaILd9l4LAytWBXHqzVwPW
 RvvhIUt0y/wdRs5RU/r9WaPlcbfUIaqUrBMYzPvXtl1/BaqI1vK0Rdul6
 CCeC+CPjIqp2jeHd+/YYVG1yJJNKRtoM9ZVDYCmQck3aJ3CXG9Vur8aSg
 HV7qXvce2gxOK0EJQWVllyjf3+tmKG7vGQUv9gKlN/hwlxq4GTByjUmw+
 MNdB/5M/ulIkNUyRLrJTNmjJYLqeC+4zZONDKY7zKZFgliQQiBvOP0HCF
 GoUZ1Lyx7wICQ8mVn1Jp+6EUkT5qiSbmgh9yO08imj9ZivYutOiH4+GdM Q==;
X-CSE-ConnectionGUID: 0lbUbnG+RTuwSNk8wRUZYQ==
X-CSE-MsgGUID: EA+vemQhTiuhcOHPeEm5ZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11465"; a="52016132"
X-IronPort-AV: E=Sophos;i="6.16,242,1744095600"; d="scan'208";a="52016132"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2025 01:14:04 -0700
X-CSE-ConnectionGUID: 5PeFvk3HQVGpxxm2pxEtGQ==
X-CSE-MsgGUID: +0dwDqGoTSSCjOOli/Eb9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,242,1744095600"; d="scan'208";a="153597478"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.111])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2025 01:14:02 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Gustavo Sousa <gustavo.sousa@intel.com>
Subject: [RESEND 4/5] drm/i915/plane: rename intel_atomic_check_planes() to
 intel_plane_atomic_check()
Date: Tue, 17 Jun 2025 11:13:39 +0300
Message-Id: <57c59e33e31fbea564f61c2ffaa81e979e33f106.1750147992.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1750147992.git.jani.nikula@intel.com>
References: <cover.1750147992.git.jani.nikula@intel.com>
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

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
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

