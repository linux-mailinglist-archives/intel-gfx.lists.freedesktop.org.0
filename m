Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 922E07B61B5
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Oct 2023 08:56:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14A5A10E0E7;
	Tue,  3 Oct 2023 06:56:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0945F10E0E7
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Oct 2023 06:56:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696316204; x=1727852204;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6qOjX8MeBdBwtbJN/aUgWVbeIQAZMF5dJ5AMsskzM3g=;
 b=FFSiEpR9/qLd7wr0UGICrtus/eqK1xskqZc6YSMcZTBbkaDtKp/9BTKP
 KcXexm4BhiCCFsA8edYGLngF1eAsWVE9/8eM5jMXQs7IcZteFdZNYf0cp
 m8kP8kcOi+8XQH016fH4YGdWMmgg9ufOG2adNECeH/tHexTuhozO4kf/x
 loNSOh/0LXAwdTSNlEkmNspv1pdJtNw6DISn7M6QpWFV1ORh570aOxXtG
 GTdADGggoo7f6ZCd3r2nGEBfOb+ml/P+nJBGTs9adGnM3mj0VH/IuwBDJ
 nEDhJL7PoUghG33vyNxplRqM07ANiVNwG1j3+VY2bPliDLB8ShRLyfsqU Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="381689491"
X-IronPort-AV: E=Sophos;i="6.03,196,1694761200"; d="scan'208";a="381689491"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 23:56:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="874617623"
X-IronPort-AV: E=Sophos;i="6.03,196,1694761200"; d="scan'208";a="874617623"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by orsmga004.jf.intel.com with ESMTP; 02 Oct 2023 23:56:41 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Oct 2023 12:22:11 +0530
Message-Id: <20231003065211.1052385-1-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230927133505.1086855-1-animesh.manna@intel.com>
References: <20230927133505.1086855-1-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Add wrapper for getting display step
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

Add a wrapper around intel_step_name that takes in driver data as an
argument. This wrapper will help maintain compatibility with the
proposed xe driver.

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 2 +-
 drivers/gpu/drm/i915/intel_step.c        | 5 +++++
 drivers/gpu/drm/i915/intel_step.h        | 1 +
 3 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 1623c0c5e8a1..63e080e07023 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -309,7 +309,7 @@ static const struct stepping_info *
 intel_get_stepping_info(struct drm_i915_private *i915,
 			struct stepping_info *si)
 {
-	const char *step_name = intel_step_name(RUNTIME_INFO(i915)->step.display_step);
+	const char *step_name = intel_display_step_name(i915);
 
 	si->stepping = step_name[0];
 	si->substepping = step_name[1];
diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
index ee4e5a2c0220..b4162f1be765 100644
--- a/drivers/gpu/drm/i915/intel_step.c
+++ b/drivers/gpu/drm/i915/intel_step.c
@@ -353,3 +353,8 @@ const char *intel_step_name(enum intel_step step)
 		return "**";
 	}
 }
+
+const char *intel_display_step_name(struct drm_i915_private *i915)
+{
+	return intel_step_name(RUNTIME_INFO(i915)->step.display_step);
+}
diff --git a/drivers/gpu/drm/i915/intel_step.h b/drivers/gpu/drm/i915/intel_step.h
index 96dfca4cba73..b6f43b624774 100644
--- a/drivers/gpu/drm/i915/intel_step.h
+++ b/drivers/gpu/drm/i915/intel_step.h
@@ -78,5 +78,6 @@ enum intel_step {
 
 void intel_step_init(struct drm_i915_private *i915);
 const char *intel_step_name(enum intel_step step);
+const char *intel_display_step_name(struct drm_i915_private *i915);
 
 #endif /* __INTEL_STEP_H__ */
-- 
2.25.1

