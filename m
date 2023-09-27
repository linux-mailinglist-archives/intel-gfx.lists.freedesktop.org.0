Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DDCF7B05B7
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Sep 2023 15:46:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A188E10E529;
	Wed, 27 Sep 2023 13:46:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 257E010E529
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Sep 2023 13:46:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695822397; x=1727358397;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=a1u836XjuBYtLYF2vw3pWLRq5SuuDxrR+/1HurSeJSo=;
 b=nV29DjI91//cYlAFrV+sPMX7+WphCiqD8qQW5hB418JLEhs5rasJwm4s
 wTkAAnmjul5I0shHpjdVj8B2cvG8bYsNNIEHcCtmItEqDVbYXFiU2kjEO
 ygR3wRakaENrUCkt4BZWVCeUPTSfXuvg/ptasc599X0gQKFocCSTSU0sa
 38Wz2qjUquUzKEUrBfoS2NprvqJ1yGxopETMcYSh4vvx4Q+HoQzWv8+Vg
 VQYC9Jj1eilvj9Y5YuBwu9/mrHh+ceqN6lkAn3mP9Pv9wVtK70/6xlTHr
 1atLbiDWhps9kIkM7GPqsQzSkNegnJ9dujOcxMUl0efMkrOS7ySi6m0EP Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="448318963"
X-IronPort-AV: E=Sophos;i="6.03,181,1694761200"; d="scan'208";a="448318963"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2023 06:46:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="698887799"
X-IronPort-AV: E=Sophos;i="6.03,181,1694761200"; d="scan'208";a="698887799"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orsmga003.jf.intel.com with ESMTP; 27 Sep 2023 06:46:35 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Sep 2023 19:05:05 +0530
Message-Id: <20230927133505.1086855-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Add wrapper for getiing display step
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

From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

Add a wrapper around intel_step_name to maintain compatibility with xe
driver. The wrapper will share the same name as the one to be used by
xe while both drivers include different files as needed during
compilation.

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 2 +-
 drivers/gpu/drm/i915/intel_step.c        | 5 +++++
 drivers/gpu/drm/i915/intel_step.h        | 1 +
 3 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 1623c0c5e8a1..0b2c38957c32 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -309,7 +309,7 @@ static const struct stepping_info *
 intel_get_stepping_info(struct drm_i915_private *i915,
 			struct stepping_info *si)
 {
-	const char *step_name = intel_step_name(RUNTIME_INFO(i915)->step.display_step);
+	const char *step_name = intel_step_display_name(i915);
 
 	si->stepping = step_name[0];
 	si->substepping = step_name[1];
diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
index ee4e5a2c0220..3914cf9970b3 100644
--- a/drivers/gpu/drm/i915/intel_step.c
+++ b/drivers/gpu/drm/i915/intel_step.c
@@ -353,3 +353,8 @@ const char *intel_step_name(enum intel_step step)
 		return "**";
 	}
 }
+
+const char *intel_step_display_name(struct drm_i915_private *i915)
+{
+	return intel_step_name(RUNTIME_INFO(i915)->step.display_step);
+}
diff --git a/drivers/gpu/drm/i915/intel_step.h b/drivers/gpu/drm/i915/intel_step.h
index 96dfca4cba73..26795302cdd8 100644
--- a/drivers/gpu/drm/i915/intel_step.h
+++ b/drivers/gpu/drm/i915/intel_step.h
@@ -78,5 +78,6 @@ enum intel_step {
 
 void intel_step_init(struct drm_i915_private *i915);
 const char *intel_step_name(enum intel_step step);
+const char *intel_step_display_name(struct drm_i915_private *i915);
 
 #endif /* __INTEL_STEP_H__ */
-- 
2.29.0

