Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26EB06049FA
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 16:55:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C577810EAF1;
	Wed, 19 Oct 2022 14:55:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0726710F250
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 14:55:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666191320; x=1697727320;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TnJpRbJlHGF/6FVyYTHGrWKyk6Wo2joyB2K3N196y38=;
 b=imKrPwtCzhhQxaCNBNQreKDZD3Y26UQVO083YL7fEY5VMUv2daYuVeHw
 0hUT/jvud/26okDUyvG4Wg+5CAbmxwE7d8Xnjdl99Yb7fKKSi6grKrsgz
 W1qgaJpEun26IK9hglixfVtGiOnjXyL57EV2ks5M8bkq9bDcYJspe/AeX
 Nhi7QDLkAGxalkIE0/3G2NlJj+qsiS7TYxJdsWanucaLMlYbvbteyaR8t
 DH8Xj9ECX6ZDeUnqGc+XqTQ3mtRa9EqRCHGFM65+l9A0gzt/RnVP0q/jJ
 h5T6t4aSuSOWD6EjyH/WDNVVwNXhTxjH1uzawFVqKbXdVv3KqwE+iZmR8 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="307539134"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="307539134"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 07:55:18 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="607131281"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="607131281"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 07:55:17 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Oct 2022 16:54:52 +0200
Message-Id: <20221019145452.256254-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <84bec81c-0077-60d7-4d3c-210ad739e42c@intel.com>
References: <84bec81c-0077-60d7-4d3c-210ad739e42c@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/1915/guc: enable engine reset on CAT
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In case of catastrophic errors GuC is able to initate engine
reset immediately, instead of waiting for timeout.

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
v2: added GuC version check (John)
---
 drivers/gpu/drm/i915/gt/uc/intel_guc.c      | 3 +++
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h | 1 +
 2 files changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index 27b09ba1d295fc..9b6f6b9be02874 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -213,6 +213,9 @@ static u32 guc_ctl_feature_flags(struct intel_guc *guc)
 {
 	u32 flags = 0;
 
+	if (GET_UC_VER(guc) >= MAKE_UC_VER(67, 0, 0))
+		flags = GUC_CTL_ENABLE_ENGINE_RESET_ON_CAT;
+
 	if (!intel_guc_submission_is_used(guc))
 		flags |= GUC_CTL_DISABLE_SCHEDULER;
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
index e7a7fb450f442a..96f3116e263cdf 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
@@ -109,6 +109,7 @@
 
 #define GUC_CTL_FEATURE			2
 #define   GUC_CTL_ENABLE_SLPC		BIT(2)
+#define   GUC_CTL_ENABLE_ENGINE_RESET_ON_CAT BIT(8)
 #define   GUC_CTL_DISABLE_SCHEDULER	BIT(14)
 
 #define GUC_CTL_DEBUG			3
-- 
2.34.1

