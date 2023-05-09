Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A53C6FC4C0
	for <lists+intel-gfx@lfdr.de>; Tue,  9 May 2023 13:14:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEE7910E395;
	Tue,  9 May 2023 11:14:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28AE710E38B
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 May 2023 11:14:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683630885; x=1715166885;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DfJzV5LFOz4bZp0kiq7tHrq7Ew3+A/HQPVq/PwZSeCw=;
 b=KSz8tNJAOsr/2BWn2ISSZLi2meGGLpp6ihWSfMZE2W4egiKMhlUU/hVP
 61JXXXQY/swKyeOLOAdLBlmETV11cos1w9oQ71Xd4dPH8yWfbsbYYIOyC
 vOrDEbMrjidyewscjR0lIhC8aU97cnvDDx8iMSZhitCV8zFW3N4fiIbba
 OIg7xsQuI2PkPnqneLIgBSjJq0W91YL5gEA7IS+Fxx3/s2yU5VNFfBOxQ
 HHw3GzEIETH83dnvHa0yvsItUBs6BD4Nl5W/abfOENqry7sxS6ygFva1g
 qopduVpqUAE258+otdoHoqeLen4FUFnP1ENTmgm03Pl0eN/8Q7jXLQBEs g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="330260768"
X-IronPort-AV: E=Sophos;i="5.99,261,1677571200"; d="scan'208";a="330260768"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2023 04:14:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="788489573"
X-IronPort-AV: E=Sophos;i="5.99,261,1677571200"; d="scan'208";a="788489573"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by FMSMGA003.fm.intel.com with ESMTP; 09 May 2023 04:14:42 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  9 May 2023 14:14:41 +0300
Message-Id: <20230509111441.4293-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: WARN if not all pipes are in
 bigjoiner mask, when copying plane state
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

There is a suspicion that we might not have all bigjoiner pipes
set in correspodent mask, which leads to that not all crtc are added to the state,
however because we are copying for instance crtc reference from master crtc
to slave crtc, we might be trying to get it via intel_atomic_get_new_crtc_state,
which might the return NULL.
This is surely not a fix, but at least the WARN should give us some clue and
"red light" when this happens.
In future we might need to evaluate the logic of adding crtc to the state,
to make sure that we always have all affected crtcs in the state,
even though such functions already exist, there seem to be still some
glitches in this logic.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic_plane.c | 13 +++++++++++++
 drivers/gpu/drm/i915/display/intel_display.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_display.h      |  1 +
 3 files changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 4125ee07a271..03cbd755261b 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -695,6 +695,19 @@ int intel_plane_atomic_check(struct intel_atomic_state *state,
 
 		new_master_plane_state =
 			intel_atomic_get_new_plane_state(state, master_plane);
+
+		/*
+		 * We would be copying plane state from master crtc
+		 * however if crtc_state->bigjoiner_pipes doesn't contain both
+		 * master and slave, that means that quite likely we didn't call
+		 * intel_atomic_get_crtc_state for both, which can cause issues,
+		 * like intel_atomic_get_new_crtc_state returning NULL suddently,
+		 * when we for example try to use hw.crtc from that plane state.
+		 * This WARN might sched some light on out existing issues, also
+		 * prevent others from happening in future.
+		 */
+		drm_WARN_ON(state->base.dev, intel_bigjoiner_num_pipes(new_crtc_state) < 2);
+
 	} else {
 		new_master_plane_state = new_plane_state;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1d5d42a40803..0e0908c1ee8d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -267,7 +267,7 @@ bool intel_crtc_is_bigjoiner_master(const struct intel_crtc_state *crtc_state)
 		crtc->pipe == bigjoiner_master_pipe(crtc_state);
 }
 
-static int intel_bigjoiner_num_pipes(const struct intel_crtc_state *crtc_state)
+int intel_bigjoiner_num_pipes(const struct intel_crtc_state *crtc_state)
 {
 	return hweight8(crtc_state->bigjoiner_pipes);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index ac95961f68ba..94761be69bd0 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -410,6 +410,7 @@ bool is_trans_port_sync_mode(const struct intel_crtc_state *state);
 bool intel_crtc_is_bigjoiner_slave(const struct intel_crtc_state *crtc_state);
 bool intel_crtc_is_bigjoiner_master(const struct intel_crtc_state *crtc_state);
 u8 intel_crtc_bigjoiner_slave_pipes(const struct intel_crtc_state *crtc_state);
+int intel_bigjoiner_num_pipes(const struct intel_crtc_state *crtc_state);
 struct intel_crtc *intel_master_crtc(const struct intel_crtc_state *crtc_state);
 bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state);
 bool intel_pipe_config_compare(const struct intel_crtc_state *current_config,
-- 
2.37.3

