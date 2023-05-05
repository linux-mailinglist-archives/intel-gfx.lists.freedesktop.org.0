Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E19C6F7EA8
	for <lists+intel-gfx@lfdr.de>; Fri,  5 May 2023 10:22:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8A9910E0BA;
	Fri,  5 May 2023 08:22:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC61810E0BA
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 May 2023 08:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683274942; x=1714810942;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=sXLmp7Ow0L2buvGTMGZVofoHhB0FTCLMskWSjSWwQdY=;
 b=gjFKCc5zo9oJd5889QkBhk0Uuo98IYH8EwF1pZK8MzOji/xyv6TQXQz4
 fHO9NbW4EYpJ/I6yrZiHVjVGzUhxPkRpdsoBhtgbdwouOD+wMMqMHCNU5
 zCbaGI1Aw02b+UJ7rxDslbOb5Cf6haEfJU/kYX30vpcWNIWlUjWBxCrUF
 vvj8KTraCKOmdy9UypmECislV7v8zcdJ1BdEAxxf4p6lL2q5fjEmDD6LJ
 uSjlv7QstTkq+KS5YR8cQmrnIAiMlPREyb/AUlxPfmF5pDwmJ016KPXLs
 cnKk3InQ0PAX2njm+o+kRu4WDRskpZ0t/j4HwI8Ain5b3jiC/M0Nc5DJ2 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="346630588"
X-IronPort-AV: E=Sophos;i="5.99,251,1677571200"; d="scan'208";a="346630588"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 01:22:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="821572234"
X-IronPort-AV: E=Sophos;i="5.99,251,1677571200"; d="scan'208";a="821572234"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga004.jf.intel.com with ESMTP; 05 May 2023 01:22:13 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 May 2023 11:22:12 +0300
Message-Id: <20230505082212.27089-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Fix NULL ptr deref by checking
 new_crtc_state
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

intel_atomic_get_new_crtc_state can return NULL, unless crtc state wasn't
obtained previously with intel_atomic_get_crtc_state, so we must check it
for NULLness here, just as in many other places, where we can't guarantee
that intel_atomic_get_crtc_state was called.
We are currently getting NULL ptr deref because of that, so this fix was
confirmed to help.

Fixes: 74a75dc90869 ("drm/i915/display: move plane prepare/cleanup to intel_atomic_plane.c")
Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic_plane.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 9f670dcfe76e..4125ee07a271 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -1029,7 +1029,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
 	int ret;
 
 	if (old_obj) {
-		const struct intel_crtc_state *crtc_state =
+		const struct intel_crtc_state *new_crtc_state =
 			intel_atomic_get_new_crtc_state(state,
 							to_intel_crtc(old_plane_state->hw.crtc));
 
@@ -1044,7 +1044,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
 		 * This should only fail upon a hung GPU, in which case we
 		 * can safely continue.
 		 */
-		if (intel_crtc_needs_modeset(crtc_state)) {
+		if (new_crtc_state && intel_crtc_needs_modeset(new_crtc_state)) {
 			ret = i915_sw_fence_await_reservation(&state->commit_ready,
 							      old_obj->base.resv,
 							      false, 0,
-- 
2.37.3

