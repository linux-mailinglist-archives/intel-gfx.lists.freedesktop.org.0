Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E796576402A
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jul 2023 22:07:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 432C110E4C1;
	Wed, 26 Jul 2023 20:07:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FEB510E4D2
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jul 2023 20:07:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690402068; x=1721938068;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mIhN4vADfIwzeHNH1M0Z/+9oULp3Tw8TDKkyRTSECKE=;
 b=W02vydbn+ArncK1ds10FQN6JBntxRpHeeb8QukZFxY1mcHHHwSlROOTq
 Z4XeOfTzUhsbwLyJKEG/g0fJQvBIHbZmj9pYCCDE/gzFMcPxa5SSME+Hk
 WHWa4Ali/0T2EnR04CDNjs0jPTZ6zMu6GW0f8c59/ayISxC8wWAO1Jd98
 b/AuEQ+dvTAhH7LkTgnGnwDNAHVJmaaZU/EDwKXB22IC2wL/dxQuHNQAn
 ZTbD4WZUSs6J6zygTklSfOC7oyL7AZgpUwLSvPIkuql+C9z7iGioz5alN
 3vjukjcuIYtua59WGDkUpUxVZZfjlTsU8mazig88afcsXZ876mcqJ90eS g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="399057845"
X-IronPort-AV: E=Sophos;i="6.01,232,1684825200"; d="scan'208";a="399057845"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 13:07:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="720614552"
X-IronPort-AV: E=Sophos;i="6.01,232,1684825200"; d="scan'208";a="720614552"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by orsmga007.jf.intel.com with ESMTP; 26 Jul 2023 13:07:29 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jul 2023 01:36:54 +0530
Message-Id: <20230726200657.2773903-12-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230726200657.2773903-1-dnyaneshwar.bhadane@intel.com>
References: <20230726200657.2773903-1-dnyaneshwar.bhadane@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 11/14] drm/i915/rplp:
 s/ADLP_RPLP/RAPTORLAKE_P for RPLP defines
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
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Follow consistent naming convention. Replace ADLP with
ALDERLAKE_P.

v2:
- Replace IS_ADLP_RPLP with IS_RAPTORLAKE_P. (Tvrtko/Lucas)
- Change the subject

Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h   | 2 +-
 drivers/gpu/drm/i915/intel_step.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index c24be1875769..4e07ba69642d 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -588,7 +588,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_S, INTEL_SUBPLATFORM_RPL)
 #define IS_ADLP_N(i915) \
 	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_N)
-#define IS_ADLP_RPLP(i915) \
+#define IS_RAPTORLAKE_P(i915) \
 	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_RPL)
 #define IS_ADLP_RPLU(i915) \
 	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_RPLU)
diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
index 4ca22d0c945b..7601122765b7 100644
--- a/drivers/gpu/drm/i915/intel_step.c
+++ b/drivers/gpu/drm/i915/intel_step.c
@@ -195,7 +195,7 @@ void intel_step_init(struct drm_i915_private *i915)
 	} else if (IS_ADLP_N(i915)) {
 		revids = adlp_n_revids;
 		size = ARRAY_SIZE(adlp_n_revids);
-	} else if (IS_ADLP_RPLP(i915)) {
+	} else if (IS_RAPTORLAKE_P(i915)) {
 		revids = adlp_rplp_revids;
 		size = ARRAY_SIZE(adlp_rplp_revids);
 	} else if (IS_ALDERLAKE_P(i915)) {
-- 
2.34.1

