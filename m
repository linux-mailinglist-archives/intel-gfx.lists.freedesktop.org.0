Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DCF15FDE13
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Oct 2022 18:17:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3ACA810E8FF;
	Thu, 13 Oct 2022 16:17:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CA6010E8FF
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Oct 2022 16:17:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665677849; x=1697213849;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kgfdhbuUDkXBxSZtZDSdDA6dUAhtuFDMFEsrJl0wlYw=;
 b=Sc+jvhjCNqBZhxHvoAuOJRxWwQLEAi/3W1ure2LM3WvoQrruElVj5Jo0
 PP4+J3wtC+4KOV131huDL45RtJBkUPGYw93D6HVy/BSg7e6aLp5J7E8aC
 lz6eDOMY22mD3b9sBvreZMGbJC2frMxf7A0KUctA19xr5e1/7mgFzccZb
 8C6E02TjPnNBC4KvI/wiT9TYYAmo5eGOmCHNebr+ci0edHTQYWWMbx7ut
 USR/ghZAVa+YFGzLzKnS3hsItRU6xLbwRxGJRm/3C/i2GYzmo3MExnlm4
 9QMJB1uuIkanxwhsmD1wpao1tpaJ4LEa5TGqq9lkDCO56vleivP1VpS8q Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="391435851"
X-IronPort-AV: E=Sophos;i="5.95,182,1661842800"; d="scan'208";a="391435851"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2022 09:14:50 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="660393228"
X-IronPort-AV: E=Sophos;i="5.95,182,1661842800"; d="scan'208";a="660393228"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2022 09:14:48 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Oct 2022 18:14:16 +0200
Message-Id: <20221013161416.3684904-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/1915/guc: enable engine reset on CAT
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
Hi all,

I am new in the subject, so please be polite if this is mistake.
Tests shows that it allows to save about 7 seconds on the machine
(Raptor Lake) in case of CAT.
I am not aware of scenario in which would be reasonable to keep
the engine in hung state.
On the other side I am not sure if there should not be constraints
on firmware version.

Regards
Andrzej
---
 drivers/gpu/drm/i915/gt/uc/intel_guc.c      | 2 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index 27b09ba1d295fc..2adcdf13db1911 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -211,7 +211,7 @@ static u32 guc_ctl_debug_flags(struct intel_guc *guc)
 
 static u32 guc_ctl_feature_flags(struct intel_guc *guc)
 {
-	u32 flags = 0;
+	u32 flags = GUC_CTL_ENABLE_ENGINE_RESET_ON_CAT;
 
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

