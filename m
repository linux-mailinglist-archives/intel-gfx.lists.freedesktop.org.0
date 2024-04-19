Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 958B88AB063
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Apr 2024 16:11:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE4F110FF23;
	Fri, 19 Apr 2024 14:11:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PUlBcabF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 256B010FF21;
 Fri, 19 Apr 2024 14:11:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713535861; x=1745071861;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7q3vfW4ff6hbqd9O33C8mVxhQ5LMjl9Xpd4pSdKOqtI=;
 b=PUlBcabFagK0TcR48WRZm++FuA0DlPF5b+BG6tj3Fj6YPRHdtiFwiizi
 IMQe46zIRqlx4qmCLYa8B6/GEN6N6Xkh2ocJBrQOg6cAuOnFQT3u9Ot0B
 a6WM1eUwhVtdM1twptycDg17O2UVyx2wX7T7D5mClTq+HZSXVWMKoLgfG
 JaOOAmn7at1ctOC1DVNm8LreriQO4jGMfkbRZLKjEJATNOr7Z4JhBJ3wG
 4OmK/mTrJnvrE6NA2SFd2uwJnlGPQL4er31QhauMNXDEddKiG292uh6jN
 HG/Jf6X2linnjc0eCrhQATJbWpWpUj9C69B/uCE5WLh5E+yta9qI+pyxX A==;
X-CSE-ConnectionGUID: ktkZPyx8SJmsjH6pmLXuGw==
X-CSE-MsgGUID: ibMq+QxyRheE4tu7MfUnBg==
X-IronPort-AV: E=McAfee;i="6600,9927,11049"; a="9003647"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; 
   d="scan'208";a="9003647"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 07:11:00 -0700
X-CSE-ConnectionGUID: sDEVfHNhQ/yfO1/aOXiH0w==
X-CSE-MsgGUID: KO2ZpfDdRImEXQlg83t6LA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="23785024"
Received: from sveamari-mobl1.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.252.63.58])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 07:10:58 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 matthew.d.roper@intel.com
Subject: [PATCH v1] drm/xe: avoid the async_flip update in the initial plane
 config
Date: Fri, 19 Apr 2024 17:09:25 +0300
Message-Id: <20240419140925.157924-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
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

Async flip call is not needed. The updated fb mapping is updated
as part of the fixup_initial_plane_config() call. Otherwise we
end up updating the PLAN_SURF register twice with the same info.

v2: avoid async_flip instead of removing fixup call (Ville)

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/xe/display/xe_plane_initial.c | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/drm/xe/display/xe_plane_initial.c
index 9693c56d386b..b5f8381b593d 100644
--- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
+++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
@@ -189,8 +189,6 @@ intel_find_initial_plane_obj(struct intel_crtc *crtc,
 		to_intel_plane(crtc->base.primary);
 	struct intel_plane_state *plane_state =
 		to_intel_plane_state(plane->base.state);
-	struct intel_crtc_state *crtc_state =
-		to_intel_crtc_state(crtc->base.state);
 	struct drm_framebuffer *fb;
 	struct i915_vma *vma;
 
@@ -236,14 +234,6 @@ intel_find_initial_plane_obj(struct intel_crtc *crtc,
 	atomic_or(plane->frontbuffer_bit, &to_intel_frontbuffer(fb)->bits);
 
 	plane_config->vma = vma;
-
-	/*
-	 * Flip to the newly created mapping ASAP, so we can re-use the
-	 * first part of GGTT for WOPCM, prevent flickering, and prevent
-	 * the lookup of sysmem scratch pages.
-	 */
-	plane->check_plane(crtc_state, plane_state);
-	plane->async_flip(plane, crtc_state, plane_state, true);
 	return;
 
 nofb:
-- 
2.34.1

